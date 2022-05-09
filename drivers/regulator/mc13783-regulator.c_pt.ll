; ModuleID = '/llk/IR_all_yes/drivers/regulator/mc13783-regulator.c_pt.bc'
source_filename = "../drivers/regulator/mc13783-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mc13xxx_regulator = type { %struct.regulator_desc, i32, i32, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_mc13783_regulator__290_466_mc13783_regulator_init4 = internal global ptr @mc13783_regulator_init, section ".initcall4.init", align 4
@mc13783_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mc13783_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mc13783_regulator_exit = internal global ptr @mc13783_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"mc13783_regulator.file=drivers/regulator/mc13783-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"mc13783_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"mc13783_regulator.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [74 x i8] c"mc13783_regulator.description=Regulator Driver for Freescale MC13783 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [51 x i8] c"mc13783_regulator.alias=platform:mc13783-regulator\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13783-regulator\00", [46 x i8] zeroinitializer }, align 32
@mc13783_regulators = internal global { [33 x %struct.mc13xxx_regulator], [2200 x i8] } { [33 x %struct.mc13xxx_regulator] [%struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_sw1x_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 24, i32 0, i32 24, i32 0, i32 63 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_sw1x_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25, i32 0, i32 25, i32 0, i32 63 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_sw2x_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 26, i32 0, i32 26, i32 0, i32 63 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_sw2x_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 27, i32 0, i32 27, i32 0, i32 63 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_sw3_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 29, i32 1048576, i32 29, i32 18, i32 786432 }, %struct.mc13xxx_regulator zeroinitializer, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 1, i32 0, ptr @mc13xxx_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vaudio_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 1, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, ptr @mc13xxx_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_viohi_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 8, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_violo_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 64, i32 30, i32 2, i32 12 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vdig_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 512, i32 30, i32 4, i32 48 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vgen_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 4096, i32 30, i32 6, i32 448 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vrfdig_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 32768, i32 30, i32 9, i32 1536 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vrfref_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 262144, i32 30, i32 11, i32 6144 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 2, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vrfcp_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 2097152, i32 30, i32 13, i32 8192 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 3, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vsim_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 1, i32 30, i32 14, i32 16384 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vesim_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 8, i32 30, i32 15, i32 32768 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 8, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vcam_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 64, i32 30, i32 16, i32 458752 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 1, i32 0, ptr @mc13xxx_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vrfbg_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 512, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vvib_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 2048, i32 31, i32 0, i32 3 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vrf_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 4096, i32 31, i32 2, i32 12 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 4, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vrf_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 32768, i32 31, i32 4, i32 48 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 8, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vmmc_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 262144, i32 31, i32 6, i32 448 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 8, i32 0, ptr @mc13xxx_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_vmmc_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 2097152, i32 31, i32 9, i32 3584 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 1, i32 0, ptr @mc13783_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_gpo_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 64, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 1, i32 0, ptr @mc13783_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_gpo_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 256, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 1, i32 0, ptr @mc13783_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_gpo_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 1024, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 1, i32 0, ptr @mc13783_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_gpo_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 4096, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator zeroinitializer, %struct.mc13xxx_regulator zeroinitializer, %struct.mc13xxx_regulator zeroinitializer, %struct.mc13xxx_regulator zeroinitializer, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 1, i32 0, ptr @mc13783_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_pwgtdrv_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 32768, i32 0, i32 0, i32 0 }, %struct.mc13xxx_regulator { %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 1, i32 0, ptr @mc13783_gpo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @mc13783_pwgtdrv_val, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 65536, i32 0, i32 0, i32 0 }], [2200 x i8] zeroinitializer }, align 32
@mc13783_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mc13783_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/mc13783-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13783_regulator_probe._entry_ptr = internal global ptr @mc13783_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw1a\00", [27 x i8] zeroinitializer }, align 32
@mc13xxx_regulator_ops = external dso_local constant %struct.regulator_ops, align 4
@mc13783_sw1x_val = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1525000, i32 1550000, i32 1575000, i32 1600000, i32 1625000, i32 1650000, i32 1675000, i32 1700000, i32 1700000, i32 1700000, i32 1700000, i32 1800000, i32 1800000, i32 1800000, i32 1800000, i32 1850000, i32 1850000, i32 1850000, i32 1850000, i32 2000000, i32 2000000, i32 2000000, i32 2000000, i32 2100000, i32 2100000, i32 2100000, i32 2100000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000], [64 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw1b\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw2a\00", [27 x i8] zeroinitializer }, align 32
@mc13783_sw2x_val = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1525000, i32 1550000, i32 1575000, i32 1600000, i32 1625000, i32 1650000, i32 1675000, i32 1700000, i32 1700000, i32 1700000, i32 1700000, i32 1800000, i32 1800000, i32 1800000, i32 1800000, i32 1900000, i32 1900000, i32 1900000, i32 1900000, i32 2000000, i32 2000000, i32 2000000, i32 2000000, i32 2100000, i32 2100000, i32 2100000, i32 2100000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000, i32 2200000], [64 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw2b\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw3\00", [28 x i8] zeroinitializer }, align 32
@mc13783_sw3_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5000000, i32 5000000, i32 5000000, i32 5500000], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vaudio\00", [25 x i8] zeroinitializer }, align 32
@mc13xxx_fixed_regulator_ops = external dso_local constant %struct.regulator_ops, align 4
@mc13783_vaudio_val = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2775000], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"viohi\00", [26 x i8] zeroinitializer }, align 32
@mc13783_viohi_val = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2775000], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"violo\00", [26 x i8] zeroinitializer }, align 32
@mc13783_violo_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1300000, i32 1500000, i32 1800000], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdig\00", [27 x i8] zeroinitializer }, align 32
@mc13783_vdig_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1300000, i32 1500000, i32 1800000], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vgen\00", [27 x i8] zeroinitializer }, align 32
@mc13783_vgen_val = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1300000, i32 1500000, i32 1800000, i32 1100000, i32 2000000, i32 2775000, i32 2400000], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vrfdig\00", [25 x i8] zeroinitializer }, align 32
@mc13783_vrfdig_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 1875000], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vrfref\00", [25 x i8] zeroinitializer }, align 32
@mc13783_vrfref_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2475000, i32 2600000, i32 2700000, i32 2775000], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrfcp\00", [26 x i8] zeroinitializer }, align 32
@mc13783_vrfcp_val = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2700000, i32 2775000], [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsim\00", [27 x i8] zeroinitializer }, align 32
@mc13783_vsim_val = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1800000, i32 2900000, i32 3000000], [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vesim\00", [26 x i8] zeroinitializer }, align 32
@mc13783_vesim_val = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 2900000], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcam\00", [27 x i8] zeroinitializer }, align 32
@mc13783_vcam_val = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1500000, i32 1800000, i32 2500000, i32 2550000, i32 2600000, i32 2750000, i32 2800000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrfbg\00", [26 x i8] zeroinitializer }, align 32
@mc13783_vrfbg_val = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1250000], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vvib\00", [27 x i8] zeroinitializer }, align 32
@mc13783_vvib_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1300000, i32 1800000, i32 2000000, i32 3000000], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vrf1\00", [27 x i8] zeroinitializer }, align 32
@mc13783_vrf_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1500000, i32 1875000, i32 2700000, i32 2775000], [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vrf2\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmmc1\00", [26 x i8] zeroinitializer }, align 32
@mc13783_vmmc_val = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1600000, i32 1800000, i32 2000000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmmc2\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpo1\00", [27 x i8] zeroinitializer }, align 32
@mc13783_gpo_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr @mc13xxx_fixed_regulator_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mc13783_gpo_regulator_enable, ptr @mc13783_gpo_regulator_disable, ptr @mc13783_gpo_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mc13783_gpo_val = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3100000], [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwgt1spi\00", [23 x i8] zeroinitializer }, align 32
@mc13783_pwgtdrv_val = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5500000], [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwgt2spi\00", [23 x i8] zeroinitializer }, align 32
@mc13783_gpo_regulator_enable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13783_regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mc13783_gpo_regulator_enable\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s id: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@mc13783_gpo_regulator_disable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.3, ptr @.str.33, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mc13783_gpo_regulator_disable\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"mc13783_regulator_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 455, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 457, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"mc13783_regulators\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 248, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 446, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 249, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"mc13783_sw1x_val\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 116, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 250, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 251, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"mc13783_sw2x_val\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 135, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 252, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 253, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"mc13783_sw3_val\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 154, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 255, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"mc13783_vaudio_val\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 158, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 256, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"mc13783_viohi_val\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 162, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 257, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"mc13783_violo_val\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 166, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 259, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"mc13783_vdig_val\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 170, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 261, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"mc13783_vgen_val\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 174, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 263, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"mc13783_vrfdig_val\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 179, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 265, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"mc13783_vrfref_val\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 183, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 267, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"mc13783_vrfcp_val\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 187, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 269, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"mc13783_vsim_val\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 191, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 271, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"mc13783_vesim_val\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 195, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 273, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"mc13783_vcam_val\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 199, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 275, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"mc13783_vrfbg_val\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 204, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 276, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"mc13783_vvib_val\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 208, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 278, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"mc13783_vrf_val\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 217, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 280, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 282, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"mc13783_vmmc_val\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 212, i32 27 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 284, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 286, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"mc13783_gpo_regulator_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 383, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant [16 x i8] c"mc13783_gpo_val\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 221, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 290, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"mc13783_pwgtdrv_val\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 225, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 291, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 332, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [41 x i8] c"../drivers/regulator/mc13783-regulator.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 350, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mc13783_regulator_exit, ptr @__initcall__kmod_mc13783_regulator__290_466_mc13783_regulator_init4, ptr @mc13783_regulator_exit, ptr @mc13783_regulator_probe._entry, ptr @mc13783_regulator_probe._entry_ptr, ptr @mc13783_regulator_driver, ptr @.str, ptr @mc13783_regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mc13783_sw1x_val, ptr @.str.7, ptr @.str.8, ptr @mc13783_sw2x_val, ptr @.str.9, ptr @.str.10, ptr @mc13783_sw3_val, ptr @.str.11, ptr @mc13783_vaudio_val, ptr @.str.12, ptr @mc13783_viohi_val, ptr @.str.13, ptr @mc13783_violo_val, ptr @.str.14, ptr @mc13783_vdig_val, ptr @.str.15, ptr @mc13783_vgen_val, ptr @.str.16, ptr @mc13783_vrfdig_val, ptr @.str.17, ptr @mc13783_vrfref_val, ptr @.str.18, ptr @mc13783_vrfcp_val, ptr @.str.19, ptr @mc13783_vsim_val, ptr @.str.20, ptr @mc13783_vesim_val, ptr @.str.21, ptr @mc13783_vcam_val, ptr @.str.22, ptr @mc13783_vrfbg_val, ptr @.str.23, ptr @mc13783_vvib_val, ptr @.str.24, ptr @mc13783_vrf_val, ptr @.str.25, ptr @.str.26, ptr @mc13783_vmmc_val, ptr @.str.27, ptr @.str.28, ptr @mc13783_gpo_regulator_ops, ptr @mc13783_gpo_val, ptr @.str.29, ptr @mc13783_pwgtdrv_val, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_regulators to i32), i32 8712, i32 10912, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_sw1x_val to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_sw2x_val to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_sw3_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vaudio_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_viohi_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_violo_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vdig_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vgen_val to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vrfdig_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vrfref_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vrfcp_val to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vsim_val to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vesim_val to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vcam_val to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vrfbg_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vvib_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vrf_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_vmmc_val to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_gpo_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_gpo_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_pwgtdrv_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mc13783_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc13783_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mc13783_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
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
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_regulators.0 = phi i32 [ %8, %if.then ], [ %call3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_regulators.0)
  %cmp5 = icmp slt i32 %num_regulators.0, 1
  br i1 %cmp5, label %if.end.cleanup54_crit_edge, label %if.end7

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

if.end7:                                          ; preds = %if.end
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_regulators.0, i32 4) #6
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 16) #6
  %retval.0.i = select i1 %10, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end7.cleanup54_crit_edge, label %if.end13

if.end7.cleanup54_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

if.end13:                                         ; preds = %if.end7
  %num_regulators14 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %num_regulators14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %num_regulators.0, ptr %num_regulators14, align 4
  %mc13xxx_regulators = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %mc13xxx_regulators to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mc13783_regulators, ptr %mc13xxx_regulators, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call15 = tail call ptr @mc13xxx_parse_regulators_dt(ptr noundef %pdev, ptr noundef nonnull @mc13783_regulators, i32 noundef 33) #6
  %16 = ptrtoint ptr %num_regulators14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_regulators14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17100 = icmp sgt i32 %17, 0
  br i1 %cmp17100, label %for.body.lr.ph, label %if.end13.cleanup54_crit_edge

if.end13.cleanup54_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

for.body.lr.ph:                                   ; preds = %if.end13
  %tobool18.not = icmp eq ptr %call15, null
  %regulators = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, ptr %5, i32 0, i32 1
  %init_data35 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %node24 = getelementptr %struct.mc13xxx_regulator_init_data, ptr %call15, i32 %i.0101, i32 2
  %18 = ptrtoint ptr %node24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node24, align 4
  br label %if.end30

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regulators, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then19
  %call15.pn = phi ptr [ %call15, %if.then19 ], [ %21, %if.else ]
  %node.0 = phi ptr [ %19, %if.then19 ], [ null, %if.else ]
  %id.0.in = getelementptr %struct.mc13xxx_regulator_init_data, ptr %call15.pn, i32 %i.0101
  %init_data.0.in = getelementptr %struct.mc13xxx_regulator_init_data, ptr %call15.pn, i32 %i.0101, i32 1
  %22 = ptrtoint ptr %id.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %id.0 = load i32, ptr %id.0.in, align 4
  %23 = ptrtoint ptr %init_data.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %init_data.0 = load ptr, ptr %init_data.0.in, align 4
  %arrayidx31 = getelementptr [33 x %struct.mc13xxx_regulator], ptr @mc13783_regulators, i32 0, i32 %id.0
  %24 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %config, align 4
  %25 = ptrtoint ptr %init_data35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %init_data.0, ptr %init_data35, align 4
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data, align 4
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node.0, ptr %of_node, align 4
  %call37 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx31, ptr noundef nonnull %config) #6
  %arrayidx39 = getelementptr %struct.mc13xxx_regulator_priv, ptr %call.i, i32 0, i32 4, i32 %i.0101
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call37, ptr %arrayidx39, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx45 = getelementptr [33 x %struct.mc13xxx_regulator], ptr @mc13783_regulators, i32 0, i32 %i.0101
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %30) #9
  %31 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx39, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup54

for.inc:                                          ; preds = %if.end30
  %inc = add nuw nsw i32 %i.0101, 1
  %34 = ptrtoint ptr %num_regulators14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_regulators14, align 4
  %cmp17 = icmp slt i32 %inc, %35
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.inc.cleanup54_crit_edge

for.inc.cleanup54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup54:                                        ; preds = %for.inc.cleanup54_crit_edge, %cleanup.thread, %if.end13.cleanup54_crit_edge, %if.end7.cleanup54_crit_edge, %if.end.cleanup54_crit_edge
  %retval.2 = phi i32 [ -22, %if.end.cleanup54_crit_edge ], [ -12, %if.end7.cleanup54_crit_edge ], [ %33, %cleanup.thread ], [ 0, %if.end13.cleanup54_crit_edge ], [ 0, %for.inc.cleanup54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_get_num_regulators_dt(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @mc13xxx_fixed_regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_gpo_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %enable_bit = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 2
  %2 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_bit, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_gpo_regulator_enable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13783_gpo_regulator_enable, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_gpo_regulator_enable.__UNIQUE_ID_ddebug288, ptr noundef %call7, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %call2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call2.off = add i32 %call2, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.off)
  %switch = icmp ult i32 %call2.off, 2
  %spec.select = select i1 %switch, i32 0, i32 %3
  %4 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_bit, align 4
  %call13 = tail call fastcc i32 @mc13783_powermisc_rmw(ptr noundef %call, i32 noundef %5, i32 noundef %spec.select)
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_gpo_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13783_gpo_regulator_disable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13783_gpo_regulator_disable, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13783_gpo_regulator_disable.__UNIQUE_ID_ddebug289, ptr noundef %call7, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call2.off = add i32 %call2, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.off)
  %switch = icmp ult i32 %call2.off, 2
  br i1 %switch, label %if.then9, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable_bit = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 2
  %2 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_bit, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end.if.end10_crit_edge
  %dis_val.0 = phi i32 [ %3, %if.then9 ], [ 0, %do.end.if.end10_crit_edge ]
  %enable_bit12 = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 2
  %4 = ptrtoint ptr %enable_bit12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_bit12, align 4
  %call13 = tail call fastcc i32 @mc13783_powermisc_rmw(ptr noundef %call, i32 noundef %5, i32 noundef %dis_val.0)
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_gpo_regulator_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !137
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  tail call void @mc13xxx_lock(ptr noundef %4) #6
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %reg = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %call4 = call i32 @mc13xxx_reg_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %val) #6
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  call void @mc13xxx_unlock(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, -98305
  %powermisc_pwgt_state = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %powermisc_pwgt_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %powermisc_pwgt_state, align 4
  %15 = or i32 %14, %and
  %or = xor i32 %15, 98304
  %enable_bit = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 2
  %16 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_bit, align 4
  %and7 = and i32 %or, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp = icmp ne i32 %and7, 0
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc13783_powermisc_rmw(ptr nocapture noundef %priv, i32 noundef %mask, i32 noundef %val) unnamed_addr #2 align 64 {
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
  store i32 -1, ptr %valread, align 4, !annotation !137
  %neg = xor i32 %mask, -1
  %and = and i32 %neg, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !138

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/mc13783-regulator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 301, 0\0A.popsection", ""() #6, !srcloc !139
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
declare dso_local void @mc13xxx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_mc13783_regulator__290_466_mc13783_regulator_init4, !1, !"__initcall__kmod_mc13783_regulator__290_466_mc13783_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mc13783-regulator.c", i32 466, i32 1}
!2 = !{ptr @__exitcall_mc13783_regulator_exit, !3, !"__exitcall_mc13783_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/mc13783-regulator.c", i32 472, i32 1}
!4 = !{ptr @__UNIQUE_ID_file291, !5, !"__UNIQUE_ID_file291", i1 false, i1 false}
!5 = !{!"../drivers/regulator/mc13783-regulator.c", i32 474, i32 1}
!6 = !{ptr @__UNIQUE_ID_license292, !5, !"__UNIQUE_ID_license292", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/regulator/mc13783-regulator.c", i32 475, i32 1}
!9 = !{ptr @__UNIQUE_ID_description294, !10, !"__UNIQUE_ID_description294", i1 false, i1 false}
!10 = !{!"../drivers/regulator/mc13783-regulator.c", i32 476, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias295, !12, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!12 = !{!"../drivers/regulator/mc13783-regulator.c", i32 477, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/mc13783-regulator.c", i32 457, i32 11}
!15 = !{ptr @mc13783_regulator_driver, !16, !"mc13783_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/mc13783-regulator.c", i32 455, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/mc13783-regulator.c", i32 446, i32 4}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mc13783_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mc13783_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/mc13783-regulator.c", i32 249, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/mc13783-regulator.c", i32 250, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/mc13783-regulator.c", i32 251, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/mc13783-regulator.c", i32 252, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/mc13783-regulator.c", i32 253, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/mc13783-regulator.c", i32 255, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/mc13783-regulator.c", i32 256, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/mc13783-regulator.c", i32 257, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/mc13783-regulator.c", i32 259, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/mc13783-regulator.c", i32 261, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/mc13783-regulator.c", i32 263, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/mc13783-regulator.c", i32 265, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/mc13783-regulator.c", i32 267, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/mc13783-regulator.c", i32 269, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/mc13783-regulator.c", i32 271, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/mc13783-regulator.c", i32 273, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/mc13783-regulator.c", i32 275, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/mc13783-regulator.c", i32 276, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/mc13783-regulator.c", i32 278, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/mc13783-regulator.c", i32 280, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/mc13783-regulator.c", i32 282, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/mc13783-regulator.c", i32 284, i32 2}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/mc13783-regulator.c", i32 286, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/mc13783-regulator.c", i32 290, i32 2}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/mc13783-regulator.c", i32 291, i32 2}
!75 = !{ptr @mc13783_regulators, !76, !"mc13783_regulators", i1 false, i1 false}
!76 = !{!"../drivers/regulator/mc13783-regulator.c", i32 248, i32 33}
!77 = !{ptr @mc13783_sw1x_val, !78, !"mc13783_sw1x_val", i1 false, i1 false}
!78 = !{!"../drivers/regulator/mc13783-regulator.c", i32 116, i32 18}
!79 = !{ptr @mc13783_sw2x_val, !80, !"mc13783_sw2x_val", i1 false, i1 false}
!80 = !{!"../drivers/regulator/mc13783-regulator.c", i32 135, i32 18}
!81 = !{ptr @mc13783_sw3_val, !82, !"mc13783_sw3_val", i1 false, i1 false}
!82 = !{!"../drivers/regulator/mc13783-regulator.c", i32 154, i32 27}
!83 = !{ptr @mc13783_vaudio_val, !84, !"mc13783_vaudio_val", i1 false, i1 false}
!84 = !{!"../drivers/regulator/mc13783-regulator.c", i32 158, i32 27}
!85 = !{ptr @mc13783_viohi_val, !86, !"mc13783_viohi_val", i1 false, i1 false}
!86 = !{!"../drivers/regulator/mc13783-regulator.c", i32 162, i32 27}
!87 = !{ptr @mc13783_violo_val, !88, !"mc13783_violo_val", i1 false, i1 false}
!88 = !{!"../drivers/regulator/mc13783-regulator.c", i32 166, i32 27}
!89 = !{ptr @mc13783_vdig_val, !90, !"mc13783_vdig_val", i1 false, i1 false}
!90 = !{!"../drivers/regulator/mc13783-regulator.c", i32 170, i32 27}
!91 = !{ptr @mc13783_vgen_val, !92, !"mc13783_vgen_val", i1 false, i1 false}
!92 = !{!"../drivers/regulator/mc13783-regulator.c", i32 174, i32 27}
!93 = !{ptr @mc13783_vrfdig_val, !94, !"mc13783_vrfdig_val", i1 false, i1 false}
!94 = !{!"../drivers/regulator/mc13783-regulator.c", i32 179, i32 27}
!95 = !{ptr @mc13783_vrfref_val, !96, !"mc13783_vrfref_val", i1 false, i1 false}
!96 = !{!"../drivers/regulator/mc13783-regulator.c", i32 183, i32 27}
!97 = !{ptr @mc13783_vrfcp_val, !98, !"mc13783_vrfcp_val", i1 false, i1 false}
!98 = !{!"../drivers/regulator/mc13783-regulator.c", i32 187, i32 27}
!99 = !{ptr @mc13783_vsim_val, !100, !"mc13783_vsim_val", i1 false, i1 false}
!100 = !{!"../drivers/regulator/mc13783-regulator.c", i32 191, i32 27}
!101 = !{ptr @mc13783_vesim_val, !102, !"mc13783_vesim_val", i1 false, i1 false}
!102 = !{!"../drivers/regulator/mc13783-regulator.c", i32 195, i32 27}
!103 = !{ptr @mc13783_vcam_val, !104, !"mc13783_vcam_val", i1 false, i1 false}
!104 = !{!"../drivers/regulator/mc13783-regulator.c", i32 199, i32 27}
!105 = !{ptr @mc13783_vrfbg_val, !106, !"mc13783_vrfbg_val", i1 false, i1 false}
!106 = !{!"../drivers/regulator/mc13783-regulator.c", i32 204, i32 27}
!107 = !{ptr @mc13783_vvib_val, !108, !"mc13783_vvib_val", i1 false, i1 false}
!108 = !{!"../drivers/regulator/mc13783-regulator.c", i32 208, i32 27}
!109 = !{ptr @mc13783_vrf_val, !110, !"mc13783_vrf_val", i1 false, i1 false}
!110 = !{!"../drivers/regulator/mc13783-regulator.c", i32 217, i32 27}
!111 = !{ptr @mc13783_vmmc_val, !112, !"mc13783_vmmc_val", i1 false, i1 false}
!112 = !{!"../drivers/regulator/mc13783-regulator.c", i32 212, i32 27}
!113 = !{ptr @mc13783_gpo_regulator_ops, !114, !"mc13783_gpo_regulator_ops", i1 false, i1 false}
!114 = !{!"../drivers/regulator/mc13783-regulator.c", i32 383, i32 35}
!115 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/mc13783-regulator.c", i32 332, i32 2}
!117 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @mc13783_gpo_regulator_enable.__UNIQUE_ID_ddebug288, !116, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!120 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/mc13783-regulator.c", i32 350, i32 2}
!122 = !{ptr @mc13783_gpo_regulator_disable.__UNIQUE_ID_ddebug289, !121, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!123 = !{ptr @mc13783_gpo_val, !124, !"mc13783_gpo_val", i1 false, i1 false}
!124 = !{!"../drivers/regulator/mc13783-regulator.c", i32 221, i32 27}
!125 = !{ptr @mc13783_pwgtdrv_val, !126, !"mc13783_pwgtdrv_val", i1 false, i1 false}
!126 = !{!"../drivers/regulator/mc13783-regulator.c", i32 225, i32 27}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i64 2148741906, i64 2148741911, i64 2148741924, i64 2148741968, i64 2148742002, i64 2148742023}
!137 = !{!"auto-init"}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2154984134, i64 2154984636, i64 2154984171, i64 2154984227, i64 2154984261, i64 2154984285, i64 2154984326, i64 2154984347, i64 2154984375, i64 2154984409}
