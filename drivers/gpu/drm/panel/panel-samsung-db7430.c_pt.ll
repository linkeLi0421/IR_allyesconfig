; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-db7430.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-db7430.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.db7430 = type { ptr, %struct.mipi_dbi, %struct.drm_panel, i32, i32, ptr, [2 x %struct.regulator_bulk_data] }
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

@__initcall__kmod_panel_samsung_db7430__310_343_db7430_driver_init6 = internal global ptr @db7430_driver_init, section ".initcall6.init", align 4
@db7430_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @db7430_probe, ptr @db7430_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @db7430_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_db7430_driver_exit = internal global ptr @db7430_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author311 = internal constant [69 x i8] c"panel_samsung_db7430.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [61 x i8] c"panel_samsung_db7430.description=Samsung DB7430 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [69 x i8] c"panel_samsung_db7430.file=drivers/gpu/drm/panel/panel-samsung-db7430\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [36 x i8] c"panel_samsung_db7430.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"db7430-panel\00", [19 x i8] zeroinitializer }, align 32
@db7430_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,lms397kf04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no RESET GPIO\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MIPI DBI init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@db7430_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @db7430_prepare, ptr @db7430_enable, ptr @db7430_disable, ptr @db7430_unprepare, ptr @db7430_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add backlight\0A\00", [39 x i8] zeroinitializer }, align 32
@db7430_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel_samsung_db7430\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"db7430_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-samsung-db7430.c\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"added panel\0A\00", [19 x i8] zeroinitializer }, align 32
@db7430_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.10, i32 102, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"db7430_power_on\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr = internal global ptr @db7430_power_on._entry, section ".printk_index", align 4
@db7430_power_on.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.10, ptr @.str.16, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"de-asserted RESET\0A\00", [45 x i8] zeroinitializer }, align 32
@db7430_power_on._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 122, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.20 = internal global ptr @db7430_power_on._entry.18, section ".printk_index", align 4
@db7430_power_on._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 123, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.24 = internal global ptr @db7430_power_on._entry.23, section ".printk_index", align 4
@db7430_power_on._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 124, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.27 = internal global ptr @db7430_power_on._entry.26, section ".printk_index", align 4
@db7430_power_on._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 125, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.31 = internal global ptr @db7430_power_on._entry.30, section ".printk_index", align 4
@__const.db7430_power_on.d.32 = private unnamed_addr constant [5 x i8] c"\010\15\05\22", align 1
@db7430_power_on._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 127, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.35 = internal global ptr @db7430_power_on._entry.34, section ".printk_index", align 4
@__const.db7430_power_on.d.36 = private unnamed_addr constant [3 x i8] c"\10\01\00", align 1
@db7430_power_on._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 129, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.39 = internal global ptr @db7430_power_on._entry.38, section ".printk_index", align 4
@__const.db7430_power_on.d.40 = private unnamed_addr constant [9 x i8] c"\06U\03\07\0B3\00\01\03", align 1
@db7430_power_on._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 132, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.43 = internal global ptr @db7430_power_on._entry.42, section ".printk_index", align 4
@db7430_power_on._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 137, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.47 = internal global ptr @db7430_power_on._entry.46, section ".printk_index", align 4
@__const.db7430_power_on.d.48 = private unnamed_addr constant [38 x i8] c"\00\0A1;NXY[X^b`a^bUU\7F\08\00\0A1;NXY[X^b`a^bUU\7F\08", align 1
@db7430_power_on._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 144, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.51 = internal global ptr @db7430_power_on._entry.50, section ".printk_index", align 4
@__const.db7430_power_on.d.52 = private unnamed_addr constant [38 x i8] c"\00%\15(=JHLJRYY[V`]U\7F\0A\00%\15(=JHLJRYY[V`]U\7F\0A", align 1
@db7430_power_on._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 151, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.55 = internal global ptr @db7430_power_on._entry.54, section ".printk_index", align 4
@__const.db7430_power_on.d.56 = private unnamed_addr constant [38 x i8] c"\00H\10\1F/58=<EMNRQ`\7F~\7F\0C\00H\10\1F/58=<EMNRQ`\7F~\7F\0C", align 1
@db7430_power_on._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 158, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.59 = internal global ptr @db7430_power_on._entry.58, section ".printk_index", align 4
@db7430_power_on._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 159, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.63 = internal global ptr @db7430_power_on._entry.62, section ".printk_index", align 4
@__const.db7430_power_on.d.64 = private unnamed_addr constant [3 x i8] c"\11\00\00", align 1
@db7430_power_on._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 160, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.67 = internal global ptr @db7430_power_on._entry.66, section ".printk_index", align 4
@db7430_power_on._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 161, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.71 = internal global ptr @db7430_power_on._entry.70, section ".printk_index", align 4
@db7430_power_on._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 162, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.75 = internal global ptr @db7430_power_on._entry.74, section ".printk_index", align 4
@db7430_power_on._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_power_on._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.10, i32 163, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_power_on._entry_ptr.79 = internal global ptr @db7430_power_on._entry.78, section ".printk_index", align 4
@db7430_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.db7430_enable = private unnamed_addr constant [14 x i8] c"db7430_enable\00", align 1
@db7430_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 205, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr = internal global ptr @db7430_enable._entry, section ".printk_index", align 4
@db7430_enable._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 209, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.82 = internal global ptr @db7430_enable._entry.81, section ".printk_index", align 4
@__const.db7430_enable.d.83 = private unnamed_addr constant [5 x i8] c"\01\F5\F2qD", align 1
@db7430_enable._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 210, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.86 = internal global ptr @db7430_enable._entry.85, section ".printk_index", align 4
@db7430_enable._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 211, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.90 = internal global ptr @db7430_enable._entry.89, section ".printk_index", align 4
@__const.db7430_enable.d.91 = private unnamed_addr constant [3 x i8] c"\0F\00P", align 1
@db7430_enable._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 215, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.94 = internal global ptr @db7430_enable._entry.93, section ".printk_index", align 4
@db7430_enable._rs.96 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 216, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.98 = internal global ptr @db7430_enable._entry.97, section ".printk_index", align 4
@db7430_enable._rs.100 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 217, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.102 = internal global ptr @db7430_enable._entry.101, section ".printk_index", align 4
@db7430_enable._rs.104 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 218, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.106 = internal global ptr @db7430_enable._entry.105, section ".printk_index", align 4
@db7430_enable._rs.107 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_enable._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_enable, ptr @.str.10, i32 221, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_enable._entry_ptr.109 = internal global ptr @db7430_enable._entry.108, section ".printk_index", align 4
@db7430_disable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.db7430_disable = private unnamed_addr constant [15 x i8] c"db7430_disable\00", align 1
@db7430_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_disable, ptr @.str.10, i32 186, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_disable._entry_ptr = internal global ptr @db7430_disable._entry, section ".printk_index", align 4
@db7430_disable._rs.110 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@db7430_disable._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.db7430_disable, ptr @.str.10, i32 188, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@db7430_disable._entry_ptr.112 = internal global ptr @db7430_disable._entry.111, section ".printk_index", align 4
@db7430_get_modes.bus_format = internal constant { i32, [28 x i8] } { i32 4106, [28 x i8] zeroinitializer }, align 32
@db7430_480_800_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 32258, i16 480, i16 490, i16 494, i16 534, i16 0, i16 800, i16 806, i16 807, i16 814, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 53, i16 87, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@db7430_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.10, i32 240, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to add mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"db7430_get_modes\00", [47 x i8] zeroinitializer }, align 32
@db7430_get_modes._entry_ptr = internal global ptr @db7430_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"db7430_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 335, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 339, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"db7430_match\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 329, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 283, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 284, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 289, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 291, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 294, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 299, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"db7430_drm_funcs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 260, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 307, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 312, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 102, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 114, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 122, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 123, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 124, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 125, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 126, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 128, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 130, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 137, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 138, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 145, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 152, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 159, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 160, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 161, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 162, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 163, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 205, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 209, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 210, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 211, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 215, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 216, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 217, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 218, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 221, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 186, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 188, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [11 x i8] c"bus_format\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 236, i32 19 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c"db7430_480_800_mode\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 69, i32 38 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-samsung-db7430.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 240, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_db7430_driver_exit, ptr @__initcall__kmod_panel_samsung_db7430__310_343_db7430_driver_init6, ptr @db7430_disable._entry, ptr @db7430_disable._entry.111, ptr @db7430_disable._entry_ptr, ptr @db7430_disable._entry_ptr.112, ptr @db7430_driver_exit, ptr @db7430_enable._entry, ptr @db7430_enable._entry.101, ptr @db7430_enable._entry.105, ptr @db7430_enable._entry.108, ptr @db7430_enable._entry.81, ptr @db7430_enable._entry.85, ptr @db7430_enable._entry.89, ptr @db7430_enable._entry.93, ptr @db7430_enable._entry.97, ptr @db7430_enable._entry_ptr, ptr @db7430_enable._entry_ptr.102, ptr @db7430_enable._entry_ptr.106, ptr @db7430_enable._entry_ptr.109, ptr @db7430_enable._entry_ptr.82, ptr @db7430_enable._entry_ptr.86, ptr @db7430_enable._entry_ptr.90, ptr @db7430_enable._entry_ptr.94, ptr @db7430_enable._entry_ptr.98, ptr @db7430_get_modes._entry, ptr @db7430_get_modes._entry_ptr, ptr @db7430_power_on._entry, ptr @db7430_power_on._entry.18, ptr @db7430_power_on._entry.23, ptr @db7430_power_on._entry.26, ptr @db7430_power_on._entry.30, ptr @db7430_power_on._entry.34, ptr @db7430_power_on._entry.38, ptr @db7430_power_on._entry.42, ptr @db7430_power_on._entry.46, ptr @db7430_power_on._entry.50, ptr @db7430_power_on._entry.54, ptr @db7430_power_on._entry.58, ptr @db7430_power_on._entry.62, ptr @db7430_power_on._entry.66, ptr @db7430_power_on._entry.70, ptr @db7430_power_on._entry.74, ptr @db7430_power_on._entry.78, ptr @db7430_power_on._entry_ptr, ptr @db7430_power_on._entry_ptr.20, ptr @db7430_power_on._entry_ptr.24, ptr @db7430_power_on._entry_ptr.27, ptr @db7430_power_on._entry_ptr.31, ptr @db7430_power_on._entry_ptr.35, ptr @db7430_power_on._entry_ptr.39, ptr @db7430_power_on._entry_ptr.43, ptr @db7430_power_on._entry_ptr.47, ptr @db7430_power_on._entry_ptr.51, ptr @db7430_power_on._entry_ptr.55, ptr @db7430_power_on._entry_ptr.59, ptr @db7430_power_on._entry_ptr.63, ptr @db7430_power_on._entry_ptr.67, ptr @db7430_power_on._entry_ptr.71, ptr @db7430_power_on._entry_ptr.75, ptr @db7430_power_on._entry_ptr.79, ptr @db7430_driver, ptr @.str, ptr @db7430_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @db7430_drm_funcs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @db7430_power_on._rs, ptr @.str.17, ptr @.str.19, ptr @db7430_power_on._rs.22, ptr @db7430_power_on._rs.25, ptr @db7430_power_on._rs.29, ptr @db7430_power_on._rs.33, ptr @db7430_power_on._rs.37, ptr @db7430_power_on._rs.41, ptr @db7430_power_on._rs.45, ptr @db7430_power_on._rs.49, ptr @db7430_power_on._rs.53, ptr @db7430_power_on._rs.57, ptr @db7430_power_on._rs.61, ptr @db7430_power_on._rs.65, ptr @db7430_power_on._rs.69, ptr @db7430_power_on._rs.73, ptr @db7430_power_on._rs.77, ptr @db7430_enable._rs, ptr @db7430_enable._rs.80, ptr @db7430_enable._rs.84, ptr @db7430_enable._rs.88, ptr @db7430_enable._rs.92, ptr @db7430_enable._rs.96, ptr @db7430_enable._rs.100, ptr @db7430_enable._rs.104, ptr @db7430_enable._rs.107, ptr @db7430_disable._rs, ptr @db7430_disable._rs.110, ptr @db7430_get_modes.bus_format, ptr @db7430_480_800_mode, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_power_on._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.96 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.100 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.104 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._rs.107 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_enable._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_disable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_disable._rs.110 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_disable._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_get_modes.bus_format to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_480_800_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db7430_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @db7430_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @db7430_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @db7430_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 188, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 4
  %regulators = getelementptr inbounds %struct.db7430, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %regulators, align 4
  %arrayidx4 = getelementptr %struct.db7430, ptr %call.i, i32 0, i32 6, i32 1
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
  %reset = getelementptr inbounds %struct.db7430, ptr %call.i, i32 0, i32 5
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
  %dbi = getelementptr inbounds %struct.db7430, ptr %call.i, i32 0, i32 1
  %call20 = tail call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call20, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %panel = getelementptr inbounds %struct.db7430, ptr %call.i, i32 0, i32 2
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %spi, ptr noundef nonnull @db7430_drm_funcs, i32 noundef 17) #5
  %call26 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call26, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_add(ptr noundef %panel) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @db7430_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@db7430_probe, %if.then36)) #5
          to label %cleanup [label %if.then36], !srcloc !178

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @db7430_probe.__UNIQUE_ID_ddebug309, ptr noundef %spi, ptr noundef nonnull @.str.11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end30, %if.then28, %if.then22, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call18, %if.then15 ], [ %call23, %if.then22 ], [ %call29, %if.then28 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.db7430, ptr %1, i32 0, i32 2
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -128
  %call1 = tail call fastcc i32 @db7430_power_on(ptr noundef %add.ptr.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_enable(ptr noundef %panel) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  %d11 = alloca [2 x i8], align 2
  %d32 = alloca [5 x i8], align 1
  %d53 = alloca [2 x i8], align 2
  %d74 = alloca [3 x i8], align 1
  %d95 = alloca [1 x i8], align 1
  %d116 = alloca [1 x i8], align 1
  %d137 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbi1 = getelementptr i8, ptr %panel, i32 -124
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %spi = getelementptr i8, ptr %panel, i32 -16
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %call3 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %call3, i32 noundef 17) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 20) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d11) #5
  %2 = ptrtoint ptr %d11 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 21086, ptr %d11, align 2
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %call17 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -44, ptr noundef nonnull %d11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end10.if.end30_crit_edge, label %do.body20

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body20:                                        ; preds = %if.end10
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.80, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.if.end30_crit_edge, label %do.end26

do.body20.if.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef %call17, i32 noundef 212) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %do.body20.if.end30_crit_edge, %if.end10.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d11) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %d32) #5
  %5 = call ptr @memcpy(ptr %d32, ptr @__const.db7430_enable.d.83, i32 5)
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %call38 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -8, ptr noundef nonnull %d32, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end30.if.end51_crit_edge, label %do.body41

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.body41:                                        ; preds = %if.end30
  %call42 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.84, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.if.end51_crit_edge, label %do.end47

do.body41.if.end51_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call38, i32 noundef 248) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %do.body41.if.end51_crit_edge, %if.end30.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %d32) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d53) #5
  %8 = ptrtoint ptr %d53 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %d53, align 2
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  %call59 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -4, ptr noundef nonnull %d53, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end51.if.end72_crit_edge, label %do.body62

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.body62:                                        ; preds = %if.end51
  %call63 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.88, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body62.if.end72_crit_edge, label %do.end68

do.body62.if.end72_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %call59, i32 noundef 252) #8
  br label %if.end72

if.end72:                                         ; preds = %do.end68, %do.body62.if.end72_crit_edge, %if.end51.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d53) #5
  call void @msleep(i32 noundef 150) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d74) #5
  %11 = call ptr @memcpy(ptr %d74, ptr @__const.db7430_enable.d.91, i32 3)
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  %call80 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -76, ptr noundef nonnull %d74, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end72.if.end93_crit_edge, label %do.body83

if.end72.if.end93_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.body83:                                        ; preds = %if.end72
  %call84 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.92, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body83.if.end93_crit_edge, label %do.end89

do.body83.if.end93_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %call80, i32 noundef 180) #8
  br label %if.end93

if.end93:                                         ; preds = %do.end89, %do.body83.if.end93_crit_edge, %if.end72.if.end93_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d74) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d95) #5
  %14 = ptrtoint ptr %d95 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %d95, align 1
  %15 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi, align 4
  %call101 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -75, ptr noundef nonnull %d95, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end93.if.end114_crit_edge, label %do.body104

if.end93.if.end114_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

do.body104:                                       ; preds = %if.end93
  %call105 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.96, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %do.body104.if.end114_crit_edge, label %do.end110

do.body104.if.end114_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %call101, i32 noundef 181) #8
  br label %if.end114

if.end114:                                        ; preds = %do.end110, %do.body104.if.end114_crit_edge, %if.end93.if.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d95) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d116) #5
  %17 = ptrtoint ptr %d116 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 36, ptr %d116, align 1
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %call122 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -73, ptr noundef nonnull %d116, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end114.if.end135_crit_edge, label %do.body125

if.end114.if.end135_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.body125:                                       ; preds = %if.end114
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.100, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.if.end135_crit_edge, label %do.end131

do.body125.if.end135_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.19, i32 noundef %call122, i32 noundef 183) #8
  br label %if.end135

if.end135:                                        ; preds = %do.end131, %do.body125.if.end135_crit_edge, %if.end114.if.end135_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d116) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d137) #5
  %20 = ptrtoint ptr %d137 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %d137, align 1
  %21 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi, align 4
  %call143 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -72, ptr noundef nonnull %d137, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end135.if.end156_crit_edge, label %do.body146

if.end135.if.end156_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.body146:                                       ; preds = %if.end135
  %call147 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.104, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %do.body146.if.end156_crit_edge, label %do.end152

do.body146.if.end156_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef %call143, i32 noundef 184) #8
  br label %if.end156

if.end156:                                        ; preds = %do.end152, %do.body146.if.end156_crit_edge, %if.end135.if.end156_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d137) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %23 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi, align 4
  %call164 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 41, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end156.if.end177_crit_edge, label %do.body167

if.end156.if.end177_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.body167:                                       ; preds = %if.end156
  %call168 = call i32 @___ratelimit(ptr noundef nonnull @db7430_enable._rs.107, ptr noundef nonnull @__func__.db7430_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %do.body167.if.end177_crit_edge, label %do.end173

do.body167.if.end177_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end173:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef %call164, i32 noundef 41) #8
  br label %if.end177

if.end177:                                        ; preds = %do.end173, %do.body167.if.end177_crit_edge, %if.end156.if.end177_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_disable(ptr noundef %panel) #2 align 64 {
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
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @db7430_disable._rs, ptr noundef nonnull @__func__.db7430_disable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %call3, i32 noundef 40) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 25) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call17 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 16, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end10.if.end30_crit_edge, label %do.body20

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body20:                                        ; preds = %if.end10
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @db7430_disable._rs.110, ptr noundef nonnull @__func__.db7430_disable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.if.end30_crit_edge, label %do.end26

do.body20.if.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %call17, i32 noundef 16) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %do.body20.if.end30_crit_edge, %if.end10.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 120) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset.i = getelementptr i8, ptr %panel, i32 32
  %0 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #5
  %regulators.i = getelementptr i8, ptr %panel, i32 36
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db7430_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @db7430_480_800_mode) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.113) #8
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
  %call10 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @db7430_get_modes.bus_format, i32 noundef 1) #5
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @db7430_power_on(ptr noundef %db) unnamed_addr #2 align 64 {
entry:
  %d = alloca [1 x i8], align 1
  %d32 = alloca [1 x i8], align 1
  %d53 = alloca [1 x i8], align 1
  %d74 = alloca [2 x i8], align 2
  %d95 = alloca [5 x i8], align 1
  %d116 = alloca [3 x i8], align 1
  %d137 = alloca [9 x i8], align 1
  %d158 = alloca [1 x i8], align 1
  %d179 = alloca [38 x i8], align 1
  %d200 = alloca [38 x i8], align 1
  %d221 = alloca [38 x i8], align 1
  %d242 = alloca [2 x i8], align 2
  %d263 = alloca [3 x i8], align 1
  %d284 = alloca [2 x i8], align 2
  %d305 = alloca [4 x i8], align 4
  %d326 = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbi1 = getelementptr inbounds %struct.db7430, ptr %db, i32 0, i32 1
  %regulators = getelementptr inbounds %struct.db7430, ptr %db, i32 0, i32 6
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 50) #5
  %reset = getelementptr inbounds %struct.db7430, ptr %db, i32 0, i32 5
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @db7430_power_on.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@db7430_power_on, %if.then8)) #5
          to label %do.end12 [label %if.then8], !srcloc !178

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @db7430_power_on.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.16) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #5
  %8 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %d, align 1
  %spi = getelementptr inbounds %struct.db7430, ptr %db, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  %call17 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 54, ptr noundef nonnull %d, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end12.if.end30_crit_edge, label %do.body20

do.end12.if.end30_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body20:                                        ; preds = %do.end12
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.if.end30_crit_edge, label %do.end26

do.body20.if.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %call17, i32 noundef 54) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %do.body20.if.end30_crit_edge, %do.end12.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d32) #5
  %11 = ptrtoint ptr %d32 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %d32, align 1
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  %call38 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 54, ptr noundef nonnull %d32, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end30.if.end51_crit_edge, label %do.body41

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.body41:                                        ; preds = %if.end30
  %call42 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.22, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.if.end51_crit_edge, label %do.end47

do.body41.if.end51_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %call38, i32 noundef 54) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %do.body41.if.end51_crit_edge, %if.end30.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d32) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d53) #5
  %14 = ptrtoint ptr %d53 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %d53, align 1
  %15 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi, align 4
  %call59 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -80, ptr noundef nonnull %d53, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end51.if.end72_crit_edge, label %do.body62

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.body62:                                        ; preds = %if.end51
  %call63 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.25, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body62.if.end72_crit_edge, label %do.end68

do.body62.if.end72_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %call59, i32 noundef 176) #8
  br label %if.end72

if.end72:                                         ; preds = %do.end68, %do.body62.if.end72_crit_edge, %if.end51.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d53) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d74) #5
  %17 = ptrtoint ptr %d74 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 10248, ptr %d74, align 2
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %call80 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -64, ptr noundef nonnull %d74, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end72.if.end93_crit_edge, label %do.body83

if.end72.if.end93_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.body83:                                        ; preds = %if.end72
  %call84 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.29, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body83.if.end93_crit_edge, label %do.end89

do.body83.if.end93_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.19, i32 noundef %call80, i32 noundef 192) #8
  br label %if.end93

if.end93:                                         ; preds = %do.end89, %do.body83.if.end93_crit_edge, %if.end72.if.end93_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d74) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %d95) #5
  %20 = call ptr @memcpy(ptr %d95, ptr @__const.db7430_power_on.d.32, i32 5)
  %21 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi, align 4
  %call101 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -63, ptr noundef nonnull %d95, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end93.if.end114_crit_edge, label %do.body104

if.end93.if.end114_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

do.body104:                                       ; preds = %if.end93
  %call105 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.33, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %do.body104.if.end114_crit_edge, label %do.end110

do.body104.if.end114_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef %call101, i32 noundef 193) #8
  br label %if.end114

if.end114:                                        ; preds = %do.end110, %do.body104.if.end114_crit_edge, %if.end93.if.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %d95) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d116) #5
  %23 = call ptr @memcpy(ptr %d116, ptr @__const.db7430_power_on.d.36, i32 3)
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  %call122 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -60, ptr noundef nonnull %d116, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end114.if.end135_crit_edge, label %do.body125

if.end114.if.end135_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.body125:                                       ; preds = %if.end114
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.37, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.if.end135_crit_edge, label %do.end131

do.body125.if.end135_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.19, i32 noundef %call122, i32 noundef 196) #8
  br label %if.end135

if.end135:                                        ; preds = %do.end131, %do.body125.if.end135_crit_edge, %if.end114.if.end135_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d116) #5
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %d137) #5
  %26 = call ptr @memcpy(ptr %d137, ptr @__const.db7430_power_on.d.40, i32 9)
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %call143 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -59, ptr noundef nonnull %d137, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end135.if.end156_crit_edge, label %do.body146

if.end135.if.end156_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.body146:                                       ; preds = %if.end135
  %call147 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.41, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %do.body146.if.end156_crit_edge, label %do.end152

do.body146.if.end156_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.19, i32 noundef %call143, i32 noundef 197) #8
  br label %if.end156

if.end156:                                        ; preds = %do.end152, %do.body146.if.end156_crit_edge, %if.end135.if.end156_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %d137) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d158) #5
  %29 = ptrtoint ptr %d158 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %d158, align 1
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi, align 4
  %call164 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -58, ptr noundef nonnull %d158, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end156.if.end177_crit_edge, label %do.body167

if.end156.if.end177_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.body167:                                       ; preds = %if.end156
  %call168 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.45, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %do.body167.if.end177_crit_edge, label %do.end173

do.body167.if.end177_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end173:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.19, i32 noundef %call164, i32 noundef 198) #8
  br label %if.end177

if.end177:                                        ; preds = %do.end173, %do.body167.if.end177_crit_edge, %if.end156.if.end177_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d158) #5
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %d179) #5
  %32 = call ptr @memcpy(ptr %d179, ptr @__const.db7430_power_on.d.48, i32 38)
  %33 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi, align 4
  %call185 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -56, ptr noundef nonnull %d179, i32 noundef 38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end177.if.end198_crit_edge, label %do.body188

if.end177.if.end198_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

do.body188:                                       ; preds = %if.end177
  %call189 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.49, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %do.body188.if.end198_crit_edge, label %do.end194

do.body188.if.end198_crit_edge:                   ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

do.end194:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.19, i32 noundef %call185, i32 noundef 200) #8
  br label %if.end198

if.end198:                                        ; preds = %do.end194, %do.body188.if.end198_crit_edge, %if.end177.if.end198_crit_edge
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %d179) #5
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %d200) #5
  %35 = call ptr @memcpy(ptr %d200, ptr @__const.db7430_power_on.d.52, i32 38)
  %36 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi, align 4
  %call206 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -55, ptr noundef nonnull %d200, i32 noundef 38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end198.if.end219_crit_edge, label %do.body209

if.end198.if.end219_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

do.body209:                                       ; preds = %if.end198
  %call210 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.53, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %do.body209.if.end219_crit_edge, label %do.end215

do.body209.if.end219_crit_edge:                   ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

do.end215:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %call206, i32 noundef 201) #8
  br label %if.end219

if.end219:                                        ; preds = %do.end215, %do.body209.if.end219_crit_edge, %if.end198.if.end219_crit_edge
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %d200) #5
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %d221) #5
  %38 = call ptr @memcpy(ptr %d221, ptr @__const.db7430_power_on.d.56, i32 38)
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi, align 4
  %call227 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -54, ptr noundef nonnull %d221, i32 noundef 38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end219.if.end240_crit_edge, label %do.body230

if.end219.if.end240_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end240

do.body230:                                       ; preds = %if.end219
  %call231 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.57, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %do.body230.if.end240_crit_edge, label %do.end236

do.body230.if.end240_crit_edge:                   ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end240

do.end236:                                        ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.19, i32 noundef %call227, i32 noundef 202) #8
  br label %if.end240

if.end240:                                        ; preds = %do.end236, %do.body230.if.end240_crit_edge, %if.end219.if.end240_crit_edge
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %d221) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d242) #5
  %41 = ptrtoint ptr %d242 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 13075, ptr %d242, align 2
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 4
  %call248 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -47, ptr noundef nonnull %d242, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end240.if.end261_crit_edge, label %do.body251

if.end240.if.end261_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end261

do.body251:                                       ; preds = %if.end240
  %call252 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.61, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %do.body251.if.end261_crit_edge, label %do.end257

do.body251.if.end261_crit_edge:                   ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end261

do.end257:                                        ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.19, i32 noundef %call248, i32 noundef 209) #8
  br label %if.end261

if.end261:                                        ; preds = %do.end257, %do.body251.if.end261_crit_edge, %if.end240.if.end261_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d242) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d263) #5
  %44 = call ptr @memcpy(ptr %d263, ptr @__const.db7430_power_on.d.64, i32 3)
  %45 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi, align 4
  %call269 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -46, ptr noundef nonnull %d263, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end261.if.end282_crit_edge, label %do.body272

if.end261.if.end282_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

do.body272:                                       ; preds = %if.end261
  %call273 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.65, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %do.body272.if.end282_crit_edge, label %do.end278

do.body272.if.end282_crit_edge:                   ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

do.end278:                                        ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.19, i32 noundef %call269, i32 noundef 210) #8
  br label %if.end282

if.end282:                                        ; preds = %do.end278, %do.body272.if.end282_crit_edge, %if.end261.if.end282_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d263) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d284) #5
  %47 = ptrtoint ptr %d284 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 20560, ptr %d284, align 2
  %48 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi, align 4
  %call290 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -45, ptr noundef nonnull %d284, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end282.if.end303_crit_edge, label %do.body293

if.end282.if.end303_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

do.body293:                                       ; preds = %if.end282
  %call294 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.69, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %do.body293.if.end303_crit_edge, label %do.end299

do.body293.if.end303_crit_edge:                   ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

do.end299:                                        ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.19, i32 noundef %call290, i32 noundef 211) #8
  br label %if.end303

if.end303:                                        ; preds = %do.end299, %do.body293.if.end303_crit_edge, %if.end282.if.end303_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d284) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d305) #5
  %50 = ptrtoint ptr %d305 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 789651014, ptr %d305, align 4
  %51 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi, align 4
  %call311 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -43, ptr noundef nonnull %d305, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.end303.if.end324_crit_edge, label %do.body314

if.end303.if.end324_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end324

do.body314:                                       ; preds = %if.end303
  %call315 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.73, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %do.body314.if.end324_crit_edge, label %do.end320

do.body314.if.end324_crit_edge:                   ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end324

do.end320:                                        ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.19, i32 noundef %call311, i32 noundef 213) #8
  br label %if.end324

if.end324:                                        ; preds = %do.end320, %do.body314.if.end324_crit_edge, %if.end303.if.end324_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d305) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d326) #5
  %53 = ptrtoint ptr %d326 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 4362, ptr %d326, align 2
  %54 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %spi, align 4
  %call332 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -42, ptr noundef nonnull %d326, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %if.end324.if.end345_crit_edge, label %do.body335

if.end324.if.end345_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end345

do.body335:                                       ; preds = %if.end324
  %call336 = call i32 @___ratelimit(ptr noundef nonnull @db7430_power_on._rs.77, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %do.body335.if.end345_crit_edge, label %do.end341

do.body335.if.end345_crit_edge:                   ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end345

do.end341:                                        ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.19, i32 noundef %call332, i32 noundef 214) #8
  br label %if.end345

if.end345:                                        ; preds = %do.end341, %do.body335.if.end345_crit_edge, %if.end324.if.end345_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d326) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end345, %do.end
  ret i32 %call
}

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
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !162, !163, !164, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__initcall__kmod_panel_samsung_db7430__310_343_db7430_driver_init6, !1, !"__initcall__kmod_panel_samsung_db7430__310_343_db7430_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 343, i32 1}
!2 = !{ptr @__exitcall_db7430_driver_exit, !1, !"__exitcall_db7430_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author311, !4, !"__UNIQUE_ID_author311", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 345, i32 1}
!5 = !{ptr @__UNIQUE_ID_description312, !6, !"__UNIQUE_ID_description312", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 346, i32 1}
!7 = !{ptr @__UNIQUE_ID_file313, !8, !"__UNIQUE_ID_file313", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 347, i32 1}
!9 = !{ptr @__UNIQUE_ID_license314, !8, !"__UNIQUE_ID_license314", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 339, i32 11}
!12 = !{ptr @db7430_driver, !13, !"db7430_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 335, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 283, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 284, i32 29}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 289, i32 34}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 291, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 294, i32 34}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 299, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 307, i32 34}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 312, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @db7430_probe.__UNIQUE_ID_ddebug309, !29, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!34 = !{ptr @db7430_drm_funcs, !35, !"db7430_drm_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 260, i32 37}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 102, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @db7430_power_on._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @db7430_power_on._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 114, i32 2}
!45 = !{ptr @db7430_power_on.__UNIQUE_ID_ddebug308, !44, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 122, i32 2}
!48 = !{ptr @db7430_power_on._rs, !47, !"_rs", i1 false, i1 false}
!49 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @db7430_power_on._entry.18, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @db7430_power_on._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @db7430_power_on._rs.22, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 123, i32 2}
!54 = !{ptr @db7430_power_on._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @db7430_power_on._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @db7430_power_on._rs.25, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 124, i32 2}
!58 = !{ptr @db7430_power_on._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @db7430_power_on._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @db7430_power_on._rs.29, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 125, i32 2}
!62 = !{ptr @db7430_power_on._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @db7430_power_on._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @db7430_power_on._rs.33, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 126, i32 2}
!66 = !{ptr @db7430_power_on._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @db7430_power_on._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @db7430_power_on._rs.37, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 128, i32 2}
!70 = !{ptr @db7430_power_on._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @db7430_power_on._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @db7430_power_on._rs.41, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 130, i32 2}
!74 = !{ptr @db7430_power_on._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @db7430_power_on._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @db7430_power_on._rs.45, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 137, i32 2}
!78 = !{ptr @db7430_power_on._entry.46, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @db7430_power_on._entry_ptr.47, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @db7430_power_on._rs.49, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 138, i32 2}
!82 = !{ptr @db7430_power_on._entry.50, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @db7430_power_on._entry_ptr.51, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @db7430_power_on._rs.53, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 145, i32 2}
!86 = !{ptr @db7430_power_on._entry.54, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @db7430_power_on._entry_ptr.55, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @db7430_power_on._rs.57, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 152, i32 2}
!90 = !{ptr @db7430_power_on._entry.58, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @db7430_power_on._entry_ptr.59, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @db7430_power_on._rs.61, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 159, i32 2}
!94 = !{ptr @db7430_power_on._entry.62, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @db7430_power_on._entry_ptr.63, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @db7430_power_on._rs.65, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 160, i32 2}
!98 = !{ptr @db7430_power_on._entry.66, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @db7430_power_on._entry_ptr.67, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @db7430_power_on._rs.69, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 161, i32 2}
!102 = !{ptr @db7430_power_on._entry.70, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @db7430_power_on._entry_ptr.71, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @db7430_power_on._rs.73, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 162, i32 2}
!106 = !{ptr @db7430_power_on._entry.74, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @db7430_power_on._entry_ptr.75, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @db7430_power_on._rs.77, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 163, i32 2}
!110 = !{ptr @db7430_power_on._entry.78, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @db7430_power_on._entry_ptr.79, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @db7430_enable._rs, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 205, i32 2}
!114 = !{ptr @__func__.db7430_enable, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @db7430_enable._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @db7430_enable._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @db7430_enable._rs.80, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 209, i32 2}
!119 = !{ptr @db7430_enable._entry.81, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @db7430_enable._entry_ptr.82, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @db7430_enable._rs.84, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 210, i32 2}
!123 = !{ptr @db7430_enable._entry.85, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @db7430_enable._entry_ptr.86, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @db7430_enable._rs.88, !126, !"_rs", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 211, i32 2}
!127 = !{ptr @db7430_enable._entry.89, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @db7430_enable._entry_ptr.90, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @db7430_enable._rs.92, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 215, i32 2}
!131 = !{ptr @db7430_enable._entry.93, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @db7430_enable._entry_ptr.94, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @db7430_enable._rs.96, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 216, i32 2}
!135 = !{ptr @db7430_enable._entry.97, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @db7430_enable._entry_ptr.98, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @db7430_enable._rs.100, !138, !"_rs", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 217, i32 2}
!139 = !{ptr @db7430_enable._entry.101, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @db7430_enable._entry_ptr.102, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @db7430_enable._rs.104, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 218, i32 2}
!143 = !{ptr @db7430_enable._entry.105, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @db7430_enable._entry_ptr.106, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @db7430_enable._rs.107, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 221, i32 2}
!147 = !{ptr @db7430_enable._entry.108, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @db7430_enable._entry_ptr.109, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @db7430_disable._rs, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 186, i32 2}
!151 = !{ptr @__func__.db7430_disable, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @db7430_disable._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @db7430_disable._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @db7430_disable._rs.110, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 188, i32 2}
!156 = !{ptr @db7430_disable._entry.111, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @db7430_disable._entry_ptr.112, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @db7430_get_modes.bus_format, !159, !"bus_format", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 236, i32 19}
!160 = !{ptr @.str.113, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 240, i32 3}
!162 = !{ptr @.str.114, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @db7430_get_modes._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @db7430_get_modes._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @db7430_480_800_mode, !166, !"db7430_480_800_mode", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 69, i32 38}
!167 = !{ptr @db7430_match, !168, !"db7430_match", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/panel/panel-samsung-db7430.c", i32 329, i32 34}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i64 2148178845, i64 2148178850, i64 2148178863, i64 2148178907, i64 2148178941, i64 2148178962}
