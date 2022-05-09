; ModuleID = '/llk/IR_all_yes/drivers/regulator/mc13892-regulator.c_pt.bc'
source_filename = "../drivers/regulator/mc13892-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mc13xxx_regulator = type { %struct.regulator_desc, i32, i32, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mc13xxx_regulator_priv = type { ptr, i32, ptr, i32, [0 x ptr] }
%struct.mc13xxx_regulator_platform_data = type { i32, ptr }
%struct.mc13xxx_regulator_init_data = type { i32, ptr, ptr }

@__initcall__kmod_mc13892_regulator__292_640_mc13892_regulator_init4 = internal global ptr @mc13892_regulator_init, section ".initcall4.init", align 4
@mc13892_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mc13892_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mc13892_regulator_exit = internal global ptr @mc13892_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file293 = internal constant [59 x i8] c"mc13892_regulator.file=drivers/regulator/mc13892-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [33 x i8] c"mc13892_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [58 x i8] c"mc13892_regulator.author=Yong Shen <yong.shen@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [74 x i8] c"mc13892_regulator.description=Regulator Driver for Freescale MC13892 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [51 x i8] c"mc13892_regulator.alias=platform:mc13892-regulator\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13892-regulator\00", [46 x i8] zeroinitializer }, align 32
@mc13892_regulators = internal global { [24 x %struct.mc13xxx_regulator], [1568 x i8] } { [24 x %struct.mc13xxx_regulator] [%struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @mc13892_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_sw1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 24, i32 0, i32 24, i32 0, i32 31 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 52, i32 0, ptr @mc13892_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_sw, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25, i32 0, i32 25, i32 0, i32 31 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 52, i32 0, ptr @mc13892_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_sw, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 26, i32 0, i32 26, i32 0, i32 31 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 52, i32 0, ptr @mc13892_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_sw, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 27, i32 0, i32 27, i32 0, i32 31 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 1, i32 0, ptr @mc13xxx_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_swbst, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 29, i32 1048576, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @mc13xxx_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_viohi, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 8, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vpll, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 32768, i32 30, i32 9, i32 1536 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vdig, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 512, i32 30, i32 4, i32 48 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 8, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vsd, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 262144, i32 31, i32 6, i32 448 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vusb2, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 262144, i32 30, i32 11, i32 6144 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vvideo, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 4096, i32 31, i32 2, i32 12 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vaudio, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 32768, i32 31, i32 4, i32 48 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vcam, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 64, i32 30, i32 16, i32 196608 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vgen1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 1, i32 30, i32 0, i32 3 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 8, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vgen2, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 4096, i32 30, i32 6, i32 448 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vgen3, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 1, i32 30, i32 14, i32 16384 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 1, i32 0, ptr @mc13xxx_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vusb, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50, i32 8, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 1, i32 0, ptr @mc13892_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_gpo, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 64, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 1, i32 0, ptr @mc13892_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_gpo, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 256, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @mc13892_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_gpo, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 1024, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 1, i32 0, ptr @mc13892_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_gpo, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 4096, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 1, i32 0, ptr @mc13892_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_pwgtdrv, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 32768, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 1, i32 0, ptr @mc13892_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_pwgtdrv, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 65536, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 8, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13892_vcoincell, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 13, i32 8388608, i32 13, i32 20, i32 7340032 }], [1568 x i8] zeroinitializer }, align 32
@mc13892_vcam_ops = internal global { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@mc13892_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mc13892_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/mc13892-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13892_regulator_probe._entry_ptr = internal global ptr @mc13892_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw1\00", [28 x i8] zeroinitializer }, align 32
@mc13892_sw_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @mc13892_sw_regulator_set_voltage_sel, ptr null, ptr @mc13892_sw_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mc13892_sw1 = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 600000, i32 625000, i32 650000, i32 675000, i32 700000, i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw2\00", [28 x i8] zeroinitializer }, align 32
@mc13892_sw = internal constant { [52 x i32], [48 x i8] } { [52 x i32] [i32 600000, i32 625000, i32 650000, i32 675000, i32 700000, i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1525000, i32 1550000, i32 1575000, i32 1600000, i32 1625000, i32 1650000, i32 1675000, i32 1700000, i32 1725000, i32 1750000, i32 1775000, i32 1800000, i32 1825000, i32 1850000, i32 1875000], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw3\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw4\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"swbst\00", [26 x i8] zeroinitializer }, align 32
@mc13xxx_fixed_regulator_ops = external dso_local constant %struct.regulator_ops, align 4
@mc13892_swbst = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5000000], [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"viohi\00", [26 x i8] zeroinitializer }, align 32
@mc13892_viohi = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2775000], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vpll\00", [27 x i8] zeroinitializer }, align 32
@mc13xxx_regulator_ops = external dso_local constant %struct.regulator_ops, align 4
@mc13892_vpll = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1050000, i32 1250000, i32 1650000, i32 1800000], [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdig\00", [27 x i8] zeroinitializer }, align 32
@mc13892_vdig = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1050000, i32 1250000, i32 1650000, i32 1800000], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vsd\00", [28 x i8] zeroinitializer }, align 32
@mc13892_vsd = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 2000000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3150000], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vusb2\00", [26 x i8] zeroinitializer }, align 32
@mc13892_vusb2 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2400000, i32 2600000, i32 2700000, i32 2775000], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vvideo\00", [25 x i8] zeroinitializer }, align 32
@mc13892_vvideo = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2700000, i32 2775000, i32 2500000, i32 2600000], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vaudio\00", [25 x i8] zeroinitializer }, align 32
@mc13892_vaudio = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2300000, i32 2500000, i32 2775000, i32 3000000], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcam\00", [27 x i8] zeroinitializer }, align 32
@mc13892_vcam = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2500000, i32 2600000, i32 2750000, i32 3000000], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen1\00", [26 x i8] zeroinitializer }, align 32
@mc13892_vgen1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1500000, i32 2775000, i32 3150000], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen2\00", [26 x i8] zeroinitializer }, align 32
@mc13892_vgen2 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1500000, i32 1600000, i32 1800000, i32 2700000, i32 2800000, i32 3000000, i32 3150000], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen3\00", [26 x i8] zeroinitializer }, align 32
@mc13892_vgen3 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 2900000], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vusb\00", [27 x i8] zeroinitializer }, align 32
@mc13892_vusb = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3300000], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpo1\00", [27 x i8] zeroinitializer }, align 32
@mc13892_gpo_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr @mc13xxx_fixed_regulator_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mc13892_gpo_regulator_enable, ptr @mc13892_gpo_regulator_disable, ptr @mc13892_gpo_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mc13892_gpo = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2750000], [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpo2\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpo3\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpo4\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwgt1spi\00", [23 x i8] zeroinitializer }, align 32
@mc13892_pwgtdrv = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5000000], [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwgt2spi\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vcoincell\00", [22 x i8] zeroinitializer }, align 32
@mc13892_vcoincell = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2500000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13892_regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mc13892_sw_regulator_get_voltage_sel\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s id: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s id: %d val: 0x%08x selector: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mc13892_gpo_regulator_enable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.34, ptr @.str.3, ptr @.str.32, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mc13892_gpo_regulator_enable\00", [35 x i8] zeroinitializer }, align 32
@mc13892_gpo_regulator_disable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.35, ptr @.str.3, ptr @.str.32, i8 0, i8 89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mc13892_gpo_regulator_disable\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"mc13892_regulator_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 629, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 631, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"mc13892_regulators\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 265, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"mc13892_vcam_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 525, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 616, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 267, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"mc13892_sw_regulator_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 482, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"mc13892_sw1\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 154, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 268, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"mc13892_sw\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 171, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 269, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 270, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 271, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"mc13892_swbst\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 183, i32 27 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 272, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"mc13892_viohi\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 187, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 273, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"mc13892_vpll\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 191, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 275, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"mc13892_vdig\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 195, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 277, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"mc13892_vsd\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 199, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 279, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"mc13892_vusb2\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 204, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 281, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"mc13892_vvideo\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 208, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 283, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"mc13892_vaudio\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 212, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 285, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"mc13892_vcam\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 216, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 287, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"mc13892_vgen1\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 220, i32 27 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 289, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"mc13892_vgen2\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 224, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 291, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"mc13892_vgen3\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 229, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 293, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"mc13892_vusb\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 233, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 294, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"mc13892_gpo_regulator_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 390, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"mc13892_gpo\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 237, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 295, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 296, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 297, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 298, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"mc13892_pwgtdrv\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 241, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 299, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 266, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"mc13892_vcoincell\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 149, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 404, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 431, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 340, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [41 x i8] c"../drivers/regulator/mc13892-regulator.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 358, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mc13892_regulator_exit, ptr @__initcall__kmod_mc13892_regulator__292_640_mc13892_regulator_init4, ptr @mc13892_regulator_exit, ptr @mc13892_regulator_probe._entry, ptr @mc13892_regulator_probe._entry_ptr, ptr @mc13892_regulator_driver, ptr @.str, ptr @mc13892_regulators, ptr @mc13892_vcam_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mc13892_sw_regulator_ops, ptr @mc13892_sw1, ptr @.str.7, ptr @mc13892_sw, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mc13892_swbst, ptr @.str.11, ptr @mc13892_viohi, ptr @.str.12, ptr @mc13892_vpll, ptr @.str.13, ptr @mc13892_vdig, ptr @.str.14, ptr @mc13892_vsd, ptr @.str.15, ptr @mc13892_vusb2, ptr @.str.16, ptr @mc13892_vvideo, ptr @.str.17, ptr @mc13892_vaudio, ptr @.str.18, ptr @mc13892_vcam, ptr @.str.19, ptr @mc13892_vgen1, ptr @.str.20, ptr @mc13892_vgen2, ptr @.str.21, ptr @mc13892_vgen3, ptr @.str.22, ptr @mc13892_vusb, ptr @.str.23, ptr @mc13892_gpo_regulator_ops, ptr @mc13892_gpo, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mc13892_pwgtdrv, ptr @.str.28, ptr @.str.29, ptr @mc13892_vcoincell, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_regulators to i32), i32 6336, i32 7904, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vcam_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_sw_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_sw1 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_sw to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_swbst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_viohi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vpll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vdig to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vsd to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vusb2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vvideo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vaudio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vcam to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vgen1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vgen2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vgen3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vusb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_gpo_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_gpo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_pwgtdrv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_vcoincell to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mc13892_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc13892_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mc13892_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %6 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !140
  %call3 = tail call i32 @mc13xxx_get_num_regulators_dt(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  %tobool.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_regulators.0 = phi i32 [ %9, %if.then ], [ %call3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_regulators.0)
  %cmp5 = icmp slt i32 %num_regulators.0, 1
  br i1 %cmp5, label %if.end.cleanup69_crit_edge, label %if.end7

if.end.cleanup69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end7:                                          ; preds = %if.end
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_regulators.0, i32 4) #6
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 16) #6
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end7.cleanup69_crit_edge, label %if.end13

if.end7.cleanup69_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end13:                                         ; preds = %if.end7
  %num_regulators14 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %num_regulators14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %num_regulators.0, ptr %num_regulators14, align 4
  %mc13xxx_regulators = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %mc13xxx_regulators to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mc13892_regulators, ptr %mc13xxx_regulators, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @mc13xxx_lock(ptr noundef %3) #6
  %call15 = call i32 @mc13xxx_reg_read(ptr noundef %3, i32 noundef 7, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.err_unlock_crit_edge

if.end13.err_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock

if.end18:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 17872, i32 %and)
  %cmp19 = icmp eq i32 %and, 17872
  br i1 %cmp19, label %if.then20, label %if.end18.if.end29_crit_edge

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 @mc13xxx_reg_rmw(ptr noundef %3, i32 noundef 28, i32 noundef 15375, i32 noundef 8200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.err_unlock_crit_edge

if.then20.err_unlock_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock

if.end24:                                         ; preds = %if.then20
  %call25 = call i32 @mc13xxx_reg_rmw(ptr noundef %3, i32 noundef 29, i32 noundef 3855, i32 noundef 2056) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.end24.err_unlock_crit_edge

if.end24.err_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %if.end24.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  call void @mc13xxx_unlock(ptr noundef %3) #6
  %19 = load ptr, ptr getelementptr inbounds ([24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 12, i32 0, i32 10), align 4
  %20 = call ptr @memcpy(ptr @mc13892_vcam_ops, ptr %19, i32 144)
  store ptr @mc13892_vcam_set_mode, ptr getelementptr inbounds (%struct.regulator_ops, ptr @mc13892_vcam_ops, i32 0, i32 17), align 4
  store ptr @mc13892_vcam_get_mode, ptr getelementptr inbounds (%struct.regulator_ops, ptr @mc13892_vcam_ops, i32 0, i32 18), align 4
  store ptr @mc13892_vcam_ops, ptr getelementptr inbounds ([24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 12, i32 0, i32 10), align 4
  %call30 = call ptr @mc13xxx_parse_regulators_dt(ptr noundef %pdev, ptr noundef nonnull @mc13892_regulators, i32 noundef 24) #6
  %21 = ptrtoint ptr %num_regulators14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_regulators14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp32126 = icmp sgt i32 %22, 0
  br i1 %cmp32126, label %for.body.lr.ph, label %if.end29.cleanup69_crit_edge

if.end29.cleanup69_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

for.body.lr.ph:                                   ; preds = %if.end29
  %tobool33.not = icmp eq ptr %call30, null
  %regulators = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, ptr %5, i32 0, i32 1
  %init_data50 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %node39 = getelementptr %struct.mc13xxx_regulator_init_data, ptr %call30, i32 %i.0127, i32 2
  %23 = ptrtoint ptr %node39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node39, align 4
  br label %if.end45

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regulators, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then34
  %call30.pn = phi ptr [ %call30, %if.then34 ], [ %26, %if.else ]
  %node.0 = phi ptr [ %24, %if.then34 ], [ null, %if.else ]
  %id.0.in = getelementptr %struct.mc13xxx_regulator_init_data, ptr %call30.pn, i32 %i.0127
  %init_data.0.in = getelementptr %struct.mc13xxx_regulator_init_data, ptr %call30.pn, i32 %i.0127, i32 1
  %27 = ptrtoint ptr %id.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %id.0 = load i32, ptr %id.0.in, align 4
  %28 = ptrtoint ptr %init_data.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %init_data.0 = load ptr, ptr %init_data.0.in, align 4
  %arrayidx46 = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %id.0
  %29 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %config, align 4
  %30 = ptrtoint ptr %init_data50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init_data.0, ptr %init_data50, align 4
  %31 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %node.0, ptr %of_node, align 4
  %call52 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx46, ptr noundef nonnull %config) #6
  %arrayidx54 = getelementptr %struct.mc13xxx_regulator_priv, ptr %call.i, i32 0, i32 4, i32 %i.0127
  %33 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call52, ptr %arrayidx54, align 4
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx60 = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %i.0127
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx60, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %35) #9
  %36 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx54, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %cleanup69

for.inc:                                          ; preds = %if.end45
  %inc = add nuw nsw i32 %i.0127, 1
  %39 = ptrtoint ptr %num_regulators14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_regulators14, align 4
  %cmp32 = icmp slt i32 %inc, %40
  br i1 %cmp32, label %for.inc.for.body_crit_edge, label %for.inc.cleanup69_crit_edge

for.inc.cleanup69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

err_unlock:                                       ; preds = %if.end24.err_unlock_crit_edge, %if.then20.err_unlock_crit_edge, %if.end13.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end13.err_unlock_crit_edge ], [ %call21, %if.then20.err_unlock_crit_edge ], [ %call25, %if.end24.err_unlock_crit_edge ]
  call void @mc13xxx_unlock(ptr noundef %3) #6
  br label %cleanup69

cleanup69:                                        ; preds = %err_unlock, %for.inc.cleanup69_crit_edge, %cleanup.thread, %if.end29.cleanup69_crit_edge, %if.end7.cleanup69_crit_edge, %if.end.cleanup69_crit_edge
  %retval.2 = phi i32 [ %ret.0, %err_unlock ], [ -22, %if.end.cleanup69_crit_edge ], [ -12, %if.end7.cleanup69_crit_edge ], [ %38, %cleanup.thread ], [ 0, %if.end29.cleanup69_crit_edge ], [ 0, %for.inc.cleanup69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_get_num_regulators_dt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_vcam_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %spec.select = select i1 %cmp, i32 512, i32 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_lock(ptr noundef %1) #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %reg = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %call3 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %3, i32 noundef %5, i32 noundef 512, i32 noundef %spec.select) #6
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_unlock(ptr noundef %7) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_vcam_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !140
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_lock(ptr noundef %2) #6
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %reg = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %call3 = call i32 @mc13xxx_reg_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #6
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  call void @mc13xxx_unlock(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %. = select i1 %tobool5.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mc13xxx_parse_regulators_dt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_sw_regulator_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %vsel_mask = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 5
  %0 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vsel_mask, align 4
  %vsel_reg = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 3
  %2 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsel_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.not = icmp eq i32 %3, 24
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %volt_table, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %selector
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %or = or i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 1375000, i32 %9)
  %cmp4 = icmp sgt i32 %9, 1375000
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %selector, -20
  %or6 = or i32 %sub, 8388608
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %selector, -8388609
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5, %entry.if.end7_crit_edge
  %mask.0 = phi i32 [ %or, %if.then5 ], [ %or, %if.else ], [ %1, %entry.if.end7_crit_edge ]
  %reg_value.0 = phi i32 [ %or6, %if.then5 ], [ %and, %if.else ], [ %selector, %entry.if.end7_crit_edge ]
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_lock(ptr noundef %11) #6
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %14 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsel_reg, align 4
  %call11 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %13, i32 noundef %15, i32 noundef %mask.0, i32 noundef %reg_value.0) #6
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_unlock(ptr noundef %17) #6
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_sw_regulator_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13892_sw_regulator_get_voltage_sel, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug290, ptr noundef %call6, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %call1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_lock(ptr noundef %2) #6
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %vsel_reg = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 3
  %5 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsel_reg, align 4
  %call8 = call i32 @mc13xxx_reg_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #6
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  call void @mc13xxx_unlock(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %vsel_mask = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 5
  %11 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_mask, align 4
  %and = and i32 %12, %10
  %13 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vsel_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %14)
  %cmp.not = icmp eq i32 %14, 24
  %and16 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool17.not
  %add = add i32 %and, 20
  %selector.0 = select i1 %or.cond, i32 %and, i32 %add
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13892_sw_regulator_get_voltage_sel, %cleanup)) #6
          to label %if.then34 [label %cleanup], !srcloc !141

if.then34:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call ptr @rdev_get_dev(ptr noundef %rdev) #6
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug291, ptr noundef %call35, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %call1, i32 noundef %16, i32 noundef %selector.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end.cleanup_crit_edge ], [ %selector.0, %if.then34 ], [ %selector.0, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_fixed_regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_gpo_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %enable_bit = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 2
  %0 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_bit, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13892_gpo_regulator_enable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13892_gpo_regulator_enable, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13892_gpo_regulator_enable.__UNIQUE_ID_ddebug288, ptr noundef %call8, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34, i32 noundef %call1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call1.off = add i32 %call1, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.off)
  %switch = icmp ult i32 %call1.off, 2
  %spec.select24 = select i1 %switch, i32 0, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call1)
  %cmp12 = icmp eq i32 %call1, 20
  %or = or i32 %1, 2097152
  %spec.select = select i1 %cmp12, i32 %or, i32 %1
  %call15 = tail call fastcc i32 @mc13892_powermisc_rmw(ptr noundef %call, i32 noundef %spec.select, i32 noundef %spec.select24)
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_gpo_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13892_gpo_regulator_disable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13892_gpo_regulator_disable, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13892_gpo_regulator_disable.__UNIQUE_ID_ddebug289, ptr noundef %call6, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35, i32 noundef %call1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call1.off = add i32 %call1, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.off)
  %switch = icmp ult i32 %call1.off, 2
  br i1 %switch, label %if.then8, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable_bit = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 2
  %0 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_bit, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %dis_val.0 = phi i32 [ %1, %if.then8 ], [ 0, %do.end.if.end9_crit_edge ]
  %enable_bit11 = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 2
  %2 = ptrtoint ptr %enable_bit11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_bit11, align 4
  %call12 = tail call fastcc i32 @mc13892_powermisc_rmw(ptr noundef %call, i32 noundef %3, i32 noundef %dis_val.0)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13892_gpo_regulator_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !140
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_lock(ptr noundef %2) #6
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %reg = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %call3 = call i32 @mc13xxx_reg_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #6
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  call void @mc13xxx_unlock(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, -98305
  %powermisc_pwgt_state = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %powermisc_pwgt_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %powermisc_pwgt_state, align 4
  %13 = or i32 %12, %and
  %or = xor i32 %13, 98304
  %enable_bit = getelementptr [24 x %struct.mc13xxx_regulator], ptr @mc13892_regulators, i32 0, i32 %call1, i32 2
  %14 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_bit, align 4
  %and6 = and i32 %or, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp = icmp ne i32 %and6, 0
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc13892_powermisc_rmw(ptr nocapture noundef %priv, i32 noundef %mask, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %valread = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valread) #6
  %2 = ptrtoint ptr %valread to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %valread, align 4, !annotation !140
  %neg = xor i32 %mask, -1
  %and = and i32 %neg, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !142

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/mc13892-regulator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #6, !srcloc !143
  unreachable

do.end8:                                          ; preds = %entry
  tail call void @mc13xxx_lock(ptr noundef %1) #6
  %call = call i32 @mc13xxx_reg_read(ptr noundef %1, i32 noundef 34, ptr noundef nonnull %valread) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %do.end8.out_crit_edge

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %powermisc_pwgt_state = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %powermisc_pwgt_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %powermisc_pwgt_state, align 4
  %and14 = and i32 %4, %neg
  %or = or i32 %and14, %val
  %and17 = and i32 %or, 98304
  store i32 %and17, ptr %powermisc_pwgt_state, align 4
  %5 = ptrtoint ptr %valread to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %valread, align 4
  %and19 = and i32 %6, %neg
  %or20 = or i32 %and19, %val
  %and21 = and i32 %or20, -98305
  %or23 = or i32 %and21, %and17
  store i32 %or23, ptr %valread, align 4
  %call24 = call i32 @mc13xxx_reg_write(ptr noundef %1, i32 noundef 34, i32 noundef %or23) #6
  br label %out

out:                                              ; preds = %if.end12, %do.end8.out_crit_edge
  %ret.0 = phi i32 [ %call, %do.end8.out_crit_edge ], [ %call24, %if.end12 ]
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  call void @mc13xxx_unlock(ptr noundef %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valread) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !122, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_mc13892_regulator__292_640_mc13892_regulator_init4, !1, !"__initcall__kmod_mc13892_regulator__292_640_mc13892_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mc13892-regulator.c", i32 640, i32 1}
!2 = !{ptr @__exitcall_mc13892_regulator_exit, !3, !"__exitcall_mc13892_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/mc13892-regulator.c", i32 646, i32 1}
!4 = !{ptr @__UNIQUE_ID_file293, !5, !"__UNIQUE_ID_file293", i1 false, i1 false}
!5 = !{!"../drivers/regulator/mc13892-regulator.c", i32 648, i32 1}
!6 = !{ptr @__UNIQUE_ID_license294, !5, !"__UNIQUE_ID_license294", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/regulator/mc13892-regulator.c", i32 649, i32 1}
!9 = !{ptr @__UNIQUE_ID_description296, !10, !"__UNIQUE_ID_description296", i1 false, i1 false}
!10 = !{!"../drivers/regulator/mc13892-regulator.c", i32 650, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias297, !12, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!12 = !{!"../drivers/regulator/mc13892-regulator.c", i32 651, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/mc13892-regulator.c", i32 631, i32 11}
!15 = !{ptr @mc13892_regulator_driver, !16, !"mc13892_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/mc13892-regulator.c", i32 629, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/mc13892-regulator.c", i32 616, i32 4}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mc13892_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mc13892_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/mc13892-regulator.c", i32 267, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/mc13892-regulator.c", i32 268, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/mc13892-regulator.c", i32 269, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/mc13892-regulator.c", i32 270, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/mc13892-regulator.c", i32 271, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/mc13892-regulator.c", i32 272, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/mc13892-regulator.c", i32 273, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/mc13892-regulator.c", i32 275, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/mc13892-regulator.c", i32 277, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/mc13892-regulator.c", i32 279, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/mc13892-regulator.c", i32 281, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/mc13892-regulator.c", i32 283, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/mc13892-regulator.c", i32 285, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/mc13892-regulator.c", i32 287, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/mc13892-regulator.c", i32 289, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/mc13892-regulator.c", i32 291, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/mc13892-regulator.c", i32 293, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/mc13892-regulator.c", i32 294, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/mc13892-regulator.c", i32 295, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/mc13892-regulator.c", i32 296, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/mc13892-regulator.c", i32 297, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/mc13892-regulator.c", i32 298, i32 2}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/mc13892-regulator.c", i32 299, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/mc13892-regulator.c", i32 266, i32 2}
!73 = !{ptr @mc13892_regulators, !74, !"mc13892_regulators", i1 false, i1 false}
!74 = !{!"../drivers/regulator/mc13892-regulator.c", i32 265, i32 33}
!75 = !{ptr @mc13892_sw_regulator_ops, !76, !"mc13892_sw_regulator_ops", i1 false, i1 false}
!76 = !{!"../drivers/regulator/mc13892-regulator.c", i32 482, i32 35}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/mc13892-regulator.c", i32 404, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug290, !78, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/mc13892-regulator.c", i32 431, i32 2}
!84 = !{ptr @mc13892_sw_regulator_get_voltage_sel.__UNIQUE_ID_ddebug291, !83, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!85 = !{ptr @mc13892_sw1, !86, !"mc13892_sw1", i1 false, i1 false}
!86 = !{!"../drivers/regulator/mc13892-regulator.c", i32 154, i32 27}
!87 = !{ptr @mc13892_sw, !88, !"mc13892_sw", i1 false, i1 false}
!88 = !{!"../drivers/regulator/mc13892-regulator.c", i32 171, i32 27}
!89 = !{ptr @mc13892_swbst, !90, !"mc13892_swbst", i1 false, i1 false}
!90 = !{!"../drivers/regulator/mc13892-regulator.c", i32 183, i32 27}
!91 = !{ptr @mc13892_viohi, !92, !"mc13892_viohi", i1 false, i1 false}
!92 = !{!"../drivers/regulator/mc13892-regulator.c", i32 187, i32 27}
!93 = !{ptr @mc13892_vpll, !94, !"mc13892_vpll", i1 false, i1 false}
!94 = !{!"../drivers/regulator/mc13892-regulator.c", i32 191, i32 27}
!95 = !{ptr @mc13892_vdig, !96, !"mc13892_vdig", i1 false, i1 false}
!96 = !{!"../drivers/regulator/mc13892-regulator.c", i32 195, i32 27}
!97 = !{ptr @mc13892_vsd, !98, !"mc13892_vsd", i1 false, i1 false}
!98 = !{!"../drivers/regulator/mc13892-regulator.c", i32 199, i32 27}
!99 = !{ptr @mc13892_vusb2, !100, !"mc13892_vusb2", i1 false, i1 false}
!100 = !{!"../drivers/regulator/mc13892-regulator.c", i32 204, i32 27}
!101 = !{ptr @mc13892_vvideo, !102, !"mc13892_vvideo", i1 false, i1 false}
!102 = !{!"../drivers/regulator/mc13892-regulator.c", i32 208, i32 27}
!103 = !{ptr @mc13892_vaudio, !104, !"mc13892_vaudio", i1 false, i1 false}
!104 = !{!"../drivers/regulator/mc13892-regulator.c", i32 212, i32 27}
!105 = !{ptr @mc13892_vcam, !106, !"mc13892_vcam", i1 false, i1 false}
!106 = !{!"../drivers/regulator/mc13892-regulator.c", i32 216, i32 27}
!107 = !{ptr @mc13892_vgen1, !108, !"mc13892_vgen1", i1 false, i1 false}
!108 = !{!"../drivers/regulator/mc13892-regulator.c", i32 220, i32 27}
!109 = !{ptr @mc13892_vgen2, !110, !"mc13892_vgen2", i1 false, i1 false}
!110 = !{!"../drivers/regulator/mc13892-regulator.c", i32 224, i32 27}
!111 = !{ptr @mc13892_vgen3, !112, !"mc13892_vgen3", i1 false, i1 false}
!112 = !{!"../drivers/regulator/mc13892-regulator.c", i32 229, i32 27}
!113 = !{ptr @mc13892_vusb, !114, !"mc13892_vusb", i1 false, i1 false}
!114 = !{!"../drivers/regulator/mc13892-regulator.c", i32 233, i32 27}
!115 = !{ptr @mc13892_gpo_regulator_ops, !116, !"mc13892_gpo_regulator_ops", i1 false, i1 false}
!116 = !{!"../drivers/regulator/mc13892-regulator.c", i32 390, i32 35}
!117 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/mc13892-regulator.c", i32 340, i32 2}
!119 = !{ptr @mc13892_gpo_regulator_enable.__UNIQUE_ID_ddebug288, !118, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/mc13892-regulator.c", i32 358, i32 2}
!122 = !{ptr @mc13892_gpo_regulator_disable.__UNIQUE_ID_ddebug289, !121, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!123 = !{ptr @mc13892_gpo, !124, !"mc13892_gpo", i1 false, i1 false}
!124 = !{!"../drivers/regulator/mc13892-regulator.c", i32 237, i32 27}
!125 = !{ptr @mc13892_pwgtdrv, !126, !"mc13892_pwgtdrv", i1 false, i1 false}
!126 = !{!"../drivers/regulator/mc13892-regulator.c", i32 241, i32 27}
!127 = !{ptr @mc13892_vcoincell, !128, !"mc13892_vcoincell", i1 false, i1 false}
!128 = !{!"../drivers/regulator/mc13892-regulator.c", i32 149, i32 27}
!129 = !{ptr @mc13892_vcam_ops, !130, !"mc13892_vcam_ops", i1 false, i1 false}
!130 = !{!"../drivers/regulator/mc13892-regulator.c", i32 525, i32 29}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i64 2148744494, i64 2148744499, i64 2148744512, i64 2148744556, i64 2148744590, i64 2148744611}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{i64 2154971378, i64 2154971880, i64 2154971415, i64 2154971471, i64 2154971505, i64 2154971529, i64 2154971570, i64 2154971591, i64 2154971619, i64 2154971653}
