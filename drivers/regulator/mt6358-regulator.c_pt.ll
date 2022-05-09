; ModuleID = '/llk/IR_all_yes/drivers/regulator/mt6358-regulator.c_pt.bc'
source_filename = "../drivers/regulator/mt6358-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.mt6358_regulator_info = type { %struct.regulator_desc, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_mt6358_regulator__289_538_mt6358_regulator_driver_init6 = internal global ptr @mt6358_regulator_driver_init, section ".initcall6.init", align 4
@mt6358_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6358_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt6358_platform_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6358_regulator_driver_exit = internal global ptr @mt6358_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [73 x i8] c"mt6358_regulator.author=Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [71 x i8] c"mt6358_regulator.description=Regulator Driver for MediaTek MT6358 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [57 x i8] c"mt6358_regulator.file=drivers/regulator/mt6358-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [29 x i8] c"mt6358_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6358-regulator\00", [47 x i8] zeroinitializer }, align 32
@mt6358_platform_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mt6358-regulator\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt6358_regulators = internal global { [41 x %struct.mt6358_regulator_info], [2828 x i8] } { [41 x %struct.mt6358_regulator_info] [%struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5670, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5664, i32 1, ptr null, i32 0, i32 5662, i32 127, i32 6294, i32 256 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.9, i8 0, ptr null, ptr null, i32 1, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5290, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5256, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5280, i32 1, ptr null, i32 0, i32 5278, i32 127, i32 6184, i32 2 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.11, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 6026, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6024, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 6036, i32 1, ptr null, i32 0, i32 6034, i32 63, i32 6330, i32 8 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5030, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5000, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5024, i32 1, ptr null, i32 0, i32 5022, i32 127, i32 6156, i32 2 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 4, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5158, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5128, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5152, i32 1, ptr null, i32 0, i32 5150, i32 127, i32 6156, i32 4 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.17, i8 0, ptr null, ptr null, i32 5, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5414, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5384, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5408, i32 1, ptr null, i32 0, i32 5414, i32 127, i32 6184, i32 4 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.19, i8 0, ptr null, ptr null, i32 6, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5934, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5896, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5920, i32 1, ptr null, i32 0, i32 5918, i32 127, i32 6318, i32 256 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.21, i8 0, ptr null, ptr null, i32 7, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5542, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5512, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5536, i32 1, ptr null, i32 0, i32 5534, i32 127, i32 6280, i32 256 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.23, i8 0, ptr null, ptr null, i32 8, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 5806, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5768, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6358_map_mode }, i32 5792, i32 1, ptr null, i32 0, i32 5790, i32 127, i32 6306, i32 256 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.25, i8 0, ptr null, ptr null, i32 9, i8 0, i32 2, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vdram2_voltages, ptr null, i32 0, i32 0, i32 7032, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6920, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6934, i32 32768, ptr @vdram2_idx, i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.27, i8 0, ptr null, ptr null, i32 10, i8 0, i32 5, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vsim_voltages, ptr null, i32 0, i32 0, i32 7724, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7496, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7510, i32 32768, ptr @vsim_idx, i32 5, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.29, i8 0, ptr null, ptr null, i32 11, i8 0, i32 8, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vibr_voltages, ptr null, i32 0, i32 0, i32 7748, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7432, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7446, i32 32768, ptr @vibr_idx, i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.31, i8 0, ptr null, ptr null, i32 12, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7216, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7230, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.33, i8 0, ptr null, ptr null, i32 13, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6892, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6906, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.35, i8 0, ptr null, ptr null, i32 14, i8 0, i32 2, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vusb_voltages, ptr null, i32 0, i32 0, i32 7732, i32 1792, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6960, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6976, i32 32768, ptr @vusb_idx, i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.37, i8 0, ptr null, ptr null, i32 15, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7344, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7358, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.38, ptr null, ptr @.str.39, i8 0, ptr null, ptr null, i32 16, i8 0, i32 7, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcamd_voltages, ptr null, i32 0, i32 0, i32 7854, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7324, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7338, i32 32768, ptr @vcamd_idx, i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.40, ptr null, ptr @.str.41, i8 0, ptr null, ptr null, i32 17, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7256, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7270, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.42, ptr null, ptr @.str.43, i8 0, ptr null, ptr null, i32 18, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 2800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7176, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7190, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.44, ptr null, ptr @.str.45, i8 0, ptr null, ptr null, i32 19, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 7150, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6982, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7010, i32 1, ptr null, i32 0, i32 7008, i32 32512, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.46, ptr null, ptr @.str.47, i8 0, ptr null, ptr null, i32 20, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 2800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7560, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7574, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.48, ptr null, ptr @.str.49, i8 0, ptr null, ptr null, i32 21, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 7154, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7078, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7106, i32 1, ptr null, i32 0, i32 7104, i32 32512, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.50, ptr null, ptr @.str.51, i8 0, ptr null, ptr null, i32 22, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 7156, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7112, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7140, i32 1, ptr null, i32 0, i32 7138, i32 32512, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.52, ptr null, ptr @.str.53, i8 0, ptr null, ptr null, i32 23, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 2200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6792, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6806, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.54, ptr null, ptr @.str.55, i8 0, ptr null, ptr null, i32 24, i8 0, i32 3, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vefuse_voltages, ptr null, i32 0, i32 0, i32 7832, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7236, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7250, i32 32768, ptr @vefuse_idx, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.56, ptr null, ptr @.str.57, i8 0, ptr null, ptr null, i32 25, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6832, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6846, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.58, ptr null, ptr @.str.59, i8 0, ptr null, ptr null, i32 26, i8 0, i32 3, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vmch_vemc_voltages, ptr null, i32 0, i32 0, i32 7752, i32 1792, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7384, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7398, i32 32768, ptr @vmch_vemc_idx, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.60, ptr null, ptr @.str.61, i8 0, ptr null, ptr null, i32 27, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 2800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7582, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7596, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.62, ptr null, ptr @.str.63, i8 0, ptr null, ptr null, i32 28, i8 0, i32 128, i32 0, ptr @mt6358_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_range1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 7152, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7048, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7076, i32 1, ptr null, i32 0, i32 7074, i32 32512, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.64, ptr null, ptr @.str.65, i8 0, ptr null, ptr null, i32 29, i8 0, i32 6, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcama_voltages, ptr null, i32 0, i32 0, i32 7688, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7276, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7290, i32 32768, ptr @vcama_idx, i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.66, ptr null, ptr @.str.67, i8 0, ptr null, ptr null, i32 30, i8 0, i32 3, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vmch_vemc_voltages, ptr null, i32 0, i32 0, i32 7736, i32 1792, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6940, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6954, i32 32768, ptr @vmch_vemc_idx, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.68, ptr null, ptr @.str.69, i8 0, ptr null, ptr null, i32 31, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 2800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6872, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6886, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.70, ptr null, ptr @.str.71, i8 0, ptr null, ptr null, i32 32, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6812, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6826, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.72, ptr null, ptr @.str.73, i8 0, ptr null, ptr null, i32 33, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7196, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7210, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.74, ptr null, ptr @.str.75, i8 0, ptr null, ptr null, i32 34, i8 0, i32 3, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_bt_wifi_voltages, ptr null, i32 0, i32 0, i32 7720, i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7452, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7468, i32 32768, ptr @vcn33_bt_wifi_idx, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.76, ptr null, ptr @.str.77, i8 0, ptr null, ptr null, i32 35, i8 0, i32 3, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcn33_bt_wifi_voltages, ptr null, i32 0, i32 0, i32 7720, i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7466, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7468, i32 32768, ptr @vcn33_bt_wifi_idx, i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.78, ptr null, ptr @.str.79, i8 0, ptr null, ptr null, i32 36, i8 0, i32 6, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vcama_voltages, ptr null, i32 0, i32 0, i32 7692, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7304, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7318, i32 32768, ptr @vcama_idx, i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.80, ptr null, ptr @.str.81, i8 0, ptr null, ptr null, i32 37, i8 0, i32 4, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vmc_voltages, ptr null, i32 0, i32 0, i32 7756, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7364, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7378, i32 32768, ptr @vmc_idx, i32 4, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.82, ptr null, ptr @.str.83, i8 0, ptr null, ptr null, i32 38, i8 0, i32 2, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vldo28_voltages, ptr null, i32 0, i32 0, i32 7740, i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7474, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7490, i32 32768, ptr @vldo28_idx, i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.84, ptr null, ptr @.str.85, i8 0, ptr null, ptr null, i32 39, i8 0, i32 1, i32 0, ptr @mt6358_volt_fixed_ops, i32 0, i32 0, ptr null, i32 2800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6852, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 6866, i32 32768, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mt6358_regulator_info { %struct.regulator_desc { ptr @.str.86, ptr null, ptr @.str.87, i8 0, ptr null, ptr null, i32 40, i8 0, i32 5, i32 0, ptr @mt6358_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vsim_voltages, ptr null, i32 0, i32 0, i32 7728, i32 3840, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7516, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 7530, i32 32768, ptr @vsim_idx, i32 5, i32 0, i32 0, i32 0, i32 0 }], [2828 x i8] zeroinitializer }, align 32
@mt6358_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt6358_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/mt6358-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6358_regulator_probe._entry_ptr = internal global ptr @mt6358_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDRAM1\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buck_vdram1\00", [20 x i8] zeroinitializer }, align 32
@mt6358_volt_range_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @mt6358_get_buck_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @mt6358_regulator_set_mode, ptr @mt6358_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr @mt6358_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@buck_volt_range2 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 127, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCORE\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"buck_vcore\00", [21 x i8] zeroinitializer }, align 32
@buck_volt_range1 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 127, i32 6250 }], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPA\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck_vpa\00", [23 x i8] zeroinitializer }, align 32
@buck_volt_range3 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 63, i32 50000 }], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VPROC11\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck_vproc11\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VPROC12\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck_vproc12\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VGPU\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"buck_vgpu\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VS2\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck_vs2\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VMODEM\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buck_vmodem\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VS1\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck_vs1\00", [23 x i8] zeroinitializer }, align 32
@buck_volt_range4 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 0, i32 127, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDRAM2\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vdram2\00", [21 x i8] zeroinitializer }, align 32
@mt6358_volt_table_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @mt6358_set_voltage_sel, ptr null, ptr @mt6358_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr @mt6358_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vdram2_voltages = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 600000, i32 1800000], [24 x i8] zeroinitializer }, align 32
@vdram2_idx = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 12], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VSIM1\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vsim1\00", [22 x i8] zeroinitializer }, align 32
@vsim_voltages = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1700000, i32 1800000, i32 2700000, i32 3000000, i32 3100000], [44 x i8] zeroinitializer }, align 32
@vsim_idx = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 4, i32 8, i32 11, i32 12], [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIBR\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vibr\00", [23 x i8] zeroinitializer }, align 32
@vibr_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1300000, i32 1500000, i32 1800000, i32 2000000, i32 2800000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@vibr_idx = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 9, i32 11, i32 13], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VRF12\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vrf12\00", [22 x i8] zeroinitializer }, align 32
@mt6358_volt_fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6358_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIO18\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vio18\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VUSB\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vusb\00", [23 x i8] zeroinitializer }, align 32
@vusb_voltages = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3000000, i32 3100000], [24 x i8] zeroinitializer }, align 32
@vusb_idx = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 4], [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCAMIO\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vcamio\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCAMD\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vcamd\00", [22 x i8] zeroinitializer }, align 32
@vcamd_voltages = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 900000, i32 1000000, i32 1100000, i32 1200000, i32 1300000, i32 1500000, i32 1800000], [36 x i8] zeroinitializer }, align 32
@vcamd_idx = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 9, i32 12], [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCN18\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vcn18\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VFE28\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vfe28\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VSRAM_PROC11\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo_vsram_proc11\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCN28\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vcn28\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VSRAM_OTHERS\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo_vsram_others\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VSRAM_GPU\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldo_vsram_gpu\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VXO22\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vxo22\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VEFUSE\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vefuse\00", [21 x i8] zeroinitializer }, align 32
@vefuse_voltages = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1700000, i32 1800000, i32 1900000], [20 x i8] zeroinitializer }, align 32
@vefuse_idx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 11, i32 12, i32 13], [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAUX18\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vaux18\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMCH\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vmch\00", [23 x i8] zeroinitializer }, align 32
@vmch_vemc_voltages = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2900000, i32 3000000, i32 3300000], [20 x i8] zeroinitializer }, align 32
@vmch_vemc_idx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 3, i32 5], [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VBIF28\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vbif28\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VSRAM_PROC12\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ldo_vsram_proc12\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCAMA1\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vcama1\00", [21 x i8] zeroinitializer }, align 32
@vcama_voltages = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1800000, i32 2500000, i32 2700000, i32 2800000, i32 2900000, i32 3000000], [40 x i8] zeroinitializer }, align 32
@vcama_idx = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 7, i32 9, i32 10, i32 11, i32 12], [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VEMC\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_vemc\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIO28\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vio28\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VA12\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldo_va12\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VRF18\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vrf18\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCN33_BT\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo_vcn33_bt\00", [19 x i8] zeroinitializer }, align 32
@vcn33_bt_wifi_voltages = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3300000, i32 3400000, i32 3500000], [20 x i8] zeroinitializer }, align 32
@vcn33_bt_wifi_idx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VCN33_WIFI\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ldo_vcn33_wifi\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCAMA2\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vcama2\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VMC\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo_vmc\00", [24 x i8] zeroinitializer }, align 32
@vmc_voltages = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 2900000, i32 3000000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@vmc_idx = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 10, i32 11, i32 13], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VLDO28\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vldo28\00", [21 x i8] zeroinitializer }, align 32
@vldo28_voltages = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2800000, i32 3000000], [24 x i8] zeroinitializer }, align 32
@vldo28_idx = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAUD28\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ldo_vaud28\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VSIM2\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldo_vsim2\00", [22 x i8] zeroinitializer }, align 32
@mt6358_get_buck_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to get mt6358 Buck %s vsel reg: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt6358_get_buck_voltage_sel\00", [36 x i8] zeroinitializer }, align 32
@mt6358_get_buck_voltage_sel._entry_ptr = internal global ptr @mt6358_get_buck_voltage_sel._entry, section ".printk_index", align 4
@mt6358_regulator_set_mode.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.90, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6358_regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6358_regulator_set_mode\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mt6358 buck set_mode %#x, %#x, %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@mt6358_regulator_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get mt6358 buck mode: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6358_regulator_get_mode\00", [38 x i8] zeroinitializer }, align 32
@mt6358_regulator_get_mode._entry_ptr = internal global ptr @mt6358_regulator_get_mode._entry, section ".printk_index", align 4
@mt6358_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 315, ptr @.str.97, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get enable reg: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt6358_get_status\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt6358_get_status._entry_ptr = internal global ptr @mt6358_get_status._entry, section ".printk_index", align 4
@mt6358_get_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 274, ptr @.str.97, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get mt6358 %s vsel reg: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt6358_get_voltage_sel\00", [41 x i8] zeroinitializer }, align 32
@mt6358_get_voltage_sel._entry_ptr = internal global ptr @mt6358_get_voltage_sel._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"mt6358_regulator_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 530, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 532, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"mt6358_platform_ids\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 524, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"mt6358_regulators\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 405, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 515, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 406, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [22 x i8] c"mt6358_volt_range_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 370, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"buck_volt_range2\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 137, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 409, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"buck_volt_range1\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 133, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 412, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"buck_volt_range3\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 141, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 415, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 418, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 421, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 424, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 427, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 430, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"buck_volt_range4\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 145, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 452, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"mt6358_volt_table_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 384, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"vdram2_voltages\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 149, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant [11 x i8] c"vdram2_idx\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 196, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 454, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [14 x i8] c"vsim_voltages\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 153, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant [9 x i8] c"vsim_idx\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 200, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 456, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"vibr_voltages\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 157, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant [9 x i8] c"vibr_idx\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 204, i32 18 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 433, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [22 x i8] c"mt6358_volt_fixed_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 396, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 435, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 458, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [14 x i8] c"vusb_voltages\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 162, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant [9 x i8] c"vusb_idx\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 208, i32 18 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 437, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 460, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [15 x i8] c"vcamd_voltages\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 166, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant [10 x i8] c"vcamd_idx\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 212, i32 18 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 439, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 440, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 485, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 441, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 488, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 491, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 442, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 462, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [16 x i8] c"vefuse_voltages\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 171, i32 27 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"vefuse_idx\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 216, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 443, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 464, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [19 x i8] c"vmch_vemc_voltages\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 175, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant [14 x i8] c"vmch_vemc_idx\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 220, i32 18 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 445, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 494, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 466, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [15 x i8] c"vcama_voltages\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 179, i32 27 }
@___asan_gen_.376 = private unnamed_addr constant [10 x i8] c"vcama_idx\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 224, i32 18 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 468, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 447, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 448, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 449, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 470, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [23 x i8] c"vcn33_bt_wifi_voltages\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 184, i32 27 }
@___asan_gen_.412 = private unnamed_addr constant [18 x i8] c"vcn33_bt_wifi_idx\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 228, i32 18 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 473, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 476, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 478, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [13 x i8] c"vmc_voltages\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 188, i32 27 }
@___asan_gen_.436 = private unnamed_addr constant [8 x i8] c"vmc_idx\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 232, i32 18 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 480, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant [16 x i8] c"vldo28_voltages\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 192, i32 27 }
@___asan_gen_.448 = private unnamed_addr constant [11 x i8] c"vldo28_idx\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 236, i32 18 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 450, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 483, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 296, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 339, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 355, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 315, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.509 = private constant [40 x i8] c"../drivers/regulator/mt6358-regulator.c\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.509, i32 272, i32 3 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_mt6358_regulator_driver_exit, ptr @__initcall__kmod_mt6358_regulator__289_538_mt6358_regulator_driver_init6, ptr @mt6358_get_buck_voltage_sel._entry, ptr @mt6358_get_buck_voltage_sel._entry_ptr, ptr @mt6358_get_status._entry, ptr @mt6358_get_status._entry_ptr, ptr @mt6358_get_voltage_sel._entry, ptr @mt6358_get_voltage_sel._entry_ptr, ptr @mt6358_regulator_driver_exit, ptr @mt6358_regulator_get_mode._entry, ptr @mt6358_regulator_get_mode._entry_ptr, ptr @mt6358_regulator_probe._entry, ptr @mt6358_regulator_probe._entry_ptr, ptr @mt6358_regulator_driver, ptr @.str, ptr @mt6358_platform_ids, ptr @mt6358_regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mt6358_volt_range_ops, ptr @buck_volt_range2, ptr @.str.8, ptr @.str.9, ptr @buck_volt_range1, ptr @.str.10, ptr @.str.11, ptr @buck_volt_range3, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @buck_volt_range4, ptr @.str.24, ptr @.str.25, ptr @mt6358_volt_table_ops, ptr @vdram2_voltages, ptr @vdram2_idx, ptr @.str.26, ptr @.str.27, ptr @vsim_voltages, ptr @vsim_idx, ptr @.str.28, ptr @.str.29, ptr @vibr_voltages, ptr @vibr_idx, ptr @.str.30, ptr @.str.31, ptr @mt6358_volt_fixed_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @vusb_voltages, ptr @vusb_idx, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @vcamd_voltages, ptr @vcamd_idx, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @vefuse_voltages, ptr @vefuse_idx, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @vmch_vemc_voltages, ptr @vmch_vemc_idx, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @vcama_voltages, ptr @vcama_idx, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @vcn33_bt_wifi_voltages, ptr @vcn33_bt_wifi_idx, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @vmc_voltages, ptr @vmc_idx, ptr @.str.82, ptr @.str.83, ptr @vldo28_voltages, ptr @vldo28_idx, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_platform_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_regulators to i32), i32 11316, i32 14144, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_volt_range_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_volt_range2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_volt_range1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_volt_range3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_volt_range4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_volt_table_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdram2_voltages to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdram2_idx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsim_voltages to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsim_idx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibr_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibr_idx to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_volt_fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vusb_voltages to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vusb_idx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcamd_voltages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcamd_idx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vefuse_voltages to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vefuse_idx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmch_vemc_voltages to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmch_vemc_idx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcama_voltages to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcama_idx to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcn33_bt_wifi_voltages to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcn33_bt_wifi_idx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmc_voltages to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmc_idx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vldo28_voltages to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vldo28_idx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_get_buck_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_regulator_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_get_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6358_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6358_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6358_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
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
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %regmap3 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 41
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %config, align 4
  %arrayidx = getelementptr [41 x %struct.mt6358_regulator_info], ptr @mt6358_regulators, i32 0, i32 %i.023
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %driver_data, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regmap3, align 4
  %call6 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %12) #10
  %13 = ptrtoint ptr %call6 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt6358_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %cond = select i1 %cmp, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_get_buck_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !242
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %da_vsel_reg = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %da_vsel_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %da_vsel_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef %6, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval, align 4
  %da_vsel_mask = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %da_vsel_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %da_vsel_mask, align 4
  %and = and i32 %10, %8
  %11 = call i32 @llvm.cttz.i32(i32 %10, i1 true), !range !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %iszero = icmp eq i32 %10, 0
  %sub = select i1 %iszero, i32 -1, i32 %11
  %shr = lshr i32 %and, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %shr, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_regulator_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body_crit_edge
    i32 2, label %sw.bb1
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %sw.bb1, %entry.do.body_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb1 ], [ %mode, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6358_regulator_set_mode.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6358_regulator_set_mode, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !244

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %modeset_reg = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %modeset_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %modeset_reg, align 4
  %modeset_mask = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %modeset_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %modeset_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6358_regulator_set_mode.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %2, i32 noundef %4, i32 noundef %val.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %modeset_mask6 = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %modeset_mask6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modeset_mask6, align 4
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %iszero = icmp eq i32 %6, 0
  %sub = select i1 %iszero, i32 -1, i32 %7
  %shl = shl nuw i32 %val.0, %sub
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %modeset_reg7 = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %modeset_reg7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %modeset_reg7, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %6, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_regulator_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !242
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %modeset_reg = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 7
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %modeset_mask = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %modeset_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modeset_mask, align 4
  %and = and i32 %8, %6
  %9 = call i32 @llvm.cttz.i32(i32 %8, i1 true), !range !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %iszero = icmp eq i32 %8, 0
  %sub = select i1 %iszero, i32 -1, i32 %9
  %shr = lshr i32 %and, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %switch.selectcmp = icmp eq i32 %shr, 1
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %switch.selectcmp12 = icmp eq i32 %shr, 0
  %switch.select13 = select i1 %switch.selectcmp12, i32 2, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %switch.select13, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !242
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %status_reg = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 1
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
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %qi = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %qi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qi, align 4
  %and = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %cond, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %index_table = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %index_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %index_table, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %iszero = icmp eq i32 %5, 0
  %sub = select i1 %iszero, i32 -1, i32 %6
  %shl = shl i32 %3, %sub
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 27
  %9 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsel_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef %5, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %selector = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %selector) #7
  %0 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %selector, align 4, !annotation !242
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 27
  %3 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vsel_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %selector) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.98, ptr noundef %6, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %selector, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 28
  %9 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsel_mask, align 4
  %and = and i32 %10, %8
  %11 = call i32 @llvm.cttz.i32(i32 %10, i1 true), !range !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %iszero = icmp eq i32 %10, 0
  %sub = select i1 %iszero, i32 -1, i32 %11
  %shr = lshr i32 %and, %sub
  %12 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %selector, align 4
  %index_table = getelementptr inbounds %struct.mt6358_regulator_info, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %index_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %index_table, align 4
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp727.not = icmp eq i32 %16, 0
  br i1 %cmp727.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %idx.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %14, i32 %idx.028
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shr)
  %cmp8 = icmp eq i32 %18, %shr
  br i1 %cmp8, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.028, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ %idx.028, %for.body.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %selector) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__initcall__kmod_mt6358_regulator__289_538_mt6358_regulator_driver_init6, !1, !"__initcall__kmod_mt6358_regulator__289_538_mt6358_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mt6358-regulator.c", i32 538, i32 1}
!2 = !{ptr @__exitcall_mt6358_regulator_driver_exit, !1, !"__exitcall_mt6358_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/regulator/mt6358-regulator.c", i32 540, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/regulator/mt6358-regulator.c", i32 541, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/regulator/mt6358-regulator.c", i32 542, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/mt6358-regulator.c", i32 532, i32 11}
!12 = !{ptr @mt6358_regulator_driver, !13, !"mt6358_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/mt6358-regulator.c", i32 530, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/mt6358-regulator.c", i32 515, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt6358_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt6358_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/mt6358-regulator.c", i32 406, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/mt6358-regulator.c", i32 409, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/mt6358-regulator.c", i32 412, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/mt6358-regulator.c", i32 415, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/mt6358-regulator.c", i32 418, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/mt6358-regulator.c", i32 421, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/mt6358-regulator.c", i32 424, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/mt6358-regulator.c", i32 427, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/mt6358-regulator.c", i32 430, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/mt6358-regulator.c", i32 452, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/mt6358-regulator.c", i32 454, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/mt6358-regulator.c", i32 456, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/mt6358-regulator.c", i32 433, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/mt6358-regulator.c", i32 435, i32 2}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/mt6358-regulator.c", i32 458, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/mt6358-regulator.c", i32 437, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/mt6358-regulator.c", i32 460, i32 2}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/mt6358-regulator.c", i32 439, i32 2}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/mt6358-regulator.c", i32 440, i32 2}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/mt6358-regulator.c", i32 485, i32 2}
!81 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/mt6358-regulator.c", i32 441, i32 2}
!84 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/mt6358-regulator.c", i32 488, i32 2}
!87 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/mt6358-regulator.c", i32 491, i32 2}
!90 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/mt6358-regulator.c", i32 442, i32 2}
!93 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/mt6358-regulator.c", i32 462, i32 2}
!96 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/mt6358-regulator.c", i32 443, i32 2}
!99 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/mt6358-regulator.c", i32 464, i32 2}
!102 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/mt6358-regulator.c", i32 445, i32 2}
!105 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/mt6358-regulator.c", i32 494, i32 2}
!108 = !{ptr @.str.63, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/mt6358-regulator.c", i32 466, i32 2}
!111 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/mt6358-regulator.c", i32 468, i32 2}
!114 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/mt6358-regulator.c", i32 447, i32 2}
!117 = !{ptr @.str.69, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.70, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/mt6358-regulator.c", i32 448, i32 2}
!120 = !{ptr @.str.71, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/mt6358-regulator.c", i32 449, i32 2}
!123 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.74, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/mt6358-regulator.c", i32 470, i32 2}
!126 = !{ptr @.str.75, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/mt6358-regulator.c", i32 473, i32 2}
!129 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.78, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/mt6358-regulator.c", i32 476, i32 2}
!132 = !{ptr @.str.79, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.80, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/regulator/mt6358-regulator.c", i32 478, i32 2}
!135 = !{ptr @.str.81, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.82, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/regulator/mt6358-regulator.c", i32 480, i32 2}
!138 = !{ptr @.str.83, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.84, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/mt6358-regulator.c", i32 450, i32 2}
!141 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.86, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/regulator/mt6358-regulator.c", i32 483, i32 2}
!144 = !{ptr @.str.87, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @mt6358_regulators, !146, !"mt6358_regulators", i1 false, i1 false}
!146 = !{!"../drivers/regulator/mt6358-regulator.c", i32 405, i32 37}
!147 = !{ptr @mt6358_volt_range_ops, !148, !"mt6358_volt_range_ops", i1 false, i1 false}
!148 = !{!"../drivers/regulator/mt6358-regulator.c", i32 370, i32 35}
!149 = !{ptr @.str.88, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/regulator/mt6358-regulator.c", i32 296, i32 3}
!151 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mt6358_get_buck_voltage_sel._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @mt6358_get_buck_voltage_sel._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/regulator/mt6358-regulator.c", i32 339, i32 2}
!156 = !{ptr @.str.91, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @mt6358_regulator_set_mode.__UNIQUE_ID_ddebug288, !155, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!159 = !{ptr @.str.93, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/regulator/mt6358-regulator.c", i32 355, i32 3}
!161 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mt6358_regulator_get_mode._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @mt6358_regulator_get_mode._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.95, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/regulator/mt6358-regulator.c", i32 315, i32 3}
!166 = !{ptr @.str.96, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mt6358_get_status._entry, !165, !"_entry", i1 false, i1 false}
!169 = !{ptr @mt6358_get_status._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @buck_volt_range2, !171, !"buck_volt_range2", i1 false, i1 false}
!171 = !{!"../drivers/regulator/mt6358-regulator.c", i32 137, i32 34}
!172 = !{ptr @buck_volt_range1, !173, !"buck_volt_range1", i1 false, i1 false}
!173 = !{!"../drivers/regulator/mt6358-regulator.c", i32 133, i32 34}
!174 = !{ptr @buck_volt_range3, !175, !"buck_volt_range3", i1 false, i1 false}
!175 = !{!"../drivers/regulator/mt6358-regulator.c", i32 141, i32 34}
!176 = !{ptr @buck_volt_range4, !177, !"buck_volt_range4", i1 false, i1 false}
!177 = !{!"../drivers/regulator/mt6358-regulator.c", i32 145, i32 34}
!178 = !{ptr @mt6358_volt_table_ops, !179, !"mt6358_volt_table_ops", i1 false, i1 false}
!179 = !{!"../drivers/regulator/mt6358-regulator.c", i32 384, i32 35}
!180 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/mt6358-regulator.c", i32 272, i32 3}
!182 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @mt6358_get_voltage_sel._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @mt6358_get_voltage_sel._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @vdram2_voltages, !186, !"vdram2_voltages", i1 false, i1 false}
!186 = !{!"../drivers/regulator/mt6358-regulator.c", i32 149, i32 27}
!187 = !{ptr @vdram2_idx, !188, !"vdram2_idx", i1 false, i1 false}
!188 = !{!"../drivers/regulator/mt6358-regulator.c", i32 196, i32 18}
!189 = !{ptr @vsim_voltages, !190, !"vsim_voltages", i1 false, i1 false}
!190 = !{!"../drivers/regulator/mt6358-regulator.c", i32 153, i32 27}
!191 = !{ptr @vsim_idx, !192, !"vsim_idx", i1 false, i1 false}
!192 = !{!"../drivers/regulator/mt6358-regulator.c", i32 200, i32 18}
!193 = !{ptr @vibr_voltages, !194, !"vibr_voltages", i1 false, i1 false}
!194 = !{!"../drivers/regulator/mt6358-regulator.c", i32 157, i32 27}
!195 = !{ptr @vibr_idx, !196, !"vibr_idx", i1 false, i1 false}
!196 = !{!"../drivers/regulator/mt6358-regulator.c", i32 204, i32 18}
!197 = !{ptr @mt6358_volt_fixed_ops, !198, !"mt6358_volt_fixed_ops", i1 false, i1 false}
!198 = !{!"../drivers/regulator/mt6358-regulator.c", i32 396, i32 35}
!199 = !{ptr @vusb_voltages, !200, !"vusb_voltages", i1 false, i1 false}
!200 = !{!"../drivers/regulator/mt6358-regulator.c", i32 162, i32 27}
!201 = !{ptr @vusb_idx, !202, !"vusb_idx", i1 false, i1 false}
!202 = !{!"../drivers/regulator/mt6358-regulator.c", i32 208, i32 18}
!203 = !{ptr @vcamd_voltages, !204, !"vcamd_voltages", i1 false, i1 false}
!204 = !{!"../drivers/regulator/mt6358-regulator.c", i32 166, i32 27}
!205 = !{ptr @vcamd_idx, !206, !"vcamd_idx", i1 false, i1 false}
!206 = !{!"../drivers/regulator/mt6358-regulator.c", i32 212, i32 18}
!207 = !{ptr @vefuse_voltages, !208, !"vefuse_voltages", i1 false, i1 false}
!208 = !{!"../drivers/regulator/mt6358-regulator.c", i32 171, i32 27}
!209 = !{ptr @vefuse_idx, !210, !"vefuse_idx", i1 false, i1 false}
!210 = !{!"../drivers/regulator/mt6358-regulator.c", i32 216, i32 18}
!211 = !{ptr @vmch_vemc_voltages, !212, !"vmch_vemc_voltages", i1 false, i1 false}
!212 = !{!"../drivers/regulator/mt6358-regulator.c", i32 175, i32 27}
!213 = !{ptr @vmch_vemc_idx, !214, !"vmch_vemc_idx", i1 false, i1 false}
!214 = !{!"../drivers/regulator/mt6358-regulator.c", i32 220, i32 18}
!215 = !{ptr @vcama_voltages, !216, !"vcama_voltages", i1 false, i1 false}
!216 = !{!"../drivers/regulator/mt6358-regulator.c", i32 179, i32 27}
!217 = !{ptr @vcama_idx, !218, !"vcama_idx", i1 false, i1 false}
!218 = !{!"../drivers/regulator/mt6358-regulator.c", i32 224, i32 18}
!219 = !{ptr @vcn33_bt_wifi_voltages, !220, !"vcn33_bt_wifi_voltages", i1 false, i1 false}
!220 = !{!"../drivers/regulator/mt6358-regulator.c", i32 184, i32 27}
!221 = !{ptr @vcn33_bt_wifi_idx, !222, !"vcn33_bt_wifi_idx", i1 false, i1 false}
!222 = !{!"../drivers/regulator/mt6358-regulator.c", i32 228, i32 18}
!223 = !{ptr @vmc_voltages, !224, !"vmc_voltages", i1 false, i1 false}
!224 = !{!"../drivers/regulator/mt6358-regulator.c", i32 188, i32 27}
!225 = !{ptr @vmc_idx, !226, !"vmc_idx", i1 false, i1 false}
!226 = !{!"../drivers/regulator/mt6358-regulator.c", i32 232, i32 18}
!227 = !{ptr @vldo28_voltages, !228, !"vldo28_voltages", i1 false, i1 false}
!228 = !{!"../drivers/regulator/mt6358-regulator.c", i32 192, i32 27}
!229 = !{ptr @vldo28_idx, !230, !"vldo28_idx", i1 false, i1 false}
!230 = !{!"../drivers/regulator/mt6358-regulator.c", i32 236, i32 18}
!231 = !{ptr @mt6358_platform_ids, !232, !"mt6358_platform_ids", i1 false, i1 false}
!232 = !{!"../drivers/regulator/mt6358-regulator.c", i32 524, i32 40}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{!"auto-init"}
!243 = !{i32 0, i32 33}
!244 = !{i64 2148196261, i64 2148196266, i64 2148196279, i64 2148196323, i64 2148196357, i64 2148196378}
