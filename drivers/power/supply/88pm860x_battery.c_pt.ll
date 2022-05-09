; ModuleID = '/llk/IR_all_yes/drivers/power/supply/88pm860x_battery.c_pt.bc'
source_filename = "../drivers/power/supply/88pm860x_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ccnt = type { i64, i64, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pm860x_battery_info = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.pm860x_power_pdata = type { i32, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_88pm860x_battery__200_1013_pm860x_battery_driver_init6 = internal global ptr @pm860x_battery_driver_init, section ".initcall6.init", align 4
@pm860x_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm860x_battery_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_battery_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_battery_driver_exit = internal global ptr @pm860x_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description201 = internal constant [61 x i8] c"88pm860x_battery.description=Marvell 88PM860x Battery driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file202 = internal constant [60 x i8] c"88pm860x_battery.file=drivers/power/supply/88pm860x_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [29 x i8] c"88pm860x_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"88pm860x-battery\00", [47 x i8] zeroinitializer }, align 32
@pm860x_battery_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm860x_battery_suspend, ptr @pm860x_battery_resume, ptr @pm860x_battery_suspend, ptr @pm860x_battery_resume, ptr @pm860x_battery_suspend, ptr @pm860x_battery_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm860x_battery_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@pm860x_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.20, i32 1, ptr null, i32 0, ptr @pm860x_batt_props, i32 7, ptr @pm860x_batt_get_prop, ptr @pm860x_batt_set_prop, ptr null, ptr @pm860x_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"coulomb\00", [24 x i8] zeroinitializer }, align 32
@pm860x_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 964, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_battery_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/88pm860x_battery.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_battery_probe._entry_ptr = internal global ptr @pm860x_battery_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@pm860x_battery_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 973, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pm860x_battery_probe._entry_ptr.10 = internal global ptr @pm860x_battery_probe._entry.9, section ".printk_index", align 4
@pm860x_init_battery.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.13, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"88pm860x_battery\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm860x_init_battery\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"battery wake up? %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@pm860x_init_battery.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.16, i8 0, i8 -126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"soc_rtc %d, soc_ocv :%d\0A\00", [39 x i8] zeroinitializer }, align 32
@pm860x_init_battery.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.17, i8 0, i8 -125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init soc : %d\0A\00", [17 x i8] zeroinitializer }, align 32
@array_soc = internal constant { [100 x [2 x i32]], [192 x i8] } { [100 x [2 x i32]] [[2 x i32] [i32 4170, i32 100], [2 x i32] [i32 4154, i32 99], [2 x i32] [i32 4136, i32 98], [2 x i32] [i32 4122, i32 97], [2 x i32] [i32 4107, i32 96], [2 x i32] [i32 4102, i32 95], [2 x i32] [i32 4088, i32 94], [2 x i32] [i32 4081, i32 93], [2 x i32] [i32 4070, i32 92], [2 x i32] [i32 4060, i32 91], [2 x i32] [i32 4053, i32 90], [2 x i32] [i32 4044, i32 89], [2 x i32] [i32 4035, i32 88], [2 x i32] [i32 4028, i32 87], [2 x i32] [i32 4019, i32 86], [2 x i32] [i32 4013, i32 85], [2 x i32] [i32 4006, i32 84], [2 x i32] [i32 3995, i32 83], [2 x i32] [i32 3987, i32 82], [2 x i32] [i32 3982, i32 81], [2 x i32] [i32 3976, i32 80], [2 x i32] [i32 3968, i32 79], [2 x i32] [i32 3962, i32 78], [2 x i32] [i32 3954, i32 77], [2 x i32] [i32 3946, i32 76], [2 x i32] [i32 3941, i32 75], [2 x i32] [i32 3934, i32 74], [2 x i32] [i32 3929, i32 73], [2 x i32] [i32 3922, i32 72], [2 x i32] [i32 3916, i32 71], [2 x i32] [i32 3910, i32 70], [2 x i32] [i32 3904, i32 69], [2 x i32] [i32 3898, i32 68], [2 x i32] [i32 3892, i32 67], [2 x i32] [i32 3887, i32 66], [2 x i32] [i32 3880, i32 65], [2 x i32] [i32 3874, i32 64], [2 x i32] [i32 3868, i32 63], [2 x i32] [i32 3862, i32 62], [2 x i32] [i32 3854, i32 61], [2 x i32] [i32 3849, i32 60], [2 x i32] [i32 3843, i32 59], [2 x i32] [i32 3840, i32 58], [2 x i32] [i32 3833, i32 57], [2 x i32] [i32 3829, i32 56], [2 x i32] [i32 3824, i32 55], [2 x i32] [i32 3818, i32 54], [2 x i32] [i32 3815, i32 53], [2 x i32] [i32 3810, i32 52], [2 x i32] [i32 3808, i32 51], [2 x i32] [i32 3804, i32 50], [2 x i32] [i32 3801, i32 49], [2 x i32] [i32 3798, i32 48], [2 x i32] [i32 3796, i32 47], [2 x i32] [i32 3792, i32 46], [2 x i32] [i32 3789, i32 45], [2 x i32] [i32 3785, i32 44], [2 x i32] [i32 3784, i32 43], [2 x i32] [i32 3782, i32 42], [2 x i32] [i32 3780, i32 41], [2 x i32] [i32 3777, i32 40], [2 x i32] [i32 3776, i32 39], [2 x i32] [i32 3774, i32 38], [2 x i32] [i32 3772, i32 37], [2 x i32] [i32 3771, i32 36], [2 x i32] [i32 3769, i32 35], [2 x i32] [i32 3768, i32 34], [2 x i32] [i32 3764, i32 33], [2 x i32] [i32 3763, i32 32], [2 x i32] [i32 3760, i32 31], [2 x i32] [i32 3760, i32 30], [2 x i32] [i32 3754, i32 29], [2 x i32] [i32 3750, i32 28], [2 x i32] [i32 3749, i32 27], [2 x i32] [i32 3744, i32 26], [2 x i32] [i32 3740, i32 25], [2 x i32] [i32 3734, i32 24], [2 x i32] [i32 3732, i32 23], [2 x i32] [i32 3728, i32 22], [2 x i32] [i32 3726, i32 21], [2 x i32] [i32 3720, i32 20], [2 x i32] [i32 3716, i32 19], [2 x i32] [i32 3709, i32 18], [2 x i32] [i32 3703, i32 17], [2 x i32] [i32 3698, i32 16], [2 x i32] [i32 3692, i32 15], [2 x i32] [i32 3683, i32 14], [2 x i32] [i32 3675, i32 13], [2 x i32] [i32 3670, i32 12], [2 x i32] [i32 3665, i32 11], [2 x i32] [i32 3661, i32 10], [2 x i32] [i32 3649, i32 9], [2 x i32] [i32 3637, i32 8], [2 x i32] [i32 3622, i32 7], [2 x i32] [i32 3609, i32 6], [2 x i32] [i32 3580, i32 5], [2 x i32] [i32 3558, i32 4], [2 x i32] [i32 3540, i32 3], [2 x i32] [i32 3510, i32 2], [2 x i32] [i32 3429, i32 1]], [192 x i8] zeroinitializer }, align 32
@calc_ocv.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"calc_ocv\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VBAT average:%d, OCV:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"battery-monitor\00", [16 x i8] zeroinitializer }, align 32
@pm860x_batt_props = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 47, i32 6, i32 12, i32 13, i32 17, i32 52], [36 x i8] zeroinitializer }, align 32
@ccnt_data = internal global { %struct.ccnt, [32 x i8] } zeroinitializer, align 32
@calc_capacity.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 -73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"calc_capacity\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"restart soc = %d !\0A\00", [44 x i8] zeroinitializer }, align 32
@calc_capacity.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.5, ptr @.str.23, i8 0, i8 -71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, last cap : %d\00", [46 x i8] zeroinitializer }, align 32
@calc_capacity.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.5, ptr @.str.24, i8 0, i8 -60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s, cap_ocv:%d cap_cc:%d, cap:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"discharging\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"charging\00", [23 x i8] zeroinitializer }, align 32
@measure_temp.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"measure_temp\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"temp_C:%d C,temp_mv:%d mv\0A\00", [37 x i8] zeroinitializer }, align 32
@set_temp_threshold.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_temp_threshold\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TEMP_HIGHTH : min: %d, 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@set_temp_threshold.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.5, ptr @.str.31, i8 0, i8 -119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TEMP_LOWTH:max : %d, 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@pm860x_batt_set_prop.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 -36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_batt_set_prop\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chg done, update soc = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 3, i64 6, i64 12, i64 13, i64 17, i64 47, i64 52]
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"pm860x_battery_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1006, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1008, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"pm860x_battery_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1003, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 938, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"pm860x_battery_desc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 902, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 961, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 963, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 970, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 972, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 506, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 520, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 527, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"array_soc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 125, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 359, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 903, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"pm860x_batt_props\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 892, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"ccnt_data\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 148, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 731, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 742, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 782, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 611, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 543, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 550, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [43 x i8] c"../drivers/power/supply/88pm860x_battery.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 881, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_description201, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_pm860x_battery_driver_exit, ptr @__initcall__kmod_88pm860x_battery__200_1013_pm860x_battery_driver_init6, ptr @pm860x_battery_driver_exit, ptr @pm860x_battery_probe._entry, ptr @pm860x_battery_probe._entry.9, ptr @pm860x_battery_probe._entry_ptr, ptr @pm860x_battery_probe._entry_ptr.10, ptr @pm860x_battery_driver, ptr @.str, ptr @pm860x_battery_pm_ops, ptr @pm860x_battery_probe.__key, ptr @.str.1, ptr @pm860x_battery_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @array_soc, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pm860x_batt_props, ptr @ccnt_data, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_battery_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_battery_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_battery_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_soc to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_batt_props to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccnt_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm860x_battery_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm860x_battery_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq_cc = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %irq_cc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %irq_cc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  %irq_batt = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %irq_batt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call7, ptr %irq_batt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp9 = icmp slt i32 %call7, 1
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp13 = icmp eq i32 %8, 2
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 4
  %cond.in = select i1 %cmp13, ptr %client, ptr %companion
  %9 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond = load ptr, ptr %cond.in, align 4
  %i2c = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cond, ptr %i2c, align 4
  %dev15 = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev15, align 4
  %status = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %status, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data, align 8
  %lock = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pm860x_battery_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call fastcc void @pm860x_init_battery(ptr noundef nonnull %call.i)
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.else30.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool18.not, i32 1500, i32 %17
  %18 = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 4
  %resistor = getelementptr inbounds %struct.pm860x_power_pdata, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %resistor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resistor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %land.lhs.true.if.else30_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true.if.else30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else30

if.else30.critedge:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %max_capacity22.c123 = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %max_capacity22.c123 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1500, ptr %max_capacity22.c123, align 4
  br label %if.else30

if.else30:                                        ; preds = %if.else30.critedge, %land.lhs.true.if.else30_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %land.lhs.true.if.end32_crit_edge
  %.sink = phi i32 [ 300, %if.else30 ], [ %21, %land.lhs.true.if.end32_crit_edge ]
  %resistor31 = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %resistor31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %resistor31, align 4
  %call34 = tail call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @pm860x_battery_desc, ptr noundef null) #7
  %battery = getelementptr inbounds %struct.pm860x_battery_info, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call34, ptr %battery, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %parent44 = getelementptr inbounds %struct.power_supply, ptr %call34, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %parent44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %parent44, align 8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %29 = ptrtoint ptr %irq_cc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_cc, align 4
  %call47 = tail call i32 @devm_request_threaded_irq(ptr noundef %28, i32 noundef %30, ptr noundef null, ptr noundef nonnull @pm860x_coulomb_handler, i32 noundef 8192, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  br i1 %cmp48, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %irq_cc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_cc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.3, i32 noundef %34, i32 noundef %call47) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end40
  %35 = ptrtoint ptr %irq_batt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq_batt, align 4
  %call58 = tail call i32 @devm_request_threaded_irq(ptr noundef %32, i32 noundef %36, ptr noundef null, ptr noundef nonnull @pm860x_batt_handler, i32 noundef 8192, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %39 = ptrtoint ptr %irq_batt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_batt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.3, i32 noundef %40, i32 noundef %call58) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.end55.cleanup_crit_edge, %do.end52, %if.then37, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %if.then37 ], [ %call47, %do.end52 ], [ %call58, %do.end63 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm860x_init_battery(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %soc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc) #7
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %soc, align 4
  %temp_type = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 12
  %1 = ptrtoint ptr %temp_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %temp_type, align 4
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  %spec.select = select i1 %cmp, i8 40, i8 32
  %i2c = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @pm860x_set_bits(ptr noundef %4, i32 noundef 80, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %entry
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %call7 = tail call i32 @pm860x_set_bits(ptr noundef %6, i32 noundef 82, i8 noundef zeroext 7, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %call12 = tail call i32 @pm860x_reg_write(ptr noundef %8, i32 noundef 83, i8 noundef zeroext -126) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 4
  %call17 = tail call i32 @pm860x_reg_write(ptr noundef %10, i32 noundef 84, i8 noundef zeroext 108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 4
  %call22 = tail call i32 @pm860x_set_bits(ptr noundef %12, i32 noundef 87, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.out_crit_edge, label %if.end26

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %call28 = tail call i32 @pm860x_set_bits(ptr noundef %14, i32 noundef 77, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.out_crit_edge, label %if.end32

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end32:                                         ; preds = %if.end26
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  %call34 = tail call i32 @pm860x_set_bits(ptr noundef %16, i32 noundef 71, i8 noundef zeroext 56, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end32.out_crit_edge, label %if.end38

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end38:                                         ; preds = %if.end32
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call40 = tail call i32 @pm860x_set_bits(ptr noundef %18, i32 noundef 90, i8 noundef zeroext -16, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end38.out_crit_edge, label %if.end44

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end44:                                         ; preds = %if.end38
  %lock = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 4
  %call46 = tail call i32 @pm860x_reg_read(ptr noundef %20, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %out

if.end51:                                         ; preds = %if.end44
  %and = and i32 %call46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  %21 = ptrtoint ptr %temp_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load61 = load i8, ptr %temp_type, align 4
  %bf.clear66 = and i8 %bf.load61, 63
  %masksel = select i1 %tobool52.not, i8 0, i8 -64
  %storemerge = or i8 %bf.clear66, %masksel
  store i8 %storemerge, ptr %temp_type, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call70 = call fastcc i32 @calc_soc(ptr noundef %info, ptr noundef nonnull %soc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end51.out_crit_edge, label %if.end74

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end74:                                         ; preds = %if.end51
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call76 = call i32 @pm860x_reg_read(ptr noundef %23, i32 noundef 63) #7
  %and77 = and i32 %call76, 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_init_battery.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_init_battery, %do.end)) #7
          to label %if.then83 [label %do.end], !srcloc !95

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %cmp84.not = icmp eq i32 %and77, 0
  %cond = select i1 %cmp84.not, ptr @.str.15, ptr @.str.14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_init_battery.__UNIQUE_ID_ddebug188, ptr noundef %25, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then83, %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %cmp87 = icmp eq i32 %and77, 0
  %26 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c, align 4
  br i1 %cmp87, label %if.then89, label %if.else135

if.then89:                                        ; preds = %do.end
  %call91 = call i32 @pm860x_reg_read(ptr noundef %27, i32 noundef 174) #7
  %28 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c, align 4
  %call94 = call i32 @pm860x_reg_read(ptr noundef %29, i32 noundef 160) #7
  %and99 = shl i32 %call94, 5
  %shl = and i32 %and99, 96
  %conv101 = lshr i32 %call91, 3
  %30 = and i32 %conv101, 31
  %or103 = or i32 %shl, %30
  %31 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %soc, align 4
  %add = add i32 %32, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %or103, i32 %add)
  %cmp104 = icmp sgt i32 %or103, %add
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %start_soc = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 11
  %33 = ptrtoint ptr %start_soc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %start_soc, align 4
  br label %do.body116

if.else107:                                       ; preds = %if.then89
  %sub = add i32 %32, -15
  call void @__sanitizer_cov_trace_cmp4(i32 %or103, i32 %sub)
  %cmp108 = icmp slt i32 %or103, %sub
  %start_soc111 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 11
  br i1 %cmp108, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %start_soc111 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %start_soc111, align 4
  br label %do.body116

if.else112:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %start_soc111 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or103, ptr %start_soc111, align 4
  br label %do.body116

do.body116:                                       ; preds = %if.else112, %if.then110, %if.then106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_init_battery.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_init_battery, %if.end139)) #7
          to label %if.then130 [label %if.end139], !srcloc !95

if.then130:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %dev131 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev131, align 4
  %38 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %soc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_init_battery.__UNIQUE_ID_ddebug189, ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef %or103, i32 noundef %39) #7
  br label %if.end139

if.else135:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call137 = call i32 @pm860x_set_bits(ptr noundef %27, i32 noundef 63, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %40 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %soc, align 4
  %start_soc138 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 11
  %42 = ptrtoint ptr %start_soc138 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %start_soc138, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else135, %if.then130, %do.body116
  %start_soc140 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 11
  %43 = ptrtoint ptr %start_soc140 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %start_soc140, align 4
  %last_capacity = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 10
  %45 = ptrtoint ptr %last_capacity to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %last_capacity, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_init_battery.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_init_battery, %out)) #7
          to label %if.then155 [label %out], !srcloc !95

if.then155:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %dev156 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %46 = ptrtoint ptr %dev156 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev156, align 4
  %48 = ptrtoint ptr %last_capacity to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_capacity, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_init_battery.__UNIQUE_ID_ddebug190, ptr noundef %47, ptr noundef nonnull @.str.17, i32 noundef %49) #7
  br label %out

out:                                              ; preds = %if.then155, %if.end139, %if.end51.out_crit_edge, %if.then49, %if.end38.out_crit_edge, %if.end32.out_crit_edge, %if.end26.out_crit_edge, %if.end20.out_crit_edge, %if.end15.out_crit_edge, %if.end10.out_crit_edge, %if.end3.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_coulomb_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call fastcc i32 @calc_ccnt(ptr noundef %data)
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_batt_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pm860x_battery_info, ptr %data, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %i2c = getelementptr inbounds %struct.pm860x_battery_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @pm860x_reg_read(ptr noundef %1, i32 noundef 2) #7
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %present4 = getelementptr inbounds %struct.pm860x_battery_info, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %present4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load5 = load i8, ptr %present4, align 4
  %bf.clear10 = and i8 %bf.load5, 63
  %masksel = select i1 %tobool.not, i8 0, i8 -64
  %bf.clear10.sink = or i8 %bf.clear10, %masksel
  store i8 %bf.clear10.sink, ptr %present4, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  tail call fastcc void @clear_ccnt(ptr noundef %data)
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_soc(ptr noundef %info, ptr noundef writeonly %soc) unnamed_addr #2 align 64 {
entry:
  %ocv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocv) #7
  %0 = ptrtoint ptr %ocv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ocv, align 4, !annotation !96
  %tobool.not = icmp eq ptr %soc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @calc_ocv(ptr noundef %info, ptr noundef nonnull %ocv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %1 = ptrtoint ptr %ocv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ocv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3429, i32 %2)
  %cmp = icmp slt i32 %2, 3429
  br i1 %cmp, label %if.end5.cleanup.sink.split_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx10 = getelementptr [100 x [2 x i32]], ptr @array_soc, i32 0, i32 %i.02
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp12.not = icmp slt i32 %2, %4
  br i1 %cmp12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr [100 x [2 x i32]], ptr @array_soc, i32 0, i32 %i.02, i32 1
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx15, align 4
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then13, %if.end5.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %6, %if.then13 ], [ 0, %if.end5.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %soc, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocv) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_ocv(ptr noundef %info, ptr noundef %ocv) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ocv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %i2c.i.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.cond.preheader
  %ibatt_sum.064 = phi i32 [ 0, %for.cond.preheader ], [ %add8, %if.end7.for.body_crit_edge ]
  %vbatt_sum.063 = phi i32 [ 0, %for.cond.preheader ], [ %add, %if.end7.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end7.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !96
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %0, align 1, !annotation !96
  %4 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i = call i32 @pm860x_bulk_read(ptr noundef %5, i32 noundef 109, i32 noundef 2, ptr noundef nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %measure_vbatt.exit, label %if.end3

measure_vbatt.exit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.i.i, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %buf.i, align 1, !annotation !96
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %1, align 1, !annotation !96
  %12 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i.i, align 4
  %call.i = call i32 @pm860x_bulk_read(ptr noundef %13, i32 noundef 107, i32 noundef 2, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %measure_current.exit, label %if.end7

measure_current.exit:                             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %conv.i.i = zext i8 %7 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 4
  %14 = and i8 %9, 15
  %and3.i.i = zext i8 %14 to i32
  %or.i.i = or i32 %shl.i.i, %and3.i.i
  %mul5.i.i = mul nuw nsw i32 %or.i.i, 225
  %15 = lshr i32 %mul5.i.i, 9
  %mul.i = mul nuw nsw i32 %15, 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %17 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  %conv2.i = zext i8 %19 to i16
  %or.i = or i16 %shl.i, %conv2.i
  %20 = ashr i16 %or.i, 3
  %shr.i = sext i16 %20 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %add = add i32 %mul.i, %vbatt_sum.063
  %add8 = add i32 %ibatt_sum.064, %shr.i
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end7
  %div = sdiv i32 %add, 10
  %lock = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %present = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 12
  %21 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %for.end.if.end13_crit_edge, label %if.then11

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %div9 = sdiv i32 %add8, 10
  %resistor = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 9
  %22 = ptrtoint ptr %resistor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resistor, align 4
  %mul = mul i32 %23, %div9
  %div12.neg = sdiv i32 %mul, -1000
  %sub = add nsw i32 %div12.neg, %div
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end.if.end13_crit_edge
  %storemerge = phi i32 [ %sub, %if.then11 ], [ %div, %for.end.if.end13_crit_edge ]
  %24 = ptrtoint ptr %ocv to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %ocv, align 4
  call void @mutex_unlock(ptr noundef %lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_ocv.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calc_ocv, %cleanup)) #7
          to label %if.then20 [label %cleanup], !srcloc !95

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %ocv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ocv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_ocv.__UNIQUE_ID_ddebug187, ptr noundef %26, ptr noundef nonnull @.str.19, i32 noundef %div, i32 noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end13, %measure_current.exit, %measure_vbatt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ %call.i.i, %measure_vbatt.exit ], [ %call.i, %measure_current.exit ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_batt_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data, align 4, !annotation !96
  %5 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 47, label %sw.bb1
    i32 6, label %sw.bb15
    i32 12, label %sw.bb16
    i32 13, label %sw.bb21
    i32 17, label %sw.bb27
    i32 52, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %present = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %present, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i32 @calc_capacity(ptr noundef %3, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %data, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %9)
  %cmp4 = icmp ugt i32 %9, 100
  br i1 %cmp4, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100, ptr %data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then3
  %present8 = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %present8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load9 = load i8, ptr %present8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9)
  %tobool12.not = icmp sgt i8 %bf.load9, -1
  br i1 %tobool12.not, label %if.then13, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %data, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end7.if.end14_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !96
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 1, !annotation !96
  %i2c.i.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i = call i32 @pm860x_bulk_read(ptr noundef %22, i32 noundef 109, i32 noundef 2, ptr noundef nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %measure_vbatt.exit, label %if.end20

measure_vbatt.exit:                               ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %19, align 1
  %27 = and i8 %26, 15
  %and3.i.i = zext i8 %27 to i32
  %or.i.i = or i32 %shl.i.i, %and3.i.i
  %mul5.i.i = mul nuw nsw i32 %or.i.i, 225
  %28 = lshr i32 %mul5.i.i, 9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  %mul = mul nuw nsw i32 %28, 3000
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %call22 = call fastcc i32 @calc_ocv(ptr noundef %3, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data, align 4
  %mul26 = mul i32 %31, 1000
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul26, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %buf.i, align 1, !annotation !96
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %34, align 1, !annotation !96
  %i2c.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @pm860x_bulk_read(ptr noundef %37, i32 noundef 107, i32 noundef 2, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %measure_current.exit, label %if.end31

measure_current.exit:                             ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

if.end31:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %39 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %34, align 1
  %conv2.i = zext i8 %41 to i16
  %or.i = or i16 %shl.i, %conv2.i
  %42 = ashr i16 %or.i, 3
  %shr.i = sext i16 %42 to i32
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr.i, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %present33 = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 12
  %45 = ptrtoint ptr %present33 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load34 = load i8, ptr %present33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34)
  %tobool37.not = icmp sgt i8 %bf.load34, -1
  br i1 %tobool37.not, label %sw.bb32.if.end45_crit_edge, label %if.then38

sw.bb32.if.end45_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then38:                                        ; preds = %sw.bb32
  %call39 = call fastcc i32 @measure_temp(ptr noundef %3, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data, align 4
  %mul43 = mul i32 %47, 10
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %sw.bb32.if.end45_crit_edge
  %storemerge = phi i32 [ %mul43, %if.end42 ], [ 250, %sw.bb32.if.end45_crit_edge ]
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge, ptr %data, align 4
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then38.cleanup_crit_edge, %if.end31, %measure_current.exit, %if.end25, %sw.bb21.cleanup_crit_edge, %if.end20, %measure_vbatt.exit, %sw.bb15, %if.end14, %sw.bb1.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call.i.i, %measure_vbatt.exit ], [ %call22, %sw.bb21.cleanup_crit_edge ], [ %call.i, %measure_current.exit ], [ %call39, %if.then38.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end45 ], [ 0, %if.end31 ], [ 0, %if.end25 ], [ 0, %if.end20 ], [ 0, %sw.bb15 ], [ 0, %if.end14 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_batt_set_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef readnone %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %psp)
  %cond = icmp eq i32 %psp, 24
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @clear_ccnt(ptr noundef %3)
  %start_soc = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %start_soc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %start_soc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_batt_set_prop.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_batt_set_prop, %cleanup)) #7
          to label %if.then [label %cleanup], !srcloc !95

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev6 = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  %7 = ptrtoint ptr %start_soc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_soc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_batt_set_prop.__UNIQUE_ID_ddebug199, ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_external_power_changed(ptr nocapture noundef readonly %psy) #2 align 64 {
entry:
  %buf.i52.i = alloca [2 x i8], align 1
  %buf.i.i38.i = alloca [2 x i8], align 1
  %buf.i26.i = alloca [2 x i8], align 1
  %buf.i.i12.i = alloca [2 x i8], align 1
  %buf.i.i.i = alloca [2 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !96
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !96
  %i2c.i.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i = call i32 @pm860x_bulk_read(ptr noundef %8, i32 noundef 107, i32 noundef 2, ptr noundef nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %measure_current.exit.i, label %lor.lhs.false.i

measure_current.exit.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %calc_resistor.exit

lor.lhs.false.i:                                  ; preds = %entry
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.not.i = icmp sgt i8 %10, -1
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.calc_resistor.exit_crit_edge

lor.lhs.false.i.calc_resistor.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_resistor.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %11 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %buf.i.i.i, align 1, !annotation !96
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %12, align 1, !annotation !96
  %14 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i.i = call i32 @pm860x_bulk_read(ptr noundef %15, i32 noundef 109, i32 noundef 2, ptr noundef nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %measure_vbatt.exit.i, label %if.end4.i

measure_vbatt.exit.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  br label %calc_resistor.exit

if.end4.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf.i.i.i, align 1
  %conv.i.i.i = zext i8 %17 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %12, align 1
  %20 = and i8 %19, 15
  %and3.i.i.i = zext i8 %20 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %and3.i.i.i
  %mul5.i.i.i = mul nuw nsw i32 %or.i.i.i, 225
  %21 = lshr i32 %mul5.i.i.i, 9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %mul.i.i = mul nuw nsw i32 %21, 3
  %22 = add nsw i32 %mul.i.i, -4101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -301, i32 %22)
  %23 = icmp ult i32 %22, -301
  br i1 %23, label %if.end4.i.calc_resistor.exit_crit_edge, label %if.end9.i

if.end4.i.calc_resistor.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_resistor.exit

if.end9.i:                                        ; preds = %if.end4.i
  %24 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c.i.i, align 4
  %call.i8.i = call i32 @pm860x_reg_read(ptr noundef %25, i32 noundef 73) #7
  %and3.i.i = and i32 %call.i8.i, 31
  %mul.i9.i = mul nuw nsw i32 %and3.i.i, 50
  %add.i.i = add nuw nsw i32 %mul.i9.i, 50
  %26 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i.i, align 4
  %call5.i.i = call i32 @pm860x_set_bits(ptr noundef %27, i32 noundef 73, i8 noundef zeroext 31, i8 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %tobool11.not.i = icmp sgt i32 %call5.i.i, -1
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.calc_resistor.exit_crit_edge

if.end9.i.calc_resistor.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_resistor.exit

if.end13.i:                                       ; preds = %if.end9.i
  call void @msleep(i32 noundef 500) #7
  %28 = getelementptr inbounds [2 x i8], ptr %buf.i.i12.i, i32 0, i32 1
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i26.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %if.end13.i
  %i.0107.i = phi i32 [ 0, %if.end13.i ], [ %inc.i, %if.end22.i.for.body.i_crit_edge ]
  %ibatt_sum1.0106.i = phi i32 [ 0, %if.end13.i ], [ %ibatt_sum1.1.i, %if.end22.i.for.body.i_crit_edge ]
  %vbatt_sum1.0105.i = phi i32 [ 0, %if.end13.i ], [ %add.i, %if.end22.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i12.i) #7
  %30 = ptrtoint ptr %buf.i.i12.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %buf.i.i12.i, align 1, !annotation !96
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %28, align 1, !annotation !96
  %32 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i14.i = call i32 @pm860x_bulk_read(ptr noundef %33, i32 noundef 109, i32 noundef 2, ptr noundef nonnull %buf.i.i12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %cmp.i.i15.i = icmp slt i32 %call.i.i14.i, 0
  br i1 %cmp.i.i15.i, label %measure_vbatt.exit25.i, label %if.end18.i

measure_vbatt.exit25.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i12.i) #7
  br label %out_meas.i.if.end.i4_crit_edge

if.end18.i:                                       ; preds = %for.body.i
  %34 = ptrtoint ptr %buf.i.i12.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf.i.i12.i, align 1
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %28, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i12.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i26.i) #7
  %38 = ptrtoint ptr %buf.i26.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %buf.i26.i, align 1, !annotation !96
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %29, align 1, !annotation !96
  %40 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c.i.i, align 4
  %call.i28.i = call i32 @pm860x_bulk_read(ptr noundef %41, i32 noundef 107, i32 noundef 2, ptr noundef nonnull %buf.i26.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.i29.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp.i29.i, label %measure_current.exit37.i, label %if.end22.i

measure_current.exit37.i:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i26.i) #7
  br label %out_meas.i.if.end.i4_crit_edge

if.end22.i:                                       ; preds = %if.end18.i
  %conv.i.i17.i = zext i8 %35 to i32
  %shl.i.i18.i = shl nuw nsw i32 %conv.i.i17.i, 4
  %42 = and i8 %37, 15
  %and3.i.i19.i = zext i8 %42 to i32
  %or.i.i20.i = or i32 %shl.i.i18.i, %and3.i.i19.i
  %mul5.i.i21.i = mul nuw nsw i32 %or.i.i20.i, 225
  %43 = lshr i32 %mul5.i.i21.i, 9
  %mul.i22.i = mul nuw nsw i32 %43, 3
  %add.i = add i32 %mul.i22.i, %vbatt_sum1.0105.i
  %44 = ptrtoint ptr %buf.i26.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buf.i26.i, align 1
  %conv.i30.i = zext i8 %45 to i16
  %shl.i31.i = shl nuw i16 %conv.i30.i, 8
  %46 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %29, align 1
  %conv2.i32.i = zext i8 %47 to i16
  %or.i33.i = or i16 %shl.i31.i, %conv2.i32.i
  %48 = ashr i16 %or.i33.i, 3
  %shr.i34.i = sext i16 %48 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i26.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i33.i)
  %cmp23.i = icmp slt i16 %or.i33.i, 0
  %49 = sub nsw i32 0, %shr.i34.i
  %ibatt_sum1.1.p.i = select i1 %cmp23.i, i32 %49, i32 %shr.i34.i
  %ibatt_sum1.1.i = add i32 %ibatt_sum1.1.p.i, %ibatt_sum1.0106.i
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.end.i, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end22.i
  %50 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c.i.i, align 4
  %call.i17 = call i32 @pm860x_reg_read(ptr noundef %51, i32 noundef 73) #7
  %52 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c.i.i, align 4
  %call5.i21 = call i32 @pm860x_set_bits(ptr noundef %53, i32 noundef 73, i8 noundef zeroext 31, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i21)
  %tobool28.not.i = icmp sgt i32 %call5.i21, -1
  br i1 %tobool28.not.i, label %if.end30.i, label %for.end.i.out_meas.i.if.end.i4_crit_edge_crit_edge

for.end.i.out_meas.i.if.end.i4_crit_edge_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_meas.i.if.end.i4_crit_edge

if.end30.i:                                       ; preds = %for.end.i
  call void @msleep(i32 noundef 500) #7
  %54 = getelementptr inbounds [2 x i8], ptr %buf.i.i38.i, i32 0, i32 1
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i52.i, i32 0, i32 1
  br label %for.body33.i

for.body33.i:                                     ; preds = %if.end42.i.for.body33.i_crit_edge, %if.end30.i
  %i.1110.i = phi i32 [ 0, %if.end30.i ], [ %inc50.i, %if.end42.i.for.body33.i_crit_edge ]
  %ibatt_sum2.0109.i = phi i32 [ 0, %if.end30.i ], [ %ibatt_sum2.1.i, %if.end42.i.for.body33.i_crit_edge ]
  %vbatt_sum2.0108.i = phi i32 [ 0, %if.end30.i ], [ %add38.i, %if.end42.i.for.body33.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i38.i) #7
  %56 = ptrtoint ptr %buf.i.i38.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %buf.i.i38.i, align 1, !annotation !96
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %54, align 1, !annotation !96
  %58 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i40.i = call i32 @pm860x_bulk_read(ptr noundef %59, i32 noundef 109, i32 noundef 2, ptr noundef nonnull %buf.i.i38.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i)
  %cmp.i.i41.i = icmp slt i32 %call.i.i40.i, 0
  br i1 %cmp.i.i41.i, label %measure_vbatt.exit51.i, label %if.end37.i

measure_vbatt.exit51.i:                           ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i38.i) #7
  br label %out_meas.i.if.end.i4_crit_edge

if.end37.i:                                       ; preds = %for.body33.i
  %60 = ptrtoint ptr %buf.i.i38.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %buf.i.i38.i, align 1
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %54, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i38.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52.i) #7
  %64 = ptrtoint ptr %buf.i52.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %buf.i52.i, align 1, !annotation !96
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %55, align 1, !annotation !96
  %66 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c.i.i, align 4
  %call.i54.i = call i32 @pm860x_bulk_read(ptr noundef %67, i32 noundef 107, i32 noundef 2, ptr noundef nonnull %buf.i52.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp.i55.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp.i55.i, label %measure_current.exit63.i, label %if.end42.i

measure_current.exit63.i:                         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52.i) #7
  br label %out_meas.i.if.end.i4_crit_edge

if.end42.i:                                       ; preds = %if.end37.i
  %conv.i.i43.i = zext i8 %61 to i32
  %shl.i.i44.i = shl nuw nsw i32 %conv.i.i43.i, 4
  %68 = and i8 %63, 15
  %and3.i.i45.i = zext i8 %68 to i32
  %or.i.i46.i = or i32 %shl.i.i44.i, %and3.i.i45.i
  %mul5.i.i47.i = mul nuw nsw i32 %or.i.i46.i, 225
  %69 = lshr i32 %mul5.i.i47.i, 9
  %mul.i48.i = mul nuw nsw i32 %69, 3
  %add38.i = add i32 %mul.i48.i, %vbatt_sum2.0108.i
  %70 = ptrtoint ptr %buf.i52.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %buf.i52.i, align 1
  %conv.i56.i = zext i8 %71 to i16
  %shl.i57.i = shl nuw i16 %conv.i56.i, 8
  %72 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %55, align 1
  %conv2.i58.i = zext i8 %73 to i16
  %or.i59.i = or i16 %shl.i57.i, %conv2.i58.i
  %74 = ashr i16 %or.i59.i, 3
  %shr.i60.i = sext i16 %74 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i59.i)
  %cmp43.i = icmp slt i16 %or.i59.i, 0
  %75 = sub nsw i32 0, %shr.i60.i
  %ibatt_sum2.1.p.i = select i1 %cmp43.i, i32 %75, i32 %shr.i60.i
  %ibatt_sum2.1.i = add i32 %ibatt_sum2.1.p.i, %ibatt_sum2.0109.i
  %inc50.i = add nuw nsw i32 %i.1110.i, 1
  %exitcond117.not.i = icmp eq i32 %inc50.i, 10
  br i1 %exitcond117.not.i, label %set_charger_current.exit15, label %if.end42.i.for.body33.i_crit_edge

if.end42.i.for.body33.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.i

set_charger_current.exit15:                       ; preds = %if.end42.i
  %76 = trunc i32 %add.i.i to i16
  %div19.lhs.trunc.i5 = add nsw i16 %76, -50
  %div1920.i6 = udiv i16 %div19.lhs.trunc.i5, 50
  %77 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c.i.i, align 4
  %call.i8 = call i32 @pm860x_reg_read(ptr noundef %78, i32 noundef 73) #7
  %79 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c.i.i, align 4
  %81 = trunc i16 %div1920.i6 to i8
  %call5.i12 = call i32 @pm860x_set_bits(ptr noundef %80, i32 noundef 73, i8 noundef zeroext 31, i8 noundef zeroext %81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i12)
  %tobool53.not.i = icmp sgt i32 %call5.i12, -1
  br i1 %tobool53.not.i, label %if.end55.i, label %set_charger_current.exit15.if.end.i4_crit_edge

set_charger_current.exit15.if.end.i4_crit_edge:   ; preds = %set_charger_current.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i4

if.end55.i:                                       ; preds = %set_charger_current.exit15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add38.i)
  %cmp56.i = icmp sgt i32 %add.i, %add38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ibatt_sum1.1.i, i32 %ibatt_sum2.1.i)
  %cmp57.i = icmp sgt i32 %ibatt_sum1.1.i, %ibatt_sum2.1.i
  %or.cond1.i = select i1 %cmp56.i, i1 %cmp57.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ibatt_sum2.1.i)
  %cmp59.i = icmp sgt i32 %ibatt_sum2.1.i, 0
  %or.cond2.i = select i1 %or.cond1.i, i1 %cmp59.i, i1 false
  br i1 %or.cond2.i, label %if.then60.i, label %if.end55.i.calc_resistor.exit_crit_edge

if.end55.i.calc_resistor.exit_crit_edge:          ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_resistor.exit

if.then60.i:                                      ; preds = %if.end55.i
  %sub61.i = sub i32 %add.i, %add38.i
  %mul.i = mul i32 %sub61.i, 1000
  %sub62.i = sub i32 %ibatt_sum1.1.i, %ibatt_sum2.1.i
  %div.i = sdiv i32 %mul.i, %sub62.i
  %resistor.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %3, i32 0, i32 9
  %82 = ptrtoint ptr %resistor.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %resistor.i, align 4
  %sub63.i = sub i32 %div.i, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub63.i)
  %cmp64.i = icmp sgt i32 %sub63.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub63.i, i32 %83)
  %cmp69.i = icmp slt i32 %sub63.i, %83
  %or.cond3.i = and i1 %cmp64.i, %cmp69.i
  br i1 %or.cond3.i, label %if.then70.i, label %if.then60.i.if.end72.i_crit_edge

if.then60.i.if.end72.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.then70.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %resistor.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div.i, ptr %resistor.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then70.i, %if.then60.i.if.end72.i_crit_edge
  %85 = ptrtoint ptr %resistor.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %resistor.i, align 4
  %sub74.i = sub i32 %86, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub74.i)
  %cmp75.i = icmp sgt i32 %sub74.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub74.i, i32 %div.i)
  %cmp79.i = icmp slt i32 %sub74.i, %div.i
  %or.cond4.i = and i1 %cmp75.i, %cmp79.i
  br i1 %or.cond4.i, label %if.then80.i, label %if.end72.i.calc_resistor.exit_crit_edge

if.end72.i.calc_resistor.exit_crit_edge:          ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_resistor.exit

if.then80.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %resistor.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div.i, ptr %resistor.i, align 4
  br label %calc_resistor.exit

out_meas.i.if.end.i4_crit_edge:                   ; preds = %measure_current.exit63.i, %measure_vbatt.exit51.i, %for.end.i.out_meas.i.if.end.i4_crit_edge_crit_edge, %measure_current.exit37.i, %measure_vbatt.exit25.i
  %.pre = trunc i32 %add.i.i to i16
  %.pre27 = add nsw i16 %.pre, -50
  %.pre28 = udiv i16 %.pre27, 50
  %.pre29 = trunc i16 %.pre28 to i8
  br label %if.end.i4

if.end.i4:                                        ; preds = %out_meas.i.if.end.i4_crit_edge, %set_charger_current.exit15.if.end.i4_crit_edge
  %.pre-phi30 = phi i8 [ %.pre29, %out_meas.i.if.end.i4_crit_edge ], [ %81, %set_charger_current.exit15.if.end.i4_crit_edge ]
  %88 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c.i.i, align 4
  %call.i = call i32 @pm860x_reg_read(ptr noundef %89, i32 noundef 73) #7
  %90 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c.i.i, align 4
  %call5.i = call i32 @pm860x_set_bits(ptr noundef %91, i32 noundef 73, i8 noundef zeroext 31, i8 noundef zeroext %.pre-phi30) #7
  br label %calc_resistor.exit

calc_resistor.exit:                               ; preds = %if.end.i4, %if.then80.i, %if.end72.i.calc_resistor.exit_crit_edge, %if.end55.i.calc_resistor.exit_crit_edge, %if.end9.i.calc_resistor.exit_crit_edge, %if.end4.i.calc_resistor.exit_crit_edge, %measure_vbatt.exit.i, %lor.lhs.false.i.calc_resistor.exit_crit_edge, %measure_current.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_capacity(ptr noundef %info, ptr nocapture noundef %cap) unnamed_addr #2 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %ocv.i163 = alloca i32, align 4
  %buf.i = alloca [2 x i8], align 1
  %ocv.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @calc_ccnt(ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %soc.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

soc.preheader:                                    ; preds = %entry
  %max_capacity = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 8
  %start_soc = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 11
  %0 = ptrtoint ptr %max_capacity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_capacity, align 4
  %2 = ptrtoint ptr %start_soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_soc, align 4
  %mul205 = mul i32 %3, %1
  %div206 = sdiv i32 %mul205, 100
  %4 = load i32, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 5), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 4), align 8
  %sub207 = sub i32 %4, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub207, i32 %div206)
  %cmp.not208 = icmp sgt i32 %sub207, %div206
  br i1 %cmp.not208, label %if.else.lr.ph, label %soc.preheader.if.then1_crit_edge

soc.preheader.if.then1_crit_edge:                 ; preds = %soc.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1

if.else.lr.ph:                                    ; preds = %soc.preheader
  %tobool.not.i = icmp eq ptr %start_soc, null
  %dev = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  br label %if.else

if.then1:                                         ; preds = %do.end.if.then1_crit_edge, %soc.preheader.if.then1_crit_edge
  %.lcssa204 = phi i32 [ %1, %soc.preheader.if.then1_crit_edge ], [ %21, %do.end.if.then1_crit_edge ]
  %div.lcssa = phi i32 [ %div206, %soc.preheader.if.then1_crit_edge ], [ %div, %do.end.if.then1_crit_edge ]
  %.lcssa203 = phi i32 [ %4, %soc.preheader.if.then1_crit_edge ], [ %24, %do.end.if.then1_crit_edge ]
  %.lcssa = phi i32 [ %5, %soc.preheader.if.then1_crit_edge ], [ %25, %do.end.if.then1_crit_edge ]
  %add = sub i32 %.lcssa, %.lcssa203
  %sub2 = add i32 %add, %div.lcssa
  %mul15 = mul i32 %sub2, 100
  %div17 = sdiv i32 %mul15, %.lcssa204
  %6 = call i32 @llvm.smin.i32(i32 %div17, i32 100)
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_capacity.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calc_capacity, %do.end43)) #7
          to label %if.then39 [label %do.end43], !srcloc !95

if.else:                                          ; preds = %do.end.if.else_crit_edge, %if.else.lr.ph
  call fastcc void @clear_ccnt(ptr noundef %info)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocv.i) #7
  %8 = ptrtoint ptr %ocv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ocv.i, align 4, !annotation !96
  br i1 %tobool.not.i, label %if.else.calc_soc.exit_crit_edge, label %sw.bb.i

if.else.calc_soc.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_soc.exit

sw.bb.i:                                          ; preds = %if.else
  %call.i = call fastcc i32 @calc_ocv(ptr noundef %info, ptr noundef nonnull %ocv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %sw.bb.i.calc_soc.exit_crit_edge

sw.bb.i.calc_soc.exit_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_soc.exit

if.end5.i:                                        ; preds = %sw.bb.i
  %9 = ptrtoint ptr %ocv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ocv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3429, i32 %10)
  %cmp.i = icmp slt i32 %10, 3429
  br i1 %cmp.i, label %if.end5.i.cleanup.sink.split.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %arrayidx10.i = getelementptr [100 x [2 x i32]], ptr @array_soc, i32 0, i32 %i.02.i
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp12.not.i = icmp slt i32 %10, %12
  br i1 %cmp12.not.i, label %for.inc.i, label %if.then13.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i = getelementptr [100 x [2 x i32]], ptr @array_soc, i32 0, i32 %i.02.i, i32 1
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15.i, align 4
  br label %cleanup.sink.split.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.inc.i.calc_soc.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.calc_soc.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_soc.exit

cleanup.sink.split.i:                             ; preds = %if.then13.i, %if.end5.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %14, %if.then13.i ], [ 0, %if.end5.i.cleanup.sink.split.i_crit_edge ]
  %15 = ptrtoint ptr %start_soc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink.i, ptr %start_soc, align 4
  br label %calc_soc.exit

calc_soc.exit:                                    ; preds = %cleanup.sink.split.i, %for.inc.i.calc_soc.exit_crit_edge, %sw.bb.i.calc_soc.exit_crit_edge, %if.else.calc_soc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_capacity.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calc_capacity, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !95

if.then11:                                        ; preds = %calc_soc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %start_soc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start_soc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_capacity.__UNIQUE_ID_ddebug194, ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef %19) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %calc_soc.exit
  %20 = ptrtoint ptr %max_capacity to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_capacity, align 4
  %22 = ptrtoint ptr %start_soc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start_soc, align 4
  %mul = mul i32 %23, %21
  %div = sdiv i32 %mul, 100
  %24 = load i32, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 5), align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 4), align 8
  %sub = sub i32 %24, %25
  %cmp.not = icmp sgt i32 %sub, %div
  br i1 %cmp.not, label %do.end.if.else_crit_edge, label %do.end.if.then1_crit_edge

do.end.if.then1_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then39:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %dev40 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev40, align 4
  %last_capacity = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 10
  %28 = ptrtoint ptr %last_capacity to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_capacity, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_capacity.__UNIQUE_ID_ddebug195, ptr noundef %27, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %29) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %if.then1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %buf.i, align 1, !annotation !96
  %31 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %31, align 1, !annotation !96
  %i2c.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c.i, align 4
  %call.i160 = call i32 @pm860x_bulk_read(ptr noundef %34, i32 noundef 107, i32 noundef 2, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %cmp.i161 = icmp slt i32 %call.i160, 0
  br i1 %cmp.i161, label %measure_current.exit, label %if.end47

measure_current.exit:                             ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

if.end47:                                         ; preds = %do.end43
  %35 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp48.not = icmp sgt i8 %36, -1
  br i1 %cmp48.not, label %if.end47.if.end77.sink.split_crit_edge, label %if.then49

if.end47.if.end77.sink.split_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.sink.split

if.then49:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocv.i163) #7
  %37 = ptrtoint ptr %ocv.i163 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %ocv.i163, align 4, !annotation !96
  %call.i164 = call fastcc i32 @calc_ocv(ptr noundef %info, ptr noundef nonnull %ocv.i163) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool3.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool3.not.i165, label %if.end5.i168, label %if.then52

if.end5.i168:                                     ; preds = %if.then49
  %38 = ptrtoint ptr %ocv.i163 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ocv.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3429, i32 %39)
  %cmp.i167 = icmp slt i32 %39, 3429
  br i1 %cmp.i167, label %if.end5.i168.calc_soc.exit181.thread_crit_edge, label %if.end5.i168.for.body.i172_crit_edge

if.end5.i168.for.body.i172_crit_edge:             ; preds = %if.end5.i168
  br label %for.body.i172

if.end5.i168.calc_soc.exit181.thread_crit_edge:   ; preds = %if.end5.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_soc.exit181.thread

for.body.i172:                                    ; preds = %for.inc.i177.for.body.i172_crit_edge, %if.end5.i168.for.body.i172_crit_edge
  %i.02.i169 = phi i32 [ %inc.i175, %for.inc.i177.for.body.i172_crit_edge ], [ 0, %if.end5.i168.for.body.i172_crit_edge ]
  %arrayidx10.i170 = getelementptr [100 x [2 x i32]], ptr @array_soc, i32 0, i32 %i.02.i169
  %40 = ptrtoint ptr %arrayidx10.i170 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx10.i170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp12.not.i171 = icmp slt i32 %39, %41
  br i1 %cmp12.not.i171, label %for.inc.i177, label %if.then13.i174

if.then13.i174:                                   ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i173 = getelementptr [100 x [2 x i32]], ptr @array_soc, i32 0, i32 %i.02.i169, i32 1
  %42 = ptrtoint ptr %arrayidx15.i173 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx15.i173, align 4
  br label %calc_soc.exit181.thread

for.inc.i177:                                     ; preds = %for.body.i172
  %inc.i175 = add nuw nsw i32 %i.02.i169, 1
  %exitcond.not.i176 = icmp eq i32 %inc.i175, 100
  br i1 %exitcond.not.i176, label %for.inc.i177.calc_soc.exit181.thread_crit_edge, label %for.inc.i177.for.body.i172_crit_edge

for.inc.i177.for.body.i172_crit_edge:             ; preds = %for.inc.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i172

for.inc.i177.calc_soc.exit181.thread_crit_edge:   ; preds = %for.inc.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_soc.exit181.thread

calc_soc.exit181.thread:                          ; preds = %for.inc.i177.calc_soc.exit181.thread_crit_edge, %if.then13.i174, %if.end5.i168.calc_soc.exit181.thread_crit_edge
  %cap_ocv.0.ph = phi i32 [ 0, %if.end5.i168.calc_soc.exit181.thread_crit_edge ], [ %43, %if.then13.i174 ], [ 0, %for.inc.i177.calc_soc.exit181.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocv.i163) #7
  br label %if.end54

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocv.i163) #7
  %last_capacity53 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 10
  %44 = ptrtoint ptr %last_capacity53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_capacity53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %calc_soc.exit181.thread
  %cap_ocv.1 = phi i32 [ %45, %if.then52 ], [ %cap_ocv.0.ph, %calc_soc.exit181.thread ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %46 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !96
  %47 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %47, align 1, !annotation !96
  %49 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c.i, align 4
  %call.i.i = call i32 @pm860x_bulk_read(ptr noundef %50, i32 noundef 109, i32 noundef 2, ptr noundef nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %measure_vbatt.exit, label %if.end58

measure_vbatt.exit:                               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %51 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buf.i.i, align 1
  %conv.i.i = zext i8 %52 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 4
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %47, align 1
  %55 = and i8 %54, 15
  %and3.i.i = zext i8 %55 to i32
  %or.i.i = or i32 %shl.i.i, %and3.i.i
  %mul5.i.i = mul nuw nsw i32 %or.i.i, 225
  %56 = lshr i32 %mul5.i.i, 9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  %mul.i = mul nuw nsw i32 %56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3601, i32 %mul.i)
  %cmp59 = icmp ult i32 %mul.i, 3601
  br i1 %cmp59, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %57 = call i32 @llvm.smin.i32(i32 %cap_ocv.1, i32 %7)
  br label %if.end70

if.else63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp64 = icmp ult i32 %7, 15
  %sub65 = sub i32 %cap_ocv.1, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub65)
  %cmp66 = icmp sgt i32 %sub65, 10
  %or.cond = select i1 %cmp64, i1 %cmp66, i1 false
  %cap_ocv.1. = select i1 %or.cond, i32 %cap_ocv.1, i32 %7
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %if.then60
  %cap_ocv.1.sink = phi i32 [ %57, %if.then60 ], [ %cap_ocv.1., %if.else63 ]
  %58 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cap_ocv.1.sink, ptr %cap, align 4
  %last_capacity71 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 10
  %59 = ptrtoint ptr %last_capacity71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_capacity71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cap_ocv.1.sink, i32 %60)
  %cmp72 = icmp sgt i32 %cap_ocv.1.sink, %60
  br i1 %cmp72, label %if.end70.if.end77.sink.split_crit_edge, label %if.end70.if.end77_crit_edge

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end70.if.end77.sink.split_crit_edge:           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.sink.split

if.end77.sink.split:                              ; preds = %if.end70.if.end77.sink.split_crit_edge, %if.end47.if.end77.sink.split_crit_edge
  %.sink = phi i32 [ %60, %if.end70.if.end77.sink.split_crit_edge ], [ %7, %if.end47.if.end77.sink.split_crit_edge ]
  %cap_ocv.2.ph = phi i32 [ %cap_ocv.1, %if.end70.if.end77.sink.split_crit_edge ], [ 0, %if.end47.if.end77.sink.split_crit_edge ]
  %61 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %cap, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %if.end70.if.end77_crit_edge
  %cap_ocv.2 = phi i32 [ %cap_ocv.1, %if.end70.if.end77_crit_edge ], [ %cap_ocv.2.ph, %if.end77.sink.split ]
  %62 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cap, align 4
  %last_capacity78 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 10
  %64 = ptrtoint ptr %last_capacity78 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %last_capacity78, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_capacity.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calc_capacity, %do.end99)) #7
          to label %if.then93 [label %do.end99], !srcloc !95

if.then93:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %dev94 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %65 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev94, align 4
  %cond96 = select i1 %cmp48.not, ptr @.str.26, ptr @.str.25
  %67 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cap, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_capacity.__UNIQUE_ID_ddebug198, ptr noundef %66, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond96, i32 noundef %cap_ocv.2, i32 noundef %7, i32 noundef %68) #7
  br label %do.end99

do.end99:                                         ; preds = %if.then93, %if.end77
  %69 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c.i, align 4
  %71 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cap, align 4
  %.tr = trunc i32 %72 to i8
  %conv = shl i8 %.tr, 3
  %call100 = call i32 @pm860x_set_bits(ptr noundef %70, i32 noundef 174, i8 noundef zeroext -8, i8 noundef zeroext %conv) #7
  %73 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c.i, align 4
  %75 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cap, align 4
  %77 = trunc i32 %76 to i8
  %78 = lshr i8 %77, 5
  %conv103 = and i8 %78, 3
  %call104 = call i32 @pm860x_set_bits(ptr noundef %74, i32 noundef 160, i8 noundef zeroext 7, i8 noundef zeroext %conv103) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %measure_vbatt.exit, %measure_current.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end99 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i160, %measure_current.exit ], [ %call.i.i, %measure_vbatt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @measure_temp(ptr nocapture noundef readonly %info, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf.i88 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %temp_type = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 12
  %0 = ptrtoint ptr %temp_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %temp_type, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i, align 1, !annotation !96
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !96
  %i2c.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @pm860x_bulk_read(ptr noundef %6, i32 noundef 115, i32 noundef 2, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %measure_12bit_voltage.exit, label %if.end

measure_12bit_voltage.exit:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %11 = and i8 %10, 15
  %and3.i = zext i8 %11 to i32
  %or.i = or i32 %shl.i, %and3.i
  %mul5.i = mul nuw nsw i32 %or.i, 225
  %12 = lshr i32 %mul5.i, 9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %13 = mul nuw nsw i32 %12, 1000
  %mul = add nsw i32 %13, -884000
  %div = sdiv i32 %mul, 3611
  br label %if.end43

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i88) #7
  %14 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %buf.i88, align 1, !annotation !96
  %15 = getelementptr inbounds [2 x i8], ptr %buf.i88, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !96
  %i2c.i89 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i89, align 4
  %call.i90 = call i32 @pm860x_bulk_read(ptr noundef %18, i32 noundef 119, i32 noundef 2, ptr noundef nonnull %buf.i88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %measure_12bit_voltage.exit99, label %if.end5

measure_12bit_voltage.exit99:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #7
  br label %cleanup

if.end5:                                          ; preds = %if.else
  %19 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf.i88, align 1
  %conv.i92 = zext i8 %20 to i32
  %shl.i93 = shl nuw nsw i32 %conv.i92, 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %15, align 1
  %23 = and i8 %22, 15
  %and3.i94 = zext i8 %23 to i32
  %or.i95 = or i32 %shl.i93, %and3.i94
  %mul5.i96 = mul nuw nsw i32 %or.i95, 225
  %24 = lshr i32 %mul5.i96, 9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #7
  %mul6 = mul nuw nsw i32 %24, 1000
  %div7 = udiv i32 %mul6, 11
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div7, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1405513, i32 %mul6)
  %cmp8 = icmp ugt i32 %mul6, 1405513
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end5
  %26 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i89, align 4
  %call.i101 = call i32 @pm860x_reg_write(ptr noundef %27, i32 noundef 104, i8 noundef zeroext 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@measure_temp, %do.end.i)) #7
          to label %if.then5.i [label %do.end.i], !srcloc !95

if.then5.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug191, ptr noundef %29, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 0) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then9
  %30 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c.i89, align 4
  %call16.i = call i32 @pm860x_reg_write(ptr noundef %31, i32 noundef 96, i8 noundef zeroext 85) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@measure_temp, %do.body)) #7
          to label %if.then31.i [label %do.body], !srcloc !95

if.then31.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev32.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %32 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev32.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug192, ptr noundef %33, ptr noundef nonnull @.str.31, i32 noundef 600, i32 noundef 85) #7
  br label %do.body

if.else10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 600214, i32 %mul6)
  %cmp11 = icmp ugt i32 %mul6, 600214
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  %34 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i89, align 4
  %call.i103 = call i32 @pm860x_reg_write(ptr noundef %35, i32 noundef 104, i8 noundef zeroext 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@measure_temp, %do.end.i107)) #7
          to label %if.then5.i105 [label %do.end.i107], !srcloc !95

if.then5.i105:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i104 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %dev.i104 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i104, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug191, ptr noundef %37, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 0) #7
  br label %do.end.i107

do.end.i107:                                      ; preds = %if.then5.i105, %if.then12
  %38 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c.i89, align 4
  %call16.i106 = call i32 @pm860x_reg_write(ptr noundef %39, i32 noundef 96, i8 noundef zeroext 85) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@measure_temp, %do.body)) #7
          to label %if.then31.i109 [label %do.body], !srcloc !95

if.then31.i109:                                   ; preds = %do.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  %dev32.i108 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %40 = ptrtoint ptr %dev32.i108 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev32.i108, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug192, ptr noundef %41, ptr noundef nonnull @.str.31, i32 noundef 600, i32 noundef 85) #7
  br label %do.body

if.else13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 355640, i32 %mul6)
  %cmp14 = icmp ugt i32 %mul6, 355640
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else13
  %42 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c.i89, align 4
  %call.i112 = call i32 @pm860x_reg_write(ptr noundef %43, i32 noundef 104, i8 noundef zeroext 85) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@measure_temp, %do.end.i116)) #7
          to label %if.then5.i114 [label %do.end.i116], !srcloc !95

if.then5.i114:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i113 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %44 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i113, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug191, ptr noundef %45, ptr noundef nonnull @.str.30, i32 noundef 600, i32 noundef 85) #7
  br label %do.end.i116

do.end.i116:                                      ; preds = %if.then5.i114, %if.then15
  %46 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c.i89, align 4
  %call16.i115 = call i32 @pm860x_reg_write(ptr noundef %47, i32 noundef 96, i8 noundef zeroext 8) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@measure_temp, %do.body)) #7
          to label %if.then31.i118 [label %do.body], !srcloc !95

if.then31.i118:                                   ; preds = %do.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  %dev32.i117 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %48 = ptrtoint ptr %dev32.i117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev32.i117, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug192, ptr noundef %49, ptr noundef nonnull @.str.31, i32 noundef 58, i32 noundef 8) #7
  br label %do.body

if.else16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 217645, i32 %mul6)
  %cmp17 = icmp ugt i32 %mul6, 217645
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @set_temp_threshold(ptr noundef %info, i32 noundef 600, i32 noundef 58)
  br label %do.body

if.else19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 137158, i32 %mul6)
  %cmp20 = icmp ugt i32 %mul6, 137158
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @set_temp_threshold(ptr noundef %info, i32 noundef 600, i32 noundef 58)
  br label %do.body

if.else22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 88802, i32 %mul6)
  %cmp23 = icmp ugt i32 %mul6, 88802
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @set_temp_threshold(ptr noundef %info, i32 noundef 600, i32 noundef 58)
  br label %do.body

if.else25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 58926, i32 %mul6)
  %cmp26 = icmp ugt i32 %mul6, 58926
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @set_temp_threshold(ptr noundef %info, i32 noundef 600, i32 noundef 58)
  br label %do.body

if.else28:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @set_temp_threshold(ptr noundef %info, i32 noundef 58, i32 noundef 0)
  br label %do.body

do.body:                                          ; preds = %if.else28, %if.then27, %if.then24, %if.then21, %if.then18, %if.then31.i118, %do.end.i116, %if.then31.i109, %do.end.i107, %if.then31.i, %do.end.i
  %temp.0 = phi i32 [ 5, %if.then18 ], [ 15, %if.then21 ], [ 25, %if.then24 ], [ 35, %if.then27 ], [ 45, %if.else28 ], [ -30, %do.end.i ], [ -30, %if.then31.i ], [ -15, %do.end.i107 ], [ -15, %if.then31.i109 ], [ -5, %do.end.i116 ], [ -5, %if.then31.i118 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @measure_temp.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@measure_temp, %if.end43)) #7
          to label %if.then41 [label %if.end43], !srcloc !95

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @measure_temp.__UNIQUE_ID_ddebug193, ptr noundef %51, ptr noundef nonnull @.str.28, i32 noundef %temp.0, i32 noundef %53) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.body, %if.end
  %storemerge = phi i32 [ %div, %if.end ], [ %temp.0, %if.then41 ], [ %temp.0, %do.body ]
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %storemerge, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %measure_12bit_voltage.exit99, %measure_12bit_voltage.exit
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call.i, %measure_12bit_voltage.exit ], [ %call.i90, %measure_12bit_voltage.exit99 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_ccnt(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %buf.i29 = alloca [2 x i8], align 1
  %buf.i15 = alloca [2 x i8], align 1
  %buf.i1 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf.i, align 1, !annotation !96
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !96
  %i2c.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c.i, align 4
  %call.i = tail call i32 @pm860x_set_bits(ptr noundef %4, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.read_ccnt.exit.thread_crit_edge, label %if.end.i

entry.read_ccnt.exit.thread_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %call3.i = call i32 @pm860x_bulk_read(ptr noundef %6, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.read_ccnt.exit.thread_crit_edge, label %if.end

if.end.i.read_ccnt.exit.thread_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit.thread

read_ccnt.exit.thread:                            ; preds = %if.end.i.read_ccnt.exit.thread_crit_edge, %entry.read_ccnt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end.i.read_ccnt.exit.thread_crit_edge ], [ %call.i, %entry.read_ccnt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf.i, align 1
  %conv8.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %conv11.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv11.i
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #7
  %12 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %buf.i1, align 1, !annotation !96
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !96
  %15 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c.i, align 4
  %call.i3 = call i32 @pm860x_set_bits(ptr noundef %16, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i4 = icmp slt i32 %call.i3, 0
  br i1 %cmp.i4, label %if.end.read_ccnt.exit14.thread_crit_edge, label %if.end.i7

if.end.read_ccnt.exit14.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit14.thread

if.end.i7:                                        ; preds = %if.end
  %17 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i, align 4
  %call3.i5 = call i32 @pm860x_bulk_read(ptr noundef %18, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i5)
  %cmp4.i6 = icmp slt i32 %call3.i5, 0
  br i1 %cmp4.i6, label %if.end.i7.read_ccnt.exit14.thread_crit_edge, label %if.end4

if.end.i7.read_ccnt.exit14.thread_crit_edge:      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit14.thread

read_ccnt.exit14.thread:                          ; preds = %if.end.i7.read_ccnt.exit14.thread_crit_edge, %if.end.read_ccnt.exit14.thread_crit_edge
  %retval.0.i13.ph = phi i32 [ %call3.i5, %if.end.i7.read_ccnt.exit14.thread_crit_edge ], [ %call.i3, %if.end.read_ccnt.exit14.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end.i7
  %19 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf.i1, align 1
  %conv8.i8 = zext i8 %20 to i32
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %13, align 1
  %conv11.i10 = zext i8 %22 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #7
  %23 = shl nuw i32 %conv8.i8, 24
  %24 = shl nuw nsw i32 %conv11.i10, 16
  %shl = or i32 %23, %24
  %or = or i32 %shl, %or.i
  %conv = zext i32 %or to i64
  %25 = load i64, ptr @ccnt_data, align 8
  %add = add i64 %25, %conv
  store i64 %add, ptr @ccnt_data, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i15) #7
  %26 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %buf.i15, align 1, !annotation !96
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i15, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %27, align 1, !annotation !96
  %29 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c.i, align 4
  %call.i17 = call i32 @pm860x_set_bits(ptr noundef %30, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i18 = icmp slt i32 %call.i17, 0
  br i1 %cmp.i18, label %if.end4.read_ccnt.exit28.thread_crit_edge, label %if.end.i21

if.end4.read_ccnt.exit28.thread_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit28.thread

if.end.i21:                                       ; preds = %if.end4
  %31 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c.i, align 4
  %call3.i19 = call i32 @pm860x_bulk_read(ptr noundef %32, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i19)
  %cmp4.i20 = icmp slt i32 %call3.i19, 0
  br i1 %cmp4.i20, label %if.end.i21.read_ccnt.exit28.thread_crit_edge, label %if.end9

if.end.i21.read_ccnt.exit28.thread_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit28.thread

read_ccnt.exit28.thread:                          ; preds = %if.end.i21.read_ccnt.exit28.thread_crit_edge, %if.end4.read_ccnt.exit28.thread_crit_edge
  %retval.0.i27.ph = phi i32 [ %call3.i19, %if.end.i21.read_ccnt.exit28.thread_crit_edge ], [ %call.i17, %if.end4.read_ccnt.exit28.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i15) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end.i21
  %33 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf.i15, align 1
  %conv8.i22 = zext i8 %34 to i32
  %shl.i23 = shl nuw nsw i32 %conv8.i22, 8
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %27, align 1
  %conv11.i24 = zext i8 %36 to i32
  %or.i25 = or i32 %shl.i23, %conv11.i24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i15) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i29) #7
  %37 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %buf.i29, align 1, !annotation !96
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i29, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %38, align 1, !annotation !96
  %40 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c.i, align 4
  %call.i31 = call i32 @pm860x_set_bits(ptr noundef %41, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %if.end9.read_ccnt.exit42.thread_crit_edge, label %if.end.i35

if.end9.read_ccnt.exit42.thread_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit42.thread

if.end.i35:                                       ; preds = %if.end9
  %42 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c.i, align 4
  %call3.i33 = call i32 @pm860x_bulk_read(ptr noundef %43, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i33)
  %cmp4.i34 = icmp slt i32 %call3.i33, 0
  br i1 %cmp4.i34, label %if.end.i35.read_ccnt.exit42.thread_crit_edge, label %if.end14

if.end.i35.read_ccnt.exit42.thread_crit_edge:     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit42.thread

read_ccnt.exit42.thread:                          ; preds = %if.end.i35.read_ccnt.exit42.thread_crit_edge, %if.end9.read_ccnt.exit42.thread_crit_edge
  %retval.0.i41.ph = phi i32 [ %call3.i33, %if.end.i35.read_ccnt.exit42.thread_crit_edge ], [ %call.i31, %if.end9.read_ccnt.exit42.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end.i35
  %44 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buf.i29, align 1
  %conv8.i36 = zext i8 %45 to i32
  %shl.i37 = shl nuw nsw i32 %conv8.i36, 8
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %38, align 1
  %conv11.i38 = zext i8 %47 to i32
  %or.i39 = or i32 %shl.i37, %conv11.i38
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i39, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29) #7
  %shl16.neg = mul i32 %or.i39, -65536
  %or17.neg = sub i32 %shl16.neg, %or.i25
  %conv19 = zext i32 %or17.neg to i64
  %49 = load i64, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 1), align 8
  %add21 = add i64 %49, %conv19
  store i64 %add21, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 1), align 8
  %call22 = call fastcc i32 @read_ccnt(ptr noundef %info, i32 noundef 4, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data, align 4
  %52 = load i32, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 2), align 8
  %add26 = add i32 %52, %51
  store i32 %add26, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 2), align 8
  %call27 = call fastcc i32 @read_ccnt(ptr noundef %info, i32 noundef 5, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %53 = load i64, ptr @ccnt_data, align 8
  %mul = mul i64 %53, 18236
  %shr = lshr i64 %mul, 40
  %conv32 = trunc i64 %shr to i32
  store i32 %conv32, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 4), align 8
  %54 = load i64, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 1), align 8
  %mul34 = mul i64 %54, 18236
  %shr35 = lshr i64 %mul34, 40
  %conv36 = trunc i64 %shr35 to i32
  store i32 %conv36, ptr getelementptr inbounds (%struct.ccnt, ptr @ccnt_data, i32 0, i32 5), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end25.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %read_ccnt.exit42.thread, %read_ccnt.exit28.thread, %read_ccnt.exit14.thread, %read_ccnt.exit.thread
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %call22, %if.end14.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ %retval.0.i.ph, %read_ccnt.exit.thread ], [ %retval.0.i13.ph, %read_ccnt.exit14.thread ], [ %retval.0.i27.ph, %read_ccnt.exit28.thread ], [ %retval.0.i41.ph, %read_ccnt.exit42.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_ccnt(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %buf.i57 = alloca [2 x i8], align 1
  %buf.i43 = alloca [2 x i8], align 1
  %buf.i29 = alloca [2 x i8], align 1
  %buf.i15 = alloca [2 x i8], align 1
  %buf.i1 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @ccnt_data, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf.i, align 1, !annotation !96
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !96
  %i2c.i = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i = tail call i32 @pm860x_set_bits(ptr noundef %5, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.read_ccnt.exit_crit_edge, label %if.end.i

entry.read_ccnt.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c.i, align 4
  %call3.i = call i32 @pm860x_bulk_read(ptr noundef %7, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i) #7
  br label %read_ccnt.exit

read_ccnt.exit:                                   ; preds = %if.end.i, %entry.read_ccnt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #7
  %8 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i1, align 1, !annotation !96
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !96
  %11 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i, align 4
  %call.i3 = call i32 @pm860x_set_bits(ptr noundef %12, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i4 = icmp slt i32 %call.i3, 0
  br i1 %cmp.i4, label %read_ccnt.exit.read_ccnt.exit14_crit_edge, label %if.end.i7

read_ccnt.exit.read_ccnt.exit14_crit_edge:        ; preds = %read_ccnt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit14

if.end.i7:                                        ; preds = %read_ccnt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  %call3.i5 = call i32 @pm860x_bulk_read(ptr noundef %14, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i1) #7
  br label %read_ccnt.exit14

read_ccnt.exit14:                                 ; preds = %if.end.i7, %read_ccnt.exit.read_ccnt.exit14_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i15) #7
  %15 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %buf.i15, align 1, !annotation !96
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !96
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %call.i17 = call i32 @pm860x_set_bits(ptr noundef %19, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i18 = icmp slt i32 %call.i17, 0
  br i1 %cmp.i18, label %read_ccnt.exit14.read_ccnt.exit28_crit_edge, label %if.end.i21

read_ccnt.exit14.read_ccnt.exit28_crit_edge:      ; preds = %read_ccnt.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit28

if.end.i21:                                       ; preds = %read_ccnt.exit14
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c.i, align 4
  %call3.i19 = call i32 @pm860x_bulk_read(ptr noundef %21, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i15) #7
  br label %read_ccnt.exit28

read_ccnt.exit28:                                 ; preds = %if.end.i21, %read_ccnt.exit14.read_ccnt.exit28_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i15) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i29) #7
  %22 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %buf.i29, align 1, !annotation !96
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i29, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !96
  %25 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i, align 4
  %call.i31 = call i32 @pm860x_set_bits(ptr noundef %26, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %read_ccnt.exit28.read_ccnt.exit42_crit_edge, label %if.end.i35

read_ccnt.exit28.read_ccnt.exit42_crit_edge:      ; preds = %read_ccnt.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit42

if.end.i35:                                       ; preds = %read_ccnt.exit28
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c.i, align 4
  %call3.i33 = call i32 @pm860x_bulk_read(ptr noundef %28, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i29) #7
  br label %read_ccnt.exit42

read_ccnt.exit42:                                 ; preds = %if.end.i35, %read_ccnt.exit28.read_ccnt.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i43) #7
  %29 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %buf.i43, align 1, !annotation !96
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i43, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %30, align 1, !annotation !96
  %32 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c.i, align 4
  %call.i45 = call i32 @pm860x_set_bits(ptr noundef %33, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %read_ccnt.exit42.read_ccnt.exit56_crit_edge, label %if.end.i49

read_ccnt.exit42.read_ccnt.exit56_crit_edge:      ; preds = %read_ccnt.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit56

if.end.i49:                                       ; preds = %read_ccnt.exit42
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i, align 4
  %call3.i47 = call i32 @pm860x_bulk_read(ptr noundef %35, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i43) #7
  br label %read_ccnt.exit56

read_ccnt.exit56:                                 ; preds = %if.end.i49, %read_ccnt.exit42.read_ccnt.exit56_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i43) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i57) #7
  %36 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %buf.i57, align 1, !annotation !96
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i57, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %37, align 1, !annotation !96
  %39 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c.i, align 4
  %call.i59 = call i32 @pm860x_set_bits(ptr noundef %40, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp.i60 = icmp slt i32 %call.i59, 0
  br i1 %cmp.i60, label %read_ccnt.exit56.read_ccnt.exit70_crit_edge, label %if.end.i63

read_ccnt.exit56.read_ccnt.exit70_crit_edge:      ; preds = %read_ccnt.exit56
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_ccnt.exit70

if.end.i63:                                       ; preds = %read_ccnt.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c.i, align 4
  %call3.i61 = call i32 @pm860x_bulk_read(ptr noundef %42, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf.i57) #7
  br label %read_ccnt.exit70

read_ccnt.exit70:                                 ; preds = %if.end.i63, %read_ccnt.exit56.read_ccnt.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i57) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_ccnt(ptr nocapture noundef readonly %info, i32 noundef %offset, ptr nocapture noundef writeonly %ccnt) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !96
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !96
  %i2c = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 4
  %5 = trunc i32 %offset to i8
  %conv = and i8 %5, 7
  %call = tail call i32 @pm860x_set_bits(ptr noundef %4, i32 noundef 71, i8 noundef zeroext 7, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %call3 = call i32 @pm860x_bulk_read(ptr noundef %7, i32 noundef 149, i32 noundef 2, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 1
  %conv11 = zext i8 %11 to i32
  %or = or i32 %shl, %conv11
  %12 = ptrtoint ptr %ccnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %ccnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_temp_threshold(ptr nocapture noundef readonly %info, i32 noundef %min, i32 noundef %max) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %min, 8
  %div = sdiv i32 %shl, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min)
  %cmp.inv = icmp sgt i32 %min, 0
  %data.0 = select i1 %cmp.inv, i32 %div, i32 0
  %i2c = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %conv = trunc i32 %data.0 to i8
  %call = tail call i32 @pm860x_reg_write(ptr noundef %1, i32 noundef 104, i8 noundef zeroext %conv) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_temp_threshold, %do.end)) #7
          to label %if.then5 [label %do.end], !srcloc !95

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug191, ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %min, i32 noundef %data.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max)
  %cmp7 = icmp slt i32 %max, 1
  %shl11 = shl i32 %max, 8
  %div12 = sdiv i32 %shl11, 1800
  %data.1 = select i1 %cmp7, i32 255, i32 %div12
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %conv15 = trunc i32 %data.1 to i8
  %call16 = tail call i32 @pm860x_reg_write(ptr noundef %5, i32 noundef 96, i8 noundef zeroext %conv15) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_temp_threshold, %do.end35)) #7
          to label %if.then31 [label %do.end35], !srcloc !95

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.pm860x_battery_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp_threshold.__UNIQUE_ID_ddebug192, ptr noundef %7, ptr noundef nonnull @.str.31, i32 noundef %max, i32 noundef %data.1) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm860x_battery_suspend(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup_flag = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wakeup_flag, align 4
  %or = or i32 %8, 32
  store i32 %or, ptr %wakeup_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm860x_battery_resume(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup_flag = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wakeup_flag, align 4
  %and = and i32 %8, -33
  store i32 %and, ptr %wakeup_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !32, !33, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_88pm860x_battery__200_1013_pm860x_battery_driver_init6, !1, !"__initcall__kmod_88pm860x_battery__200_1013_pm860x_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 1013, i32 1}
!2 = !{ptr @__exitcall_pm860x_battery_driver_exit, !1, !"__exitcall_pm860x_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description201, !4, !"__UNIQUE_ID_description201", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 1015, i32 1}
!5 = !{ptr @__UNIQUE_ID_file202, !6, !"__UNIQUE_ID_file202", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 1016, i32 1}
!7 = !{ptr @__UNIQUE_ID_license203, !6, !"__UNIQUE_ID_license203", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 1008, i32 14}
!10 = !{ptr @pm860x_battery_driver, !11, !"pm860x_battery_driver", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 1006, i32 31}
!12 = !{ptr @pm860x_battery_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 938, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 961, i32 6}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 963, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pm860x_battery_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pm860x_battery_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 970, i32 20}
!27 = !{ptr @pm860x_battery_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 972, i32 3}
!29 = !{ptr @pm860x_battery_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 506, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pm860x_init_battery.__UNIQUE_ID_ddebug188, !31, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!35 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 520, i32 3}
!39 = !{ptr @pm860x_init_battery.__UNIQUE_ID_ddebug189, !38, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 527, i32 2}
!42 = !{ptr @pm860x_init_battery.__UNIQUE_ID_ddebug190, !41, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 359, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @calc_ocv.__UNIQUE_ID_ddebug187, !44, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!47 = !{ptr @array_soc, !48, !"array_soc", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 125, i32 12}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 903, i32 12}
!51 = !{ptr @pm860x_battery_desc, !52, !"pm860x_battery_desc", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 902, i32 39}
!53 = !{ptr @pm860x_batt_props, !54, !"pm860x_batt_props", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 892, i32 35}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 731, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @calc_capacity.__UNIQUE_ID_ddebug194, !56, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 742, i32 2}
!61 = !{ptr @calc_capacity.__UNIQUE_ID_ddebug195, !60, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 782, i32 2}
!64 = !{ptr @calc_capacity.__UNIQUE_ID_ddebug198, !63, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!65 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ccnt_data, !68, !"ccnt_data", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 148, i32 20}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 611, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @measure_temp.__UNIQUE_ID_ddebug193, !70, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 543, i32 2}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @set_temp_threshold.__UNIQUE_ID_ddebug191, !74, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 550, i32 2}
!79 = !{ptr @set_temp_threshold.__UNIQUE_ID_ddebug192, !78, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 881, i32 3}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pm860x_batt_set_prop.__UNIQUE_ID_ddebug199, !81, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!84 = !{ptr @pm860x_battery_pm_ops, !85, !"pm860x_battery_pm_ops", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/88pm860x_battery.c", i32 1003, i32 8}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148715375, i64 2148715380, i64 2148715393, i64 2148715437, i64 2148715471, i64 2148715492}
!96 = !{!"auto-init"}
