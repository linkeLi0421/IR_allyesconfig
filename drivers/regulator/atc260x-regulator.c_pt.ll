; ModuleID = '/llk/IR_all_yes/drivers/regulator/atc260x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/atc260x-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atc260x_regulator_data = type { i32, i32 }
%struct.atc260x = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }

@__initcall__kmod_atc260x_regulator__288_535_atc260x_regulator_driver_init6 = internal global ptr @atc260x_regulator_driver_init, section ".initcall6.init", align 4
@atc260x_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atc260x_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atc260x_regulator_driver_exit = internal global ptr @atc260x_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [65 x i8] c"atc260x_regulator.description=Regulator driver for ATC260x PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [82 x i8] c"atc260x_regulator.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [75 x i8] c"atc260x_regulator.author=Cristian Ciocaltea <cristian.ciocaltea@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [59 x i8] c"atc260x_regulator.file=drivers/regulator/atc260x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"atc260x_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc260x-regulator\00", [46 x i8] zeroinitializer }, align 32
@atc2603c_reg = internal constant { [13 x %struct.regulator_desc], [796 x i8] } { [13 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.10, i8 0, ptr @.str.11, ptr null, i32 0, i8 0, i32 29, i32 0, ptr @atc260x_dcdc_fixed_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 17, i32 3968, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.13, i8 0, ptr @.str.11, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @atc260x_dcdc_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @atc2603c_dcdc_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 20, i32 7936, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr @.str.15, ptr @.str.15, i8 0, ptr @.str.11, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @atc260x_dcdc_fixed_ops, i32 0, i32 0, ptr null, i32 2600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 3584, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr @.str.17, ptr @.str.17, i8 0, ptr @.str.11, ptr null, i32 3, i8 0, i32 8, i32 0, ptr @atc260x_ldo_fixed_ops, i32 0, i32 0, ptr null, i32 2600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 57344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.19, i8 0, ptr @.str.11, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @atc260x_ldo_fixed_ops, i32 0, i32 0, ptr null, i32 2600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 31, i32 57344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.21, i8 0, ptr @.str.11, ptr null, i32 5, i8 0, i32 6, i32 0, ptr @atc260x_ldo_fixed_ops, i32 0, i32 0, ptr null, i32 1500000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 57344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr @.str.23, ptr @.str.23, i8 0, ptr @.str.11, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @atc260x_ldo_ops, i32 0, i32 0, ptr null, i32 2600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 57344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr @.str.25, i8 0, ptr @.str.11, ptr null, i32 7, i8 0, i32 29, i32 0, ptr @atc260x_ldo_fixed_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63488, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr @.str.27, i8 0, ptr @.str.11, ptr null, i32 8, i8 0, i32 6, i32 0, ptr @atc260x_ldo_ops, i32 0, i32 0, ptr null, i32 1500000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 57344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.29, ptr @.str.29, i8 0, ptr @.str.11, ptr null, i32 9, i8 0, i32 11, i32 0, ptr @atc260x_ldo_ops, i32 0, i32 0, ptr null, i32 2300000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 61440, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr @.str.31, ptr @.str.31, i8 0, ptr @.str.11, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @atc260x_ldo_fixed_ops, i32 0, i32 0, ptr null, i32 2600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 57344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr @.str.33, ptr @.str.33, i8 0, ptr @.str.11, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @atc260x_no_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr @.str.35, i8 0, ptr @.str.11, ptr null, i32 12, i8 0, i32 4, i32 0, ptr @atc260x_ldo_bypass_discharge_ops, i32 0, i32 0, ptr null, i32 3000000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 32768, i32 0, i32 0, i8 1, i32 41, i32 32, i32 0, i32 0, i32 0, i32 0, i32 2, i32 41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }], [796 x i8] zeroinitializer }, align 32
@atc2609a_reg = internal constant { [15 x %struct.regulator_desc], [916 x i8] } { [15 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.36, ptr @.str.37, ptr @.str.37, i8 0, ptr @.str.11, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @atc260x_dcdc_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 65280, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.10, i8 0, ptr @.str.11, ptr null, i32 1, i8 0, i32 256, i32 0, ptr @atc260x_dcdc_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 65280, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.13, i8 0, ptr @.str.11, ptr null, i32 2, i8 0, i32 256, i32 0, ptr @atc260x_dcdc_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 65280, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr @.str.15, ptr @.str.15, i8 0, ptr @.str.11, ptr null, i32 3, i8 0, i32 233, i32 0, ptr @atc260x_dcdc_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @atc2609a_dcdc_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 49, i32 65280, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.39, ptr @.str.39, i8 0, ptr @.str.11, ptr null, i32 4, i8 0, i32 256, i32 0, ptr @atc260x_dcdc_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 121, i32 65280, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 256, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr @.str.41, ptr @.str.41, i8 0, ptr @.str.11, ptr null, i32 5, i8 0, i32 12, i32 0, ptr @atc260x_ldo_bypass_ops, i32 0, i32 0, ptr null, i32 2300000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 1, i32 0, i32 0, i8 0, i32 57, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr @.str.17, ptr @.str.17, i8 0, ptr @.str.11, ptr null, i32 6, i8 0, i32 12, i32 0, ptr @atc260x_ldo_bypass_ops, i32 0, i32 0, ptr null, i32 2300000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 1, i32 0, i32 0, i8 0, i32 59, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.19, i8 0, ptr @.str.11, ptr null, i32 7, i8 0, i32 12, i32 0, ptr @atc260x_ldo_bypass_ops, i32 0, i32 0, ptr null, i32 2300000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 60, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 1, i32 0, i32 0, i8 0, i32 61, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.21, i8 0, ptr @.str.11, ptr null, i32 8, i8 0, i32 29, i32 0, ptr @atc260x_ldo_range_pick_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @atc2609a_ldo_voltage_ranges0, ptr @atc260x_ldo_voltage_range_sel, i32 2, ptr null, ptr null, i32 63, i32 32, i32 63, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr @.str.43, ptr @.str.43, i8 0, ptr @.str.11, ptr null, i32 9, i8 0, i32 29, i32 0, ptr @atc260x_ldo_range_pick_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @atc2609a_ldo_voltage_ranges0, ptr @atc260x_ldo_voltage_range_sel, i32 2, ptr null, ptr null, i32 65, i32 32, i32 65, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr @.str.23, ptr @.str.23, i8 0, ptr @.str.11, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @atc260x_ldo_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr @.str.25, i8 0, ptr @.str.11, ptr null, i32 11, i8 0, i32 28, i32 0, ptr @atc260x_ldo_range_pick_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @atc2609a_ldo_voltage_ranges1, ptr @atc260x_ldo_voltage_range_sel, i32 2, ptr null, ptr null, i32 69, i32 32, i32 69, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr @.str.27, i8 0, ptr @.str.11, ptr null, i32 12, i8 0, i32 29, i32 0, ptr @atc260x_ldo_range_pick_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @atc2609a_ldo_voltage_ranges0, ptr @atc260x_ldo_voltage_range_sel, i32 2, ptr null, ptr null, i32 71, i32 32, i32 71, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.29, ptr @.str.29, i8 0, ptr @.str.11, ptr null, i32 13, i8 0, i32 29, i32 0, ptr @atc260x_ldo_range_pick_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @atc2609a_ldo_voltage_ranges0, ptr @atc260x_ldo_voltage_range_sel, i32 2, ptr null, ptr null, i32 73, i32 32, i32 73, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr @.str.45, i8 0, ptr @.str.11, ptr null, i32 14, i8 0, i32 8, i32 0, ptr @atc260x_ldo_fixed_ops, i32 0, i32 0, ptr null, i32 2600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 57344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 0, i32 0, ptr null }], [916 x i8] zeroinitializer }, align 32
@atc260x_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported ATC260X ID %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atc260x_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/atc260x-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atc260x_regulator_probe._entry_ptr = internal global ptr @atc260x_regulator_probe._entry, section ".printk_index", align 4
@atc2603c_reg_dcdc2_ver_b = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.13, i8 0, ptr @.str.11, ptr null, i32 1, i8 0, i32 18, i32 0, ptr @atc260x_dcdc_ops, i32 0, i32 0, ptr null, i32 1000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 20, i32 7936, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 800, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@atc260x_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@atc260x_regulator_probe._entry_ptr.8 = internal global ptr @atc260x_regulator_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc1\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@atc260x_dcdc_fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_dcdc_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc2\00", [26 x i8] zeroinitializer }, align 32
@atc260x_dcdc_range_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_dcdc_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@atc2603c_dcdc_voltage_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1300000, i32 0, i32 13, i32 50000 }, %struct.linear_range { i32 1950000, i32 14, i32 15, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC3\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc3\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@atc260x_ldo_fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_ldo_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@atc260x_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_ldo_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo11\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo12\00", [26 x i8] zeroinitializer }, align 32
@atc260x_no_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWITCHLDO1\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"switchldo1\00", [21 x i8] zeroinitializer }, align 32
@atc260x_ldo_bypass_discharge_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_ldo_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC0\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc0\00", [26 x i8] zeroinitializer }, align 32
@atc260x_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_dcdc_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@atc2609a_dcdc_voltage_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 127, i32 6250 }, %struct.linear_range { i32 1400000, i32 128, i32 232, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC4\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc4\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO0\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo0\00", [27 x i8] zeroinitializer }, align 32
@atc260x_ldo_bypass_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_ldo_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@atc260x_ldo_range_pick_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_pickable_regmap, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atc260x_ldo_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@atc2609a_ldo_voltage_ranges0 = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 15, i32 100000 }, %struct.linear_range { i32 2100000, i32 0, i32 12, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@atc260x_ldo_voltage_range_sel = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 32], [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@atc2609a_ldo_voltage_ranges1 = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 850000, i32 0, i32 15, i32 100000 }, %struct.linear_range { i32 2100000, i32 0, i32 11, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"atc260x_regulator_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 528, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 531, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"atc2603c_reg\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 298, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"atc2609a_reg\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 453, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 501, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"atc2603c_reg_dcdc2_ver_b\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 314, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 520, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 299, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"atc260x_dcdc_fixed_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 132, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 300, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"atc260x_dcdc_range_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 112, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [29 x i8] c"atc2603c_dcdc_voltage_ranges\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 19, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 301, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 302, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"atc260x_ldo_fixed_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 139, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 303, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 304, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 305, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"atc260x_ldo_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 77, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 306, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 307, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 308, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 309, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 310, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [15 x i8] c"atc260x_no_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 146, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 311, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [33 x i8] c"atc260x_ldo_bypass_discharge_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 99, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 454, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"atc260x_dcdc_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 67, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant [29 x i8] c"atc2609a_dcdc_voltage_ranges\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 24, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 458, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 459, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"atc260x_ldo_bypass_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 87, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant [27 x i8] c"atc260x_ldo_range_pick_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 122, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant [29 x i8] c"atc2609a_ldo_voltage_ranges0\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 29, i32 34 }
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"atc260x_ldo_voltage_range_sel\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 39, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 463, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [29 x i8] c"atc2609a_ldo_voltage_ranges1\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 34, i32 34 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [41 x i8] c"../drivers/regulator/atc260x-regulator.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 468, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_atc260x_regulator_driver_exit, ptr @__initcall__kmod_atc260x_regulator__288_535_atc260x_regulator_driver_init6, ptr @atc260x_regulator_driver_exit, ptr @atc260x_regulator_probe._entry, ptr @atc260x_regulator_probe._entry.6, ptr @atc260x_regulator_probe._entry_ptr, ptr @atc260x_regulator_probe._entry_ptr.8, ptr @atc260x_regulator_driver, ptr @.str, ptr @atc2603c_reg, ptr @atc2609a_reg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atc2603c_reg_dcdc2_ver_b, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @atc260x_dcdc_fixed_ops, ptr @.str.12, ptr @.str.13, ptr @atc260x_dcdc_range_ops, ptr @atc2603c_dcdc_voltage_ranges, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @atc260x_ldo_fixed_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @atc260x_ldo_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @atc260x_no_ops, ptr @.str.34, ptr @.str.35, ptr @atc260x_ldo_bypass_discharge_ops, ptr @.str.36, ptr @.str.37, ptr @atc260x_dcdc_ops, ptr @atc2609a_dcdc_voltage_ranges, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @atc260x_ldo_bypass_ops, ptr @atc260x_ldo_range_pick_ops, ptr @atc2609a_ldo_voltage_ranges0, ptr @atc260x_ldo_voltage_range_sel, ptr @.str.42, ptr @.str.43, ptr @atc2609a_ldo_voltage_ranges1, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_reg to i32), i32 3172, i32 3968, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_reg to i32), i32 3660, i32 4576, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_reg_dcdc2_ver_b to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_dcdc_fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_dcdc_range_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_dcdc_voltage_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_ldo_fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_no_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_ldo_bypass_discharge_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_dcdc_voltage_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_ldo_bypass_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_ldo_range_pick_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_ldo_voltage_ranges0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_ldo_voltage_range_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_ldo_voltage_ranges1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atc260x_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atc260x_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @atc260x_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %6 = getelementptr inbounds i8, ptr %config, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 350, ptr %call.i, align 4
  %voltage_time_ldo = getelementptr inbounds %struct.atc260x_regulator_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %voltage_time_ldo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 800, ptr %voltage_time_ldo, align 4
  %ic_type = getelementptr inbounds %struct.atc260x, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %ic_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ic_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ic_ver = getelementptr inbounds %struct.atc260x, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %ic_ver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ic_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 250, ptr %call.i, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %11) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %regulators.0 = phi ptr [ @atc2609a_reg, %sw.bb5 ], [ @atc2603c_reg, %sw.bb ]
  %atc2603c_ver_b.0.off0 = phi i1 [ false, %sw.bb5 ], [ %cmp, %sw.bb ]
  %nregulators.0 = phi i32 [ 15, %sw.bb5 ], [ 13, %sw.bb ]
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %5, ptr %config, align 4
  %regmap = getelementptr inbounds %struct.atc260x, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %regmap9 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %19 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %regmap9, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.055 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %atc2603c_ver_b.0.off0, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr %struct.regulator_desc, ptr %regulators.0, i32 %i.055, i32 6
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp12 = icmp eq i32 %22, 1
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @atc2603c_reg_dcdc2_ver_b, ptr noundef nonnull %config) #5
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %arrayidx17 = getelementptr %struct.regulator_desc, ptr %regulators.0, i32 %i.055
  %call18 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx17, ptr noundef nonnull %config) #5
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %atc260x_rdev.0 = phi ptr [ %call15, %if.then13 ], [ %call18, %if.else ]
  %cmp.i = icmp ugt ptr %atc260x_rdev.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end24, label %for.inc

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %i.055) #8
  %23 = ptrtoint ptr %atc260x_rdev.0 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end19
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %nregulators.0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %23, %do.end24 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_dcdc_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %new_selector, i32 %old_selector)
  %cmp = icmp ugt i32 %new_selector, %old_selector
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_ldo_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %new_selector, i32 %old_selector)
  %cmp = icmp ugt i32 %new_selector, %old_selector
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %voltage_time_ldo = getelementptr inbounds %struct.atc260x_regulator_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %voltage_time_ldo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %voltage_time_ldo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_active_discharge_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_pickable_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_pickable_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_pickable_regmap(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_atc260x_regulator__288_535_atc260x_regulator_driver_init6, !1, !"__initcall__kmod_atc260x_regulator__288_535_atc260x_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/atc260x-regulator.c", i32 535, i32 1}
!2 = !{ptr @__exitcall_atc260x_regulator_driver_exit, !1, !"__exitcall_atc260x_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/atc260x-regulator.c", i32 537, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/atc260x-regulator.c", i32 538, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/atc260x-regulator.c", i32 539, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/atc260x-regulator.c", i32 540, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/atc260x-regulator.c", i32 531, i32 11}
!14 = !{ptr @atc260x_regulator_driver, !15, !"atc260x_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/atc260x-regulator.c", i32 528, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/atc260x-regulator.c", i32 501, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @atc260x_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @atc260x_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/atc260x-regulator.c", i32 520, i32 4}
!26 = !{ptr @atc260x_regulator_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @atc260x_regulator_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/atc260x-regulator.c", i32 299, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/atc260x-regulator.c", i32 300, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/atc260x-regulator.c", i32 301, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/atc260x-regulator.c", i32 302, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/atc260x-regulator.c", i32 303, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/atc260x-regulator.c", i32 304, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/atc260x-regulator.c", i32 305, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/atc260x-regulator.c", i32 306, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/atc260x-regulator.c", i32 307, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/atc260x-regulator.c", i32 308, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/atc260x-regulator.c", i32 309, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/atc260x-regulator.c", i32 310, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/atc260x-regulator.c", i32 311, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @atc2603c_reg, !69, !"atc2603c_reg", i1 false, i1 false}
!69 = !{!"../drivers/regulator/atc260x-regulator.c", i32 298, i32 36}
!70 = !{ptr @atc260x_dcdc_fixed_ops, !71, !"atc260x_dcdc_fixed_ops", i1 false, i1 false}
!71 = !{!"../drivers/regulator/atc260x-regulator.c", i32 132, i32 35}
!72 = !{ptr @atc260x_dcdc_range_ops, !73, !"atc260x_dcdc_range_ops", i1 false, i1 false}
!73 = !{!"../drivers/regulator/atc260x-regulator.c", i32 112, i32 35}
!74 = !{ptr @atc2603c_dcdc_voltage_ranges, !75, !"atc2603c_dcdc_voltage_ranges", i1 false, i1 false}
!75 = !{!"../drivers/regulator/atc260x-regulator.c", i32 19, i32 34}
!76 = !{ptr @atc260x_ldo_fixed_ops, !77, !"atc260x_ldo_fixed_ops", i1 false, i1 false}
!77 = !{!"../drivers/regulator/atc260x-regulator.c", i32 139, i32 35}
!78 = !{ptr @atc260x_ldo_ops, !79, !"atc260x_ldo_ops", i1 false, i1 false}
!79 = !{!"../drivers/regulator/atc260x-regulator.c", i32 77, i32 35}
!80 = !{ptr @atc260x_no_ops, !81, !"atc260x_no_ops", i1 false, i1 false}
!81 = !{!"../drivers/regulator/atc260x-regulator.c", i32 146, i32 35}
!82 = !{ptr @atc260x_ldo_bypass_discharge_ops, !83, !"atc260x_ldo_bypass_discharge_ops", i1 false, i1 false}
!83 = !{!"../drivers/regulator/atc260x-regulator.c", i32 99, i32 35}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/atc260x-regulator.c", i32 454, i32 2}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/atc260x-regulator.c", i32 458, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/atc260x-regulator.c", i32 459, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/atc260x-regulator.c", i32 463, i32 2}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/atc260x-regulator.c", i32 468, i32 2}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @atc2609a_reg, !100, !"atc2609a_reg", i1 false, i1 false}
!100 = !{!"../drivers/regulator/atc260x-regulator.c", i32 453, i32 36}
!101 = !{ptr @atc260x_dcdc_ops, !102, !"atc260x_dcdc_ops", i1 false, i1 false}
!102 = !{!"../drivers/regulator/atc260x-regulator.c", i32 67, i32 35}
!103 = !{ptr @atc2609a_dcdc_voltage_ranges, !104, !"atc2609a_dcdc_voltage_ranges", i1 false, i1 false}
!104 = !{!"../drivers/regulator/atc260x-regulator.c", i32 24, i32 34}
!105 = !{ptr @atc260x_ldo_bypass_ops, !106, !"atc260x_ldo_bypass_ops", i1 false, i1 false}
!106 = !{!"../drivers/regulator/atc260x-regulator.c", i32 87, i32 35}
!107 = !{ptr @atc260x_ldo_range_pick_ops, !108, !"atc260x_ldo_range_pick_ops", i1 false, i1 false}
!108 = !{!"../drivers/regulator/atc260x-regulator.c", i32 122, i32 35}
!109 = !{ptr @atc2609a_ldo_voltage_ranges0, !110, !"atc2609a_ldo_voltage_ranges0", i1 false, i1 false}
!110 = !{!"../drivers/regulator/atc260x-regulator.c", i32 29, i32 34}
!111 = !{ptr @atc260x_ldo_voltage_range_sel, !112, !"atc260x_ldo_voltage_range_sel", i1 false, i1 false}
!112 = !{!"../drivers/regulator/atc260x-regulator.c", i32 39, i32 27}
!113 = !{ptr @atc2609a_ldo_voltage_ranges1, !114, !"atc2609a_ldo_voltage_ranges1", i1 false, i1 false}
!114 = !{!"../drivers/regulator/atc260x-regulator.c", i32 34, i32 34}
!115 = !{ptr @atc2603c_reg_dcdc2_ver_b, !116, !"atc2603c_reg_dcdc2_ver_b", i1 false, i1 false}
!116 = !{!"../drivers/regulator/atc260x-regulator.c", i32 314, i32 36}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
