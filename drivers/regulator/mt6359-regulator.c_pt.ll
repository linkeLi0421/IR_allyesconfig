; ModuleID = '/llk/IR_all_yes/drivers/regulator/mt6359-regulator.c_pt.bc'
source_filename = "../drivers/regulator/mt6359-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.mt6359_regulator_info = type { %struct.regulator_desc, i32, i32, i32, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_mt6359_regulator__288_990_mt6359_regulator_driver_init6 = internal global ptr @mt6359_regulator_driver_init, section ".initcall6.init", align 4
@mt6359_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6359_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt6359_platform_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6359_regulator_driver_exit = internal global ptr @mt6359_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [53 x i8] c"mt6359_regulator.author=Wen Su <wen.su@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"mt6359_regulator.description=Regulator Driver for MediaTek MT6359 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"mt6359_regulator.file=drivers/regulator/mt6359-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"mt6359_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6359-regulator\00", [47 x i8] zeroinitializer }, align 32
@mt6359_platform_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mt6359-regulator\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt6359p_regulators = internal global { [43 x %struct.mt6359_regulator_info], [2908 x i8] } { [43 x %struct.mt6359_regulator_info] [%struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr @.str.8, ptr null, i32 0, i8 0, i32 113, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6196, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6152, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6184, i32 1, i32 6700, i32 8, i32 6152, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.10, i8 0, ptr @.str.8, ptr null, i32 1, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5556, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5512, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5544, i32 1, i32 6542, i32 512, i32 5512, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.12, i8 0, ptr @.str.8, ptr null, i32 2, i8 0, i32 113, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5806, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5768, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5800, i32 1, i32 6682, i32 2, i32 5768, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.14, i8 0, ptr @.str.8, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5292, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5256, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5288, i32 1, i32 6694, i32 2, i32 5256, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.16, i8 0, ptr @.str.8, ptr null, i32 4, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 506250, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5420, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5384, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5416, i32 1, i32 6564, i32 32, i32 5384, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.18, i8 0, ptr @.str.8, ptr null, i32 5, i8 0, i32 65, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6324, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6280, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6312, i32 1, i32 6708, i32 8, i32 6280, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.20, i8 0, ptr @.str.8, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6414, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6408, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6422, i32 1, i32 6716, i32 2, i32 6408, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.22, i8 0, ptr @.str.8, ptr null, i32 7, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6066, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6024, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6056, i32 1, i32 6670, i32 2, i32 6024, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.24, i8 0, ptr @.str.8, ptr null, i32 8, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5934, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5896, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5928, i32 1, i32 6578, i32 2, i32 5896, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.26, i8 0, ptr @.str.8, ptr null, i32 9, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5546, i32 2032, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5546, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5544, i32 1, i32 6542, i32 512, i32 5512, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.28, i8 0, ptr @.str.8, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7322, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7326, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.30, i8 0, ptr @.str.8, ptr null, i32 11, i8 0, i32 13, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vsim1_voltages, ptr null, i32 0, i32 0, i32 8098, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7376, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7380, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.32, i8 0, ptr @.str.8, ptr null, i32 12, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vibr_voltages, ptr null, i32 0, i32 0, i32 8110, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7506, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7510, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.34, i8 0, ptr @.str.8, ptr null, i32 13, i8 0, i32 5, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vrf12_voltages, ptr null, i32 0, i32 0, i32 8234, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7102, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7106, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.36, i8 0, ptr @.str.8, ptr null, i32 14, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7432, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7436, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.38, i8 0, ptr @.str.8, ptr null, i32 15, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6982, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7848, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7852, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.40, i8 0, ptr @.str.8, ptr null, i32 16, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8220, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7340, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 960, i32 0, i32 0, ptr null }, i32 7344, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.41, ptr null, ptr @.str.42, i8 0, ptr @.str.8, ptr null, i32 17, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8212, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7250, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1290, i32 0, i32 0, ptr null }, i32 7254, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.43, ptr null, ptr @.str.44, i8 0, ptr @.str.8, ptr null, i32 18, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7214, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7218, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.8, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 2800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7048, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7052, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.47, ptr null, ptr @.str.48, i8 0, ptr @.str.8, ptr null, i32 20, i8 0, i32 5, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn13_voltages, ptr null, i32 0, i32 0, i32 8238, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7196, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7200, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.49, ptr null, ptr @.str.50, i8 0, ptr @.str.8, ptr null, i32 21, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8088, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7138, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7142, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.51, ptr null, ptr @.str.52, i8 0, ptr @.str.8, ptr null, i32 22, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8088, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7156, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7142, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.53, ptr null, ptr @.str.54, i8 0, ptr @.str.8, ptr null, i32 23, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7304, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7308, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.55, ptr null, ptr @.str.56, i8 0, ptr @.str.8, ptr null, i32 24, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6984, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7944, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7948, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.57, ptr null, ptr @.str.58, i8 0, ptr @.str.8, ptr null, i32 25, i8 0, i32 15, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vefuse_voltages, ptr null, i32 0, i32 0, i32 8204, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7120, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7124, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.59, ptr null, ptr @.str.60, i8 0, ptr @.str.8, ptr null, i32 26, i8 0, i32 5, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vxo22_voltages, ptr null, i32 0, i32 0, i32 8328, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7066, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7070, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.61, ptr null, ptr @.str.62, i8 0, ptr @.str.8, ptr null, i32 27, i8 0, i32 2, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vrfck_voltages_1, ptr null, i32 0, i32 0, i32 8332, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7452, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7456, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.63, ptr null, ptr @.str.64, i8 0, ptr @.str.8, ptr null, i32 28, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 2800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7488, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7492, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.65, ptr null, ptr @.str.66, i8 0, ptr @.str.8, ptr null, i32 29, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vio28_voltages, ptr null, i32 0, i32 0, i32 8106, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7524, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1920, i32 0, i32 0, ptr null }, i32 7528, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.67, ptr null, ptr @.str.68, i8 0, ptr @.str.8, ptr null, i32 30, i8 0, i32 14, i32 0, ptr @mt6359p_vemc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vemc_voltages_1, ptr null, i32 0, i32 0, i32 6988, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7358, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7362, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.69, ptr null, ptr @.str.70, i8 0, ptr @.str.8, ptr null, i32 31, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8092, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7176, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7180, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.71, ptr null, ptr @.str.72, i8 0, ptr @.str.8, ptr null, i32 32, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8092, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7194, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7180, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.73, ptr null, ptr @.str.74, i8 0, ptr @.str.8, ptr null, i32 33, i8 0, i32 8, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @va12_voltages, ptr null, i32 0, i32 0, i32 8128, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7268, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 960, i32 0, i32 0, ptr null }, i32 7272, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.75, ptr null, ptr @.str.76, i8 0, ptr @.str.8, ptr null, i32 34, i8 0, i32 7, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @va09_voltages, ptr null, i32 0, i32 0, i32 8270, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7232, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 960, i32 0, i32 0, ptr null }, i32 7236, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.77, ptr null, ptr @.str.78, i8 0, ptr @.str.8, ptr null, i32 35, i8 0, i32 8, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vrf18_voltages, ptr null, i32 0, i32 0, i32 8200, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7084, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7088, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.79, ptr null, ptr @.str.80, i8 0, ptr @.str.8, ptr null, i32 36, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6986, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7982, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7986, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.81, ptr null, ptr @.str.82, i8 0, ptr @.str.8, ptr null, i32 37, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8228, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7578, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1920, i32 0, i32 0, ptr null }, i32 7582, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.83, ptr null, ptr @.str.84, i8 0, ptr @.str.8, ptr null, i32 38, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8224, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7560, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1920, i32 0, i32 0, ptr null }, i32 7564, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.85, ptr null, ptr @.str.86, i8 0, ptr @.str.8, ptr null, i32 39, i8 0, i32 13, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vbbck_voltages, ptr null, i32 0, i32 0, i32 8342, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7470, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7474, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.87, ptr null, ptr @.str.88, i8 0, ptr @.str.8, ptr null, i32 40, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6980, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7816, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7820, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.89, ptr null, ptr @.str.90, i8 0, ptr @.str.8, ptr null, i32 41, i8 0, i32 13, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vsim2_voltages, ptr null, i32 0, i32 0, i32 8102, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7394, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7398, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.91, ptr null, ptr @.str.92, i8 0, ptr @.str.8, ptr null, i32 42, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 7976, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7976, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7948, i32 1, i32 0, i32 0, i32 0, i32 0 }], [2908 x i8] zeroinitializer }, align 32
@mt6359_regulators = internal global { [43 x %struct.mt6359_regulator_info], [2908 x i8] } { [43 x %struct.mt6359_regulator_info] [%struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr @.str.8, ptr null, i32 0, i8 0, i32 113, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6196, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6152, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6184, i32 1, i32 6700, i32 8, i32 6152, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.10, i8 0, ptr @.str.8, ptr null, i32 1, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5548, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5512, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5544, i32 1, i32 6542, i32 512, i32 5512, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.12, i8 0, ptr @.str.8, ptr null, i32 2, i8 0, i32 113, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5806, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5768, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5800, i32 1, i32 6682, i32 2, i32 5768, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.14, i8 0, ptr @.str.8, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5292, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5256, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5288, i32 1, i32 6694, i32 2, i32 5256, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.16, i8 0, ptr @.str.8, ptr null, i32 4, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5428, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5384, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5416, i32 1, i32 6564, i32 32, i32 5384, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.18, i8 0, ptr @.str.8, ptr null, i32 5, i8 0, i32 65, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6324, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6280, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6312, i32 1, i32 6708, i32 8, i32 6280, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.20, i8 0, ptr @.str.8, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6414, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6408, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6422, i32 1, i32 6716, i32 2, i32 6408, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.22, i8 0, ptr @.str.8, ptr null, i32 7, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6066, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6024, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 6056, i32 1, i32 6670, i32 2, i32 6024, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.24, i8 0, ptr @.str.8, ptr null, i32 8, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5934, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5896, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5928, i32 1, i32 6578, i32 2, i32 5896, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.102, ptr null, ptr @.str.103, i8 0, ptr @.str.8, ptr null, i32 9, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5418, i32 2032, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5418, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6359_map_mode }, i32 5416, i32 1, i32 6564, i32 32, i32 5384, i32 2 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.28, i8 0, ptr @.str.8, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7320, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7322, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.30, i8 0, ptr @.str.8, ptr null, i32 11, i8 0, i32 13, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vsim1_voltages, ptr null, i32 0, i32 0, i32 8100, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7368, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7370, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.32, i8 0, ptr @.str.8, ptr null, i32 12, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vibr_voltages, ptr null, i32 0, i32 0, i32 8112, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7498, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7500, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.34, i8 0, ptr @.str.8, ptr null, i32 13, i8 0, i32 5, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vrf12_voltages, ptr null, i32 0, i32 0, i32 8234, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7096, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 0, i32 0, ptr null }, i32 7098, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.36, i8 0, ptr @.str.8, ptr null, i32 14, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7432, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7434, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.38, i8 0, ptr @.str.8, ptr null, i32 15, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6978, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7846, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7848, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.40, i8 0, ptr @.str.8, ptr null, i32 16, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8220, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7336, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 960, i32 0, i32 0, ptr null }, i32 7338, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.41, ptr null, ptr @.str.42, i8 0, ptr @.str.8, ptr null, i32 17, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8212, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7242, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1290, i32 0, i32 0, ptr null }, i32 7244, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.43, ptr null, ptr @.str.44, i8 0, ptr @.str.8, ptr null, i32 18, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7210, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7212, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.8, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 2800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7048, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7050, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.47, ptr null, ptr @.str.48, i8 0, ptr @.str.8, ptr null, i32 20, i8 0, i32 5, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn13_voltages, ptr null, i32 0, i32 0, i32 8238, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7194, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7196, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.49, ptr null, ptr @.str.50, i8 0, ptr @.str.8, ptr null, i32 21, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8088, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7128, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7130, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.51, ptr null, ptr @.str.52, i8 0, ptr @.str.8, ptr null, i32 22, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8088, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7144, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7130, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.53, ptr null, ptr @.str.54, i8 0, ptr @.str.8, ptr null, i32 23, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7304, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7306, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.55, ptr null, ptr @.str.56, i8 0, ptr @.str.8, ptr null, i32 24, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6980, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7944, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7946, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.57, ptr null, ptr @.str.58, i8 0, ptr @.str.8, ptr null, i32 25, i8 0, i32 15, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vefuse_voltages, ptr null, i32 0, i32 0, i32 8204, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7112, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7114, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.59, ptr null, ptr @.str.60, i8 0, ptr @.str.8, ptr null, i32 26, i8 0, i32 5, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vxo22_voltages, ptr null, i32 0, i32 0, i32 8328, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7064, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 0, i32 0, ptr null }, i32 7066, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.61, ptr null, ptr @.str.104, i8 0, ptr @.str.8, ptr null, i32 27, i8 0, i32 13, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vrfck_voltages, ptr null, i32 0, i32 0, i32 8332, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7450, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7452, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.63, ptr null, ptr @.str.64, i8 0, ptr @.str.8, ptr null, i32 28, i8 0, i32 1, i32 0, ptr @mt6359_volt_fixed_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 2800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7482, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7484, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.65, ptr null, ptr @.str.66, i8 0, ptr @.str.8, ptr null, i32 29, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vio28_voltages, ptr null, i32 0, i32 0, i32 8108, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7514, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7516, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.67, ptr null, ptr @.str.105, i8 0, ptr @.str.8, ptr null, i32 30, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vemc_voltages, ptr null, i32 0, i32 0, i32 8096, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7352, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7354, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.69, ptr null, ptr @.str.70, i8 0, ptr @.str.8, ptr null, i32 31, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8092, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7176, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7178, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.71, ptr null, ptr @.str.72, i8 0, ptr @.str.8, ptr null, i32 32, i8 0, i32 16, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_voltages, ptr null, i32 0, i32 0, i32 8092, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7192, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7178, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.73, ptr null, ptr @.str.74, i8 0, ptr @.str.8, ptr null, i32 33, i8 0, i32 8, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @va12_voltages, ptr null, i32 0, i32 0, i32 8246, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7258, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7260, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.75, ptr null, ptr @.str.76, i8 0, ptr @.str.8, ptr null, i32 34, i8 0, i32 7, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @va09_voltages, ptr null, i32 0, i32 0, i32 8242, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7226, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7228, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.77, ptr null, ptr @.str.78, i8 0, ptr @.str.8, ptr null, i32 35, i8 0, i32 8, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vrf18_voltages, ptr null, i32 0, i32 0, i32 8200, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7080, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 0, i32 0, ptr null }, i32 7082, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.79, ptr null, ptr @.str.80, i8 0, ptr @.str.8, ptr null, i32 36, i8 0, i32 97, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6982, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7980, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7982, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.81, ptr null, ptr @.str.82, i8 0, ptr @.str.8, ptr null, i32 37, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8228, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7576, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1920, i32 0, i32 0, ptr null }, i32 7578, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.83, ptr null, ptr @.str.84, i8 0, ptr @.str.8, ptr null, i32 38, i8 0, i32 14, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @volt18_voltages, ptr null, i32 0, i32 0, i32 8224, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7560, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1920, i32 0, i32 0, ptr null }, i32 7562, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.85, ptr null, ptr @.str.86, i8 0, ptr @.str.8, ptr null, i32 39, i8 0, i32 13, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vbbck_voltages, ptr null, i32 0, i32 0, i32 8340, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7466, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, i32 7468, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.87, ptr null, ptr @.str.88, i8 0, ptr @.str.8, ptr null, i32 40, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6976, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7816, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7818, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.89, ptr null, ptr @.str.90, i8 0, ptr @.str.8, ptr null, i32 41, i8 0, i32 13, i32 0, ptr @mt6359_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vsim2_voltages, ptr null, i32 0, i32 0, i32 8104, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7384, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, i32 7386, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6359_regulator_info { %struct.regulator_desc { ptr @.str.91, ptr null, ptr @.str.92, i8 0, ptr @.str.8, ptr null, i32 42, i8 0, i32 128, i32 0, ptr @mt6359_volt_linear_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 7974, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7974, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7946, i32 1, i32 0, i32 0, i32 0, i32 0 }], [2908 x i8] zeroinitializer }, align 32
@mt6359_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 968, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt6359_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/mt6359-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6359_regulator_probe._entry_ptr = internal global ptr @mt6359_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VS1\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck_vs1\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@mt6359_volt_linear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @mt6359_regulator_set_mode, ptr @mt6359_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr @mt6359_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPU11\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buck_vgpu11\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VMODEM\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buck_vmodem\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPU\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck_vpu\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCORE\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"buck_vcore\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VS2\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck_vs2\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPA\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck_vpa\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VPROC2\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buck_vproc2\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VPROC1\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buck_vproc1\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VGPU11_SSHUB\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buck_vgpu11_sshub\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAUD18\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vaud18\00", [21 x i8] zeroinitializer }, align 32
@mt6359_volt_fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6359_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VSIM1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vsim1\00", [22 x i8] zeroinitializer }, align 32
@mt6359_volt_table_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr @mt6359_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vsim1_voltages = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 0, i32 0, i32 1700000, i32 1800000, i32 0, i32 0, i32 0, i32 2700000, i32 0, i32 0, i32 3000000, i32 3100000], [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIBR\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vibr\00", [23 x i8] zeroinitializer }, align 32
@vibr_voltages = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1200000, i32 1300000, i32 1500000, i32 0, i32 1800000, i32 2000000, i32 0, i32 0, i32 2700000, i32 2800000, i32 0, i32 3000000, i32 0, i32 3300000], [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VRF12\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vrf12\00", [22 x i8] zeroinitializer }, align 32
@vrf12_voltages = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1100000, i32 1200000, i32 1300000], [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VUSB\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vusb\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VSRAM_PROC2\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldo_vsram_proc2\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIO18\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vio18\00", [22 x i8] zeroinitializer }, align 32
@volt18_voltages = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1700000, i32 1800000, i32 1900000], [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCAMIO\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vcamio\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCN18\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vcn18\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VFE28\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vfe28\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCN13\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vcn13\00", [22 x i8] zeroinitializer }, align 32
@vcn13_voltages = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 900000, i32 1000000, i32 0, i32 1200000, i32 1300000], [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VCN33_1_BT\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ldo_vcn33_1_bt\00", [17 x i8] zeroinitializer }, align 32
@vcn33_voltages = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2800000, i32 0, i32 0, i32 0, i32 3300000, i32 3400000, i32 3500000], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VCN33_1_WIFI\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo_vcn33_1_wifi\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAUX18\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vaux18\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VSRAM_OTHERS\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo_vsram_others\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VEFUSE\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vefuse\00", [21 x i8] zeroinitializer }, align 32
@vefuse_voltages = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1700000, i32 1800000, i32 1900000, i32 2000000], [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VXO22\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vxo22\00", [22 x i8] zeroinitializer }, align 32
@vxo22_voltages = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1800000, i32 0, i32 0, i32 0, i32 2200000], [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VRFCK\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo_vrfck_1\00", [20 x i8] zeroinitializer }, align 32
@vrfck_voltages_1 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1240000, i32 1600000], [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VBIF28\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vbif28\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIO28\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vio28\00", [22 x i8] zeroinitializer }, align 32
@vio28_voltages = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3300000], [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VEMC\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vemc_1\00", [21 x i8] zeroinitializer }, align 32
@mt6359p_vemc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @mt6359p_vemc_set_voltage_sel, ptr null, ptr @mt6359p_vemc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr @mt6359_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vemc_voltages_1 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2500000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3300000], [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VCN33_2_BT\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ldo_vcn33_2_bt\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VCN33_2_WIFI\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo_vcn33_2_wifi\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VA12\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_va12\00", [23 x i8] zeroinitializer }, align 32
@va12_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1200000, i32 1300000], [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VA09\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_va09\00", [23 x i8] zeroinitializer }, align 32
@va09_voltages = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 800000, i32 900000, i32 0, i32 0, i32 1200000], [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VRF18\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vrf18\00", [22 x i8] zeroinitializer }, align 32
@vrf18_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1700000, i32 1800000, i32 1810000], [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VSRAM_MD\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo_vsram_md\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VUFS\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vufs\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VM18\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vm18\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VBBCK\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vbbck\00", [22 x i8] zeroinitializer }, align 32
@vbbck_voltages = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1100000, i32 0, i32 0, i32 0, i32 1150000, i32 0, i32 0, i32 0, i32 1200000], [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VSRAM_PROC1\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldo_vsram_proc1\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VSIM2\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vsim2\00", [22 x i8] zeroinitializer }, align 32
@vsim2_voltages = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 0, i32 0, i32 1700000, i32 1800000, i32 0, i32 0, i32 0, i32 2700000, i32 0, i32 0, i32 3000000, i32 3100000], [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VSRAM_OTHERS_SSHUB\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ldo_vsram_others_sshub\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt6359_regulator_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set mt6359 buck mode: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6359_regulator_set_mode\00", [38 x i8] zeroinitializer }, align 32
@mt6359_regulator_set_mode._entry_ptr = internal global ptr @mt6359_regulator_set_mode._entry, section ".printk_index", align 4
@mt6359_regulator_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get mt6359 buck mode: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6359_regulator_get_mode\00", [38 x i8] zeroinitializer }, align 32
@mt6359_regulator_get_mode._entry_ptr = internal global ptr @mt6359_regulator_get_mode._entry, section ".printk_index", align 4
@mt6359_regulator_get_mode._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get mt6359 buck lp mode: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mt6359_regulator_get_mode._entry_ptr.99 = internal global ptr @mt6359_regulator_get_mode._entry.97, section ".printk_index", align 4
@mt6359_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get enable reg: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt6359_get_status\00", [46 x i8] zeroinitializer }, align 32
@mt6359_get_status._entry_ptr = internal global ptr @mt6359_get_status._entry, section ".printk_index", align 4
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VCORE_SSHUB\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"buck_vcore_sshub\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vrfck\00", [22 x i8] zeroinitializer }, align 32
@vrfck_voltages = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 0, i32 1500000, i32 0, i32 0, i32 0, i32 0, i32 1600000, i32 0, i32 0, i32 0, i32 0, i32 1700000], [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vemc\00", [23 x i8] zeroinitializer }, align 32
@vemc_voltages = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2900000, i32 3000000, i32 0, i32 3300000], [40 x i8] zeroinitializer }, align 32
@switch.table.mt6359_map_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 1, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"mt6359_regulator_driver\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 982, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 984, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"mt6359_platform_ids\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 976, i32 40 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"mt6359p_regulators\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 708, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"mt6359_regulators\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 472, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 968, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 709, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [23 x i8] c"mt6359_volt_linear_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 426, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 716, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 724, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 732, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 739, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 746, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 753, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 760, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 768, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 776, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 785, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"mt6359_volt_fixed_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 452, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 787, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"mt6359_volt_table_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 440, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"vsim1_voltages\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 162, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 792, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [14 x i8] c"vibr_voltages\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 166, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 797, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"vrf12_voltages\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 171, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 802, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 804, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 810, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [16 x i8] c"volt18_voltages\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 175, i32 27 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 815, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 821, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 823, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 825, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [15 x i8] c"vcn13_voltages\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 179, i32 27 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 830, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [15 x i8] c"vcn33_voltages\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 183, i32 27 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 836, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 842, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 844, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 851, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"vefuse_voltages\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 187, i32 27 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 857, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [15 x i8] c"vxo22_voltages\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 191, i32 27 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 862, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"vrfck_voltages_1\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 199, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 867, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 869, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [15 x i8] c"vio28_voltages\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 203, i32 27 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 874, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [17 x i8] c"mt6359p_vemc_ops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 459, i32 35 }
@___asan_gen_.373 = private unnamed_addr constant [16 x i8] c"vemc_voltages_1\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 211, i32 27 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 880, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 886, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 892, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [14 x i8] c"va12_voltages\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 216, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 897, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [14 x i8] c"va09_voltages\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 220, i32 27 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 902, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [15 x i8] c"vrf18_voltages\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 224, i32 27 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 907, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 913, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 918, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 923, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [15 x i8] c"vbbck_voltages\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 228, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 928, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 934, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [15 x i8] c"vsim2_voltages\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 232, i32 27 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 939, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 347, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 275, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 288, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 258, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 540, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 623, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [15 x i8] c"vrfck_voltages\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 195, i32 27 }
@___asan_gen_.508 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 635, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [14 x i8] c"vemc_voltages\00", align 1
@___asan_gen_.512 = private constant [40 x i8] c"../drivers/regulator/mt6359-regulator.c\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 207, i32 27 }
@___asan_gen_.514 = private unnamed_addr constant [29 x i8] c"switch.table.mt6359_map_mode\00", align 1
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mt6359_regulator_driver_exit, ptr @__initcall__kmod_mt6359_regulator__288_990_mt6359_regulator_driver_init6, ptr @mt6359_get_status._entry, ptr @mt6359_get_status._entry_ptr, ptr @mt6359_regulator_driver_exit, ptr @mt6359_regulator_get_mode._entry, ptr @mt6359_regulator_get_mode._entry.97, ptr @mt6359_regulator_get_mode._entry_ptr, ptr @mt6359_regulator_get_mode._entry_ptr.99, ptr @mt6359_regulator_probe._entry, ptr @mt6359_regulator_probe._entry_ptr, ptr @mt6359_regulator_set_mode._entry, ptr @mt6359_regulator_set_mode._entry_ptr, ptr @mt6359_regulator_driver, ptr @.str, ptr @mt6359_platform_ids, ptr @mt6359p_regulators, ptr @mt6359_regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mt6359_volt_linear_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mt6359_volt_fixed_ops, ptr @.str.29, ptr @.str.30, ptr @mt6359_volt_table_ops, ptr @vsim1_voltages, ptr @.str.31, ptr @.str.32, ptr @vibr_voltages, ptr @.str.33, ptr @.str.34, ptr @vrf12_voltages, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @volt18_voltages, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @vcn13_voltages, ptr @.str.49, ptr @.str.50, ptr @vcn33_voltages, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @vefuse_voltages, ptr @.str.59, ptr @.str.60, ptr @vxo22_voltages, ptr @.str.61, ptr @.str.62, ptr @vrfck_voltages_1, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @vio28_voltages, ptr @.str.67, ptr @.str.68, ptr @mt6359p_vemc_ops, ptr @vemc_voltages_1, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @va12_voltages, ptr @.str.75, ptr @.str.76, ptr @va09_voltages, ptr @.str.77, ptr @.str.78, ptr @vrf18_voltages, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @vbbck_voltages, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @vsim2_voltages, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @vrfck_voltages, ptr @.str.105, ptr @vemc_voltages, ptr @switch.table.mt6359_map_mode], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_platform_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359p_regulators to i32), i32 11524, i32 14432, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_regulators to i32), i32 11524, i32 14432, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_volt_linear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_volt_fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_volt_table_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsim1_voltages to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibr_voltages to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf12_voltages to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volt18_voltages to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcn13_voltages to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcn33_voltages to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vefuse_voltages to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxo22_voltages to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrfck_voltages_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vio28_voltages to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359p_vemc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vemc_voltages_1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va12_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va09_voltages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf18_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbbck_voltages to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsim2_voltages to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_regulator_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_regulator_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_regulator_get_mode._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrfck_voltages to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vemc_voltages to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt6359_map_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6359_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6359_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6359_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %hw_ver = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %4 = getelementptr inbounds i8, ptr %config, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_ver) #7
  %6 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %hw_ver, align 4, !annotation !237
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %8, i32 noundef 8, ptr noundef nonnull %hw_ver) #7
  %9 = ptrtoint ptr %hw_ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22831, i32 %10)
  %cmp = icmp sgt i32 %10, 22831
  %mt6359p_regulators.mt6359_regulators = select i1 %cmp, ptr @mt6359p_regulators, ptr @mt6359_regulators
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %config, align 4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %regmap5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %16 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %regmap5, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mt6359_info.130 = phi ptr [ %mt6359p_regulators.mt6359_regulators, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mt6359_info.130, ptr %driver_data, align 4
  %call8 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %mt6359_info.130, ptr noundef nonnull %config) #7
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mt6359_info.130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mt6359_info.130, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %19) #10
  %20 = ptrtoint ptr %call8 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.031, 1
  %incdec.ptr = getelementptr %struct.mt6359_regulator_info, ptr %mt6359_info.130, i32 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %20, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_ver) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt6359_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %0 = icmp ult i32 %mode, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mt6359_map_mode, i32 0, i32 %mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_regulator_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @mt6359_regulator_get_mode(ptr noundef %rdev)
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %modeset_mask = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %modeset_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %modeset_mask, align 4
  %3 = tail call i32 @llvm.cttz.i32(i32 %2, i1 true), !range !238
  %.op67 = shl nuw i32 1, %3
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %modeset_reg = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %modeset_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modeset_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %2, i32 noundef %.op67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %8 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call1, label %sw.bb4.cleanup_crit_edge [
    i32 1, label %if.then
    i32 4, label %if.then15
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %modeset_mask5 = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %modeset_mask5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %modeset_mask5, align 4
  %regmap10 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %11 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap10, align 4
  %modeset_reg11 = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %modeset_reg11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %modeset_reg11, align 4
  %call.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %lp_mode_mask = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %lp_mode_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lp_mode_mask, align 4
  %regmap20 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %17 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap20, align 4
  %lp_mode_reg = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %lp_mode_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lp_mode_reg, align 4
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef %16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #7
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lp_mode_mask25 = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %lp_mode_mask25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lp_mode_mask25, align 4
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true), !range !238
  %.op = shl nuw i32 1, %24
  %regmap30 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %25 = ptrtoint ptr %regmap30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap30, align 4
  %lp_mode_reg31 = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 5
  %27 = ptrtoint ptr %lp_mode_reg31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lp_mode_reg31, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef %23, i32 noundef %.op, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %if.then15, %if.then, %sw.bb
  %ret.0 = phi i32 [ %call.i70, %sw.bb24 ], [ %call.i68, %if.then ], [ %call.i69, %if.then15 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp34.not = icmp eq i32 %ret.0, 0
  br i1 %cmp34.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_regulator_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !237
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %modeset_reg = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %modeset_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %modeset_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %modeset_mask = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %modeset_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modeset_mask, align 4
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval, align 4
  %and = and i32 %8, %6
  %9 = call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %iszero = icmp eq i32 %6, 0
  %sub = select i1 %iszero, i32 -1, i32 %9
  %shr = ashr i32 %and, %sub
  %10 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp3 = icmp eq i32 %shr, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %lp_mode_reg = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %lp_mode_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lp_mode_reg, align 4
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.98, i32 noundef %call7) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval, align 4
  %lp_mode_mask = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %lp_mode_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lp_mode_mask, align 4
  %and15 = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool.not, i32 2, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call7, %do.end12 ], [ 1, %if.end.cleanup_crit_edge ], [ %., %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !237
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %status_reg = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %qi = getelementptr inbounds %struct.mt6359_regulator_info, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %qi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qi, align 4
  %and = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359p_vemc_set_voltage_sel(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 28
  %1 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vsel_mask, align 4
  %3 = tail call i32 @llvm.cttz.i32(i32 %2, i1 true), !range !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %iszero = icmp eq i32 %2, 0
  %sub = select i1 %iszero, i32 -1, i32 %3
  %shl = shl i32 %sel, %sub
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 936, i32 noundef 40102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 80, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %9, label %if.end6.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 27
  %13 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vsel_reg, align 4
  %15 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vsel_mask, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %vsel_reg15 = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 27
  %19 = ptrtoint ptr %vsel_reg15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vsel_reg15, align 4
  %add = add i32 %20, 2
  %21 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vsel_mask, align 4
  %call.i43 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add, i32 noundef %22, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb
  %ret.0 = phi i32 [ %call.i43, %sw.bb12 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.end21, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %24, i32 noundef 936, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %sw.epilog.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end21 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359p_vemc_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 80, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 27
  %8 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsel_reg, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %val) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %vsel_reg7 = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 27
  %12 = ptrtoint ptr %vsel_reg7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vsel_reg7, align 4
  %add = add i32 %13, 2
  %call8 = call i32 @regmap_read(ptr noundef %11, i32 noundef %add, ptr noundef nonnull %val) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %ret.0 = phi i32 [ %call8, %sw.bb4 ], [ %call3, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.end11, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 28
  %14 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsel_mask, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and = and i32 %17, %15
  %18 = call i32 @llvm.cttz.i32(i32 %15, i1 true), !range !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %iszero = icmp eq i32 %15, 0
  %sub = select i1 %iszero, i32 -1, i32 %18
  %shr = lshr i32 %and, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end11 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !216, !218, !220, !222, !224, !226}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @__initcall__kmod_mt6359_regulator__288_990_mt6359_regulator_driver_init6, !1, !"__initcall__kmod_mt6359_regulator__288_990_mt6359_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mt6359-regulator.c", i32 990, i32 1}
!2 = !{ptr @__exitcall_mt6359_regulator_driver_exit, !1, !"__exitcall_mt6359_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/mt6359-regulator.c", i32 992, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/mt6359-regulator.c", i32 993, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/mt6359-regulator.c", i32 994, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/mt6359-regulator.c", i32 984, i32 11}
!12 = !{ptr @mt6359_regulator_driver, !13, !"mt6359_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/mt6359-regulator.c", i32 982, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/mt6359-regulator.c", i32 968, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt6359_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt6359_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/mt6359-regulator.c", i32 709, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/mt6359-regulator.c", i32 716, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/mt6359-regulator.c", i32 724, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/mt6359-regulator.c", i32 732, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/mt6359-regulator.c", i32 739, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/mt6359-regulator.c", i32 746, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/mt6359-regulator.c", i32 753, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/mt6359-regulator.c", i32 760, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/mt6359-regulator.c", i32 768, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/mt6359-regulator.c", i32 776, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/mt6359-regulator.c", i32 785, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/mt6359-regulator.c", i32 787, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/mt6359-regulator.c", i32 792, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/mt6359-regulator.c", i32 797, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/mt6359-regulator.c", i32 802, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/mt6359-regulator.c", i32 804, i32 2}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/mt6359-regulator.c", i32 810, i32 2}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/mt6359-regulator.c", i32 815, i32 2}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/mt6359-regulator.c", i32 821, i32 2}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/mt6359-regulator.c", i32 823, i32 2}
!82 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/mt6359-regulator.c", i32 825, i32 2}
!85 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/mt6359-regulator.c", i32 830, i32 2}
!88 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/mt6359-regulator.c", i32 836, i32 2}
!91 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/mt6359-regulator.c", i32 842, i32 2}
!94 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/mt6359-regulator.c", i32 844, i32 2}
!97 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/mt6359-regulator.c", i32 851, i32 2}
!100 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/mt6359-regulator.c", i32 857, i32 2}
!103 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/mt6359-regulator.c", i32 862, i32 2}
!106 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/mt6359-regulator.c", i32 867, i32 2}
!109 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/mt6359-regulator.c", i32 869, i32 2}
!112 = !{ptr @.str.66, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.67, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/mt6359-regulator.c", i32 874, i32 2}
!115 = !{ptr @.str.68, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/mt6359-regulator.c", i32 880, i32 2}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/mt6359-regulator.c", i32 886, i32 2}
!121 = !{ptr @.str.72, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.73, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/mt6359-regulator.c", i32 892, i32 2}
!124 = !{ptr @.str.74, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/mt6359-regulator.c", i32 897, i32 2}
!127 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.77, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/mt6359-regulator.c", i32 902, i32 2}
!130 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.79, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/regulator/mt6359-regulator.c", i32 907, i32 2}
!133 = !{ptr @.str.80, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.81, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/mt6359-regulator.c", i32 913, i32 2}
!136 = !{ptr @.str.82, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.83, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/mt6359-regulator.c", i32 918, i32 2}
!139 = !{ptr @.str.84, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.85, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/regulator/mt6359-regulator.c", i32 923, i32 2}
!142 = !{ptr @.str.86, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.87, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/regulator/mt6359-regulator.c", i32 928, i32 2}
!145 = !{ptr @.str.88, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.89, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/regulator/mt6359-regulator.c", i32 934, i32 2}
!148 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.91, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/regulator/mt6359-regulator.c", i32 939, i32 2}
!151 = !{ptr @.str.92, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mt6359p_regulators, !153, !"mt6359p_regulators", i1 false, i1 false}
!153 = !{!"../drivers/regulator/mt6359-regulator.c", i32 708, i32 37}
!154 = !{ptr @mt6359_volt_linear_ops, !155, !"mt6359_volt_linear_ops", i1 false, i1 false}
!155 = !{!"../drivers/regulator/mt6359-regulator.c", i32 426, i32 35}
!156 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/regulator/mt6359-regulator.c", i32 347, i32 3}
!158 = !{ptr @.str.94, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mt6359_regulator_set_mode._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @mt6359_regulator_set_mode._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/regulator/mt6359-regulator.c", i32 275, i32 3}
!163 = !{ptr @.str.96, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @mt6359_regulator_get_mode._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @mt6359_regulator_get_mode._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/mt6359-regulator.c", i32 288, i32 3}
!168 = !{ptr @mt6359_regulator_get_mode._entry.97, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @mt6359_regulator_get_mode._entry_ptr.99, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.100, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/mt6359-regulator.c", i32 258, i32 3}
!172 = !{ptr @.str.101, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mt6359_get_status._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @mt6359_get_status._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @mt6359_volt_fixed_ops, !176, !"mt6359_volt_fixed_ops", i1 false, i1 false}
!176 = !{!"../drivers/regulator/mt6359-regulator.c", i32 452, i32 35}
!177 = !{ptr @mt6359_volt_table_ops, !178, !"mt6359_volt_table_ops", i1 false, i1 false}
!178 = !{!"../drivers/regulator/mt6359-regulator.c", i32 440, i32 35}
!179 = !{ptr @vsim1_voltages, !180, !"vsim1_voltages", i1 false, i1 false}
!180 = !{!"../drivers/regulator/mt6359-regulator.c", i32 162, i32 27}
!181 = !{ptr @vibr_voltages, !182, !"vibr_voltages", i1 false, i1 false}
!182 = !{!"../drivers/regulator/mt6359-regulator.c", i32 166, i32 27}
!183 = !{ptr @vrf12_voltages, !184, !"vrf12_voltages", i1 false, i1 false}
!184 = !{!"../drivers/regulator/mt6359-regulator.c", i32 171, i32 27}
!185 = !{ptr @volt18_voltages, !186, !"volt18_voltages", i1 false, i1 false}
!186 = !{!"../drivers/regulator/mt6359-regulator.c", i32 175, i32 27}
!187 = !{ptr @vcn13_voltages, !188, !"vcn13_voltages", i1 false, i1 false}
!188 = !{!"../drivers/regulator/mt6359-regulator.c", i32 179, i32 27}
!189 = !{ptr @vcn33_voltages, !190, !"vcn33_voltages", i1 false, i1 false}
!190 = !{!"../drivers/regulator/mt6359-regulator.c", i32 183, i32 27}
!191 = !{ptr @vefuse_voltages, !192, !"vefuse_voltages", i1 false, i1 false}
!192 = !{!"../drivers/regulator/mt6359-regulator.c", i32 187, i32 27}
!193 = !{ptr @vxo22_voltages, !194, !"vxo22_voltages", i1 false, i1 false}
!194 = !{!"../drivers/regulator/mt6359-regulator.c", i32 191, i32 27}
!195 = !{ptr @vrfck_voltages_1, !196, !"vrfck_voltages_1", i1 false, i1 false}
!196 = !{!"../drivers/regulator/mt6359-regulator.c", i32 199, i32 27}
!197 = !{ptr @vio28_voltages, !198, !"vio28_voltages", i1 false, i1 false}
!198 = !{!"../drivers/regulator/mt6359-regulator.c", i32 203, i32 27}
!199 = !{ptr @mt6359p_vemc_ops, !200, !"mt6359p_vemc_ops", i1 false, i1 false}
!200 = !{!"../drivers/regulator/mt6359-regulator.c", i32 459, i32 35}
!201 = !{ptr @vemc_voltages_1, !202, !"vemc_voltages_1", i1 false, i1 false}
!202 = !{!"../drivers/regulator/mt6359-regulator.c", i32 211, i32 27}
!203 = !{ptr @va12_voltages, !204, !"va12_voltages", i1 false, i1 false}
!204 = !{!"../drivers/regulator/mt6359-regulator.c", i32 216, i32 27}
!205 = !{ptr @va09_voltages, !206, !"va09_voltages", i1 false, i1 false}
!206 = !{!"../drivers/regulator/mt6359-regulator.c", i32 220, i32 27}
!207 = !{ptr @vrf18_voltages, !208, !"vrf18_voltages", i1 false, i1 false}
!208 = !{!"../drivers/regulator/mt6359-regulator.c", i32 224, i32 27}
!209 = !{ptr @vbbck_voltages, !210, !"vbbck_voltages", i1 false, i1 false}
!210 = !{!"../drivers/regulator/mt6359-regulator.c", i32 228, i32 27}
!211 = !{ptr @vsim2_voltages, !212, !"vsim2_voltages", i1 false, i1 false}
!212 = !{!"../drivers/regulator/mt6359-regulator.c", i32 232, i32 27}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/regulator/mt6359-regulator.c", i32 540, i32 2}
!215 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/regulator/mt6359-regulator.c", i32 623, i32 2}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/regulator/mt6359-regulator.c", i32 635, i32 2}
!220 = !{ptr @mt6359_regulators, !221, !"mt6359_regulators", i1 false, i1 false}
!221 = !{!"../drivers/regulator/mt6359-regulator.c", i32 472, i32 37}
!222 = !{ptr @vrfck_voltages, !223, !"vrfck_voltages", i1 false, i1 false}
!223 = !{!"../drivers/regulator/mt6359-regulator.c", i32 195, i32 27}
!224 = !{ptr @vemc_voltages, !225, !"vemc_voltages", i1 false, i1 false}
!225 = !{!"../drivers/regulator/mt6359-regulator.c", i32 207, i32 27}
!226 = !{ptr @mt6359_platform_ids, !227, !"mt6359_platform_ids", i1 false, i1 false}
!227 = !{!"../drivers/regulator/mt6359-regulator.c", i32 976, i32 40}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{!"auto-init"}
!238 = !{i32 0, i32 33}
