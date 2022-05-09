; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-s6d27a1.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.s6d27a1 = type { ptr, %struct.mipi_dbi, %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data] }
%struct.mipi_dbi = type { %struct.mutex, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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

@__initcall__kmod_panel_samsung_s6d27a1__308_316_s6d27a1_driver_init6 = internal global ptr @s6d27a1_driver_init, section ".initcall6.init", align 4
@s6d27a1_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @s6d27a1_probe, ptr @s6d27a1_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6d27a1_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_s6d27a1_driver_exit = internal global ptr @s6d27a1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [69 x i8] c"panel_samsung_s6d27a1.author=Markuss Broks <markuss.broks@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [63 x i8] c"panel_samsung_s6d27a1.description=Samsung S6D27A1 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [71 x i8] c"panel_samsung_s6d27a1.file=drivers/gpu/drm/panel/panel-samsung-s6d27a1\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [37 x i8] c"panel_samsung_s6d27a1.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s6d27a1-panel\00", [18 x i8] zeroinitializer }, align 32
@s6d27a1_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6d27a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no RESET GPIO\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MIPI DBI init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@s6d27a1_dbi_read_commands = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\DA\DB\DC\00", [28 x i8] zeroinitializer }, align 32
@s6d27a1_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @s6d27a1_prepare, ptr @s6d27a1_enable, ptr @s6d27a1_disable, ptr @s6d27a1_unprepare, ptr @s6d27a1_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add backlight\0A\00", [39 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 107, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s6d27a1_power_on\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-samsung-s6d27a1.c\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr = internal global ptr @s6d27a1_power_on._entry, section ".printk_index", align 4
@s6d27a1_power_on._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 125, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.16 = internal global ptr @s6d27a1_power_on._entry.14, section ".printk_index", align 4
@s6d27a1_power_on._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 126, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.19 = internal global ptr @s6d27a1_power_on._entry.18, section ".printk_index", align 4
@s6d27a1_power_on._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 130, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.22 = internal global ptr @s6d27a1_power_on._entry.21, section ".printk_index", align 4
@s6d27a1_power_on._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 133, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.26 = internal global ptr @s6d27a1_power_on._entry.25, section ".printk_index", align 4
@s6d27a1_power_on._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 135, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.30 = internal global ptr @s6d27a1_power_on._entry.29, section ".printk_index", align 4
@__const.s6d27a1_power_on.d.31 = private unnamed_addr constant [7 x i8] c"\01\00\00\08\08\02\00", align 1
@s6d27a1_power_on._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 137, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.34 = internal global ptr @s6d27a1_power_on._entry.33, section ".printk_index", align 4
@__const.s6d27a1_power_on.d.35 = private unnamed_addr constant [7 x i8] c"\19\00\08\0D\03A?", align 1
@s6d27a1_power_on._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 139, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.38 = internal global ptr @s6d27a1_power_on._entry.37, section ".printk_index", align 4
@__const.s6d27a1_power_on.d.39 = private unnamed_addr constant [10 x i8] c"\00\00\00\00UD\05\88KP", align 1
@s6d27a1_power_on._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 142, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.42 = internal global ptr @s6d27a1_power_on._entry.41, section ".printk_index", align 4
@__const.s6d27a1_power_on.d.43 = private unnamed_addr constant [6 x i8] c"\03\09\8A\00\01\16", align 1
@s6d27a1_power_on._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 144, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.46 = internal global ptr @s6d27a1_power_on._entry.45, section ".printk_index", align 4
@__const.s6d27a1_power_on.d.47 = private unnamed_addr constant [37 x i8] c"\00\05\06\07\08\01\09\0D\0A\0E\0B\0F\0C\10\01\11\12\13\14\05\06\07\08\01\09\0D\0A\0E\0B\0F\0C\10\01\11\12\13\14", align 1
@s6d27a1_power_on._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 153, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.50 = internal global ptr @s6d27a1_power_on._entry.49, section ".printk_index", align 4
@s6d27a1_power_on._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 156, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_power_on._entry_ptr.54 = internal global ptr @s6d27a1_power_on._entry.53, section ".printk_index", align 4
@s6d27a1_read_mtp_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.10, i32 82, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to read MTP ID 1\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s6d27a1_read_mtp_id\00", [44 x i8] zeroinitializer }, align 32
@s6d27a1_read_mtp_id._entry_ptr = internal global ptr @s6d27a1_read_mtp_id._entry, section ".printk_index", align 4
@s6d27a1_read_mtp_id._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.10, i32 87, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to read MTP ID 2\0A\00", [39 x i8] zeroinitializer }, align 32
@s6d27a1_read_mtp_id._entry_ptr.59 = internal global ptr @s6d27a1_read_mtp_id._entry.57, section ".printk_index", align 4
@s6d27a1_read_mtp_id._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.10, i32 92, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to read MTP ID 3\0A\00", [39 x i8] zeroinitializer }, align 32
@s6d27a1_read_mtp_id._entry_ptr.62 = internal global ptr @s6d27a1_read_mtp_id._entry.60, section ".printk_index", align 4
@s6d27a1_read_mtp_id._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.10, i32 95, ptr @.str.65, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MTP ID: %02x %02x %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s6d27a1_read_mtp_id._entry_ptr.66 = internal global ptr @s6d27a1_read_mtp_id._entry.63, section ".printk_index", align 4
@s6d27a1_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.s6d27a1_enable = private unnamed_addr constant [15 x i8] c"s6d27a1_enable\00", align 1
@s6d27a1_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.s6d27a1_enable, ptr @.str.10, i32 202, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_enable._entry_ptr = internal global ptr @s6d27a1_enable._entry, section ".printk_index", align 4
@s6d27a1_disable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.s6d27a1_disable = private unnamed_addr constant [16 x i8] c"s6d27a1_disable\00", align 1
@s6d27a1_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.s6d27a1_disable, ptr @.str.10, i32 186, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_disable._entry_ptr = internal global ptr @s6d27a1_disable._entry, section ".printk_index", align 4
@s6d27a1_unprepare._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.s6d27a1_unprepare = private unnamed_addr constant [18 x i8] c"s6d27a1_unprepare\00", align 1
@s6d27a1_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.s6d27a1_unprepare, ptr @.str.10, i32 176, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@s6d27a1_unprepare._entry_ptr = internal global ptr @s6d27a1_unprepare._entry, section ".printk_index", align 4
@s6d27a1_get_modes.bus_format = internal constant { i32, [28 x i8] } { i32 4106, [28 x i8] zeroinitializer }, align 32
@s6d27a1_480_800_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 24960, i16 480, i16 543, i16 545, i16 608, i16 0, i16 800, i16 811, i16 813, i16 823, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 50, i16 84, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@s6d27a1_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.10, i32 216, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to add mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s6d27a1_get_modes\00", [46 x i8] zeroinitializer }, align 32
@s6d27a1_get_modes._entry_ptr = internal global ptr @s6d27a1_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"s6d27a1_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 308, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 312, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"s6d27a1_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 302, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 260, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 261, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 266, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 268, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 271, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 276, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant [26 x i8] c"s6d27a1_dbi_read_commands\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 35, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"s6d27a1_drm_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 236, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 285, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 107, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 125, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 126, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 130, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 133, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 135, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 137, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 139, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 141, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 144, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 146, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 156, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 82, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 87, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 92, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 95, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 202, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 186, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 176, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [11 x i8] c"bus_format\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 212, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"s6d27a1_480_800_mode\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 50, i32 38 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 216, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_s6d27a1_driver_exit, ptr @__initcall__kmod_panel_samsung_s6d27a1__308_316_s6d27a1_driver_init6, ptr @s6d27a1_disable._entry, ptr @s6d27a1_disable._entry_ptr, ptr @s6d27a1_driver_exit, ptr @s6d27a1_enable._entry, ptr @s6d27a1_enable._entry_ptr, ptr @s6d27a1_get_modes._entry, ptr @s6d27a1_get_modes._entry_ptr, ptr @s6d27a1_power_on._entry, ptr @s6d27a1_power_on._entry.14, ptr @s6d27a1_power_on._entry.18, ptr @s6d27a1_power_on._entry.21, ptr @s6d27a1_power_on._entry.25, ptr @s6d27a1_power_on._entry.29, ptr @s6d27a1_power_on._entry.33, ptr @s6d27a1_power_on._entry.37, ptr @s6d27a1_power_on._entry.41, ptr @s6d27a1_power_on._entry.45, ptr @s6d27a1_power_on._entry.49, ptr @s6d27a1_power_on._entry.53, ptr @s6d27a1_power_on._entry_ptr, ptr @s6d27a1_power_on._entry_ptr.16, ptr @s6d27a1_power_on._entry_ptr.19, ptr @s6d27a1_power_on._entry_ptr.22, ptr @s6d27a1_power_on._entry_ptr.26, ptr @s6d27a1_power_on._entry_ptr.30, ptr @s6d27a1_power_on._entry_ptr.34, ptr @s6d27a1_power_on._entry_ptr.38, ptr @s6d27a1_power_on._entry_ptr.42, ptr @s6d27a1_power_on._entry_ptr.46, ptr @s6d27a1_power_on._entry_ptr.50, ptr @s6d27a1_power_on._entry_ptr.54, ptr @s6d27a1_read_mtp_id._entry, ptr @s6d27a1_read_mtp_id._entry.57, ptr @s6d27a1_read_mtp_id._entry.60, ptr @s6d27a1_read_mtp_id._entry.63, ptr @s6d27a1_read_mtp_id._entry_ptr, ptr @s6d27a1_read_mtp_id._entry_ptr.59, ptr @s6d27a1_read_mtp_id._entry_ptr.62, ptr @s6d27a1_read_mtp_id._entry_ptr.66, ptr @s6d27a1_unprepare._entry, ptr @s6d27a1_unprepare._entry_ptr, ptr @s6d27a1_driver, ptr @.str, ptr @s6d27a1_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @s6d27a1_dbi_read_commands, ptr @s6d27a1_drm_funcs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @s6d27a1_power_on._rs, ptr @.str.13, ptr @.str.15, ptr @s6d27a1_power_on._rs.17, ptr @s6d27a1_power_on._rs.20, ptr @s6d27a1_power_on._rs.24, ptr @s6d27a1_power_on._rs.28, ptr @s6d27a1_power_on._rs.32, ptr @s6d27a1_power_on._rs.36, ptr @s6d27a1_power_on._rs.40, ptr @s6d27a1_power_on._rs.44, ptr @s6d27a1_power_on._rs.48, ptr @s6d27a1_power_on._rs.52, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @s6d27a1_enable._rs, ptr @s6d27a1_disable._rs, ptr @s6d27a1_unprepare._rs, ptr @s6d27a1_get_modes.bus_format, ptr @s6d27a1_480_800_mode, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_dbi_read_commands to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_power_on._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_read_mtp_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_read_mtp_id._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_read_mtp_id._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_read_mtp_id._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_disable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_unprepare._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_get_modes.bus_format to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_480_800_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6d27a1_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @s6d27a1_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s6d27a1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @s6d27a1_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 180, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 4
  %regulators = getelementptr inbounds %struct.s6d27a1, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %regulators, align 4
  %arrayidx4 = getelementptr %struct.s6d27a1, ptr %call.i, i32 0, i32 4, i32 1
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
  %reset = getelementptr inbounds %struct.s6d27a1, ptr %call.i, i32 0, i32 3
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
  %dbi = getelementptr inbounds %struct.s6d27a1, ptr %call.i, i32 0, i32 1
  %call20 = tail call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call20, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %read_commands = getelementptr inbounds %struct.s6d27a1, ptr %call.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %read_commands to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @s6d27a1_dbi_read_commands, ptr %read_commands, align 4
  %panel = getelementptr inbounds %struct.s6d27a1, ptr %call.i, i32 0, i32 2
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %spi, ptr noundef nonnull @s6d27a1_drm_funcs, i32 noundef 17) #5
  %call27 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call27, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_add(ptr noundef %panel) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then29, %if.then22, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call18, %if.then15 ], [ %call23, %if.then22 ], [ %call30, %if.then29 ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.s6d27a1, ptr %1, i32 0, i32 2
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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_prepare(ptr noundef %panel) #2 align 64 {
entry:
  %d.i = alloca [0 x i8], align 1
  %id1.i.i = alloca i8, align 1
  %id2.i.i = alloca i8, align 1
  %id3.i.i = alloca i8, align 1
  %d42.i = alloca [2 x i8], align 2
  %d63.i = alloca [1 x i8], align 1
  %d84.i = alloca [8 x i8], align 8
  %d105.i = alloca [7 x i8], align 1
  %d126.i = alloca [7 x i8], align 1
  %d147.i = alloca [10 x i8], align 1
  %d168.i = alloca [6 x i8], align 1
  %d189.i = alloca [37 x i8], align 1
  %d210.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -128
  %dbi1.i = getelementptr i8, ptr %panel, i32 -124
  %regulators.i = getelementptr i8, ptr %panel, i32 28
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %call.i) #8
  br label %s6d27a1_power_on.exit

if.end.i:                                         ; preds = %entry
  tail call void @msleep(i32 noundef 20) #5
  %reset.i = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 20) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d.i) #5
  %spi.i = getelementptr i8, ptr %panel, i32 -16
  %6 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi.i, align 4
  %call7.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext 17, ptr noundef nonnull %d.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end20.i_crit_edge, label %do.body10.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

do.body10.i:                                      ; preds = %if.end.i
  %call11.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.if.end20.i_crit_edge, label %do.end16.i

do.body10.i.if.end20.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

do.end16.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %call7.i, i32 noundef 17) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end16.i, %do.body10.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d.i) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d.i) #5
  %8 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi.i, align 4
  %call27.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext 17, ptr noundef nonnull %d.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end20.i.if.end40.i_crit_edge, label %do.body30.i

if.end20.i.if.end40.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

do.body30.i:                                      ; preds = %if.end20.i
  %call31.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.17, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.if.end40.i_crit_edge, label %do.end36.i

do.body30.i.if.end40.i_crit_edge:                 ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

do.end36.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef %call27.i, i32 noundef 17) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end36.i, %do.body30.i.if.end40.i_crit_edge, %if.end20.i.if.end40.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d.i) #5
  call void @msleep(i32 noundef 120) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d42.i) #5
  %10 = ptrtoint ptr %d42.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 23130, ptr %d42.i, align 2
  %11 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi.i, align 4
  %call48.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -16, ptr noundef nonnull %d42.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end40.i.if.end61.i_crit_edge, label %do.body51.i

if.end40.i.if.end61.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.i

do.body51.i:                                      ; preds = %if.end40.i
  %call52.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.20, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %do.body51.i.if.end61.i_crit_edge, label %do.end57.i

do.body51.i.if.end61.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.i

do.end57.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15, i32 noundef %call48.i, i32 noundef 240) #8
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end57.i, %do.body51.i.if.end61.i_crit_edge, %if.end40.i.if.end61.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d42.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d63.i) #5
  %13 = ptrtoint ptr %d63.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 34, ptr %d63.i, align 1
  %14 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi.i, align 4
  %call69.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -77, ptr noundef nonnull %d63.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end61.i.if.end82.i_crit_edge, label %do.body72.i

if.end61.i.if.end82.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82.i

do.body72.i:                                      ; preds = %if.end61.i
  %call73.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.24, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %do.body72.i.if.end82.i_crit_edge, label %do.end78.i

do.body72.i.if.end82.i_crit_edge:                 ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82.i

do.end78.i:                                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %call69.i, i32 noundef 179) #8
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end78.i, %do.body72.i.if.end82.i_crit_edge, %if.end61.i.if.end82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d63.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d84.i) #5
  %16 = ptrtoint ptr %d84.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 566265752584204, ptr %d84.i, align 8
  %17 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi.i, align 4
  %call90.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -76, ptr noundef nonnull %d84.i, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end82.i.if.end103.i_crit_edge, label %do.body93.i

if.end82.i.if.end103.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103.i

do.body93.i:                                      ; preds = %if.end82.i
  %call94.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.28, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %do.body93.i.if.end103.i_crit_edge, label %do.end99.i

do.body93.i.if.end103.i_crit_edge:                ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103.i

do.end99.i:                                       ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.15, i32 noundef %call90.i, i32 noundef 180) #8
  br label %if.end103.i

if.end103.i:                                      ; preds = %do.end99.i, %do.body93.i.if.end103.i_crit_edge, %if.end82.i.if.end103.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d84.i) #5
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %d105.i) #5
  %19 = call ptr @memcpy(ptr %d105.i, ptr @__const.s6d27a1_power_on.d.31, i32 7)
  %20 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi.i, align 4
  %call111.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -13, ptr noundef nonnull %d105.i, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end103.i.if.end124.i_crit_edge, label %do.body114.i

if.end103.i.if.end124.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124.i

do.body114.i:                                     ; preds = %if.end103.i
  %call115.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.32, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %do.body114.i.if.end124.i_crit_edge, label %do.end120.i

do.body114.i.if.end124.i_crit_edge:               ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124.i

do.end120.i:                                      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %call111.i, i32 noundef 243) #8
  br label %if.end124.i

if.end124.i:                                      ; preds = %do.end120.i, %do.body114.i.if.end124.i_crit_edge, %if.end103.i.if.end124.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %d105.i) #5
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %d126.i) #5
  %22 = call ptr @memcpy(ptr %d126.i, ptr @__const.s6d27a1_power_on.d.35, i32 7)
  %23 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi.i, align 4
  %call132.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -14, ptr noundef nonnull %d126.i, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %tobool133.not.i = icmp eq i32 %call132.i, 0
  br i1 %tobool133.not.i, label %if.end124.i.if.end145.i_crit_edge, label %do.body135.i

if.end124.i.if.end145.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145.i

do.body135.i:                                     ; preds = %if.end124.i
  %call136.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.36, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %tobool137.not.i = icmp eq i32 %call136.i, 0
  br i1 %tobool137.not.i, label %do.body135.i.if.end145.i_crit_edge, label %do.end141.i

do.body135.i.if.end145.i_crit_edge:               ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145.i

do.end141.i:                                      ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.15, i32 noundef %call132.i, i32 noundef 242) #8
  br label %if.end145.i

if.end145.i:                                      ; preds = %do.end141.i, %do.body135.i.if.end145.i_crit_edge, %if.end124.i.if.end145.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %d126.i) #5
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %d147.i) #5
  %25 = call ptr @memcpy(ptr %d147.i, ptr @__const.s6d27a1_power_on.d.39, i32 10)
  %26 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i, align 4
  %call153.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -12, ptr noundef nonnull %d147.i, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i)
  %tobool154.not.i = icmp eq i32 %call153.i, 0
  br i1 %tobool154.not.i, label %if.end145.i.if.end166.i_crit_edge, label %do.body156.i

if.end145.i.if.end166.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166.i

do.body156.i:                                     ; preds = %if.end145.i
  %call157.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.40, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %tobool158.not.i = icmp eq i32 %call157.i, 0
  br i1 %tobool158.not.i, label %do.body156.i.if.end166.i_crit_edge, label %do.end162.i

do.body156.i.if.end166.i_crit_edge:               ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166.i

do.end162.i:                                      ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %call153.i, i32 noundef 244) #8
  br label %if.end166.i

if.end166.i:                                      ; preds = %do.end162.i, %do.body156.i.if.end166.i_crit_edge, %if.end145.i.if.end166.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %d147.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d168.i) #5
  %28 = call ptr @memcpy(ptr %d168.i, ptr @__const.s6d27a1_power_on.d.43, i32 6)
  %29 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi.i, align 4
  %call174.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -10, ptr noundef nonnull %d168.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %tobool175.not.i = icmp eq i32 %call174.i, 0
  br i1 %tobool175.not.i, label %if.end166.i.if.end187.i_crit_edge, label %do.body177.i

if.end166.i.if.end187.i_crit_edge:                ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187.i

do.body177.i:                                     ; preds = %if.end166.i
  %call178.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.44, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178.i)
  %tobool179.not.i = icmp eq i32 %call178.i, 0
  br i1 %tobool179.not.i, label %do.body177.i.if.end187.i_crit_edge, label %do.end183.i

do.body177.i.if.end187.i_crit_edge:               ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187.i

do.end183.i:                                      ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.15, i32 noundef %call174.i, i32 noundef 246) #8
  br label %if.end187.i

if.end187.i:                                      ; preds = %do.end183.i, %do.body177.i.if.end187.i_crit_edge, %if.end166.i.if.end187.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d168.i) #5
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %d189.i) #5
  %31 = call ptr @memcpy(ptr %d189.i, ptr @__const.s6d27a1_power_on.d.47, i32 37)
  %32 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi.i, align 4
  %call195.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -9, ptr noundef nonnull %d189.i, i32 noundef 37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i)
  %tobool196.not.i = icmp eq i32 %call195.i, 0
  br i1 %tobool196.not.i, label %if.end187.i.if.end208.i_crit_edge, label %do.body198.i

if.end187.i.if.end208.i_crit_edge:                ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208.i

do.body198.i:                                     ; preds = %if.end187.i
  %call199.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.48, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199.i)
  %tobool200.not.i = icmp eq i32 %call199.i, 0
  br i1 %tobool200.not.i, label %do.body198.i.if.end208.i_crit_edge, label %do.end204.i

do.body198.i.if.end208.i_crit_edge:               ; preds = %do.body198.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208.i

do.end204.i:                                      ; preds = %do.body198.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15, i32 noundef %call195.i, i32 noundef 247) #8
  br label %if.end208.i

if.end208.i:                                      ; preds = %do.end204.i, %do.body198.i.if.end208.i_crit_edge, %if.end187.i.if.end208.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %d189.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d210.i) #5
  %34 = ptrtoint ptr %d210.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -23131, ptr %d210.i, align 2
  %35 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi.i, align 4
  %call216.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1.i, i8 noundef zeroext -16, ptr noundef nonnull %d210.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216.i)
  %tobool217.not.i = icmp eq i32 %call216.i, 0
  br i1 %tobool217.not.i, label %if.end208.i.if.end229.i_crit_edge, label %do.body219.i

if.end208.i.if.end229.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end229.i

do.body219.i:                                     ; preds = %if.end208.i
  %call220.i = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_power_on._rs.52, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.i)
  %tobool221.not.i = icmp eq i32 %call220.i, 0
  br i1 %tobool221.not.i, label %do.body219.i.if.end229.i_crit_edge, label %do.end225.i

do.body219.i.if.end229.i_crit_edge:               ; preds = %do.body219.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end229.i

do.end225.i:                                      ; preds = %do.body219.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.15, i32 noundef %call216.i, i32 noundef 240) #8
  br label %if.end229.i

if.end229.i:                                      ; preds = %do.end225.i, %do.body219.i.if.end229.i_crit_edge, %if.end208.i.if.end229.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d210.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1.i.i) #5
  %37 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %id1.i.i, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id2.i.i) #5
  %38 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %id2.i.i, align 1, !annotation !139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id3.i.i) #5
  %39 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %id3.i.i, align 1, !annotation !139
  %call.i.i = call i32 @mipi_dbi_command_read(ptr noundef %dbi1.i, i8 noundef zeroext -38, ptr noundef nonnull %id1.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.55) #8
  br label %s6d27a1_read_mtp_id.exit.i

if.end.i.i:                                       ; preds = %if.end229.i
  %call2.i.i = call i32 @mipi_dbi_command_read(ptr noundef %dbi1.i, i8 noundef zeroext -37, ptr noundef nonnull %id2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end9.i.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.58) #8
  br label %s6d27a1_read_mtp_id.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %call10.i.i = call i32 @mipi_dbi_command_read(ptr noundef %dbi1.i, i8 noundef zeroext -36, ptr noundef nonnull %id3.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  br i1 %tobool11.not.i.i, label %do.end20.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.61) #8
  br label %s6d27a1_read_mtp_id.exit.i

do.end20.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %id1.i.i, align 1
  %conv.i.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %id2.i.i, align 1
  %conv22.i.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %id3.i.i, align 1
  %conv23.i.i = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.64, i32 noundef %conv.i.i, i32 noundef %conv22.i.i, i32 noundef %conv23.i.i) #8
  br label %s6d27a1_read_mtp_id.exit.i

s6d27a1_read_mtp_id.exit.i:                       ; preds = %do.end20.i.i, %do.end15.i.i, %do.end7.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i.i) #5
  br label %s6d27a1_power_on.exit

s6d27a1_power_on.exit:                            ; preds = %s6d27a1_read_mtp_id.exit.i, %do.end.i
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_enable(ptr noundef %panel) #2 align 64 {
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
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_enable._rs, ptr noundef nonnull @__func__.s6d27a1_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %call3, i32 noundef 41) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_disable(ptr noundef %panel) #2 align 64 {
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
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_disable._rs, ptr noundef nonnull @__func__.s6d27a1_disable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %call3, i32 noundef 40) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 25) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_unprepare(ptr noundef %panel) #2 align 64 {
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
  %call3 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 16, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @s6d27a1_unprepare._rs, ptr noundef nonnull @__func__.s6d27a1_unprepare) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %call3, i32 noundef 16) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 120) #5
  %reset.i = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  %regulators.i = getelementptr i8, ptr %panel, i32 28
  %call.i = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6d27a1_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @s6d27a1_480_800_mode) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.67) #8
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
  %call10 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @s6d27a1_get_modes.bus_format, i32 noundef 1) #5
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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !123, !124, !125, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_panel_samsung_s6d27a1__308_316_s6d27a1_driver_init6, !1, !"__initcall__kmod_panel_samsung_s6d27a1__308_316_s6d27a1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_s6d27a1_driver_exit, !1, !"__exitcall_s6d27a1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 312, i32 11}
!12 = !{ptr @s6d27a1_driver, !13, !"s6d27a1_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 308, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 260, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 261, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 266, i32 34}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 268, i32 35}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 271, i32 34}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 276, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 285, i32 34}
!28 = !{ptr @s6d27a1_dbi_read_commands, !29, !"s6d27a1_dbi_read_commands", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 35, i32 17}
!30 = !{ptr @s6d27a1_drm_funcs, !31, !"s6d27a1_drm_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 236, i32 37}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 107, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s6d27a1_power_on._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @s6d27a1_power_on._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 125, i32 2}
!42 = !{ptr @s6d27a1_power_on._rs, !41, !"_rs", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @s6d27a1_power_on._entry.14, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @s6d27a1_power_on._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @s6d27a1_power_on._rs.17, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 126, i32 2}
!48 = !{ptr @s6d27a1_power_on._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @s6d27a1_power_on._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @s6d27a1_power_on._rs.20, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 130, i32 2}
!52 = !{ptr @s6d27a1_power_on._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @s6d27a1_power_on._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @s6d27a1_power_on._rs.24, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 133, i32 2}
!56 = !{ptr @s6d27a1_power_on._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @s6d27a1_power_on._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @s6d27a1_power_on._rs.28, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 135, i32 2}
!60 = !{ptr @s6d27a1_power_on._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @s6d27a1_power_on._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @s6d27a1_power_on._rs.32, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 137, i32 2}
!64 = !{ptr @s6d27a1_power_on._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @s6d27a1_power_on._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @s6d27a1_power_on._rs.36, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 139, i32 2}
!68 = !{ptr @s6d27a1_power_on._entry.37, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @s6d27a1_power_on._entry_ptr.38, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @s6d27a1_power_on._rs.40, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 141, i32 2}
!72 = !{ptr @s6d27a1_power_on._entry.41, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @s6d27a1_power_on._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @s6d27a1_power_on._rs.44, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 144, i32 2}
!76 = !{ptr @s6d27a1_power_on._entry.45, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @s6d27a1_power_on._entry_ptr.46, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @s6d27a1_power_on._rs.48, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 146, i32 2}
!80 = !{ptr @s6d27a1_power_on._entry.49, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @s6d27a1_power_on._entry_ptr.50, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @s6d27a1_power_on._rs.52, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 156, i32 2}
!84 = !{ptr @s6d27a1_power_on._entry.53, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @s6d27a1_power_on._entry_ptr.54, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 82, i32 3}
!88 = !{ptr @.str.56, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @s6d27a1_read_mtp_id._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @s6d27a1_read_mtp_id._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.58, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 87, i32 3}
!93 = !{ptr @s6d27a1_read_mtp_id._entry.57, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @s6d27a1_read_mtp_id._entry_ptr.59, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.61, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 92, i32 3}
!97 = !{ptr @s6d27a1_read_mtp_id._entry.60, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @s6d27a1_read_mtp_id._entry_ptr.62, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.64, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 95, i32 2}
!101 = !{ptr @.str.65, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @s6d27a1_read_mtp_id._entry.63, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @s6d27a1_read_mtp_id._entry_ptr.66, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @s6d27a1_enable._rs, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 202, i32 2}
!106 = !{ptr @__func__.s6d27a1_enable, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @s6d27a1_enable._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @s6d27a1_enable._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @s6d27a1_disable._rs, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 186, i32 2}
!111 = !{ptr @__func__.s6d27a1_disable, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @s6d27a1_disable._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @s6d27a1_disable._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @s6d27a1_unprepare._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 176, i32 2}
!116 = !{ptr @__func__.s6d27a1_unprepare, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @s6d27a1_unprepare._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @s6d27a1_unprepare._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @s6d27a1_get_modes.bus_format, !120, !"bus_format", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 212, i32 19}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 216, i32 3}
!123 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @s6d27a1_get_modes._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @s6d27a1_get_modes._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @s6d27a1_480_800_mode, !127, !"s6d27a1_480_800_mode", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 50, i32 38}
!128 = !{ptr @s6d27a1_match, !129, !"s6d27a1_match", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6d27a1.c", i32 302, i32 34}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
