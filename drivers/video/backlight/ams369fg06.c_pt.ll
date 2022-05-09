; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/ams369fg06.c_pt.bc'
source_filename = "../drivers/video/backlight/ams369fg06.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.ams369fg06_gamma = type { [5 x ptr] }
%struct.atomic_t = type { i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ams369fg06 = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.lcd_platform_data = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ams369fg06__304_561_ams369fg06_driver_init6 = internal global ptr @ams369fg06_driver_init, section ".initcall6.init", align 4
@ams369fg06_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ams369fg06_probe, ptr @ams369fg06_remove, ptr @ams369fg06_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ams369fg06_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ams369fg06_driver_exit = internal global ptr @ams369fg06_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [51 x i8] c"ams369fg06.author=Jingoo Han <jg1.han@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [45 x i8] c"ams369fg06.description=ams369fg06 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [51 x i8] c"ams369fg06.file=drivers/video/backlight/ams369fg06\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [23 x i8] c"ams369fg06.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ams369fg06\00", [21 x i8] zeroinitializer }, align 32
@ams369fg06_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ams369fg06_suspend, ptr @ams369fg06_resume, ptr @ams369fg06_suspend, ptr @ams369fg06_resume, ptr @ams369fg06_suspend, ptr @ams369fg06_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ams369fg06_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi setup failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ams369fg06_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/ams369fg06.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ams369fg06_probe._entry_ptr = internal global ptr @ams369fg06_probe._entry, section ".printk_index", align 4
@ams369fg06_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"platform data is NULL\0A\00", [41 x i8] zeroinitializer }, align 32
@ams369fg06_probe._entry_ptr.8 = internal global ptr @ams369fg06_probe._entry.6, section ".printk_index", align 4
@ams369fg06_lcd_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @ams369fg06_get_power, ptr @ams369fg06_set_power, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ams369fg06-bl\00", [18 x i8] zeroinitializer }, align 32
@ams369fg06_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @ams369fg06_set_brightness, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ams369fg06_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ams369fg06 panel driver has been probed.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ams369fg06_probe._entry_ptr.13 = internal global ptr @ams369fg06_probe._entry.10, section ".printk_index", align 4
@ams369fg06_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"power value should be 0, 1 or 4.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ams369fg06_set_power\00", [43 x i8] zeroinitializer }, align 32
@ams369fg06_set_power._entry_ptr = internal global ptr @ams369fg06_set_power._entry, section ".printk_index", align 4
@ams369fg06_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lcd brightness should be %d to %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ams369fg06_set_brightness\00", [38 x i8] zeroinitializer }, align 32
@ams369fg06_set_brightness._entry_ptr = internal global ptr @ams369fg06_set_brightness._entry, section ".printk_index", align 4
@ams369fg06_set_brightness._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lcd brightness setting failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@ams369fg06_set_brightness._entry_ptr.20 = internal global ptr @ams369fg06_set_brightness._entry.18, section ".printk_index", align 4
@gamma_table = internal constant { %struct.ams369fg06_gamma, [44 x i8] } { %struct.ams369fg06_gamma { [5 x ptr] [ptr @ams369fg06_22_50, ptr @ams369fg06_22_100, ptr @ams369fg06_22_150, ptr @ams369fg06_22_200, ptr @ams369fg06_22_250] }, [44 x i8] zeroinitializer }, align 32
@_ams369fg06_gamma_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set gamma table.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_ams369fg06_gamma_ctl\00", [42 x i8] zeroinitializer }, align 32
@_ams369fg06_gamma_ctl._entry_ptr = internal global ptr @_ams369fg06_gamma_ctl._entry, section ".printk_index", align 4
@ams369fg06_22_50 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 63, i32 60, i32 44, i32 45, i32 39, i32 36, i32 0, i32 0, i32 0, i32 34, i32 42, i32 39, i32 35, i32 0, i32 63, i32 59, i32 44, i32 43, i32 36, i32 49], [44 x i8] zeroinitializer }, align 32
@ams369fg06_22_100 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 63, i32 48, i32 42, i32 43, i32 36, i32 47, i32 0, i32 0, i32 0, i32 37, i32 41, i32 36, i32 46, i32 0, i32 63, i32 47, i32 41, i32 41, i32 33, i32 63], [44 x i8] zeroinitializer }, align 32
@ams369fg06_22_150 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 63, i32 45, i32 41, i32 40, i32 35, i32 55, i32 0, i32 0, i32 11, i32 37, i32 40, i32 34, i32 54, i32 0, i32 63, i32 43, i32 40, i32 38, i32 31, i32 74], [44 x i8] zeroinitializer }, align 32
@ams369fg06_22_200 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 63, i32 40, i32 41, i32 39, i32 33, i32 62, i32 0, i32 0, i32 16, i32 37, i32 39, i32 32, i32 61, i32 0, i32 63, i32 40, i32 39, i32 37, i32 29, i32 83], [44 x i8] zeroinitializer }, align 32
@ams369fg06_22_250 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 63, i32 42, i32 39, i32 39, i32 31, i32 68, i32 0, i32 0, i32 23, i32 36, i32 38, i32 31, i32 67, i32 0, i32 63, i32 42, i32 37, i32 36, i32 27, i32 92], [44 x i8] zeroinitializer }, align 32
@ams369fg06_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset is NULL.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ams369fg06_power_on\00", [44 x i8] zeroinitializer }, align 32
@ams369fg06_power_on._entry_ptr = internal global ptr @ams369fg06_power_on._entry, section ".printk_index", align 4
@ams369fg06_power_on._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize ldi.\0A\00", [37 x i8] zeroinitializer }, align 32
@ams369fg06_power_on._entry_ptr.27 = internal global ptr @ams369fg06_power_on._entry.25, section ".printk_index", align 4
@ams369fg06_power_on._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable ldi.\0A\00", [41 x i8] zeroinitializer }, align 32
@ams369fg06_power_on._entry_ptr.30 = internal global ptr @ams369fg06_power_on._entry.28, section ".printk_index", align 4
@ams369fg06_power_on._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lcd gamma setting failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@ams369fg06_power_on._entry_ptr.33 = internal global ptr @ams369fg06_power_on._entry.31, section ".printk_index", align 4
@seq_setting = internal constant { [86 x i16], [52 x i8] } { [86 x i16] [i16 49, i16 8, i16 50, i16 20, i16 48, i16 2, i16 39, i16 1, i16 18, i16 8, i16 19, i16 8, i16 21, i16 0, i16 22, i16 0, i16 239, i16 208, i16 255, i16 232, i16 57, i16 68, i16 64, i16 0, i16 65, i16 63, i16 66, i16 42, i16 67, i16 39, i16 68, i16 39, i16 69, i16 31, i16 70, i16 68, i16 80, i16 0, i16 81, i16 0, i16 82, i16 23, i16 83, i16 36, i16 84, i16 38, i16 85, i16 31, i16 86, i16 67, i16 96, i16 0, i16 97, i16 63, i16 98, i16 42, i16 99, i16 37, i16 100, i16 36, i16 101, i16 27, i16 102, i16 92, i16 23, i16 34, i16 24, i16 51, i16 25, i16 3, i16 26, i16 1, i16 34, i16 164, i16 35, i16 0, i16 38, i16 160, i16 29, i16 160, i16 4096, i16 300, i16 20, i16 3, i16 8192, i16 0], [52 x i8] zeroinitializer }, align 32
@seq_stand_by_off = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 29, i16 160, i16 4096, i16 250, i16 8192, i16 0], [20 x i8] zeroinitializer }, align 32
@seq_display_on = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 20, i16 3, i16 8192, i16 0], [24 x i8] zeroinitializer }, align 32
@ams369fg06_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lcd setting failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ams369fg06_power_off\00", [43 x i8] zeroinitializer }, align 32
@ams369fg06_power_off._entry_ptr = internal global ptr @ams369fg06_power_off._entry, section ".printk_index", align 4
@seq_display_off = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 20, i16 0, i16 8192, i16 0], [24 x i8] zeroinitializer }, align 32
@seq_stand_by_on = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 29, i16 161, i16 4096, i16 200, i16 8192, i16 0], [20 x i8] zeroinitializer }, align 32
@ams369fg06_suspend.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ams369fg06_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lcd->power = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"ams369fg06_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 551, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 553, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"ams369fg06_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 541, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 456, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 465, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"ams369fg06_lcd_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 430, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 480, i32 49 }
@___asan_gen_.83 = private unnamed_addr constant [25 x i8] c"ams369fg06_backlight_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 435, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 504, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 401, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 416, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 423, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"gamma_table\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 150, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 219, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"ams369fg06_22_50\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 140, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"ams369fg06_22_100\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 134, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"ams369fg06_22_150\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 128, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"ams369fg06_22_200\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 122, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"ams369fg06_22_250\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 116, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 321, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 330, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 336, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 343, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"seq_setting\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 63, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"seq_stand_by_off\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 57, i32 29 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"seq_display_on\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 41, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 359, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"seq_display_off\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 46, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant [16 x i8] c"seq_stand_by_on\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 51, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [40 x i8] c"../drivers/video/backlight/ams369fg06.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 522, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_ams369fg06_driver_exit, ptr @__initcall__kmod_ams369fg06__304_561_ams369fg06_driver_init6, ptr @_ams369fg06_gamma_ctl._entry, ptr @_ams369fg06_gamma_ctl._entry_ptr, ptr @ams369fg06_driver_exit, ptr @ams369fg06_power_off._entry, ptr @ams369fg06_power_off._entry_ptr, ptr @ams369fg06_power_on._entry, ptr @ams369fg06_power_on._entry.25, ptr @ams369fg06_power_on._entry.28, ptr @ams369fg06_power_on._entry.31, ptr @ams369fg06_power_on._entry_ptr, ptr @ams369fg06_power_on._entry_ptr.27, ptr @ams369fg06_power_on._entry_ptr.30, ptr @ams369fg06_power_on._entry_ptr.33, ptr @ams369fg06_probe._entry, ptr @ams369fg06_probe._entry.10, ptr @ams369fg06_probe._entry.6, ptr @ams369fg06_probe._entry_ptr, ptr @ams369fg06_probe._entry_ptr.13, ptr @ams369fg06_probe._entry_ptr.8, ptr @ams369fg06_set_brightness._entry, ptr @ams369fg06_set_brightness._entry.18, ptr @ams369fg06_set_brightness._entry_ptr, ptr @ams369fg06_set_brightness._entry_ptr.20, ptr @ams369fg06_set_power._entry, ptr @ams369fg06_set_power._entry_ptr, ptr @ams369fg06_driver, ptr @.str, ptr @ams369fg06_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ams369fg06_lcd_ops, ptr @.str.9, ptr @ams369fg06_backlight_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @gamma_table, ptr @.str.21, ptr @.str.22, ptr @ams369fg06_22_50, ptr @ams369fg06_22_100, ptr @ams369fg06_22_150, ptr @ams369fg06_22_200, ptr @ams369fg06_22_250, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @seq_setting, ptr @seq_stand_by_off, ptr @seq_display_on, ptr @.str.34, ptr @.str.35, ptr @seq_display_off, ptr @seq_stand_by_on, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_lcd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_set_brightness._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ams369fg06_gamma_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_22_50 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_22_100 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_22_150 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_22_200 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_22_250 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_power_on._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_power_on._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_power_on._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_setting to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_stand_by_off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_display_on to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams369fg06_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_display_off to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_stand_by_on to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ams369fg06_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ams369fg06_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ams369fg06_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ams369fg06_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams369fg06_probe(ptr noundef %spi) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %0 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %bits_per_word, align 1
  %call1 = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %spi5 = getelementptr inbounds %struct.ams369fg06, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %spi5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %spi5, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %call.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %lcd_pd = getelementptr inbounds %struct.ams369fg06, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %lcd_pd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %lcd_pd, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %call20 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef nonnull @.str, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @ams369fg06_lcd_ops) #6
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %ld25 = getelementptr inbounds %struct.ams369fg06, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %ld25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %ld25, align 4
  %10 = call ptr @memset(ptr %props, i32 0, i32 28)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %1, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 255, ptr %0, align 4
  %call28 = call ptr @devm_backlight_device_register(ptr noundef %spi, ptr noundef nonnull @.str.9, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @ams369fg06_backlight_ops, ptr noundef nonnull %props) #6
  %cmp.i81 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %14 = ptrtoint ptr %call28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 150, ptr %call28, align 8
  %bd34 = getelementptr inbounds %struct.ams369fg06, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %bd34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call28, ptr %bd34, align 4
  %16 = ptrtoint ptr %lcd_pd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lcd_pd, align 4
  %lcd_enabled = getelementptr inbounds %struct.lcd_platform_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %lcd_enabled to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lcd_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool36.not = icmp eq i32 %19, 0
  %power = getelementptr inbounds %struct.ams369fg06, ptr %call.i, i32 0, i32 2
  br i1 %tobool36.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %power, align 4
  %call38 = call fastcc i32 @ams369fg06_power(ptr noundef nonnull %call.i, i32 noundef 0)
  br label %if.end40

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %power, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then30, %if.then22, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %8, %if.then22 ], [ %13, %if.then30 ], [ 0, %if.end40 ], [ -22, %do.end15 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams369fg06_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ams369fg06_power(ptr noundef %1, i32 noundef 4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ams369fg06_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ams369fg06_power(ptr noundef %1, i32 noundef 4)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ams369fg06_power(ptr nocapture noundef %lcd, i32 noundef %power) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %power)
  %cmp.i = icmp sgt i32 %power, 1
  %power8 = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 2
  %0 = ptrtoint ptr %power8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i29 = icmp sgt i32 %1, 1
  br i1 %cmp.i, label %land.lhs.true7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp.i29, label %if.then, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then:                                          ; preds = %land.lhs.true
  %lcd_pd.i = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 5
  %2 = ptrtoint ptr %lcd_pd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd_pd.i, align 4
  %bd1.i = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 4
  %4 = ptrtoint ptr %bd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd1.i, align 4
  %power_on.i = getelementptr inbounds %struct.lcd_platform_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_on.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %ld.i = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 3
  %8 = ptrtoint ptr %ld.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ld.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef 1) #6
  %power_on_delay.i = getelementptr inbounds %struct.lcd_platform_data, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %power_on_delay.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_on_delay.i, align 4
  tail call void @msleep(i32 noundef %11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end5.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %ld7.i = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 3
  %14 = ptrtoint ptr %ld7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ld7.i, align 4
  %call8.i = tail call i32 %13(ptr noundef %15) #6
  %reset_delay.i = getelementptr inbounds %struct.lcd_platform_data, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %reset_delay.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reset_delay.i, align 4
  tail call void @msleep(i32 noundef %17) #6
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end15.i.i.i, %if.end5.i
  %i.0.i.i.i = phi i32 [ 0, %if.end5.i ], [ %add16.i.i.i, %if.end15.i.i.i ]
  %arrayidx.i.i.i = getelementptr i16, ptr @seq_setting, i32 %i.0.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i.i, align 2
  %20 = and i16 %19, -256
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %if.then.i.i.i [
    i16 8192, label %while.cond.i.i.i.while.cond.i.1.i.i_crit_edge
    i16 4096, label %if.else.i.i.i
  ]

while.cond.i.i.i.while.cond.i.1.i.i_crit_edge:    ; preds = %while.cond.i.i.i
  br label %while.cond.i.1.i.i

if.then.i.i.i:                                    ; preds = %while.cond.i.i.i
  %conv8.i.i.i = trunc i16 %19 to i8
  %add.i.i.i = or i32 %i.0.i.i.i, 1
  %arrayidx9.i.i.i = getelementptr i16, ptr @seq_setting, i32 %add.i.i.i
  %22 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx9.i.i.i, align 2
  %conv10.i.i.i = trunc i16 %23 to i8
  %call.i.i.i = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv8.i.i.i, i8 noundef zeroext %conv10.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end15.i.i.i_crit_edge, label %if.then.i.i.i.cleanup.sink.split.i_crit_edge

if.then.i.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then.i.i.i.if.end15.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i.i

if.else.i.i.i:                                    ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i.i.i = or i32 %i.0.i.i.i, 1
  %arrayidx13.i.i.i = getelementptr i16, ptr @seq_setting, i32 %add12.i.i.i
  %24 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx13.i.i.i, align 2
  %conv14.i.i.i = zext i16 %25 to i32
  tail call void @msleep(i32 noundef %conv14.i.i.i) #6
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then.i.i.i.if.end15.i.i.i_crit_edge
  %add16.i.i.i = add i32 %i.0.i.i.i, 2
  br label %while.cond.i.i.i

while.cond.i.1.i.i:                               ; preds = %if.end15.i.1.i.i, %while.cond.i.i.i.while.cond.i.1.i.i_crit_edge
  %i.0.i.1.i.i = phi i32 [ %add16.i.1.i.i, %if.end15.i.1.i.i ], [ 0, %while.cond.i.i.i.while.cond.i.1.i.i_crit_edge ]
  %arrayidx.i.1.i.i = getelementptr i16, ptr @seq_stand_by_off, i32 %i.0.i.1.i.i
  %26 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i.1.i.i, align 2
  %28 = and i16 %27, -256
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %28, label %if.then.i.1.i.i [
    i16 8192, label %while.cond.i.1.i.i.while.cond.i.i58.i_crit_edge
    i16 4096, label %if.else.i.1.i.i
  ]

while.cond.i.1.i.i.while.cond.i.i58.i_crit_edge:  ; preds = %while.cond.i.1.i.i
  br label %while.cond.i.i58.i

if.else.i.1.i.i:                                  ; preds = %while.cond.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i.1.i.i = or i32 %i.0.i.1.i.i, 1
  %arrayidx13.i.1.i.i = getelementptr i16, ptr @seq_stand_by_off, i32 %add12.i.1.i.i
  %30 = ptrtoint ptr %arrayidx13.i.1.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx13.i.1.i.i, align 2
  %conv14.i.1.i.i = zext i16 %31 to i32
  tail call void @msleep(i32 noundef %conv14.i.1.i.i) #6
  br label %if.end15.i.1.i.i

if.then.i.1.i.i:                                  ; preds = %while.cond.i.1.i.i
  %conv8.i.1.i.i = trunc i16 %27 to i8
  %add.i.1.i.i = or i32 %i.0.i.1.i.i, 1
  %arrayidx9.i.1.i.i = getelementptr i16, ptr @seq_stand_by_off, i32 %add.i.1.i.i
  %32 = ptrtoint ptr %arrayidx9.i.1.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx9.i.1.i.i, align 2
  %conv10.i.1.i.i = trunc i16 %33 to i8
  %call.i.1.i.i = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv8.i.1.i.i, i8 noundef zeroext %conv10.i.1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i)
  %tobool.not.i.1.i.i = icmp eq i32 %call.i.1.i.i, 0
  br i1 %tobool.not.i.1.i.i, label %if.then.i.1.i.i.if.end15.i.1.i.i_crit_edge, label %if.then.i.1.i.i.cleanup.sink.split.i_crit_edge

if.then.i.1.i.i.cleanup.sink.split.i_crit_edge:   ; preds = %if.then.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then.i.1.i.i.if.end15.i.1.i.i_crit_edge:       ; preds = %if.then.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.1.i.i

if.end15.i.1.i.i:                                 ; preds = %if.then.i.1.i.i.if.end15.i.1.i.i_crit_edge, %if.else.i.1.i.i
  %add16.i.1.i.i = add i32 %i.0.i.1.i.i, 2
  br label %while.cond.i.1.i.i

while.cond.i.i58.i:                               ; preds = %if.end15.i.i71.i, %while.cond.i.1.i.i.while.cond.i.i58.i_crit_edge
  %i.0.i.i56.i = phi i32 [ %add16.i.i70.i, %if.end15.i.i71.i ], [ 0, %while.cond.i.1.i.i.while.cond.i.i58.i_crit_edge ]
  %arrayidx.i.i57.i = getelementptr i16, ptr @seq_stand_by_off, i32 %i.0.i.i56.i
  %34 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i.i57.i, align 2
  %36 = and i16 %35, -256
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %36, label %if.then.i.i65.i [
    i16 8192, label %while.cond.i.i58.i.while.cond.i.1.i74.i_crit_edge
    i16 4096, label %if.else.i.i69.i
  ]

while.cond.i.i58.i.while.cond.i.1.i74.i_crit_edge: ; preds = %while.cond.i.i58.i
  br label %while.cond.i.1.i74.i

if.then.i.i65.i:                                  ; preds = %while.cond.i.i58.i
  %conv8.i.i59.i = trunc i16 %35 to i8
  %add.i.i60.i = or i32 %i.0.i.i56.i, 1
  %arrayidx9.i.i61.i = getelementptr i16, ptr @seq_stand_by_off, i32 %add.i.i60.i
  %38 = ptrtoint ptr %arrayidx9.i.i61.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx9.i.i61.i, align 2
  %conv10.i.i62.i = trunc i16 %39 to i8
  %call.i.i63.i = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv8.i.i59.i, i8 noundef zeroext %conv10.i.i62.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i)
  %tobool.not.i.i64.i = icmp eq i32 %call.i.i63.i, 0
  br i1 %tobool.not.i.i64.i, label %if.then.i.i65.i.if.end15.i.i71.i_crit_edge, label %if.then.i.i65.i.cleanup.sink.split.i_crit_edge

if.then.i.i65.i.cleanup.sink.split.i_crit_edge:   ; preds = %if.then.i.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then.i.i65.i.if.end15.i.i71.i_crit_edge:       ; preds = %if.then.i.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i71.i

if.else.i.i69.i:                                  ; preds = %while.cond.i.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i.i66.i = or i32 %i.0.i.i56.i, 1
  %arrayidx13.i.i67.i = getelementptr i16, ptr @seq_stand_by_off, i32 %add12.i.i66.i
  %40 = ptrtoint ptr %arrayidx13.i.i67.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx13.i.i67.i, align 2
  %conv14.i.i68.i = zext i16 %41 to i32
  tail call void @msleep(i32 noundef %conv14.i.i68.i) #6
  br label %if.end15.i.i71.i

if.end15.i.i71.i:                                 ; preds = %if.else.i.i69.i, %if.then.i.i65.i.if.end15.i.i71.i_crit_edge
  %add16.i.i70.i = add i32 %i.0.i.i56.i, 2
  br label %while.cond.i.i58.i

while.cond.i.1.i74.i:                             ; preds = %if.end15.i.1.i87.i, %while.cond.i.i58.i.while.cond.i.1.i74.i_crit_edge
  %i.0.i.1.i72.i = phi i32 [ %add16.i.1.i86.i, %if.end15.i.1.i87.i ], [ 0, %while.cond.i.i58.i.while.cond.i.1.i74.i_crit_edge ]
  %arrayidx.i.1.i73.i = getelementptr i16, ptr @seq_display_on, i32 %i.0.i.1.i72.i
  %42 = ptrtoint ptr %arrayidx.i.1.i73.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i.1.i73.i, align 2
  %44 = and i16 %43, -256
  %45 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %44, label %if.then.i.1.i85.i [
    i16 8192, label %if.end24.i
    i16 4096, label %if.else.i.1.i78.i
  ]

if.else.i.1.i78.i:                                ; preds = %while.cond.i.1.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i.1.i75.i = or i32 %i.0.i.1.i72.i, 1
  %arrayidx13.i.1.i76.i = getelementptr i16, ptr @seq_display_on, i32 %add12.i.1.i75.i
  %46 = ptrtoint ptr %arrayidx13.i.1.i76.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx13.i.1.i76.i, align 2
  %conv14.i.1.i77.i = zext i16 %47 to i32
  tail call void @msleep(i32 noundef %conv14.i.1.i77.i) #6
  br label %if.end15.i.1.i87.i

if.then.i.1.i85.i:                                ; preds = %while.cond.i.1.i74.i
  %conv8.i.1.i79.i = trunc i16 %43 to i8
  %add.i.1.i80.i = or i32 %i.0.i.1.i72.i, 1
  %arrayidx9.i.1.i81.i = getelementptr i16, ptr @seq_display_on, i32 %add.i.1.i80.i
  %48 = ptrtoint ptr %arrayidx9.i.1.i81.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx9.i.1.i81.i, align 2
  %conv10.i.1.i82.i = trunc i16 %49 to i8
  %call.i.1.i83.i = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv8.i.1.i79.i, i8 noundef zeroext %conv10.i.1.i82.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i83.i)
  %tobool.not.i.1.i84.i = icmp eq i32 %call.i.1.i83.i, 0
  br i1 %tobool.not.i.1.i84.i, label %if.then.i.1.i85.i.if.end15.i.1.i87.i_crit_edge, label %if.then.i.1.i85.i.cleanup.sink.split.i_crit_edge

if.then.i.1.i85.i.cleanup.sink.split.i_crit_edge: ; preds = %if.then.i.1.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then.i.1.i85.i.if.end15.i.1.i87.i_crit_edge:   ; preds = %if.then.i.1.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.1.i87.i

if.end15.i.1.i87.i:                               ; preds = %if.then.i.1.i85.i.if.end15.i.1.i87.i_crit_edge, %if.else.i.1.i78.i
  %add16.i.1.i86.i = add i32 %i.0.i.1.i72.i, 2
  br label %while.cond.i.1.i74.i

if.end24.i:                                       ; preds = %while.cond.i.1.i74.i
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 8
  %call25.i = tail call fastcc i32 @ams369fg06_gamma_ctl(ptr noundef %lcd, i32 noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.then15_crit_edge, label %if.end24.i.cleanup.sink.split.i_crit_edge

if.end24.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end24.i.if.then15_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

cleanup.sink.split.i:                             ; preds = %if.end24.i.cleanup.sink.split.i_crit_edge, %if.then.i.1.i85.i.cleanup.sink.split.i_crit_edge, %if.then.i.i65.i.cleanup.sink.split.i_crit_edge, %if.then.i.1.i.i.cleanup.sink.split.i_crit_edge, %if.then.i.i.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.str.32.sink.i = phi ptr [ @.str.23, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.32, %if.end24.i.cleanup.sink.split.i_crit_edge ], [ @.str.29, %if.then.i.1.i85.i.cleanup.sink.split.i_crit_edge ], [ @.str.29, %if.then.i.i65.i.cleanup.sink.split.i_crit_edge ], [ @.str.26, %if.then.i.1.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.26, %if.then.i.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %call25.i, %if.end24.i.cleanup.sink.split.i_crit_edge ], [ %call.i.1.i83.i, %if.then.i.1.i85.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i63.i, %if.then.i.i65.i.cleanup.sink.split.i_crit_edge ], [ %call.i.1.i.i, %if.then.i.1.i.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i.i, %if.then.i.i.i.cleanup.sink.split.i_crit_edge ]
  %52 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lcd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull %.str.32.sink.i) #9
  br label %if.end17

land.lhs.true7:                                   ; preds = %entry
  br i1 %cmp.i29, label %land.lhs.true7.if.then15_crit_edge, label %if.then11

land.lhs.true7.if.then15_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then11:                                        ; preds = %land.lhs.true7
  %lcd_pd.i31 = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 5
  %54 = ptrtoint ptr %lcd_pd.i31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lcd_pd.i31, align 4
  br label %while.cond.i.i.i34

while.cond.i.i.i34:                               ; preds = %if.end15.i.i.i47, %if.then11
  %i.0.i.i.i32 = phi i32 [ 0, %if.then11 ], [ %add16.i.i.i46, %if.end15.i.i.i47 ]
  %arrayidx.i.i.i33 = getelementptr i16, ptr @seq_display_off, i32 %i.0.i.i.i32
  %56 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i.i.i33, align 2
  %58 = and i16 %57, -256
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %58, label %if.then.i.i.i41 [
    i16 8192, label %while.cond.i.i.i34.while.cond.i.1.i.i50_crit_edge
    i16 4096, label %if.else.i.i.i45
  ]

while.cond.i.i.i34.while.cond.i.1.i.i50_crit_edge: ; preds = %while.cond.i.i.i34
  br label %while.cond.i.1.i.i50

if.then.i.i.i41:                                  ; preds = %while.cond.i.i.i34
  %conv8.i.i.i35 = trunc i16 %57 to i8
  %add.i.i.i36 = or i32 %i.0.i.i.i32, 1
  %arrayidx9.i.i.i37 = getelementptr i16, ptr @seq_display_off, i32 %add.i.i.i36
  %60 = ptrtoint ptr %arrayidx9.i.i.i37 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx9.i.i.i37, align 2
  %conv10.i.i.i38 = trunc i16 %61 to i8
  %call.i.i.i39 = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv8.i.i.i35, i8 noundef zeroext %conv10.i.i.i38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i39)
  %tobool.not.i.i.i40 = icmp eq i32 %call.i.i.i39, 0
  br i1 %tobool.not.i.i.i40, label %if.then.i.i.i41.if.end15.i.i.i47_crit_edge, label %if.then.i.i.i41.do.end.i_crit_edge

if.then.i.i.i41.do.end.i_crit_edge:               ; preds = %if.then.i.i.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i.i.i41.if.end15.i.i.i47_crit_edge:       ; preds = %if.then.i.i.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i.i47

if.else.i.i.i45:                                  ; preds = %while.cond.i.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i.i.i42 = or i32 %i.0.i.i.i32, 1
  %arrayidx13.i.i.i43 = getelementptr i16, ptr @seq_display_off, i32 %add12.i.i.i42
  %62 = ptrtoint ptr %arrayidx13.i.i.i43 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx13.i.i.i43, align 2
  %conv14.i.i.i44 = zext i16 %63 to i32
  tail call void @msleep(i32 noundef %conv14.i.i.i44) #6
  br label %if.end15.i.i.i47

if.end15.i.i.i47:                                 ; preds = %if.else.i.i.i45, %if.then.i.i.i41.if.end15.i.i.i47_crit_edge
  %add16.i.i.i46 = add i32 %i.0.i.i.i32, 2
  br label %while.cond.i.i.i34

while.cond.i.1.i.i50:                             ; preds = %if.end15.i.1.i.i63, %while.cond.i.i.i34.while.cond.i.1.i.i50_crit_edge
  %i.0.i.1.i.i48 = phi i32 [ %add16.i.1.i.i62, %if.end15.i.1.i.i63 ], [ 0, %while.cond.i.i.i34.while.cond.i.1.i.i50_crit_edge ]
  %arrayidx.i.1.i.i49 = getelementptr i16, ptr @seq_stand_by_on, i32 %i.0.i.1.i.i48
  %64 = ptrtoint ptr %arrayidx.i.1.i.i49 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i.1.i.i49, align 2
  %66 = and i16 %65, -256
  %67 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %66, label %if.then.i.1.i.i61 [
    i16 8192, label %if.end.i65
    i16 4096, label %if.else.i.1.i.i54
  ]

if.else.i.1.i.i54:                                ; preds = %while.cond.i.1.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i.1.i.i51 = or i32 %i.0.i.1.i.i48, 1
  %arrayidx13.i.1.i.i52 = getelementptr i16, ptr @seq_stand_by_on, i32 %add12.i.1.i.i51
  %68 = ptrtoint ptr %arrayidx13.i.1.i.i52 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx13.i.1.i.i52, align 2
  %conv14.i.1.i.i53 = zext i16 %69 to i32
  tail call void @msleep(i32 noundef %conv14.i.1.i.i53) #6
  br label %if.end15.i.1.i.i63

if.then.i.1.i.i61:                                ; preds = %while.cond.i.1.i.i50
  %conv8.i.1.i.i55 = trunc i16 %65 to i8
  %add.i.1.i.i56 = or i32 %i.0.i.1.i.i48, 1
  %arrayidx9.i.1.i.i57 = getelementptr i16, ptr @seq_stand_by_on, i32 %add.i.1.i.i56
  %70 = ptrtoint ptr %arrayidx9.i.1.i.i57 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx9.i.1.i.i57, align 2
  %conv10.i.1.i.i58 = trunc i16 %71 to i8
  %call.i.1.i.i59 = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv8.i.1.i.i55, i8 noundef zeroext %conv10.i.1.i.i58) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i59)
  %tobool.not.i.1.i.i60 = icmp eq i32 %call.i.1.i.i59, 0
  br i1 %tobool.not.i.1.i.i60, label %if.then.i.1.i.i61.if.end15.i.1.i.i63_crit_edge, label %if.then.i.1.i.i61.do.end.i_crit_edge

if.then.i.1.i.i61.do.end.i_crit_edge:             ; preds = %if.then.i.1.i.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i.1.i.i61.if.end15.i.1.i.i63_crit_edge:   ; preds = %if.then.i.1.i.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.1.i.i63

if.end15.i.1.i.i63:                               ; preds = %if.then.i.1.i.i61.if.end15.i.1.i.i63_crit_edge, %if.else.i.1.i.i54
  %add16.i.1.i.i62 = add i32 %i.0.i.1.i.i48, 2
  br label %while.cond.i.1.i.i50

do.end.i:                                         ; preds = %if.then.i.1.i.i61.do.end.i_crit_edge, %if.then.i.i.i41.do.end.i_crit_edge
  %72 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lcd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.34) #9
  br label %if.end17

if.end.i65:                                       ; preds = %while.cond.i.1.i.i50
  %power_off_delay.i = getelementptr inbounds %struct.lcd_platform_data, ptr %55, i32 0, i32 5
  %74 = ptrtoint ptr %power_off_delay.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %power_off_delay.i, align 4
  tail call void @msleep(i32 noundef %75) #6
  %power_on.i64 = getelementptr inbounds %struct.lcd_platform_data, ptr %55, i32 0, i32 1
  %76 = ptrtoint ptr %power_on.i64 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %power_on.i64, align 4
  %tobool1.not.i = icmp eq ptr %77, null
  br i1 %tobool1.not.i, label %if.end.i65.if.then15_crit_edge, label %if.then2.i

if.end.i65.if.then15_crit_edge:                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then2.i:                                       ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  %ld.i66 = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 3
  %78 = ptrtoint ptr %ld.i66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ld.i66, align 4
  %call4.i = tail call i32 %77(ptr noundef %79, i32 noundef 0) #6
  br label %if.then15

if.then15:                                        ; preds = %if.then2.i, %if.end.i65.if.then15_crit_edge, %land.lhs.true7.if.then15_crit_edge, %if.end24.i.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %power16 = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 2
  %80 = ptrtoint ptr %power16 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %power, ptr %power16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end.i, %cleanup.sink.split.i
  %ret.070 = phi i32 [ 0, %if.then15 ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -5, %do.end.i ]
  ret i32 %ret.070
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ams369fg06_get_power(ptr nocapture noundef readonly %ld) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.ams369fg06, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams369fg06_set_power(ptr nocapture noundef readonly %ld, i32 noundef %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %power to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %power, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge9
    i32 1, label %entry.if.end_crit_edge10
  ]

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge9, %entry.if.end_crit_edge10
  %call4 = tail call fastcc i32 @ams369fg06_power(ptr noundef %1, i32 noundef %power)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams369fg06_set_brightness(ptr noundef %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 1
  %4 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp3 = icmp sgt i32 %1, %5
  br i1 %cmp3, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 255) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call fastcc i32 @ams369fg06_gamma_ctl(ptr noundef %3, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.19) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ams369fg06_gamma_ctl(ptr nocapture noundef readonly %lcd, i32 noundef %brightness) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %brightness)
  %0 = icmp ult i32 %brightness, 51
  br i1 %0, label %entry.if.end24_crit_edge, label %if.else

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else:                                          ; preds = %entry
  %1 = add i32 %brightness, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %1)
  %2 = icmp ult i32 %1, 50
  br i1 %2, label %if.else.if.end24_crit_edge, label %if.else6

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else6:                                         ; preds = %if.else
  %3 = add i32 %brightness, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %3)
  %4 = icmp ult i32 %3, 50
  br i1 %4, label %if.else6.if.end24_crit_edge, label %if.else11

if.else6.if.end24_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else11:                                        ; preds = %if.else6
  %5 = add i32 %brightness, -151
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %5)
  %6 = icmp ult i32 %5, 50
  br i1 %6, label %if.else11.if.end24_crit_edge, label %if.else16

if.else11.if.end24_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  %7 = add i32 %brightness, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %7)
  %8 = icmp ult i32 %7, 55
  %spec.select = select i1 %8, i32 4, i32 0
  br label %if.end24

if.end24:                                         ; preds = %if.else16, %if.else11.if.end24_crit_edge, %if.else6.if.end24_crit_edge, %if.else.if.end24_crit_edge, %entry.if.end24_crit_edge
  %gamma.0 = phi i32 [ 0, %entry.if.end24_crit_edge ], [ 1, %if.else.if.end24_crit_edge ], [ 2, %if.else6.if.end24_crit_edge ], [ 3, %if.else11.if.end24_crit_edge ], [ %spec.select, %if.else16 ]
  %arrayidx = getelementptr [5 x ptr], ptr @gamma_table, i32 0, i32 %gamma.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.cond.i._ams369fg06_gamma_ctl.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i._ams369fg06_gamma_ctl.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_ams369fg06_gamma_ctl.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end24
  %i.027.i = phi i32 [ 0, %if.end24 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %11 = trunc i32 %i.027.i to i8
  %conv.i = add nuw nsw i8 %11, 64
  %arrayidx.i = getelementptr i32, ptr %10, i32 %i.027.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %conv1.i = trunc i32 %13 to i8
  %call.i = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv1.i) #6
  %conv3.i = add nuw nsw i8 %11, 80
  %add4.i = add nuw nsw i32 %i.027.i, 7
  %arrayidx5.i = getelementptr i32, ptr %10, i32 %add4.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  %conv6.i = trunc i32 %15 to i8
  %call7.i = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv3.i, i8 noundef zeroext %conv6.i) #6
  %conv9.i = add nuw nsw i8 %11, 96
  %add10.i = add nuw nsw i32 %i.027.i, 14
  %arrayidx11.i = getelementptr i32, ptr %10, i32 %add10.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i, align 4
  %conv12.i = trunc i32 %17 to i8
  %call13.i = tail call fastcc i32 @ams369fg06_spi_write(ptr noundef %lcd, i8 noundef zeroext %conv9.i, i8 noundef zeroext %conv12.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lcd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21) #9
  br label %_ams369fg06_gamma_ctl.exit

_ams369fg06_gamma_ctl.exit:                       ; preds = %do.end.i, %for.cond.i._ams369fg06_gamma_ctl.exit_crit_edge
  ret i32 %call13.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ams369fg06_spi_write(ptr nocapture noundef readonly %lcd, i8 noundef zeroext %address, i8 noundef zeroext %command) unnamed_addr #2 align 64 {
entry:
  %buf.i13 = alloca [1 x i16], align 2
  %msg.i14 = alloca %struct.spi_message, align 4
  %xfer.i15 = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [1 x i16], align 2
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %address)
  %cmp.not = icmp eq i8 %address, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i8 %address to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #6
  %0 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf.i, ptr %xfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %len.i, align 4
  %or.i = or i16 %conv, 28672
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or.i, ptr %buf.i, align 2
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.ams369fg06_spi_write_byte.exit_crit_edge

if.then.ams369fg06_spi_write_byte.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams369fg06_spi_write_byte.exit

if.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %ams369fg06_spi_write_byte.exit

ams369fg06_spi_write_byte.exit:                   ; preds = %if.end.i.i.i.i, %if.then.ams369fg06_spi_write_byte.exit_crit_edge
  %spi.i = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 1
  %15 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end

if.end:                                           ; preds = %ams369fg06_spi_write_byte.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %ams369fg06_spi_write_byte.exit ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %command)
  %cmp4.not = icmp eq i8 %command, -2
  br i1 %cmp4.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %conv3 = zext i8 %command to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i13) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i14) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i15) #6
  %17 = getelementptr inbounds i8, ptr %xfer.i15, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %xfer.i15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i13, ptr %xfer.i15, align 4
  %len.i16 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i15, i32 0, i32 2
  %20 = ptrtoint ptr %len.i16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len.i16, align 4
  %or.i17 = or i16 %conv3, 29184
  %21 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %or.i17, ptr %buf.i13, align 2
  %22 = getelementptr inbounds i8, ptr %msg.i14, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i14, ptr %msg.i14, align 4
  %prev.i.i.i.i19 = getelementptr inbounds %struct.list_head, ptr %msg.i14, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i14, ptr %prev.i.i.i.i19, align 4
  %resources.i.i.i20 = getelementptr inbounds %struct.spi_message, ptr %msg.i14, i32 0, i32 10
  %26 = ptrtoint ptr %resources.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i20, ptr %resources.i.i.i20, align 4
  %prev.i2.i.i.i21 = getelementptr inbounds %struct.spi_message, ptr %msg.i14, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i20, ptr %prev.i2.i.i.i21, align 4
  %transfer_list.i.i22 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i15, i32 0, i32 18
  %call.i.i.i.i23 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i22, ptr noundef nonnull %msg.i14, ptr noundef nonnull %msg.i14) #6
  br i1 %call.i.i.i.i23, label %if.end.i.i.i.i25, label %if.then6.ams369fg06_spi_write_byte.exit28_crit_edge

if.then6.ams369fg06_spi_write_byte.exit28_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams369fg06_spi_write_byte.exit28

if.end.i.i.i.i25:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i22, ptr %prev.i.i.i.i19, align 4
  %29 = ptrtoint ptr %transfer_list.i.i22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i14, ptr %transfer_list.i.i22, align 4
  %prev3.i.i.i.i24 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i15, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i14, ptr %prev3.i.i.i.i24, align 4
  %31 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i22, ptr %msg.i14, align 4
  br label %ams369fg06_spi_write_byte.exit28

ams369fg06_spi_write_byte.exit28:                 ; preds = %if.end.i.i.i.i25, %if.then6.ams369fg06_spi_write_byte.exit28_crit_edge
  %spi.i26 = getelementptr inbounds %struct.ams369fg06, ptr %lcd, i32 0, i32 1
  %32 = ptrtoint ptr %spi.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi.i26, align 4
  %call.i27 = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i14) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i15) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i13) #6
  br label %if.end9

if.end9:                                          ; preds = %ams369fg06_spi_write_byte.exit28, %if.end.if.end9_crit_edge
  %ret.1 = phi i32 [ %call.i27, %ams369fg06_spi_write_byte.exit28 ], [ %ret.0, %if.end.if.end9_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams369fg06_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ams369fg06_suspend.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ams369fg06_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power = getelementptr inbounds %struct.ams369fg06, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ams369fg06_suspend.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @ams369fg06_power(ptr noundef %1, i32 noundef 4)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams369fg06_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr inbounds %struct.ams369fg06, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %power, align 4
  %call1 = tail call fastcc i32 @ams369fg06_power(ptr noundef %1, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_ams369fg06__304_561_ams369fg06_driver_init6, !1, !"__initcall__kmod_ams369fg06__304_561_ams369fg06_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/ams369fg06.c", i32 561, i32 1}
!2 = !{ptr @__exitcall_ams369fg06_driver_exit, !1, !"__exitcall_ams369fg06_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/ams369fg06.c", i32 563, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/ams369fg06.c", i32 564, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/ams369fg06.c", i32 565, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/ams369fg06.c", i32 553, i32 11}
!12 = !{ptr @ams369fg06_driver, !13, !"ams369fg06_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/ams369fg06.c", i32 551, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/ams369fg06.c", i32 456, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ams369fg06_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ams369fg06_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/ams369fg06.c", i32 465, i32 3}
!24 = !{ptr @ams369fg06_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ams369fg06_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/ams369fg06.c", i32 480, i32 49}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/ams369fg06.c", i32 504, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ams369fg06_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ams369fg06_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ams369fg06_lcd_ops, !34, !"ams369fg06_lcd_ops", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/ams369fg06.c", i32 430, i32 23}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/backlight/ams369fg06.c", i32 401, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ams369fg06_set_power._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ams369fg06_set_power._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ams369fg06_backlight_ops, !41, !"ams369fg06_backlight_ops", i1 false, i1 false}
!41 = !{!"../drivers/video/backlight/ams369fg06.c", i32 435, i32 35}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/backlight/ams369fg06.c", i32 416, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ams369fg06_set_brightness._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ams369fg06_set_brightness._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/backlight/ams369fg06.c", i32 423, i32 3}
!49 = !{ptr @ams369fg06_set_brightness._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ams369fg06_set_brightness._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/ams369fg06.c", i32 219, i32 4}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @_ams369fg06_gamma_ctl._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @_ams369fg06_gamma_ctl._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @gamma_table, !57, !"gamma_table", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/ams369fg06.c", i32 150, i32 32}
!58 = !{ptr @ams369fg06_22_50, !59, !"ams369fg06_22_50", i1 false, i1 false}
!59 = !{!"../drivers/video/backlight/ams369fg06.c", i32 140, i32 27}
!60 = !{ptr @ams369fg06_22_100, !61, !"ams369fg06_22_100", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/ams369fg06.c", i32 134, i32 27}
!62 = !{ptr @ams369fg06_22_150, !63, !"ams369fg06_22_150", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/ams369fg06.c", i32 128, i32 27}
!64 = !{ptr @ams369fg06_22_200, !65, !"ams369fg06_22_200", i1 false, i1 false}
!65 = !{!"../drivers/video/backlight/ams369fg06.c", i32 122, i32 27}
!66 = !{ptr @ams369fg06_22_250, !67, !"ams369fg06_22_250", i1 false, i1 false}
!67 = !{!"../drivers/video/backlight/ams369fg06.c", i32 116, i32 27}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/ams369fg06.c", i32 321, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ams369fg06_power_on._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ams369fg06_power_on._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/backlight/ams369fg06.c", i32 330, i32 3}
!75 = !{ptr @ams369fg06_power_on._entry.25, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ams369fg06_power_on._entry_ptr.27, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/backlight/ams369fg06.c", i32 336, i32 3}
!79 = !{ptr @ams369fg06_power_on._entry.28, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ams369fg06_power_on._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/backlight/ams369fg06.c", i32 343, i32 3}
!83 = !{ptr @ams369fg06_power_on._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ams369fg06_power_on._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"init_seq", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/ams369fg06.c", i32 252, i32 31}
!87 = !{ptr @seq_setting, !88, !"seq_setting", i1 false, i1 false}
!88 = !{!"../drivers/video/backlight/ams369fg06.c", i32 63, i32 29}
!89 = !{ptr @seq_stand_by_off, !90, !"seq_stand_by_off", i1 false, i1 false}
!90 = !{!"../drivers/video/backlight/ams369fg06.c", i32 57, i32 29}
!91 = distinct !{null, !92, !"init_seq", i1 false, i1 false}
!92 = !{!"../drivers/video/backlight/ams369fg06.c", i32 269, i32 31}
!93 = !{ptr @seq_display_on, !94, !"seq_display_on", i1 false, i1 false}
!94 = !{!"../drivers/video/backlight/ams369fg06.c", i32 41, i32 29}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/backlight/ams369fg06.c", i32 359, i32 3}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ams369fg06_power_off._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ams369fg06_power_off._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = distinct !{null, !101, !"init_seq", i1 false, i1 false}
!101 = !{!"../drivers/video/backlight/ams369fg06.c", i32 287, i32 31}
!102 = !{ptr @seq_display_off, !103, !"seq_display_off", i1 false, i1 false}
!103 = !{!"../drivers/video/backlight/ams369fg06.c", i32 46, i32 29}
!104 = !{ptr @seq_stand_by_on, !105, !"seq_stand_by_on", i1 false, i1 false}
!105 = !{!"../drivers/video/backlight/ams369fg06.c", i32 51, i32 29}
!106 = !{ptr @ams369fg06_pm_ops, !107, !"ams369fg06_pm_ops", i1 false, i1 false}
!107 = !{!"../drivers/video/backlight/ams369fg06.c", i32 541, i32 8}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/backlight/ams369fg06.c", i32 522, i32 2}
!110 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ams369fg06_suspend.__UNIQUE_ID_ddebug303, !109, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148300716, i64 2148300721, i64 2148300734, i64 2148300778, i64 2148300812, i64 2148300833}
