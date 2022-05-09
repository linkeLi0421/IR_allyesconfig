; ModuleID = '/llk/IR_all_yes/drivers/mfd/rk808.c_pt.bc'
source_filename = "../drivers/mfd/rk808.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.rk808_reg_data = type { i32, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.rk808 = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_rk808__288_813_rk808_i2c_driver_init6 = internal global ptr @rk808_i2c_driver_init, section ".initcall6.init", align 4
@rk808_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rk808_probe, ptr @rk808_remove, ptr null, ptr @rk8xx_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk808_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk8xx_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rk808_i2c_driver_exit = internal global ptr @rk808_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [29 x i8] c"rk808.file=drivers/mfd/rk808\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [18 x i8] c"rk808.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [46 x i8] c"rk808.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [51 x i8] c"rk808.author=Zhang Qing <zhangqing@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [47 x i8] c"rk808.author=Wadim Egorov <w.egorov@phytec.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [42 x i8] c"rk808.description=RK808/RK818 PMIC driver\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rk808\00", [26 x i8] zeroinitializer }, align 32
@rk808_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk805\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk808\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk809\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk817\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk818\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@rk8xx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rk8xx_suspend, ptr @rk8xx_resume, ptr @rk8xx_suspend, ptr @rk8xx_resume, ptr @rk8xx_suspend, ptr @rk8xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rockchip,rk817\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rockchip,rk809\00", [17 x i8] zeroinitializer }, align 32
@rk808_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 630, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read the chip id at 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rk808_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/mfd/rk808.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr = internal global ptr @rk808_probe._entry, section ".printk_index", align 4
@rk808_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 637, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.9 = internal global ptr @rk808_probe._entry.8, section ".printk_index", align 4
@rk808_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 642, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chip id: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.13 = internal global ptr @rk808_probe._entry.10, section ".printk_index", align 4
@rk805_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk808_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 175, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rk805_pre_init_reg = internal constant { [6 x %struct.rk808_reg_data], [56 x i8] } { [6 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 46, i32 192, i32 3 }, %struct.rk808_reg_data { i32 50, i32 192, i32 3 }, %struct.rk808_reg_data { i32 54, i32 24, i32 3 }, %struct.rk808_reg_data { i32 55, i32 24, i32 3 }, %struct.rk808_reg_data { i32 55, i32 7, i32 7 }, %struct.rk808_reg_data { i32 34, i32 12, i32 12 }], [56 x i8] zeroinitializer }, align 32
@rk805s = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.36, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @rk805_key_resources, i8 0, i8 0, ptr null, i32 0 }], [104 x i8] zeroinitializer }, align 32
@rk808_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk808_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 80, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rk808_pre_init_reg = internal constant { [7 x %struct.rk808_reg_data], [44 x i8] } { [7 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 54, i32 7, i32 2 }, %struct.rk808_reg_data { i32 55, i32 7, i32 3 }, %struct.rk808_reg_data { i32 58, i32 7, i32 1 }, %struct.rk808_reg_data { i32 46, i32 24, i32 3 }, %struct.rk808_reg_data { i32 50, i32 24, i32 3 }, %struct.rk808_reg_data { i32 40, i32 15, i32 0 }, %struct.rk808_reg_data { i32 33, i32 255, i32 23 }], [44 x i8] zeroinitializer }, align 32
@rk808s = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.36, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@rk818_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk808_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 161, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rk818_pre_init_reg = internal constant { [8 x %struct.rk808_reg_data], [32 x i8] } { [8 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 50, i32 24, i32 4 }, %struct.rk808_reg_data { i32 55, i32 7, i32 4 }, %struct.rk808_reg_data { i32 58, i32 7, i32 1 }, %struct.rk808_reg_data { i32 161, i32 15, i32 7 }, %struct.rk808_reg_data { i32 161, i32 112, i32 112 }, %struct.rk808_reg_data { i32 82, i32 2, i32 2 }, %struct.rk808_reg_data { i32 82, i32 1, i32 1 }, %struct.rk808_reg_data { i32 33, i32 255, i32 23 }], [32 x i8] zeroinitializer }, align 32
@rk818s = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.36, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@rk817_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rk817_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 254, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rk817_pre_init_reg = internal constant { [77 x %struct.rk808_reg_data], [228 x i8] } { [77 x %struct.rk808_reg_data] [%struct.rk808_reg_data { i32 13, i32 1, i32 1 }, %struct.rk808_reg_data { i32 18, i32 255, i32 3 }, %struct.rk808_reg_data { i32 19, i32 255, i32 0 }, %struct.rk808_reg_data { i32 20, i32 255, i32 0 }, %struct.rk808_reg_data { i32 21, i32 255, i32 0 }, %struct.rk808_reg_data { i32 22, i32 255, i32 0 }, %struct.rk808_reg_data { i32 23, i32 255, i32 6 }, %struct.rk808_reg_data { i32 24, i32 255, i32 200 }, %struct.rk808_reg_data { i32 25, i32 255, i32 0 }, %struct.rk808_reg_data { i32 26, i32 255, i32 0 }, %struct.rk808_reg_data { i32 27, i32 255, i32 0 }, %struct.rk808_reg_data { i32 30, i32 255, i32 0 }, %struct.rk808_reg_data { i32 31, i32 255, i32 0 }, %struct.rk808_reg_data { i32 32, i32 255, i32 0 }, %struct.rk808_reg_data { i32 33, i32 255, i32 0 }, %struct.rk808_reg_data { i32 34, i32 255, i32 0 }, %struct.rk808_reg_data { i32 35, i32 255, i32 255 }, %struct.rk808_reg_data { i32 36, i32 255, i32 255 }, %struct.rk808_reg_data { i32 39, i32 255, i32 112 }, %struct.rk808_reg_data { i32 40, i32 255, i32 0 }, %struct.rk808_reg_data { i32 41, i32 255, i32 102 }, %struct.rk808_reg_data { i32 42, i32 255, i32 0 }, %struct.rk808_reg_data { i32 43, i32 255, i32 0 }, %struct.rk808_reg_data { i32 44, i32 255, i32 0 }, %struct.rk808_reg_data { i32 45, i32 255, i32 0 }, %struct.rk808_reg_data { i32 46, i32 255, i32 0 }, %struct.rk808_reg_data { i32 47, i32 255, i32 7 }, %struct.rk808_reg_data { i32 48, i32 255, i32 130 }, %struct.rk808_reg_data { i32 49, i32 255, i32 0 }, %struct.rk808_reg_data { i32 50, i32 255, i32 0 }, %struct.rk808_reg_data { i32 53, i32 255, i32 0 }, %struct.rk808_reg_data { i32 54, i32 255, i32 0 }, %struct.rk808_reg_data { i32 55, i32 255, i32 0 }, %struct.rk808_reg_data { i32 56, i32 255, i32 160 }, %struct.rk808_reg_data { i32 57, i32 255, i32 255 }, %struct.rk808_reg_data { i32 36, i32 255, i32 255 }, %struct.rk808_reg_data { i32 39, i32 255, i32 112 }, %struct.rk808_reg_data { i32 40, i32 255, i32 0 }, %struct.rk808_reg_data { i32 41, i32 255, i32 102 }, %struct.rk808_reg_data { i32 42, i32 255, i32 0 }, %struct.rk808_reg_data { i32 43, i32 255, i32 0 }, %struct.rk808_reg_data { i32 44, i32 255, i32 0 }, %struct.rk808_reg_data { i32 45, i32 255, i32 0 }, %struct.rk808_reg_data { i32 46, i32 255, i32 0 }, %struct.rk808_reg_data { i32 47, i32 255, i32 7 }, %struct.rk808_reg_data { i32 48, i32 255, i32 130 }, %struct.rk808_reg_data { i32 49, i32 255, i32 0 }, %struct.rk808_reg_data { i32 50, i32 255, i32 0 }, %struct.rk808_reg_data { i32 53, i32 255, i32 0 }, %struct.rk808_reg_data { i32 54, i32 255, i32 0 }, %struct.rk808_reg_data { i32 55, i32 255, i32 0 }, %struct.rk808_reg_data { i32 56, i32 255, i32 160 }, %struct.rk808_reg_data { i32 57, i32 255, i32 255 }, %struct.rk808_reg_data { i32 58, i32 255, i32 255 }, %struct.rk808_reg_data { i32 59, i32 255, i32 0 }, %struct.rk808_reg_data { i32 60, i32 255, i32 0 }, %struct.rk808_reg_data { i32 61, i32 255, i32 224 }, %struct.rk808_reg_data { i32 62, i32 255, i32 31 }, %struct.rk808_reg_data { i32 63, i32 255, i32 9 }, %struct.rk808_reg_data { i32 64, i32 255, i32 105 }, %struct.rk808_reg_data { i32 65, i32 255, i32 68 }, %struct.rk808_reg_data { i32 66, i32 255, i32 4 }, %struct.rk808_reg_data { i32 67, i32 255, i32 0 }, %struct.rk808_reg_data { i32 68, i32 255, i32 48 }, %struct.rk808_reg_data { i32 69, i32 255, i32 25 }, %struct.rk808_reg_data { i32 70, i32 255, i32 101 }, %struct.rk808_reg_data { i32 71, i32 255, i32 1 }, %struct.rk808_reg_data { i32 72, i32 255, i32 1 }, %struct.rk808_reg_data { i32 73, i32 255, i32 0 }, %struct.rk808_reg_data { i32 74, i32 255, i32 0 }, %struct.rk808_reg_data { i32 75, i32 255, i32 23 }, %struct.rk808_reg_data { i32 76, i32 255, i32 0 }, %struct.rk808_reg_data { i32 77, i32 255, i32 0 }, %struct.rk808_reg_data { i32 78, i32 255, i32 23 }, %struct.rk808_reg_data { i32 79, i32 255, i32 0 }, %struct.rk808_reg_data { i32 254, i32 2, i32 0 }, %struct.rk808_reg_data { i32 242, i32 112, i32 32 }], [228 x i8] zeroinitializer }, align 32
@rk817s = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.36, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @rk817_pwrkey_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rk817_rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.46, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [104 x i8] zeroinitializer }, align 32
@rk808_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 680, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported RK8XX ID %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.16 = internal global ptr @rk808_probe._entry.14, section ".printk_index", align 4
@rk808_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rk808:687:(rk808->regmap_cfg)->lock\00", [60 x i8] zeroinitializer }, align 32
@rk808_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 689, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regmap initialization failed\0A\00", [34 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.20 = internal global ptr @rk808_probe._entry.18, section ".printk_index", align 4
@rk808_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 694, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No interrupt support, no core IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.23 = internal global ptr @rk808_probe._entry.21, section ".printk_index", align 4
@rk808_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 702, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to add irq_chip %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.26 = internal global ptr @rk808_probe._entry.24, section ".printk_index", align 4
@rk808_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 714, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%x write err\0A\00", [16 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.29 = internal global ptr @rk808_probe._entry.27, section ".printk_index", align 4
@rk808_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 723, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add MFD devices %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rk808_probe._entry_ptr.32 = internal global ptr @rk808_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip,system-power-controller\00", [63 x i8] zeroinitializer }, align 32
@rk808_i2c_client = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rk805\00", [26 x i8] zeroinitializer }, align 32
@rk805_irqs = internal constant { [8 x %struct.regmap_irq], [64 x i8] } { [8 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@rk805_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.34, i32 0, i32 0, ptr null, i32 0, i32 76, i32 77, i32 0, i32 76, i32 0, i32 0, ptr null, i32 0, i8 64, i8 0, i32 1, ptr @rk805_irqs, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rk808-clkout\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk808-regulator\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk805-pinctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rk808-rtc\00", [22 x i8] zeroinitializer }, align 32
@rtc_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rk805-pwrkey\00", [19 x i8] zeroinitializer }, align 32
@rk805_key_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 7, i32 7, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@rk808_irqs = internal constant { [9 x %struct.regmap_irq], [92 x i8] } { [9 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }], [92 x i8] zeroinitializer }, align 32
@rk808_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 76, i32 77, i32 0, i32 76, i32 0, i32 0, ptr null, i32 2, i8 64, i8 0, i32 2, ptr @rk808_irqs, i32 9, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rk818\00", [26 x i8] zeroinitializer }, align 32
@rk818_irqs = internal constant { [16 x %struct.regmap_irq], [128 x i8] } { [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@rk818_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.42, i32 0, i32 0, ptr null, i32 0, i32 76, i32 77, i32 0, i32 76, i32 0, i32 0, ptr null, i32 2, i8 64, i8 0, i32 2, ptr @rk818_irqs, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rk817\00", [26 x i8] zeroinitializer }, align 32
@rk817_irqs = internal constant { [24 x %struct.regmap_irq], [192 x i8] } { [24 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@rk817_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.44, i32 0, i32 0, ptr null, i32 0, i32 248, i32 249, i32 0, i32 248, i32 0, i32 0, ptr null, i32 2, i8 64, i8 0, i32 3, ptr @rk817_irqs, i32 24, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rk817_pwrkey_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@rk817_rtc_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rk817-codec\00", [20 x i8] zeroinitializer }, align 32
@rk808_pm_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 559, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to shutdown device!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk808_pm_power_off\00", [45 x i8] zeroinitializer }, align 32
@rk808_pm_power_off._entry_ptr = internal global ptr @rk808_pm_power_off._entry, section ".printk_index", align 4
@rk8xx_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 586, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot switch to power down function\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk8xx_shutdown\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rk8xx_shutdown._entry_ptr = internal global ptr @rk8xx_shutdown._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 32848, i64 32912, i64 33136, i64 33152]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 32848, i64 32912, i64 33136]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 32848, i64 33136, i64 33152]
@__sancov_gen_cov_switch_values.54 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 17, i64 33, i64 34, i64 39, i64 41, i64 43, i64 44, i64 75, i64 76, i64 78]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 32848, i64 32912, i64 33136]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 32912, i64 33136]
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"rk808_i2c_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 802, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 804, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"rk808_of_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 589, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"rk8xx_pm_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 800, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 617, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 618, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 629, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 636, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 642, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"rk805_regmap_config\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 87, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"rk805_pre_init_reg\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 180, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"rk805s\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 129, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"rk808_regmap_config\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 95, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"rk808_pre_init_reg\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 193, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"rk808s\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 144, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"rk818_regmap_config\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 79, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"rk818_pre_init_reg\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 290, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"rk818s\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 170, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"rk817_regmap_config\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 103, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [19 x i8] c"rk817_pre_init_reg\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 204, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"rk817s\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 154, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 679, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 687, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 689, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 694, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 702, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 712, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 723, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 727, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"rk808_i2c_client\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 529, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 483, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant [11 x i8] c"rk805_irqs\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 308, i32 32 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"rk805_irq_chip\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 482, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 130, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 131, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 132, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 134, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [14 x i8] c"rtc_resources\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 111, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 138, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"rk805_key_resources\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 119, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant [11 x i8] c"rk808_irqs\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 343, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"rk808_irq_chip\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 493, i32 37 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 518, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant [11 x i8] c"rk818_irqs\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 385, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"rk818_irq_chip\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 517, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 506, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant [11 x i8] c"rk817_irqs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 455, i32 32 }
@___asan_gen_.240 = private unnamed_addr constant [15 x i8] c"rk817_irq_chip\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 505, i32 31 }
@___asan_gen_.243 = private unnamed_addr constant [23 x i8] c"rk817_pwrkey_resources\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 124, i32 30 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"rk817_rtc_resources\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 115, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 167, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 559, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [23 x i8] c"../drivers/mfd/rk808.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 585, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_rk808_i2c_driver_exit, ptr @__initcall__kmod_rk808__288_813_rk808_i2c_driver_init6, ptr @rk808_i2c_driver_exit, ptr @rk808_pm_power_off._entry, ptr @rk808_pm_power_off._entry_ptr, ptr @rk808_probe._entry, ptr @rk808_probe._entry.10, ptr @rk808_probe._entry.14, ptr @rk808_probe._entry.18, ptr @rk808_probe._entry.21, ptr @rk808_probe._entry.24, ptr @rk808_probe._entry.27, ptr @rk808_probe._entry.30, ptr @rk808_probe._entry.8, ptr @rk808_probe._entry_ptr, ptr @rk808_probe._entry_ptr.13, ptr @rk808_probe._entry_ptr.16, ptr @rk808_probe._entry_ptr.20, ptr @rk808_probe._entry_ptr.23, ptr @rk808_probe._entry_ptr.26, ptr @rk808_probe._entry_ptr.29, ptr @rk808_probe._entry_ptr.32, ptr @rk808_probe._entry_ptr.9, ptr @rk8xx_shutdown._entry, ptr @rk8xx_shutdown._entry_ptr, ptr @rk808_i2c_driver, ptr @.str, ptr @rk808_of_match, ptr @rk8xx_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.11, ptr @.str.12, ptr @rk805_regmap_config, ptr @rk805_pre_init_reg, ptr @rk805s, ptr @rk808_regmap_config, ptr @rk808_pre_init_reg, ptr @rk808s, ptr @rk818_regmap_config, ptr @rk818_pre_init_reg, ptr @rk818s, ptr @rk817_regmap_config, ptr @rk817_pre_init_reg, ptr @rk817s, ptr @.str.15, ptr @rk808_probe._key, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @rk808_i2c_client, ptr @.str.34, ptr @rk805_irqs, ptr @rk805_irq_chip, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @rtc_resources, ptr @.str.40, ptr @rk805_key_resources, ptr @rk808_irqs, ptr @rk808_irq_chip, ptr @.str.42, ptr @rk818_irqs, ptr @rk818_irq_chip, ptr @.str.44, ptr @rk817_irqs, ptr @rk817_irq_chip, ptr @rk817_pwrkey_resources, ptr @rk817_rtc_resources, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk8xx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_pre_init_reg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805s to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_pre_init_reg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808s to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk818_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk818_pre_init_reg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk818s to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_pre_init_reg to i32), i32 924, i32 1152, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817s to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_i2c_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_irqs to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_key_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_irqs to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk818_irqs to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk818_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_irqs to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_pwrkey_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_rtc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_pm_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk8xx_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rk808_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk808_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rk808_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool5.not, i8 23, i8 -19
  %spec.select176 = select i1 %tobool5.not, i8 24, i8 -18
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %if.end.if.end7_crit_edge
  %pmic_id_msb.0 = phi i8 [ -19, %if.end.if.end7_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %pmic_id_lsb.0 = phi i8 [ -18, %if.end.if.end7_crit_edge ], [ %spec.select176, %lor.lhs.false ]
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %pmic_id_msb.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 23) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %pmic_id_lsb.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 24) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %shl = shl i32 %call8, 8
  %or = or i32 %call12, %shl
  %and = and i32 %or, 65520
  %variant = getelementptr inbounds %struct.rk808, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %variant, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %and) #8
  %trunc = trunc i32 %and to i16
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end37 [
    i16 -32688, label %if.end19.sw.epilog_crit_edge
    i16 0, label %sw.bb26
    i16 -32384, label %sw.bb29
    i16 -32624, label %if.end19.sw.bb32_crit_edge
    i16 -32400, label %if.end19.sw.bb32_crit_edge190
  ]

if.end19.sw.bb32_crit_edge190:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

if.end19.sw.bb32_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end19.sw.bb32_crit_edge, %if.end19.sw.bb32_crit_edge190
  br label %sw.epilog

do.end37:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %and) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb29, %sw.bb26, %if.end19.sw.epilog_crit_edge
  %rk817_regmap_config.sink = phi ptr [ @rk817_regmap_config, %sw.bb32 ], [ @rk818_regmap_config, %sw.bb29 ], [ @rk808_regmap_config, %sw.bb26 ], [ @rk805_regmap_config, %if.end19.sw.epilog_crit_edge ]
  %rk817_irq_chip.sink = phi ptr [ @rk817_irq_chip, %sw.bb32 ], [ @rk818_irq_chip, %sw.bb29 ], [ @rk808_irq_chip, %sw.bb26 ], [ @rk805_irq_chip, %if.end19.sw.epilog_crit_edge ]
  %pre_init_reg.0 = phi ptr [ @rk817_pre_init_reg, %sw.bb32 ], [ @rk818_pre_init_reg, %sw.bb29 ], [ @rk808_pre_init_reg, %sw.bb26 ], [ @rk805_pre_init_reg, %if.end19.sw.epilog_crit_edge ]
  %cells.0 = phi ptr [ @rk817s, %sw.bb32 ], [ @rk818s, %sw.bb29 ], [ @rk808s, %sw.bb26 ], [ @rk805s, %if.end19.sw.epilog_crit_edge ]
  %nr_pre_init_regs.0 = phi i32 [ 77, %sw.bb32 ], [ 8, %sw.bb29 ], [ 7, %sw.bb26 ], [ 6, %if.end19.sw.epilog_crit_edge ]
  %nr_cells.0 = phi i32 [ 5, %sw.bb32 ], [ 3, %sw.bb29 ], [ 3, %sw.bb26 ], [ 5, %if.end19.sw.epilog_crit_edge ]
  %regmap_cfg33 = getelementptr inbounds %struct.rk808, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %regmap_cfg33 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rk817_regmap_config.sink, ptr %regmap_cfg33, align 4
  %regmap_irq_chip34 = getelementptr inbounds %struct.rk808, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %regmap_irq_chip34 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rk817_irq_chip.sink, ptr %regmap_irq_chip34, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %regmap_cfg40 = getelementptr inbounds %struct.rk808, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %regmap_cfg40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_cfg40, align 4
  %call41 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %9, ptr noundef nonnull @rk808_probe._key, ptr noundef nonnull @.str.17) #5
  %regmap = getelementptr inbounds %struct.rk808, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call41, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end47, label %if.end51

do.end47:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end51:                                         ; preds = %sw.epilog
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool52.not = icmp eq i32 %15, 0
  br i1 %tobool52.not, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %regmap_irq_chip61 = getelementptr inbounds %struct.rk808, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %regmap_irq_chip61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap_irq_chip61, align 4
  %irq_data = getelementptr inbounds %struct.rk808, ptr %call.i, i32 0, i32 1
  %call62 = tail call i32 @regmap_add_irq_chip(ptr noundef %call41, i32 noundef %15, i32 noundef 8192, i32 noundef -1, ptr noundef %17, ptr noundef %irq_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end58.for.body_crit_edge, label %do.end67

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  br label %for.body

do.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call62) #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, %nr_pre_init_regs.0
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end58.for.body_crit_edge
  %i.0179 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end58.for.body_crit_edge ]
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr %struct.rk808_reg_data, ptr %pre_init_reg.0, i32 %i.0179
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %mask = getelementptr %struct.rk808_reg_data, ptr %pre_init_reg.0, i32 %i.0179, i32 1
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask, align 4
  %value = getelementptr %struct.rk808_reg_data, ptr %pre_init_reg.0, i32 %i.0179, i32 2
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %call.i177 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool75.not = icmp eq i32 %call.i177, 0
  br i1 %tobool75.not, label %for.cond, label %do.end79

do.end79:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %21) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %26 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_data, align 4
  %call86 = tail call ptr @regmap_irq_get_domain(ptr noundef %27) #5
  %call87 = tail call i32 @devm_mfd_add_devices(ptr noundef %dev, i32 noundef -1, ptr noundef nonnull %cells.0, i32 noundef %nr_cells.0, ptr noundef null, i32 noundef 0, ptr noundef %call86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end94, label %do.end92

do.end92:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call87) #8
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %30 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %29, ptr noundef %31) #5
  br label %cleanup

if.end94:                                         ; preds = %for.end
  %call.i178 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i178, null
  br i1 %tobool.i.not, label %if.end94.cleanup_crit_edge, label %if.then96

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %client, ptr @rk808_i2c_client, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @rk808_pm_power_off, ptr @pm_power_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end94.cleanup_crit_edge, %do.end92, %do.end79, %do.end67, %do.end56, %do.end47, %do.end37, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call12, %do.end17 ], [ -22, %do.end37 ], [ %13, %do.end47 ], [ %call62, %do.end67 ], [ %call.i177, %do.end79 ], [ %call87, %do.end92 ], [ -22, %do.end56 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then96 ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %3, ptr noundef %5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %6 = load ptr, ptr @pm_power_off, align 4
  %cmp = icmp eq ptr %6, @rk808_pm_power_off
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk8xx_shutdown(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %variant, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 32848, label %sw.bb
    i32 32912, label %entry.sw.bb2_crit_edge
    i32 33136, label %entry.sw.bb2_crit_edge10
  ]

entry.sw.bb2_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 80, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge10
  %regmap3 = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap3, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 244, i32 noundef 24, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %ret.0 = phi i32 [ %call.i9, %sw.bb2 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.49) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk808_pm_power_off() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rk808_i2c_client, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.rk808, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 32848, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb1
    i32 33136, label %sw.bb2
    i32 33152, label %entry.sw.epilog_crit_edge10
  ]

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge10
  %reg.0 = phi i32 [ 244, %sw.bb2 ], [ 75, %sw.bb1 ], [ 75, %entry.sw.epilog_crit_edge ], [ 75, %entry.sw.epilog_crit_edge10 ]
  %bit.0 = phi i32 [ 1, %sw.bb2 ], [ 8, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge10 ]
  %regmap = getelementptr inbounds %struct.rk808, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %reg.0, i32 noundef %bit.0, i32 noundef %bit.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %8 = load ptr, ptr @rk808_i2c_client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rk808_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %reg, label %sw.epilog [
    i32 17, label %entry.return_crit_edge
    i32 33, label %entry.return_crit_edge2
    i32 34, label %entry.return_crit_edge3
    i32 39, label %entry.return_crit_edge4
    i32 41, label %entry.return_crit_edge5
    i32 43, label %entry.return_crit_edge6
    i32 44, label %entry.return_crit_edge7
    i32 75, label %entry.return_crit_edge8
    i32 76, label %entry.return_crit_edge9
    i32 78, label %entry.return_crit_edge10
    i32 0, label %entry.return_crit_edge11
    i32 1, label %entry.return_crit_edge12
    i32 2, label %entry.return_crit_edge13
    i32 3, label %entry.return_crit_edge14
    i32 4, label %entry.return_crit_edge15
    i32 5, label %entry.return_crit_edge16
    i32 6, label %entry.return_crit_edge17
  ]

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rk817_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk8xx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %variant, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 32848, label %sw.bb
    i32 32912, label %entry.sw.bb2_crit_edge
    i32 33136, label %entry.sw.bb2_crit_edge8
  ]

entry.sw.bb2_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 80, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge8
  %regmap3 = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap3, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 244, i32 noundef 24, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i7, %sw.bb2 ], [ %call.i, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk8xx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %variant, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 32912, label %entry.sw.bb_crit_edge
    i32 33136, label %entry.sw.bb_crit_edge3
  ]

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3
  %regmap = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 244, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !145, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_rk808__288_813_rk808_i2c_driver_init6, !1, !"__initcall__kmod_rk808__288_813_rk808_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rk808.c", i32 813, i32 1}
!2 = !{ptr @__exitcall_rk808_i2c_driver_exit, !1, !"__exitcall_rk808_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/mfd/rk808.c", i32 815, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/mfd/rk808.c", i32 816, i32 1}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/mfd/rk808.c", i32 817, i32 1}
!10 = !{ptr @__UNIQUE_ID_author293, !11, !"__UNIQUE_ID_author293", i1 false, i1 false}
!11 = !{!"../drivers/mfd/rk808.c", i32 818, i32 1}
!12 = !{ptr @__UNIQUE_ID_description294, !13, !"__UNIQUE_ID_description294", i1 false, i1 false}
!13 = !{!"../drivers/mfd/rk808.c", i32 819, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/rk808.c", i32 804, i32 11}
!16 = !{ptr @rk808_i2c_driver, !17, !"rk808_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/mfd/rk808.c", i32 802, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/rk808.c", i32 617, i32 34}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/rk808.c", i32 618, i32 34}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/rk808.c", i32 629, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rk808_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rk808_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rk808_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/mfd/rk808.c", i32 636, i32 3}
!32 = !{ptr @rk808_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/rk808.c", i32 642, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rk808_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rk808_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/rk808.c", i32 679, i32 3}
!40 = !{ptr @rk808_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rk808_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @rk808_probe._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/mfd/rk808.c", i32 687, i32 18}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/rk808.c", i32 689, i32 3}
!47 = !{ptr @rk808_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rk808_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/rk808.c", i32 694, i32 3}
!51 = !{ptr @rk808_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rk808_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/rk808.c", i32 702, i32 3}
!55 = !{ptr @rk808_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rk808_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/rk808.c", i32 712, i32 4}
!59 = !{ptr @rk808_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rk808_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/rk808.c", i32 723, i32 3}
!63 = !{ptr @rk808_probe._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rk808_probe._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/rk808.c", i32 727, i32 32}
!67 = !{ptr @rk805_regmap_config, !68, !"rk805_regmap_config", i1 false, i1 false}
!68 = !{!"../drivers/mfd/rk808.c", i32 87, i32 35}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/rk808.c", i32 483, i32 10}
!71 = !{ptr @rk805_irq_chip, !72, !"rk805_irq_chip", i1 false, i1 false}
!72 = !{!"../drivers/mfd/rk808.c", i32 482, i32 31}
!73 = !{ptr @rk805_irqs, !74, !"rk805_irqs", i1 false, i1 false}
!74 = !{!"../drivers/mfd/rk808.c", i32 308, i32 32}
!75 = !{ptr @rk805_pre_init_reg, !76, !"rk805_pre_init_reg", i1 false, i1 false}
!76 = !{!"../drivers/mfd/rk808.c", i32 180, i32 36}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/rk808.c", i32 130, i32 12}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/rk808.c", i32 131, i32 12}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/rk808.c", i32 132, i32 12}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mfd/rk808.c", i32 134, i32 11}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/rk808.c", i32 138, i32 12}
!87 = !{ptr @rk805s, !88, !"rk805s", i1 false, i1 false}
!88 = !{!"../drivers/mfd/rk808.c", i32 129, i32 30}
!89 = !{ptr @rtc_resources, !90, !"rtc_resources", i1 false, i1 false}
!90 = !{!"../drivers/mfd/rk808.c", i32 111, i32 30}
!91 = !{ptr @rk805_key_resources, !92, !"rk805_key_resources", i1 false, i1 false}
!92 = !{!"../drivers/mfd/rk808.c", i32 119, i32 30}
!93 = !{ptr @rk808_regmap_config, !94, !"rk808_regmap_config", i1 false, i1 false}
!94 = !{!"../drivers/mfd/rk808.c", i32 95, i32 35}
!95 = !{ptr @rk808_irq_chip, !96, !"rk808_irq_chip", i1 false, i1 false}
!96 = !{!"../drivers/mfd/rk808.c", i32 493, i32 37}
!97 = !{ptr @rk808_irqs, !98, !"rk808_irqs", i1 false, i1 false}
!98 = !{!"../drivers/mfd/rk808.c", i32 343, i32 32}
!99 = !{ptr @rk808_pre_init_reg, !100, !"rk808_pre_init_reg", i1 false, i1 false}
!100 = !{!"../drivers/mfd/rk808.c", i32 193, i32 36}
!101 = !{ptr @rk808s, !102, !"rk808s", i1 false, i1 false}
!102 = !{!"../drivers/mfd/rk808.c", i32 144, i32 30}
!103 = !{ptr @rk818_regmap_config, !104, !"rk818_regmap_config", i1 false, i1 false}
!104 = !{!"../drivers/mfd/rk808.c", i32 79, i32 35}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/rk808.c", i32 518, i32 10}
!107 = !{ptr @rk818_irq_chip, !108, !"rk818_irq_chip", i1 false, i1 false}
!108 = !{!"../drivers/mfd/rk808.c", i32 517, i32 37}
!109 = !{ptr @rk818_irqs, !110, !"rk818_irqs", i1 false, i1 false}
!110 = !{!"../drivers/mfd/rk808.c", i32 385, i32 32}
!111 = !{ptr @rk818_pre_init_reg, !112, !"rk818_pre_init_reg", i1 false, i1 false}
!112 = !{!"../drivers/mfd/rk808.c", i32 290, i32 36}
!113 = !{ptr @rk818s, !114, !"rk818s", i1 false, i1 false}
!114 = !{!"../drivers/mfd/rk808.c", i32 170, i32 30}
!115 = !{ptr @rk817_regmap_config, !116, !"rk817_regmap_config", i1 false, i1 false}
!116 = !{!"../drivers/mfd/rk808.c", i32 103, i32 35}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/rk808.c", i32 506, i32 10}
!119 = !{ptr @rk817_irq_chip, !120, !"rk817_irq_chip", i1 false, i1 false}
!120 = !{!"../drivers/mfd/rk808.c", i32 505, i32 31}
!121 = !{ptr @rk817_irqs, !122, !"rk817_irqs", i1 false, i1 false}
!122 = !{!"../drivers/mfd/rk808.c", i32 455, i32 32}
!123 = !{ptr @rk817_pre_init_reg, !124, !"rk817_pre_init_reg", i1 false, i1 false}
!124 = !{!"../drivers/mfd/rk808.c", i32 204, i32 36}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/rk808.c", i32 167, i32 12}
!127 = !{ptr @rk817s, !128, !"rk817s", i1 false, i1 false}
!128 = !{!"../drivers/mfd/rk808.c", i32 154, i32 30}
!129 = !{ptr @rk817_pwrkey_resources, !130, !"rk817_pwrkey_resources", i1 false, i1 false}
!130 = !{!"../drivers/mfd/rk808.c", i32 124, i32 30}
!131 = !{ptr @rk817_rtc_resources, !132, !"rk817_rtc_resources", i1 false, i1 false}
!132 = !{!"../drivers/mfd/rk808.c", i32 115, i32 30}
!133 = !{ptr @rk808_i2c_client, !134, !"rk808_i2c_client", i1 false, i1 false}
!134 = !{!"../drivers/mfd/rk808.c", i32 529, i32 27}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mfd/rk808.c", i32 559, i32 3}
!137 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rk808_pm_power_off._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @rk808_pm_power_off._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mfd/rk808.c", i32 585, i32 3}
!142 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rk8xx_shutdown._entry, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @rk8xx_shutdown._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @rk808_of_match, !147, !"rk808_of_match", i1 false, i1 false}
!147 = !{!"../drivers/mfd/rk808.c", i32 589, i32 34}
!148 = !{ptr @rk8xx_pm_ops, !149, !"rk8xx_pm_ops", i1 false, i1 false}
!149 = !{!"../drivers/mfd/rk808.c", i32 800, i32 8}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
