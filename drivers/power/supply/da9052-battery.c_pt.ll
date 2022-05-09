; ModuleID = '/llk/IR_all_yes/drivers/power/supply/da9052-battery.c_pt.bc'
source_filename = "../drivers/power/supply/da9052-battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.da9052_battery = type { ptr, ptr, %struct.notifier_block, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.da9052_pdata = type { ptr, ptr, i32, i32, i32, [14 x ptr] }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }

@__initcall__kmod_da9052_battery__227_660_da9052_bat_driver_init6 = internal global ptr @da9052_bat_driver_init, section ".initcall6.init", align 4
@da9052_bat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_bat_probe, ptr @da9052_bat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_bat_driver_exit = internal global ptr @da9052_bat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [52 x i8] c"da9052_battery.description=DA9052 BAT Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [59 x i8] c"da9052_battery.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [56 x i8] c"da9052_battery.file=drivers/power/supply/da9052-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [27 x i8] c"da9052_battery.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [41 x i8] c"da9052_battery.alias=platform:da9052-bat\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9052-bat\00", [21 x i8] zeroinitializer }, align 32
@psy_desc = internal global { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 1, ptr null, i32 0, ptr @da9052_bat_props, i32 10, ptr @da9052_bat_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@da9052_bat_irq_bits = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 12, i32 0, i32 2, i32 1, i32 3, i32 11], [40 x i8] zeroinitializer }, align 32
@da9052_bat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DA9052 failed to request %s IRQ: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9052_bat_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/da9052-battery.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_bat_probe._entry_ptr = internal global ptr @da9052_bat_probe._entry, section ".printk_index", align 4
@da9052_chg_current_lim = internal constant { [2 x [16 x i16]], [32 x i8] } { [2 x [16 x i16]] [[16 x i16] [i16 70, i16 80, i16 90, i16 100, i16 110, i16 120, i16 400, i16 450, i16 500, i16 550, i16 600, i16 650, i16 700, i16 900, i16 1100, i16 1300], [16 x i16] [i16 80, i16 90, i16 100, i16 110, i16 120, i16 400, i16 450, i16 500, i16 550, i16 600, i16 800, i16 1000, i16 1200, i16 1400, i16 1600, i16 1800]], [32 x i8] zeroinitializer }, align 32
@da9052_bat_props = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 4, i32 3, i32 2, i32 11, i32 13, i32 18, i32 47, i32 52, i32 6], [56 x i8] zeroinitializer }, align 32
@vc_tbl = internal constant { [3 x [68 x [2 x i32]]], [384 x i8] } { [3 x [68 x [2 x i32]]] [[68 x [2 x i32]] [[2 x i32] [i32 4082, i32 100], [2 x i32] [i32 4036, i32 98], [2 x i32] [i32 4020, i32 96], [2 x i32] [i32 4008, i32 95], [2 x i32] [i32 3997, i32 93], [2 x i32] [i32 3983, i32 91], [2 x i32] [i32 3964, i32 90], [2 x i32] [i32 3943, i32 88], [2 x i32] [i32 3926, i32 87], [2 x i32] [i32 3912, i32 85], [2 x i32] [i32 3900, i32 84], [2 x i32] [i32 3890, i32 82], [2 x i32] [i32 3881, i32 80], [2 x i32] [i32 3873, i32 79], [2 x i32] [i32 3865, i32 77], [2 x i32] [i32 3857, i32 76], [2 x i32] [i32 3848, i32 74], [2 x i32] [i32 3839, i32 73], [2 x i32] [i32 3829, i32 71], [2 x i32] [i32 3820, i32 70], [2 x i32] [i32 3811, i32 68], [2 x i32] [i32 3802, i32 67], [2 x i32] [i32 3794, i32 65], [2 x i32] [i32 3785, i32 64], [2 x i32] [i32 3778, i32 62], [2 x i32] [i32 3770, i32 61], [2 x i32] [i32 3763, i32 59], [2 x i32] [i32 3756, i32 58], [2 x i32] [i32 3750, i32 56], [2 x i32] [i32 3744, i32 55], [2 x i32] [i32 3738, i32 53], [2 x i32] [i32 3732, i32 52], [2 x i32] [i32 3727, i32 50], [2 x i32] [i32 3722, i32 49], [2 x i32] [i32 3717, i32 47], [2 x i32] [i32 3712, i32 46], [2 x i32] [i32 3708, i32 44], [2 x i32] [i32 3703, i32 43], [2 x i32] [i32 3700, i32 41], [2 x i32] [i32 3696, i32 40], [2 x i32] [i32 3693, i32 38], [2 x i32] [i32 3691, i32 37], [2 x i32] [i32 3688, i32 35], [2 x i32] [i32 3686, i32 34], [2 x i32] [i32 3683, i32 32], [2 x i32] [i32 3681, i32 31], [2 x i32] [i32 3678, i32 29], [2 x i32] [i32 3675, i32 28], [2 x i32] [i32 3672, i32 26], [2 x i32] [i32 3669, i32 25], [2 x i32] [i32 3665, i32 23], [2 x i32] [i32 3661, i32 22], [2 x i32] [i32 3656, i32 21], [2 x i32] [i32 3651, i32 19], [2 x i32] [i32 3645, i32 18], [2 x i32] [i32 3639, i32 16], [2 x i32] [i32 3631, i32 15], [2 x i32] [i32 3622, i32 13], [2 x i32] [i32 3611, i32 12], [2 x i32] [i32 3600, i32 10], [2 x i32] [i32 3587, i32 9], [2 x i32] [i32 3572, i32 7], [2 x i32] [i32 3548, i32 6], [2 x i32] [i32 3503, i32 5], [2 x i32] [i32 3420, i32 3], [2 x i32] [i32 3268, i32 2], [2 x i32] [i32 2992, i32 1], [2 x i32] [i32 2746, i32 0]], [68 x [2 x i32]] [[2 x i32] [i32 4102, i32 100], [2 x i32] [i32 4065, i32 98], [2 x i32] [i32 4048, i32 96], [2 x i32] [i32 4034, i32 95], [2 x i32] [i32 4021, i32 93], [2 x i32] [i32 4011, i32 92], [2 x i32] [i32 4001, i32 90], [2 x i32] [i32 3986, i32 88], [2 x i32] [i32 3968, i32 87], [2 x i32] [i32 3952, i32 85], [2 x i32] [i32 3938, i32 84], [2 x i32] [i32 3926, i32 82], [2 x i32] [i32 3916, i32 81], [2 x i32] [i32 3908, i32 79], [2 x i32] [i32 3900, i32 77], [2 x i32] [i32 3892, i32 76], [2 x i32] [i32 3883, i32 74], [2 x i32] [i32 3874, i32 73], [2 x i32] [i32 3864, i32 71], [2 x i32] [i32 3855, i32 70], [2 x i32] [i32 3846, i32 68], [2 x i32] [i32 3836, i32 67], [2 x i32] [i32 3827, i32 65], [2 x i32] [i32 3819, i32 64], [2 x i32] [i32 3810, i32 62], [2 x i32] [i32 3801, i32 61], [2 x i32] [i32 3793, i32 59], [2 x i32] [i32 3786, i32 58], [2 x i32] [i32 3778, i32 56], [2 x i32] [i32 3772, i32 55], [2 x i32] [i32 3765, i32 53], [2 x i32] [i32 3759, i32 52], [2 x i32] [i32 3754, i32 50], [2 x i32] [i32 3748, i32 49], [2 x i32] [i32 3743, i32 47], [2 x i32] [i32 3738, i32 46], [2 x i32] [i32 3733, i32 44], [2 x i32] [i32 3728, i32 43], [2 x i32] [i32 3724, i32 41], [2 x i32] [i32 3720, i32 40], [2 x i32] [i32 3716, i32 38], [2 x i32] [i32 3712, i32 37], [2 x i32] [i32 3709, i32 35], [2 x i32] [i32 3706, i32 34], [2 x i32] [i32 3703, i32 33], [2 x i32] [i32 3701, i32 31], [2 x i32] [i32 3698, i32 30], [2 x i32] [i32 3696, i32 28], [2 x i32] [i32 3693, i32 27], [2 x i32] [i32 3690, i32 25], [2 x i32] [i32 3687, i32 24], [2 x i32] [i32 3683, i32 22], [2 x i32] [i32 3680, i32 21], [2 x i32] [i32 3675, i32 19], [2 x i32] [i32 3671, i32 18], [2 x i32] [i32 3666, i32 17], [2 x i32] [i32 3660, i32 15], [2 x i32] [i32 3654, i32 14], [2 x i32] [i32 3647, i32 12], [2 x i32] [i32 3639, i32 11], [2 x i32] [i32 3630, i32 9], [2 x i32] [i32 3621, i32 8], [2 x i32] [i32 3613, i32 6], [2 x i32] [i32 3606, i32 5], [2 x i32] [i32 3597, i32 4], [2 x i32] [i32 3582, i32 2], [2 x i32] [i32 3546, i32 1], [2 x i32] [i32 2747, i32 0]], [68 x [2 x i32]] [[2 x i32] [i32 4114, i32 100], [2 x i32] [i32 4081, i32 98], [2 x i32] [i32 4065, i32 96], [2 x i32] [i32 4050, i32 95], [2 x i32] [i32 4036, i32 93], [2 x i32] [i32 4024, i32 92], [2 x i32] [i32 4013, i32 90], [2 x i32] [i32 4002, i32 88], [2 x i32] [i32 3990, i32 87], [2 x i32] [i32 3976, i32 85], [2 x i32] [i32 3962, i32 84], [2 x i32] [i32 3950, i32 82], [2 x i32] [i32 3939, i32 81], [2 x i32] [i32 3930, i32 79], [2 x i32] [i32 3921, i32 77], [2 x i32] [i32 3912, i32 76], [2 x i32] [i32 3902, i32 74], [2 x i32] [i32 3893, i32 73], [2 x i32] [i32 3883, i32 71], [2 x i32] [i32 3874, i32 70], [2 x i32] [i32 3865, i32 68], [2 x i32] [i32 3856, i32 67], [2 x i32] [i32 3847, i32 65], [2 x i32] [i32 3838, i32 64], [2 x i32] [i32 3829, i32 62], [2 x i32] [i32 3820, i32 61], [2 x i32] [i32 3812, i32 59], [2 x i32] [i32 3803, i32 58], [2 x i32] [i32 3795, i32 56], [2 x i32] [i32 3787, i32 55], [2 x i32] [i32 3780, i32 53], [2 x i32] [i32 3773, i32 52], [2 x i32] [i32 3767, i32 50], [2 x i32] [i32 3761, i32 49], [2 x i32] [i32 3756, i32 47], [2 x i32] [i32 3751, i32 46], [2 x i32] [i32 3746, i32 44], [2 x i32] [i32 3741, i32 43], [2 x i32] [i32 3736, i32 41], [2 x i32] [i32 3732, i32 40], [2 x i32] [i32 3728, i32 38], [2 x i32] [i32 3724, i32 37], [2 x i32] [i32 3720, i32 35], [2 x i32] [i32 3716, i32 34], [2 x i32] [i32 3713, i32 33], [2 x i32] [i32 3710, i32 31], [2 x i32] [i32 3707, i32 30], [2 x i32] [i32 3704, i32 28], [2 x i32] [i32 3701, i32 27], [2 x i32] [i32 3698, i32 25], [2 x i32] [i32 3695, i32 24], [2 x i32] [i32 3691, i32 22], [2 x i32] [i32 3686, i32 21], [2 x i32] [i32 3681, i32 19], [2 x i32] [i32 3676, i32 18], [2 x i32] [i32 3671, i32 17], [2 x i32] [i32 3666, i32 15], [2 x i32] [i32 3661, i32 14], [2 x i32] [i32 3655, i32 12], [2 x i32] [i32 3648, i32 11], [2 x i32] [i32 3640, i32 9], [2 x i32] [i32 3632, i32 8], [2 x i32] [i32 3622, i32 6], [2 x i32] [i32 3616, i32 5], [2 x i32] [i32 3611, i32 4], [2 x i32] [i32 3604, i32 2], [2 x i32] [i32 3594, i32 1], [2 x i32] [i32 2747, i32 0]]], [384 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BATT TEMP\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DCIN DET\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DCIN REM\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VBUS DET\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VBUS REM\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CHG END\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@__sancov_gen_cov_switch_values.12 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6, i64 11, i64 13, i64 18, i64 47, i64 52]
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"da9052_bat_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 653, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 657, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"psy_desc\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 559, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"da9052_bat_irq_bits\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 576, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 618, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"da9052_chg_current_lim\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 43, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"da9052_bat_props\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 546, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"vc_tbl\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 52, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 568, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 569, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 570, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 571, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 572, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [41 x i8] c"../drivers/power/supply/da9052-battery.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 573, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_da9052_bat_driver_exit, ptr @__initcall__kmod_da9052_battery__227_660_da9052_bat_driver_init6, ptr @da9052_bat_driver_exit, ptr @da9052_bat_probe._entry, ptr @da9052_bat_probe._entry_ptr, ptr @da9052_bat_driver, ptr @.str, ptr @psy_desc, ptr @da9052_bat_irq_bits, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da9052_chg_current_lim, ptr @da9052_bat_props, ptr @vc_tbl, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_bat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_bat_irq_bits to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_bat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_chg_current_lim to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_bat_props to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_tbl to i32), i32 1632, i32 2016, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_bat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_bat_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_bat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_bat_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_bat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %1 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %drv_data, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 4
  %charger_type = getelementptr inbounds %struct.da9052_battery, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %charger_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %charger_type, align 4
  %status = getelementptr inbounds %struct.da9052_battery, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status, align 4
  %health = getelementptr inbounds %struct.da9052_battery, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %health to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %health, align 4
  %nb = getelementptr inbounds %struct.da9052_battery, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @da9052_USB_current_notifier, ptr %nb, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data, align 8
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %use_for_apm = getelementptr inbounds %struct.da9052_pdata, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %use_for_apm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %use_for_apm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %if.else, %land.lhs.true.if.end8_crit_edge
  %storemerge = phi i32 [ 1, %if.else ], [ %16, %land.lhs.true.if.end8_crit_edge ]
  store i32 %storemerge, ptr getelementptr inbounds (%struct.power_supply_desc, ptr @psy_desc, i32 0, i32 12), align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call12 = tail call i32 @da9052_request_irq(ptr noundef %18, i32 noundef 12, ptr noundef nonnull @.str.6, ptr noundef nonnull @da9052_bat_irq, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %for.inc, label %if.end8.err_crit_edge

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc:                                          ; preds = %if.end8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call12.1 = tail call i32 @da9052_request_irq(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @da9052_bat_irq, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %cmp13.not.1 = icmp eq i32 %call12.1, 0
  br i1 %cmp13.not.1, label %for.inc.1, label %for.inc.err_crit_edge

for.inc.err_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.1:                                        ; preds = %for.inc
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %call12.2 = tail call i32 @da9052_request_irq(ptr noundef %22, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @da9052_bat_irq, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %cmp13.not.2 = icmp eq i32 %call12.2, 0
  br i1 %cmp13.not.2, label %for.inc.2, label %for.inc.1.err_crit_edge

for.inc.1.err_crit_edge:                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.2:                                        ; preds = %for.inc.1
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call12.3 = tail call i32 @da9052_request_irq(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @da9052_bat_irq, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %cmp13.not.3 = icmp eq i32 %call12.3, 0
  br i1 %cmp13.not.3, label %for.inc.3, label %for.inc.2.err_crit_edge

for.inc.2.err_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.3:                                        ; preds = %for.inc.2
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call12.4 = tail call i32 @da9052_request_irq(ptr noundef %26, i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef nonnull @da9052_bat_irq, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %cmp13.not.4 = icmp eq i32 %call12.4, 0
  br i1 %cmp13.not.4, label %for.inc.4, label %for.inc.3.err_crit_edge

for.inc.3.err_crit_edge:                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.4:                                        ; preds = %for.inc.3
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call12.5 = tail call i32 @da9052_request_irq(ptr noundef %28, i32 noundef 11, ptr noundef nonnull @.str.11, ptr noundef nonnull @da9052_bat_irq, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.5)
  %cmp13.not.5 = icmp eq i32 %call12.5, 0
  br i1 %cmp13.not.5, label %for.inc.5, label %for.inc.4.err_crit_edge

for.inc.4.err_crit_edge:                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc.5:                                        ; preds = %for.inc.4
  %call20 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @psy_desc, ptr noundef nonnull %psy_cfg) #5
  %psy = getelementptr inbounds %struct.da9052_battery, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call20, ptr %psy, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err.thread, label %if.end26

err.thread:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call20 to i32
  br label %while.body

if.end26:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err:                                              ; preds = %for.inc.4.err_crit_edge, %for.inc.3.err_crit_edge, %for.inc.2.err_crit_edge, %for.inc.1.err_crit_edge, %for.inc.err_crit_edge, %if.end8.err_crit_edge
  %i.066.lcssa = phi i32 [ 0, %if.end8.err_crit_edge ], [ 1, %for.inc.err_crit_edge ], [ 2, %for.inc.1.err_crit_edge ], [ 3, %for.inc.2.err_crit_edge ], [ 4, %for.inc.3.err_crit_edge ], [ 5, %for.inc.4.err_crit_edge ]
  %.lcssa = phi ptr [ @.str.6, %if.end8.err_crit_edge ], [ @.str.7, %for.inc.err_crit_edge ], [ @.str.8, %for.inc.1.err_crit_edge ], [ @.str.9, %for.inc.2.err_crit_edge ], [ @.str.10, %for.inc.3.err_crit_edge ], [ @.str.11, %for.inc.4.err_crit_edge ]
  %call12.lcssa = phi i32 [ %call12, %if.end8.err_crit_edge ], [ %call12.1, %for.inc.err_crit_edge ], [ %call12.2, %for.inc.1.err_crit_edge ], [ %call12.3, %for.inc.2.err_crit_edge ], [ %call12.4, %for.inc.3.err_crit_edge ], [ %call12.5, %for.inc.4.err_crit_edge ]
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull %.lcssa, i32 noundef %call12.lcssa) #8
  br i1 %cmp13.not, label %err.while.body_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err.while.body_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body:                                       ; preds = %err.while.body_crit_edge, %err.thread
  %ret.077 = phi i32 [ %30, %err.thread ], [ %call12.lcssa, %err.while.body_crit_edge ]
  %i.06576 = phi i32 [ 6, %err.thread ], [ %i.066.lcssa, %err.while.body_crit_edge ]
  %dec69 = add nsw i32 %i.06576, -1
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %arrayidx29 = getelementptr [6 x i32], ptr @da9052_bat_irq_bits, i32 0, i32 %dec69
  %38 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx29, align 4
  call void @da9052_free_irq(ptr noundef %37, i32 noundef %39, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.06576)
  %cmp27 = icmp ugt i32 %i.06576, 1
  br i1 %cmp27, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec69.1 = add nsw i32 %i.06576, -2
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %arrayidx29.1 = getelementptr [6 x i32], ptr @da9052_bat_irq_bits, i32 0, i32 %dec69.1
  %42 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx29.1, align 4
  call void @da9052_free_irq(ptr noundef %41, i32 noundef %43, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec69)
  %cmp27.1 = icmp ugt i32 %dec69, 1
  br i1 %cmp27.1, label %while.body.2, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  %dec69.2 = add nsw i32 %i.06576, -3
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %arrayidx29.2 = getelementptr [6 x i32], ptr @da9052_bat_irq_bits, i32 0, i32 %dec69.2
  %46 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx29.2, align 4
  call void @da9052_free_irq(ptr noundef %45, i32 noundef %47, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec69.1)
  %cmp27.2 = icmp ugt i32 %dec69.1, 1
  br i1 %cmp27.2, label %while.body.3, label %while.body.2.cleanup_crit_edge

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  %dec69.3 = add nsw i32 %i.06576, -4
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %arrayidx29.3 = getelementptr [6 x i32], ptr @da9052_bat_irq_bits, i32 0, i32 %dec69.3
  %50 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx29.3, align 4
  call void @da9052_free_irq(ptr noundef %49, i32 noundef %51, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec69.2)
  %cmp27.3 = icmp ugt i32 %dec69.2, 1
  br i1 %cmp27.3, label %while.body.4, label %while.body.3.cleanup_crit_edge

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.4:                                     ; preds = %while.body.3
  %dec69.4 = add nsw i32 %i.06576, -5
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %arrayidx29.4 = getelementptr [6 x i32], ptr @da9052_bat_irq_bits, i32 0, i32 %dec69.4
  %54 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx29.4, align 4
  call void @da9052_free_irq(ptr noundef %53, i32 noundef %55, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec69.3)
  %cmp27.4 = icmp ugt i32 %dec69.3, 1
  br i1 %cmp27.4, label %while.body.5, label %while.body.4.cleanup_crit_edge

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  %dec69.5 = add nsw i32 %i.06576, -6
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %arrayidx29.5 = getelementptr [6 x i32], ptr @da9052_bat_irq_bits, i32 0, i32 %dec69.5
  %58 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx29.5, align 4
  call void @da9052_free_irq(ptr noundef %57, i32 noundef %59, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.5, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %err.cleanup_crit_edge, %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -12, %entry.cleanup_crit_edge ], [ %call12.lcssa, %err.cleanup_crit_edge ], [ %ret.077, %while.body.5 ], [ %ret.077, %while.body.4.cleanup_crit_edge ], [ %ret.077, %while.body.3.cleanup_crit_edge ], [ %ret.077, %while.body.2.cleanup_crit_edge ], [ %ret.077, %while.body.1.cleanup_crit_edge ], [ %ret.077, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_bat_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %3, i32 noundef 12, ptr noundef %1) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %5, i32 noundef 0, ptr noundef %1) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %7, i32 noundef 2, ptr noundef %1) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %9, i32 noundef 1, ptr noundef %1) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %11, i32 noundef 3, ptr noundef %1) #5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %13, i32 noundef 11, ptr noundef %1) #5
  %psy = getelementptr inbounds %struct.da9052_battery, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %psy, align 4
  tail call void @power_supply_unregister(ptr noundef %15) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_USB_current_notifier(ptr nocapture noundef readonly %nb, i32 noundef %events, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -8
  %status = getelementptr i8, ptr %nb, i32 16
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !59
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 62, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.da9052_reg_read.exit_crit_edge, label %if.end.i

if.end.da9052_reg_read.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.end.i:                                         ; preds = %if.end
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then2.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %8(ptr noundef %3, i8 noundef zeroext 62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit_crit_edge, label %if.then2.i.if.end9.i_crit_edge

if.then2.i.if.end9.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.end9.i:                                        ; preds = %if.then2.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  br label %da9052_reg_read.exit

da9052_reg_read.exit:                             ; preds = %if.end9.i, %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.da9052_reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.end9.i ], [ %call.i, %if.end.da9052_reg_read.exit_crit_edge ], [ %call4.i, %if.then2.i.da9052_reg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i32 %retval.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %da9052_reg_read.exit.cleanup_crit_edge

da9052_reg_read.exit.cleanup_crit_edge:           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %da9052_reg_read.exit
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %chip_id = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp4 = icmp ne i8 %14, 0
  %. = zext i1 %cmp4 to i32
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %arrayidx = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %.
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %conv9 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv9)
  %cmp10 = icmp slt i32 %16, %conv9
  br i1 %cmp10, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %arrayidx14 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 15
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv15)
  %cmp16 = icmp sgt i32 %16, %conv15
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %21 = trunc i32 %16 to i16
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %21)
  %cmp28.not = icmp ult i16 %23, %21
  br i1 %cmp28.not, label %for.inc, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx26.1 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 1
  %24 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx26.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %21)
  %cmp28.not.1 = icmp ult i16 %25, %21
  br i1 %cmp28.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx26.2 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 2
  %26 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx26.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %21)
  %cmp28.not.2 = icmp ult i16 %27, %21
  br i1 %cmp28.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx26.3 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 3
  %28 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx26.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %21)
  %cmp28.not.3 = icmp ult i16 %29, %21
  br i1 %cmp28.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx26.4 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 4
  %30 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx26.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %21)
  %cmp28.not.4 = icmp ult i16 %31, %21
  br i1 %cmp28.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx26.5 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 5
  %32 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx26.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %21)
  %cmp28.not.5 = icmp ult i16 %33, %21
  br i1 %cmp28.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx26.6 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 6
  %34 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx26.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %21)
  %cmp28.not.6 = icmp ult i16 %35, %21
  br i1 %cmp28.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx26.7 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 7
  %36 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx26.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %21)
  %cmp28.not.7 = icmp ult i16 %37, %21
  br i1 %cmp28.not.7, label %for.inc.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx26.8 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 8
  %38 = ptrtoint ptr %arrayidx26.8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx26.8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %21)
  %cmp28.not.8 = icmp ult i16 %39, %21
  br i1 %cmp28.not.8, label %for.inc.8, label %for.inc.7.for.end_crit_edge

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx26.9 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 9
  %40 = ptrtoint ptr %arrayidx26.9 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx26.9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %21)
  %cmp28.not.9 = icmp ult i16 %41, %21
  br i1 %cmp28.not.9, label %for.inc.9, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx26.10 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 10
  %42 = ptrtoint ptr %arrayidx26.10 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx26.10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %21)
  %cmp28.not.10 = icmp ult i16 %43, %21
  br i1 %cmp28.not.10, label %for.inc.10, label %for.inc.9.for.end_crit_edge

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx26.11 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 11
  %44 = ptrtoint ptr %arrayidx26.11 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx26.11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %21)
  %cmp28.not.11 = icmp ult i16 %45, %21
  br i1 %cmp28.not.11, label %for.inc.11, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx26.12 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 12
  %46 = ptrtoint ptr %arrayidx26.12 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx26.12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %21)
  %cmp28.not.12 = icmp ult i16 %47, %21
  br i1 %cmp28.not.12, label %for.inc.12, label %for.inc.11.for.end_crit_edge

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx26.13 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 13
  %48 = ptrtoint ptr %arrayidx26.13 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx26.13, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %21)
  %cmp28.not.13 = icmp ult i16 %49, %21
  br i1 %cmp28.not.13, label %for.inc.13, label %for.inc.12.for.end_crit_edge

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx26.14 = getelementptr [2 x [16 x i16]], ptr @da9052_chg_current_lim, i32 0, i32 %., i32 14
  %50 = ptrtoint ptr %arrayidx26.14 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx26.14, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %21)
  %cmp28.not.14 = icmp ult i16 %51, %21
  br i1 %cmp28.not.14, label %for.inc.14, label %for.inc.13.for.end_crit_edge

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx14, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %21)
  %cmp28.not.15 = icmp ult i16 %53, %21
  %spec.select = select i1 %cmp28.not.15, i32 16, i32 15
  br label %for.end

for.end:                                          ; preds = %for.inc.14, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %col.0.lcssa = phi i32 [ 0, %for.body.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ %spec.select, %for.inc.14 ]
  %regmap.i48 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 1
  %54 = ptrtoint ptr %regmap.i48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i48, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 64, i32 noundef 15, i32 noundef %col.0.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i49 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i49, label %for.end.cleanup_crit_edge, label %if.end.i52

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i52:                                       ; preds = %for.end
  %fix_io.i50 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 8
  %56 = ptrtoint ptr %fix_io.i50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fix_io.i50, align 4
  %tobool.not.i51 = icmp eq ptr %57, null
  br i1 %tobool.not.i51, label %if.end.i52.cleanup_crit_edge, label %if.then4.i

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 %57(ptr noundef %12, i8 noundef zeroext 64) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i52.cleanup_crit_edge, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %da9052_reg_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %da9052_reg_read.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %call.i.i, %for.end.cleanup_crit_edge ], [ %call6.i, %if.then4.i ], [ %call.i.i, %if.end.i52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_bat_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq_data = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_data, align 4
  %call = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %irq) #5
  %sub = sub i32 %irq, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub)
  %cmp = icmp eq i32 %sub, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.da9052_battery, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %status, align 4
  br label %if.then8

if.else:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @da9052_bat_check_status(ptr noundef %data, ptr noundef null)
  %call.fr = freeze i32 %call
  call void @__sanitizer_cov_trace_cmp4(i32 %call.fr, i32 %irq)
  %cmp3 = icmp eq i32 %call.fr, %irq
  br i1 %cmp3, label %if.else.if.then8_crit_edge, label %switch.early.test

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

switch.early.test:                                ; preds = %if.else
  %5 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sub, label %switch.early.test.if.end9_crit_edge [
    i32 12, label %switch.early.test.if.then8_crit_edge
    i32 1, label %switch.early.test.if.then8_crit_edge20
  ]

switch.early.test.if.then8_crit_edge20:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

switch.early.test.if.then8_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

switch.early.test.if.end9_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %switch.early.test.if.then8_crit_edge, %switch.early.test.if.then8_crit_edge20, %if.else.if.then8_crit_edge, %if.then
  %psy = getelementptr inbounds %struct.da9052_battery, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %7) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %switch.early.test.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da9052_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_bat_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %capacity.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @da9052_adc_read_temp(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 62001, i32 %call.i)
  %cmp1.i = icmp ult i32 %call.i, 62001
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp2.not = icmp eq i32 %psp, 3
  %or.cond = or i1 %cmp2.not, %cmp1.i
  br i1 %or.cond, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %psp, label %if.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb6
    i32 3, label %sw.bb8
    i32 2, label %sw.bb10
    i32 11, label %sw.bb12
    i32 13, label %sw.bb13
    i32 18, label %sw.bb15
    i32 47, label %sw.bb17
    i32 52, label %sw.bb19
    i32 6, label %sw.bb21
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call fastcc i32 @da9052_bat_check_status(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %charger_type = getelementptr inbounds %struct.da9052_battery, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %charger_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %charger_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp ne i32 %4, 1
  %cond = zext i1 %cmp7 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %call.i45 = tail call i32 @da9052_adc_read_temp(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %sw.bb8.cleanup_crit_edge, label %if.end.i49

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i49:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 62000, i32 %call.i45)
  %cmp1.i47 = icmp ugt i32 %call.i45, 62000
  %..i48 = zext i1 %cmp1.i47 to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %..i48, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %capacity.i) #5
  %9 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %capacity.i, align 4, !annotation !59
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @da9052_adc_read_temp(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb10.da9052_bat_check_health.exit_crit_edge, label %if.end.i52

sw.bb10.da9052_bat_check_health.exit_crit_edge:   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_bat_check_health.exit

if.end.i52:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 62001, i32 %call.i.i)
  %cmp1.i.i = icmp ult i32 %call.i.i, 62001
  %health4.i = getelementptr inbounds %struct.da9052_battery, ptr %call, i32 0, i32 5
  br i1 %cmp1.i.i, label %if.end3.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %health4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %health4.i, align 4
  br label %da9052_bat_check_health.exit

if.end3.i:                                        ; preds = %if.end.i52
  %13 = ptrtoint ptr %health4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %health4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp5.not.i = icmp eq i32 %14, 2
  br i1 %cmp5.not.i, label %if.end3.i.if.end16.i_crit_edge, label %if.then6.i

if.end3.i.if.end16.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.end3.i
  %call7.i = call fastcc i32 @da9052_bat_read_capacity(ptr noundef %call, ptr noundef nonnull %capacity.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then6.i.da9052_bat_check_health.exit_crit_edge, label %if.end10.i

if.then6.i.da9052_bat_check_health.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_bat_check_health.exit

if.end10.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp11.inv.i = icmp sgt i32 %16, 3
  %..i53 = select i1 %cmp11.inv.i, i32 1, i32 3
  %17 = ptrtoint ptr %health4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %..i53, ptr %health4.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end10.i, %if.end3.i.if.end16.i_crit_edge
  %18 = ptrtoint ptr %health4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %health4.i, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %da9052_bat_check_health.exit

da9052_bat_check_health.exit:                     ; preds = %if.end16.i, %if.then6.i.da9052_bat_check_health.exit_crit_edge, %if.then1.i, %sw.bb10.da9052_bat_check_health.exit_crit_edge
  %retval.0.i54 = phi i32 [ 0, %if.then1.i ], [ 0, %if.end16.i ], [ %call7.i, %if.then6.i.da9052_bat_check_health.exit_crit_edge ], [ %call.i.i, %sw.bb10.da9052_bat_check_health.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %capacity.i) #5
  br label %cleanup

sw.bb12:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2800000, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end4
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %call.i55 = tail call i32 @da9052_adc_manual_read(ptr noundef %23, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %sw.bb13.cleanup_crit_edge, label %if.end.i57

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i57:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i = mul i32 %call.i55, 1000
  %div.i.i = sdiv i32 %mul.i.i, 512
  %add.i.i = add nsw i32 %div.i.i, 2500
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i.i, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end4
  %status.i = getelementptr inbounds %struct.da9052_battery, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i59 = icmp eq i32 %26, 2
  br i1 %cmp.i59, label %sw.bb15.cleanup_crit_edge, label %if.end.i62

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i62:                                       ; preds = %sw.bb15
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %29 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val.i.i, align 4, !annotation !59
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i60 = call i32 @regmap_read(ptr noundef %31, i32 noundef 87, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp.i.i61 = icmp slt i32 %call.i.i60, 0
  br i1 %cmp.i.i61, label %if.end.i62.da9052_reg_read.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i62.da9052_reg_read.exit.thread.i_crit_edge: ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i62
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %28, i32 0, i32 8
  %32 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_reg_read.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.da9052_reg_read.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call i32 %33(ptr noundef %28, i8 noundef zeroext 87) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, label %if.then2.i.i.da9052_reg_read.exit.i_crit_edge

if.then2.i.i.da9052_reg_read.exit.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.i

if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread.i

da9052_reg_read.exit.thread.i:                    ; preds = %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, %if.end.i62.da9052_reg_read.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call4.i.i, %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge ], [ %call.i.i60, %if.end.i62.da9052_reg_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %cleanup

da9052_reg_read.exit.i:                           ; preds = %if.then2.i.i.da9052_reg_read.exit.i_crit_edge, %if.end.i.i.da9052_reg_read.exit.i_crit_edge
  %34 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1.i63 = icmp slt i32 %35, 0
  br i1 %cmp1.i63, label %da9052_reg_read.exit.i.cleanup_crit_edge, label %if.end3.i65

da9052_reg_read.exit.i.cleanup_crit_edge:         ; preds = %da9052_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i65:                                      ; preds = %da9052_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %35, 255
  %mul.i.i64 = mul nuw nsw i32 %and.i, 3900
  %div.i10.i = udiv i32 %mul.i.i64, 1000
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i10.i, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call fastcc i32 @da9052_bat_read_capacity(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb19:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call, align 4
  %call20 = tail call i32 @da9052_adc_read_temp(ptr noundef %38) #5
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call20, ptr %val, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %sw.bb19, %sw.bb17, %if.end3.i65, %da9052_reg_read.exit.i.cleanup_crit_edge, %da9052_reg_read.exit.thread.i, %sw.bb15.cleanup_crit_edge, %if.end.i57, %sw.bb13.cleanup_crit_edge, %sw.bb12, %da9052_bat_check_health.exit, %if.end.i49, %sw.bb8.cleanup_crit_edge, %sw.bb6, %sw.bb, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ 0, %sw.bb12 ], [ %retval.0.i54, %da9052_bat_check_health.exit ], [ 0, %sw.bb6 ], [ %call5, %sw.bb ], [ 0, %if.end.i49 ], [ %call.i45, %sw.bb8.cleanup_crit_edge ], [ 0, %if.end.i57 ], [ %call.i55, %sw.bb13.cleanup_crit_edge ], [ 0, %if.end3.i65 ], [ -22, %sw.bb15.cleanup_crit_edge ], [ %35, %da9052_reg_read.exit.i.cleanup_crit_edge ], [ %retval.0.i.ph.i, %da9052_reg_read.exit.thread.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9052_bat_check_status(ptr nocapture noundef %bat, ptr noundef writeonly %status) unnamed_addr #2 align 64 {
entry:
  %val.i.i109 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !59
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %tmp.i) #5
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %entry.da9052_group_read.exit.thread_crit_edge, label %for.cond.i

entry.da9052_group_read.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_group_read.exit.thread

for.cond.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 2, ptr noundef nonnull %tmp.i) #5
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.da9052_group_read.exit.thread_crit_edge, label %for.cond.1.i

for.cond.i.da9052_group_read.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_group_read.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %da9052_group_read.exit.thread134, label %da9052_group_read.exit

da9052_group_read.exit.thread134:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %if.end

da9052_group_read.exit.thread:                    ; preds = %for.cond.i.da9052_group_read.exit.thread_crit_edge, %entry.da9052_group_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.1.i, %for.cond.i.da9052_group_read.exit.thread_crit_edge ], [ %call.i, %entry.da9052_group_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

da9052_group_read.exit:                           ; preds = %for.cond.1.i
  %call6.i = call i32 %12(ptr noundef %1, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %da9052_group_read.exit.cleanup_crit_edge, label %da9052_group_read.exit.if.end_crit_edge

da9052_group_read.exit.if.end_crit_edge:          ; preds = %da9052_group_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

da9052_group_read.exit.cleanup_crit_edge:         ; preds = %da9052_group_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %da9052_group_read.exit.if.end_crit_edge, %da9052_group_read.exit.thread134
  %13 = and i32 %6, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %13)
  %14 = icmp eq i32 %13, 40
  %15 = and i32 %6, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %15)
  %16 = icmp eq i32 %15, 80
  %brmerge = or i1 %14, %16
  br i1 %brmerge, label %if.then30, label %if.else55

if.then30:                                        ; preds = %if.end
  %charger_type = getelementptr inbounds %struct.da9052_battery, ptr %bat, i32 0, i32 3
  %17 = ptrtoint ptr %charger_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %charger_type, align 4
  %18 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp33.not = icmp eq i32 %18, 0
  %status53 = getelementptr inbounds %struct.da9052_battery, ptr %bat, i32 0, i32 4
  br i1 %cmp33.not, label %if.else52, label %if.then35

if.then35:                                        ; preds = %if.then30
  %19 = ptrtoint ptr %status53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i = icmp eq i32 %20, 2
  br i1 %cmp.i, label %if.then35.cleanup_crit_edge, label %if.end.i

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then35
  %21 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i.i, align 4, !annotation !59
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 87, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.da9052_reg_read.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.da9052_reg_read.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %22, i32 0, i32 8
  %26 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_reg_read.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.da9052_reg_read.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call i32 %27(ptr noundef %22, i8 noundef zeroext 87) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, label %if.then2.i.i.da9052_reg_read.exit.i_crit_edge

if.then2.i.i.da9052_reg_read.exit.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.i

if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread.i

da9052_reg_read.exit.thread.i:                    ; preds = %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge, %if.end.i.da9052_reg_read.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call4.i.i, %if.then2.i.i.da9052_reg_read.exit.thread.i_crit_edge ], [ %call.i.i, %if.end.i.da9052_reg_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %cleanup

da9052_reg_read.exit.i:                           ; preds = %if.then2.i.i.da9052_reg_read.exit.i_crit_edge, %if.end.i.i.da9052_reg_read.exit.i_crit_edge
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.i = icmp slt i32 %29, 0
  br i1 %cmp1.i, label %da9052_reg_read.exit.i.cleanup_crit_edge, label %if.end40

da9052_reg_read.exit.i.cleanup_crit_edge:         ; preds = %da9052_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %da9052_reg_read.exit.i
  %and.i = and i32 %29, 255
  %mul.i.i = mul nuw nsw i32 %and.i, 3900
  %div.i10.i = udiv i32 %mul.i.i, 1000
  %30 = ptrtoint ptr %status53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i111 = icmp eq i32 %31, 2
  br i1 %cmp.i111, label %if.end40.cleanup_crit_edge, label %if.end.i115

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i115:                                      ; preds = %if.end40
  %32 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i109) #5
  %34 = ptrtoint ptr %val.i.i109 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %val.i.i109, align 4, !annotation !59
  %regmap.i.i112 = getelementptr inbounds %struct.da9052, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i.i112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i112, align 4
  %call.i.i113 = call i32 @regmap_read(ptr noundef %36, i32 noundef 89, ptr noundef nonnull %val.i.i109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.i.i114 = icmp slt i32 %call.i.i113, 0
  br i1 %cmp.i.i114, label %if.end.i115.da9052_reg_read.exit.thread.i123_crit_edge, label %if.end.i.i118

if.end.i115.da9052_reg_read.exit.thread.i123_crit_edge: ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread.i123

if.end.i.i118:                                    ; preds = %if.end.i115
  %fix_io.i.i116 = getelementptr inbounds %struct.da9052, ptr %33, i32 0, i32 8
  %37 = ptrtoint ptr %fix_io.i.i116 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fix_io.i.i116, align 4
  %tobool.not.i.i117 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i117, label %if.end.i.i118.da9052_reg_read.exit.i125_crit_edge, label %if.then2.i.i121

if.end.i.i118.da9052_reg_read.exit.i125_crit_edge: ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.i125

if.then2.i.i121:                                  ; preds = %if.end.i.i118
  %call4.i.i119 = call i32 %38(ptr noundef %33, i8 noundef zeroext 89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i119)
  %cmp5.i.i120 = icmp slt i32 %call4.i.i119, 0
  br i1 %cmp5.i.i120, label %if.then2.i.i121.da9052_reg_read.exit.thread.i123_crit_edge, label %if.then2.i.i121.da9052_reg_read.exit.i125_crit_edge

if.then2.i.i121.da9052_reg_read.exit.i125_crit_edge: ; preds = %if.then2.i.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.i125

if.then2.i.i121.da9052_reg_read.exit.thread.i123_crit_edge: ; preds = %if.then2.i.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread.i123

da9052_reg_read.exit.thread.i123:                 ; preds = %if.then2.i.i121.da9052_reg_read.exit.thread.i123_crit_edge, %if.end.i115.da9052_reg_read.exit.thread.i123_crit_edge
  %retval.0.i.ph.i122 = phi i32 [ %call4.i.i119, %if.then2.i.i121.da9052_reg_read.exit.thread.i123_crit_edge ], [ %call.i.i113, %if.end.i115.da9052_reg_read.exit.thread.i123_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i109) #5
  br label %cleanup

da9052_reg_read.exit.i125:                        ; preds = %if.then2.i.i121.da9052_reg_read.exit.i125_crit_edge, %if.end.i.i118.da9052_reg_read.exit.i125_crit_edge
  %39 = ptrtoint ptr %val.i.i109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i.i109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1.i124 = icmp slt i32 %40, 0
  br i1 %cmp1.i124, label %da9052_reg_read.exit.i125.cleanup_crit_edge, label %if.end45

da9052_reg_read.exit.i125.cleanup_crit_edge:      ; preds = %da9052_reg_read.exit.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %da9052_reg_read.exit.i125
  %and.i126 = and i32 %40, 255
  %mul.i.i127 = mul nuw nsw i32 %and.i126, 3900
  %div.i10.i128 = udiv i32 %mul.i.i127, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i10.i, i32 %div.i10.i128)
  %cmp46.not = icmp ult i32 %div.i10.i, %div.i10.i128
  br i1 %cmp46.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %status53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %status53, align 4
  br label %if.end68

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %status53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %status53, align 4
  br label %if.end68

if.else52:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %status53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %status53, align 4
  br label %if.end68

if.else55:                                        ; preds = %if.end
  %44 = and i32 %6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %.not = icmp eq i32 %44, 0
  %charger_type65 = getelementptr inbounds %struct.da9052_battery, ptr %bat, i32 0, i32 3
  br i1 %.not, label %if.else64, label %if.then61

if.then61:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %charger_type65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %charger_type65, align 4
  %status63 = getelementptr inbounds %struct.da9052_battery, ptr %bat, i32 0, i32 4
  %46 = ptrtoint ptr %status63 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %status63, align 4
  br label %if.end68

if.else64:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %charger_type65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %charger_type65, align 4
  %status66 = getelementptr inbounds %struct.da9052_battery, ptr %bat, i32 0, i32 4
  %48 = ptrtoint ptr %status66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %status66, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then61, %if.else52, %if.else, %if.then48
  %cmp69.not = icmp eq ptr %status, null
  br i1 %cmp69.not, label %if.end68.cleanup_crit_edge, label %if.then71

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %status72 = getelementptr inbounds %struct.da9052_battery, ptr %bat, i32 0, i32 4
  %49 = ptrtoint ptr %status72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status72, align 4
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.end68.cleanup_crit_edge, %da9052_reg_read.exit.i125.cleanup_crit_edge, %da9052_reg_read.exit.thread.i123, %if.end40.cleanup_crit_edge, %da9052_reg_read.exit.i.cleanup_crit_edge, %da9052_reg_read.exit.thread.i, %if.then35.cleanup_crit_edge, %da9052_group_read.exit.cleanup_crit_edge, %da9052_group_read.exit.thread
  %retval.0 = phi i32 [ %call6.i, %da9052_group_read.exit.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %if.end68.cleanup_crit_edge ], [ %retval.0.i.ph, %da9052_group_read.exit.thread ], [ %retval.0.i.ph.i, %da9052_reg_read.exit.thread.i ], [ %29, %da9052_reg_read.exit.i.cleanup_crit_edge ], [ -22, %if.then35.cleanup_crit_edge ], [ %retval.0.i.ph.i122, %da9052_reg_read.exit.thread.i123 ], [ %40, %da9052_reg_read.exit.i125.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9052_bat_read_capacity(ptr nocapture noundef readonly %bat, ptr nocapture noundef writeonly %capacity) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat, align 4
  %call.i = tail call i32 @da9052_adc_manual_read(ptr noundef %1, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul.i.i = mul i32 %call.i, 1000
  %div.i.i = sdiv i32 %mul.i.i, 512
  %add.i.i = add nsw i32 %div.i.i, 2500
  %2 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bat, align 4
  %call1 = tail call i32 @da9052_adc_read_temp(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = trunc i32 %call1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv)
  %cmp.i83 = icmp ult i8 %conv, 11
  br i1 %cmp.i83, label %if.end4.da9052_determine_vc_tbl_index.exit_crit_edge, label %if.end.i84

if.end4.da9052_determine_vc_tbl_index.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_determine_vc_tbl_index.exit

if.end.i84:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %conv)
  %cmp5.i = icmp ugt i8 %conv, 40
  br i1 %cmp5.i, label %if.end.i84.da9052_determine_vc_tbl_index.exit_crit_edge, label %land.lhs.true.i

if.end.i84.da9052_determine_vc_tbl_index.exit_crit_edge: ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_determine_vc_tbl_index.exit

land.lhs.true.i:                                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %conv)
  %cmp21.not.i = icmp ugt i8 %conv, 17
  br i1 %cmp21.not.i, label %for.cond.1.i, label %land.lhs.true.i.da9052_determine_vc_tbl_index.exit_crit_edge

land.lhs.true.i.da9052_determine_vc_tbl_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_determine_vc_tbl_index.exit

for.cond.1.i:                                     ; preds = %land.lhs.true.i
  %4 = add nsw i8 %conv, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %4)
  %5 = icmp ult i8 %4, -7
  br i1 %5, label %do.end.i, label %for.cond.1.i.da9052_determine_vc_tbl_index.exit_crit_edge

for.cond.1.i.da9052_determine_vc_tbl_index.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_determine_vc_tbl_index.exit

do.end.i:                                         ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 349, i32 noundef 9, ptr noundef null) #5
  br label %da9052_determine_vc_tbl_index.exit

da9052_determine_vc_tbl_index.exit:               ; preds = %do.end.i, %for.cond.1.i.da9052_determine_vc_tbl_index.exit_crit_edge, %land.lhs.true.i.da9052_determine_vc_tbl_index.exit_crit_edge, %if.end.i84.da9052_determine_vc_tbl_index.exit_crit_edge, %if.end4.da9052_determine_vc_tbl_index.exit_crit_edge
  %retval.0.i85 = phi i32 [ 0, %do.end.i ], [ 0, %if.end4.da9052_determine_vc_tbl_index.exit_crit_edge ], [ 2, %if.end.i84.da9052_determine_vc_tbl_index.exit_crit_edge ], [ 0, %land.lhs.true.i.da9052_determine_vc_tbl_index.exit_crit_edge ], [ 1, %for.cond.1.i.da9052_determine_vc_tbl_index.exit_crit_edge ]
  %arrayidx = getelementptr [3 x [68 x [2 x i32]]], ptr @vc_tbl, i32 0, i32 %retval.0.i85
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %7)
  %cmp9.not = icmp ult i32 %add.i.i, %7
  br i1 %cmp9.not, label %if.end12, label %da9052_determine_vc_tbl_index.exit.cleanup.sink.split_crit_edge

da9052_determine_vc_tbl_index.exit.cleanup.sink.split_crit_edge: ; preds = %da9052_determine_vc_tbl_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end12:                                         ; preds = %da9052_determine_vc_tbl_index.exit
  %arrayidx14 = getelementptr [3 x [68 x [2 x i32]]], ptr @vc_tbl, i32 0, i32 %retval.0.i85, i32 67
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp16.not = icmp ugt i32 %add.i.i, %9
  br i1 %cmp16.not, label %if.end12.for.body_crit_edge, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %j.0104 = phi i32 [ %.pre, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx23 = getelementptr [3 x [68 x [2 x i32]]], ptr @vc_tbl, i32 0, i32 %retval.0.i85, i32 %j.0104
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %11)
  %cmp25.not = icmp ugt i32 %add.i.i, %11
  %.pre = add nuw nsw i32 %j.0104, 1
  br i1 %cmp25.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx28 = getelementptr [3 x [68 x [2 x i32]]], ptr @vc_tbl, i32 0, i32 %retval.0.i85, i32 %.pre
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %13)
  %cmp30.not = icmp ult i32 %add.i.i, %13
  br i1 %cmp30.not, label %land.lhs.true.for.inc_crit_edge, label %if.end49

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %.pre, 67
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42 = getelementptr [3 x [68 x [2 x i32]]], ptr @vc_tbl, i32 0, i32 %retval.0.i85, i32 %j.0104, i32 1
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx42, align 4
  %arrayidx46 = getelementptr [3 x [68 x [2 x i32]]], ptr @vc_tbl, i32 0, i32 %retval.0.i85, i32 %.pre, i32 1
  %16 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx46, align 4
  %sub.i = sub i32 %15, %17
  %mul.i = mul i32 %sub.i, 1000
  %sub1.i = sub i32 %11, %13
  %div.i = sdiv i32 %mul.i, %sub1.i
  %sub2.i = sub i32 %add.i.i, %13
  %mul3.i = mul i32 %div.i, %sub2.i
  %div4.i = sdiv i32 %mul3.i, 1000
  %add.i = add i32 %div4.i, %17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end49, %if.end12.cleanup.sink.split_crit_edge, %da9052_determine_vc_tbl_index.exit.cleanup.sink.split_crit_edge
  %add.i.sink = phi i32 [ %add.i, %if.end49 ], [ 100, %da9052_determine_vc_tbl_index.exit.cleanup.sink.split_crit_edge ], [ 0, %if.end12.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i.sink, ptr %capacity, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -5, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_adc_read_temp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_adc_manual_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_da9052_battery__227_660_da9052_bat_driver_init6, !1, !"__initcall__kmod_da9052_battery__227_660_da9052_bat_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/da9052-battery.c", i32 660, i32 1}
!2 = !{ptr @__exitcall_da9052_bat_driver_exit, !1, !"__exitcall_da9052_bat_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/da9052-battery.c", i32 662, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/da9052-battery.c", i32 663, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/da9052-battery.c", i32 664, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/da9052-battery.c", i32 665, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/da9052-battery.c", i32 657, i32 11}
!14 = !{ptr @da9052_bat_driver, !15, !"da9052_bat_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/da9052-battery.c", i32 653, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/da9052-battery.c", i32 618, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @da9052_bat_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @da9052_bat_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @da9052_chg_current_lim, !25, !"da9052_chg_current_lim", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/da9052-battery.c", i32 43, i32 18}
!26 = !{ptr @psy_desc, !27, !"psy_desc", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/da9052-battery.c", i32 559, i32 33}
!28 = !{ptr @da9052_bat_props, !29, !"da9052_bat_props", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/da9052-battery.c", i32 546, i32 35}
!30 = distinct !{null, !31, !"vc_tbl_ref", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/da9052-battery.c", i32 50, i32 18}
!32 = !{ptr @vc_tbl, !33, !"vc_tbl", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/da9052-battery.c", i32 52, i32 18}
!34 = !{ptr @da9052_bat_irq_bits, !35, !"da9052_bat_irq_bits", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/da9052-battery.c", i32 576, i32 12}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/da9052-battery.c", i32 568, i32 2}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/da9052-battery.c", i32 569, i32 2}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/da9052-battery.c", i32 570, i32 2}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/da9052-battery.c", i32 571, i32 2}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/da9052-battery.c", i32 572, i32 2}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/da9052-battery.c", i32 573, i32 2}
!48 = distinct !{null, !49, !"da9052_bat_irqs", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/da9052-battery.c", i32 567, i32 14}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
