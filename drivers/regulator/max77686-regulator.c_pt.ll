; ModuleID = '/llk/IR_all_yes/drivers/regulator/max77686-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77686-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max77686_dev = type { ptr, ptr, i32, ptr, ptr, i32, %struct.mutex, [3 x i32], [3 x i32] }
%struct.max77686_data = type { ptr, [2 x i32], [35 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_max77686_regulator__289_533_max77686_pmic_driver_init6 = internal global ptr @max77686_pmic_driver_init, section ".initcall6.init", align 4
@max77686_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77686_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77686_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77686_pmic_driver_exit = internal global ptr @max77686_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"max77686_regulator.description=MAXIM 77686 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [65 x i8] c"max77686_regulator.author=Chiwoong Byun <woong.byun@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"max77686_regulator.file=drivers/regulator/max77686-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"max77686_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77686-pmic\00", [18 x i8] zeroinitializer }, align 32
@max77686_pmic_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77686-pmic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max77686_pmic_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77686_regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77686_pmic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/max77686-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@regulators = internal constant { [35 x %struct.regulator_desc], [2116 x i8] } { [35 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 2, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 3, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 4, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.9, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 8, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.9, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.9, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.9, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 12, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.9, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.9, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.9, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @max77686_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 16, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 17, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 18, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 19, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 20, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 21, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.31, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 22, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 23, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 24, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.34, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 25, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.35, i8 0, ptr @.str.9, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @max77686_buck1_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 17, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.36, i8 0, ptr @.str.9, ptr null, i32 27, i8 0, i32 256, i32 0, ptr @max77686_buck_dvs_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 27500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 20, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 192, ptr @max77686_buck_dvs_ramp_table, i32 4, i32 22, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.37, i8 0, ptr @.str.9, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @max77686_buck_dvs_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 27500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 192, ptr @max77686_buck_dvs_ramp_table, i32 4, i32 22, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr @.str.38, i8 0, ptr @.str.9, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @max77686_buck_dvs_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 27500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, ptr @max77686_buck_dvs_ramp_table, i32 4, i32 22, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.39, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 30, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr @.str.40, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 31, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr @.str.41, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 32, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr @.str.42, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 33, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr @.str.43, i8 0, ptr @.str.9, ptr @max77686_of_parse_cb, i32 34, i8 0, i32 64, i32 0, ptr @max77686_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 40, i32 0, i32 0, ptr null }], [2116 x i8] zeroinitializer }, align 32
@max77686_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator init failed for %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77686_pmic_probe._entry_ptr = internal global ptr @max77686_pmic_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"voltage-regulators\00", [45 x i8] zeroinitializer }, align 32
@max77686_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@max77686_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_disable, ptr @max77686_ldo_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO16\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO18\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO19\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO20\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO21\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO22\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO23\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO24\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO25\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO26\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@max77686_buck1_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@max77686_buck_dvs_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max77686_buck_dvs_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 13750, i32 27500, i32 55000, i32 100000], [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK7\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK8\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK9\00", [26 x i8] zeroinitializer }, align 32
@max77686_set_suspend_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: regulator_suspend_mode : 0x%x not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77686_set_suspend_mode\00", [38 x i8] zeroinitializer }, align 32
@max77686_set_suspend_mode._entry_ptr = internal global ptr @max77686_set_suspend_mode._entry, section ".printk_index", align 4
@max77686_ldo_set_suspend_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max77686_ldo_set_suspend_mode\00", [34 x i8] zeroinitializer }, align 32
@max77686_ldo_set_suspend_mode._entry_ptr = internal global ptr @max77686_ldo_set_suspend_mode._entry, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxim,ena\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77686-regulator\00", [45 x i8] zeroinitializer }, align 32
@switch.table.max77686_enable = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@switch.table.max77686_set_suspend_disable = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 20, i64 21, i64 33, i64 34]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 20, i64 21, i64 33, i64 34]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 20, i64 21, i64 33, i64 34]
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"max77686_pmic_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 525, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 527, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"max77686_pmic_id\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 519, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 488, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 443, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 510, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 444, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"max77686_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 259, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 445, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"max77686_ldo_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 271, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 446, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 447, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 448, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 449, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 450, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 451, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 452, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 453, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 454, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 455, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 456, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 457, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 458, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 459, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 460, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 461, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 462, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 463, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 464, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 465, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 466, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 467, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 468, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 469, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 470, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"max77686_buck1_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 284, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 471, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [22 x i8] c"max77686_buck_dvs_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 296, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant [29 x i8] c"max77686_buck_dvs_ramp_table\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 255, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 472, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 473, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 474, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 475, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 476, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 477, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 478, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 151, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 185, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 229, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [42 x i8] c"../drivers/regulator/max77686-regulator.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 232, i32 5 }
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"switch.table.max77686_enable\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [42 x i8] c"switch.table.max77686_set_suspend_disable\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77686_pmic_driver_exit, ptr @__initcall__kmod_max77686_regulator__289_533_max77686_pmic_driver_init6, ptr @max77686_ldo_set_suspend_mode._entry, ptr @max77686_ldo_set_suspend_mode._entry_ptr, ptr @max77686_pmic_driver_exit, ptr @max77686_pmic_probe._entry, ptr @max77686_pmic_probe._entry_ptr, ptr @max77686_set_suspend_mode._entry, ptr @max77686_set_suspend_mode._entry_ptr, ptr @max77686_pmic_driver, ptr @.str, ptr @max77686_pmic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @regulators, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @max77686_ops, ptr @.str.10, ptr @max77686_ldo_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @max77686_buck1_ops, ptr @.str.36, ptr @max77686_buck_dvs_ops, ptr @max77686_buck_dvs_ramp_table, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.max77686_enable, ptr @switch.table.max77686_set_suspend_disable], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_pmic_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 8540, i32 10656, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_buck1_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_buck_dvs_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_buck_dvs_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_set_suspend_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_ldo_set_suspend_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77686_enable to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77686_set_suspend_disable to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_pmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77686_pmic_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77686_pmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77686_pmic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_pmic_probe(ptr noundef %pdev) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %4 = getelementptr inbounds i8, ptr %config, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77686_pmic_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77686_pmic_probe, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !133

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77686_pmic_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %do.end.cleanup30_crit_edge, label %if.end10

do.end.cleanup30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

if.end10:                                         ; preds = %do.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %config, align 4
  %regmap = getelementptr inbounds %struct.max77686_dev, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %regmap15 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %regmap15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %regmap15, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %i.054 = phi i32 [ 0, %if.end10 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.054
  %id16 = getelementptr [35 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.054, i32 6
  %15 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id16, align 4
  %arrayidx17 = getelementptr %struct.max77686_data, ptr %call.i, i32 0, i32 2, i32 %16
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %arrayidx17, align 4
  %call20 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %i.054, i32 noundef %18) #8
  br label %cleanup30

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.inc.cleanup30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30

cleanup30:                                        ; preds = %for.inc.cleanup30_crit_edge, %cleanup.thread, %do.end.cleanup30_crit_edge
  %retval.2 = phi i32 [ -12, %do.end.cleanup30_crit_edge ], [ %18, %cleanup.thread ], [ 0, %for.inc.cleanup30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_of_parse_cb(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %id = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 33, label %entry.sw.bb1_crit_edge
    i32 34, label %entry.sw.bb1_crit_edge29
    i32 19, label %entry.sw.bb1_crit_edge30
    i32 20, label %entry.sw.bb1_crit_edge31
    i32 21, label %entry.sw.bb1_crit_edge32
  ]

entry.sw.bb1_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge29, %entry.sw.bb1_crit_edge30, %entry.sw.bb1_crit_edge31, %entry.sw.bb1_crit_edge32
  %tobool.not = icmp eq ptr %np, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %fwnode
  %call = tail call ptr @fwnode_gpiod_get_index(ptr noundef %spec.select, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.48) #5
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %5 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %ena_gpiod, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb1.cleanup.sink.split_crit_edge, label %sw.epilog

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %sw.bb1
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %sw.epilog.cleanup_crit_edge, label %if.then7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %sw.epilog
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %gpio_enabled = getelementptr inbounds %struct.max77686_data, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %7, ptr noundef %gpio_enabled) #5
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 34
  %10 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 35
  %12 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.then11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ena_gpiod, align 4
  tail call void @gpiod_put(ptr noundef %15) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11, %sw.bb1.cleanup.sink.split_crit_edge
  %16 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ena_gpiod, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then7.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %switch.tableidx = add i32 %call1, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %entry.max77686_get_opmode_shift.exit_crit_edge

entry.max77686_get_opmode_shift.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77686_get_opmode_shift.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.max77686_enable, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %max77686_get_opmode_shift.exit

max77686_get_opmode_shift.exit:                   ; preds = %switch.lookup, %entry.max77686_get_opmode_shift.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 6, %entry.max77686_get_opmode_shift.exit_crit_edge ]
  %arrayidx = getelementptr %struct.max77686_data, ptr %call, i32 0, i32 2, i32 %call1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %max77686_get_opmode_shift.exit.if.end_crit_edge

max77686_get_opmode_shift.exit.if.end_crit_edge:  ; preds = %max77686_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %max77686_get_opmode_shift.exit
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call1, label %if.then.sw.epilog.i_crit_edge [
    i32 33, label %if.then.sw.bb1.i_crit_edge
    i32 34, label %if.then.sw.bb1.i_crit_edge22
    i32 19, label %if.then.sw.bb1.i_crit_edge23
    i32 20, label %if.then.sw.bb1.i_crit_edge24
    i32 21, label %if.then.sw.bb1.i_crit_edge25
  ]

if.then.sw.bb1.i_crit_edge25:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.then.sw.bb1.i_crit_edge24:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.then.sw.bb1.i_crit_edge23:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.then.sw.bb1.i_crit_edge22:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.then.sw.bb1.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then.sw.bb1.i_crit_edge, %if.then.sw.bb1.i_crit_edge22, %if.then.sw.bb1.i_crit_edge23, %if.then.sw.bb1.i_crit_edge24, %if.then.sw.bb1.i_crit_edge25
  %gpio_enabled.i = getelementptr inbounds %struct.max77686_data, ptr %call, i32 0, i32 1
  %div3.i.i = lshr i32 %call1, 5
  %arrayidx.i.i = getelementptr i32, ptr %gpio_enabled.i, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %call1, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %sw.bb1.i.max77686_map_normal_mode.exit_crit_edge

sw.bb1.i.max77686_map_normal_mode.exit_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77686_map_normal_mode.exit

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i.sw.epilog.i_crit_edge, %if.then.sw.epilog.i_crit_edge
  br label %max77686_map_normal_mode.exit

max77686_map_normal_mode.exit:                    ; preds = %sw.epilog.i, %sw.bb1.i.max77686_map_normal_mode.exit_crit_edge
  %retval.0.i21 = phi i32 [ 3, %sw.epilog.i ], [ 0, %sw.bb1.i.max77686_map_normal_mode.exit_crit_edge ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i21, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %max77686_map_normal_mode.exit, %max77686_get_opmode_shift.exit.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 35
  %16 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_mask, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %19, %retval.0.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %15, i32 noundef %17, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %call1)
  %cmp = icmp sgt i32 %call1, 29
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %mode, label %do.end [
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %call1.off = add i32 %call1, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.off)
  %switch = icmp ult i32 %call1.off, 3
  br i1 %switch, label %sw.bb1.i, label %sw.bb2.sw.epilog.i_crit_edge

sw.bb2.sw.epilog.i_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb2
  %gpio_enabled.i = getelementptr inbounds %struct.max77686_data, ptr %call, i32 0, i32 1
  %div3.i.i = lshr i32 %call1, 5
  %arrayidx.i.i = getelementptr i32, ptr %gpio_enabled.i, i32 %div3.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %3 = shl nuw nsw i32 1, %call1
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %sw.bb1.i.sw.epilog_crit_edge

sw.bb1.i.sw.epilog_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i.sw.epilog.i_crit_edge, %sw.bb2.sw.epilog.i_crit_edge
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %8, i32 noundef %mode) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.epilog.i, %sw.bb1.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %val.0 = phi i32 [ 2, %if.end.sw.epilog_crit_edge ], [ 3, %sw.epilog.i ], [ 0, %sw.bb1.i.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 34
  %13 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 35
  %15 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable_mask, align 4
  %shl = shl nuw nsw i32 %val.0, 6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %14, i32 noundef %16, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.max77686_data, ptr %call, i32 0, i32 2, i32 %call1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %val.0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_set_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %switch.tableidx = add i32 %call1, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %entry.max77686_get_opmode_shift.exit_crit_edge

entry.max77686_get_opmode_shift.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77686_get_opmode_shift.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.max77686_set_suspend_disable, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %max77686_get_opmode_shift.exit

max77686_get_opmode_shift.exit:                   ; preds = %switch.lookup, %entry.max77686_get_opmode_shift.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 6, %entry.max77686_get_opmode_shift.exit_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 35
  %8 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_mask, align 4
  %shl = shl nuw nsw i32 1, %retval.0.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %max77686_get_opmode_shift.exit.cleanup_crit_edge

max77686_get_opmode_shift.exit.cleanup_crit_edge: ; preds = %max77686_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %max77686_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.max77686_data, ptr %call, i32 0, i32 2, i32 %call1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %max77686_get_opmode_shift.exit.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_ldo_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %mode, label %do.end [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb2
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %1 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call1, label %sw.bb3.sw.epilog.i_crit_edge [
    i32 33, label %sw.bb3.sw.bb1.i_crit_edge
    i32 34, label %sw.bb3.sw.bb1.i_crit_edge22
    i32 19, label %sw.bb3.sw.bb1.i_crit_edge23
    i32 20, label %sw.bb3.sw.bb1.i_crit_edge24
    i32 21, label %sw.bb3.sw.bb1.i_crit_edge25
  ]

sw.bb3.sw.bb1.i_crit_edge25:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

sw.bb3.sw.bb1.i_crit_edge24:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

sw.bb3.sw.bb1.i_crit_edge23:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

sw.bb3.sw.bb1.i_crit_edge22:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

sw.bb3.sw.bb1.i_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

sw.bb3.sw.epilog.i_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb3.sw.bb1.i_crit_edge, %sw.bb3.sw.bb1.i_crit_edge22, %sw.bb3.sw.bb1.i_crit_edge23, %sw.bb3.sw.bb1.i_crit_edge24, %sw.bb3.sw.bb1.i_crit_edge25
  %gpio_enabled.i = getelementptr inbounds %struct.max77686_data, ptr %call, i32 0, i32 1
  %div3.i.i = lshr i32 %call1, 5
  %arrayidx.i.i = getelementptr i32, ptr %gpio_enabled.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %call1, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %sw.bb1.i.sw.epilog_crit_edge

sw.bb1.i.sw.epilog_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i.sw.epilog.i_crit_edge, %sw.bb3.sw.epilog.i_crit_edge
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %9, i32 noundef %mode) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.epilog.i, %sw.bb1.i.sw.epilog_crit_edge, %sw.bb2, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 2, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ], [ 3, %sw.epilog.i ], [ 0, %sw.bb1.i.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 35
  %16 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_mask, align 4
  %shl = shl nuw nsw i32 %val.0, 6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %15, i32 noundef %17, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.max77686_data, ptr %call, i32 0, i32 2, i32 %call1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %val.0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !110, !111, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_max77686_regulator__289_533_max77686_pmic_driver_init6, !1, !"__initcall__kmod_max77686_regulator__289_533_max77686_pmic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max77686-regulator.c", i32 533, i32 1}
!2 = !{ptr @__exitcall_max77686_pmic_driver_exit, !1, !"__exitcall_max77686_pmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/regulator/max77686-regulator.c", i32 535, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/regulator/max77686-regulator.c", i32 536, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/regulator/max77686-regulator.c", i32 537, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/max77686-regulator.c", i32 527, i32 11}
!12 = !{ptr @max77686_pmic_driver, !13, !"max77686_pmic_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/max77686-regulator.c", i32 525, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/max77686-regulator.c", i32 488, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @max77686_pmic_probe.__UNIQUE_ID_ddebug288, !15, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/regulator/max77686-regulator.c", i32 510, i32 4}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @max77686_pmic_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @max77686_pmic_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/max77686-regulator.c", i32 444, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/max77686-regulator.c", i32 445, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max77686-regulator.c", i32 446, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/max77686-regulator.c", i32 447, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/max77686-regulator.c", i32 448, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/max77686-regulator.c", i32 449, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/max77686-regulator.c", i32 450, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/max77686-regulator.c", i32 451, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/max77686-regulator.c", i32 452, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/max77686-regulator.c", i32 453, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/max77686-regulator.c", i32 454, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/max77686-regulator.c", i32 455, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/max77686-regulator.c", i32 456, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/max77686-regulator.c", i32 457, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/max77686-regulator.c", i32 458, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/max77686-regulator.c", i32 459, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/max77686-regulator.c", i32 460, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/max77686-regulator.c", i32 461, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/max77686-regulator.c", i32 462, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/max77686-regulator.c", i32 463, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/max77686-regulator.c", i32 464, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/max77686-regulator.c", i32 465, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/max77686-regulator.c", i32 466, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/max77686-regulator.c", i32 467, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/max77686-regulator.c", i32 468, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/max77686-regulator.c", i32 469, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/max77686-regulator.c", i32 470, i32 2}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/max77686-regulator.c", i32 471, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/max77686-regulator.c", i32 472, i32 2}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/max77686-regulator.c", i32 473, i32 2}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/max77686-regulator.c", i32 474, i32 2}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/max77686-regulator.c", i32 475, i32 2}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/max77686-regulator.c", i32 476, i32 2}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/max77686-regulator.c", i32 477, i32 2}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/max77686-regulator.c", i32 478, i32 2}
!97 = !{ptr @regulators, !98, !"regulators", i1 false, i1 false}
!98 = !{!"../drivers/regulator/max77686-regulator.c", i32 443, i32 36}
!99 = !{ptr @max77686_ops, !100, !"max77686_ops", i1 false, i1 false}
!100 = !{!"../drivers/regulator/max77686-regulator.c", i32 259, i32 35}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/max77686-regulator.c", i32 151, i32 3}
!103 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @max77686_set_suspend_mode._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @max77686_set_suspend_mode._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @max77686_ldo_ops, !107, !"max77686_ldo_ops", i1 false, i1 false}
!107 = !{!"../drivers/regulator/max77686-regulator.c", i32 271, i32 35}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/max77686-regulator.c", i32 185, i32 3}
!110 = !{ptr @max77686_ldo_set_suspend_mode._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @max77686_ldo_set_suspend_mode._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/max77686-regulator.c", i32 229, i32 5}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/max77686-regulator.c", i32 232, i32 5}
!116 = !{ptr @max77686_buck1_ops, !117, !"max77686_buck1_ops", i1 false, i1 false}
!117 = !{!"../drivers/regulator/max77686-regulator.c", i32 284, i32 35}
!118 = !{ptr @max77686_buck_dvs_ops, !119, !"max77686_buck_dvs_ops", i1 false, i1 false}
!119 = !{!"../drivers/regulator/max77686-regulator.c", i32 296, i32 35}
!120 = !{ptr @max77686_buck_dvs_ramp_table, !121, !"max77686_buck_dvs_ramp_table", i1 false, i1 false}
!121 = !{!"../drivers/regulator/max77686-regulator.c", i32 255, i32 27}
!122 = !{ptr @max77686_pmic_id, !123, !"max77686_pmic_id", i1 false, i1 false}
!123 = !{!"../drivers/regulator/max77686-regulator.c", i32 519, i32 40}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148705975, i64 2148705980, i64 2148705993, i64 2148706037, i64 2148706071, i64 2148706092}
