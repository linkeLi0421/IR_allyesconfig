; ModuleID = '/llk/IR_all_yes/drivers/regulator/bd9576-regulator.c_pt.bc'
source_filename = "../drivers/regulator/bd9576-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.regulator_irq_desc = type { ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr }
%struct.bd957x_data = type { [6 x %struct.bd957x_regulator_data], ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.spinlock, i32 }
%struct.bd957x_regulator_data = type { %struct.regulator_desc, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.regulator_irq_data = type { ptr, i32, ptr, i32 }
%struct.regulator_err_state = type { ptr, i32, i32, i32 }

@__initcall__kmod_bd9576_regulator__291_1137_bd957x_regulator_init6 = internal global ptr @bd957x_regulator_init, section ".initcall6.init", align 4
@bd957x_regulator = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd957x_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bd957x_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd957x_regulator_exit = internal global ptr @bd957x_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [76 x i8] c"bd9576_regulator.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [73 x i8] c"bd9576_regulator.description=ROHM BD9576/BD9573 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [57 x i8] c"bd9576_regulator.file=drivers/regulator/bd9576-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [29 x i8] c"bd9576_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [44 x i8] c"bd9576_regulator.alias=platform:bd957x-pmic\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd957x-pmic\00", [20 x i8] zeroinitializer }, align 32
@bd957x_pmic_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bd9573-regulator\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"bd9576-regulator\00\00\00\00", i32 3 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@bd957x_probe.bd9576_notif_uvd = internal constant { %struct.regulator_irq_desc, [60 x i8] } { %struct.regulator_irq_desc { ptr @.str.1, i32 0, i32 0, i32 1000, i8 0, i8 0, ptr @bd957x_regulators, ptr null, ptr @bd9576_uvd_handler, ptr @bd9576_uvd_renable }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576-uvd\00", [21 x i8] zeroinitializer }, align 32
@bd957x_regulators = internal global { %struct.bd957x_data, [564 x i8] } { %struct.bd957x_data { [6 x %struct.bd957x_regulator_data] [%struct.bd957x_regulator_data { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.37, i8 0, ptr @.str.38, ptr null, i32 0, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vout1_volt_table, ptr null, i32 0, i32 0, i32 80, i32 135, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 255, i32 255, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @vout1_xvd_ranges, i32 3, i8 0, i32 81, i32 82, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bd957x_regulator_data { %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.40, i8 0, ptr @.str.38, ptr null, i32 1, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vout2_volt_table, ptr null, i32 0, i32 0, i32 83, i32 135, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 255, i32 255, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @vout234_xvd_ranges, i32 3, i8 0, i32 84, i32 85, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bd957x_regulator_data { %struct.regulator_desc { ptr @.str.41, ptr null, ptr @.str.42, i8 0, ptr @.str.38, ptr null, i32 2, i8 0, i32 32, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 255, i32 255, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @vout234_xvd_ranges, i32 3, i8 0, i32 87, i32 88, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bd957x_regulator_data { %struct.regulator_desc { ptr @.str.43, ptr null, ptr @.str.44, i8 0, ptr @.str.38, ptr null, i32 3, i8 0, i32 32, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1030000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 255, i32 255, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @vout234_xvd_ranges, i32 3, i8 0, i32 90, i32 91, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bd957x_regulator_data { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.38, ptr null, i32 4, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @voutl1_volt_table, ptr null, i32 0, i32 0, i32 92, i32 135, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 255, i32 255, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @voutL1_xvd_ranges, i32 3, i8 0, i32 93, i32 94, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bd957x_regulator_data { %struct.regulator_desc { ptr @.str.47, ptr null, ptr @.str.48, i8 0, ptr @.str.38, ptr @vouts1_get_fet_res, i32 5, i8 0, i32 1, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 255, i32 255, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 1, i32 0, i32 0, i32 0, i32 96, i32 63, i32 95, i32 63, i32 0 }], ptr null, %struct.delayed_work zeroinitializer, %struct.delayed_work zeroinitializer, %struct.delayed_work zeroinitializer, i32 0, i32 0, i32 0, %struct.spinlock zeroinitializer, i32 0 }, [564 x i8] zeroinitializer }, align 32
@bd957x_probe.bd9576_notif_ovd = internal constant { %struct.regulator_irq_desc, [60 x i8] } { %struct.regulator_irq_desc { ptr @.str.2, i32 0, i32 0, i32 1000, i8 0, i8 0, ptr @bd957x_regulators, ptr null, ptr @bd9576_ovd_handler, ptr @bd9576_ovd_renable }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576-ovd\00", [21 x i8] zeroinitializer }, align 32
@bd957x_probe.bd9576_notif_temp = internal constant { %struct.regulator_irq_desc, [60 x i8] } { %struct.regulator_irq_desc { ptr @.str.3, i32 0, i32 0, i32 1000, i8 0, i8 0, ptr @bd957x_regulators, ptr null, ptr @bd9576_thermal_handler, ptr @bd9576_temp_renable }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd9576-temp\00", [20 x i8] zeroinitializer }, align 32
@bd957x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 937, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No regmap\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd957x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/bd9576-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd957x_probe._entry_ptr = internal global ptr @bd957x_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rohm,vout1-en-low\00", [46 x i8] zeroinitializer }, align 32
@bd957x_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.5, ptr @.str.6, ptr @.str.11, i8 0, i8 -20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd9576_regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO controlled mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rohm,vout1-en-gpios\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vout1-en\00", [23 x i8] zeroinitializer }, align 32
@bd957x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 976, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get VOUT1 control GPIO\0A\00", [62 x i8] zeroinitializer }, align 32
@bd957x_probe._entry_ptr.16 = internal global ptr @bd957x_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rohm,ddr-sel-low\00", [47 x i8] zeroinitializer }, align 32
@bd957x_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.5, ptr @.str.6, ptr @.str.18, i8 0, i8 -7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Found BD9576MUF\0A\00", [47 x i8] zeroinitializer }, align 32
@bd957x_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.5, ptr @.str.6, ptr @.str.19, i8 0, i8 -6, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Found BD9573MUF\0A\00", [47 x i8] zeroinitializer }, align 32
@bd957x_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 1005, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported chip type\0A\00", [41 x i8] zeroinitializer }, align 32
@bd957x_probe._entry_ptr.22 = internal global ptr @bd957x_probe._entry.20, section ".printk_index", align 4
@bd9576_ops_arr = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @bd9576_ops, ptr @bd9576_ops, ptr @bd9576_vout34_ops, ptr @bd9576_vout34_ops, ptr @bd9576_ops, ptr @bd9576_vouts1_regulator_ops], [40 x i8] zeroinitializer }, align 32
@bd9573_ops_arr = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @bd9573_ops, ptr @bd9573_ops, ptr @bd9573_vout34_ops, ptr @bd9573_vout34_ops, ptr @bd9573_ops, ptr @bd9573_vouts1_regulator_ops], [40 x i8] zeroinitializer }, align 32
@bd957x_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 1042, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@bd957x_probe._entry_ptr.25 = internal global ptr @bd957x_probe._entry.23, section ".printk_index", align 4
@bd957x_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 1090, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UVD disabled %pe\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bd957x_probe._entry_ptr.29 = internal global ptr @bd957x_probe._entry.26, section ".printk_index", align 4
@bd957x_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.6, i32 1103, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OVD disabled %pe\0A\00", [46 x i8] zeroinitializer }, align 32
@bd957x_probe._entry_ptr.32 = internal global ptr @bd957x_probe._entry.30, section ".printk_index", align 4
@bd957x_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.5, ptr @.str.6, i32 1116, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Thermal warning disabled %pe\0A\00", [34 x i8] zeroinitializer }, align 32
@bd957x_probe._entry_ptr.35 = internal global ptr @bd957x_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VD50\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-vd50\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@vout1_volt_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 5000000, i32 4900000, i32 4800000, i32 4700000, i32 4600000, i32 4500000, i32 4500000, i32 4500000, i32 5000000, i32 5100000, i32 5200000, i32 5300000, i32 5400000, i32 5500000, i32 5500000, i32 5500000], [32 x i8] zeroinitializer }, align 32
@vout1_xvd_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 225000, i32 1, i32 43, i32 0 }, %struct.linear_range { i32 225000, i32 44, i32 84, i32 5000 }, %struct.linear_range { i32 425000, i32 85, i32 127, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VD18\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-vd18\00", [17 x i8] zeroinitializer }, align 32
@vout2_volt_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1780000, i32 1760000, i32 1740000, i32 1720000, i32 1700000, i32 1680000, i32 1660000, i32 1800000, i32 1820000, i32 1840000, i32 1860000, i32 1880000, i32 1900000, i32 1920000, i32 1940000], [32 x i8] zeroinitializer }, align 32
@vout234_xvd_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 17000, i32 1, i32 15, i32 0 }, %struct.linear_range { i32 17000, i32 16, i32 109, i32 1000 }, %struct.linear_range { i32 110000, i32 110, i32 127, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDDR\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-vdddr\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VD10\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-vd10\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VOUTL1\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"regulator-voutl1\00", [47 x i8] zeroinitializer }, align 32
@voutl1_volt_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2500000, i32 2540000, i32 2580000, i32 2620000, i32 2660000, i32 2700000, i32 2740000, i32 2780000, i32 2500000, i32 2460000, i32 2420000, i32 2380000, i32 2340000, i32 2300000, i32 2260000, i32 2220000], [32 x i8] zeroinitializer }, align 32
@voutL1_xvd_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 34000, i32 1, i32 15, i32 0 }, %struct.linear_range { i32 34000, i32 16, i32 109, i32 2000 }, %struct.linear_range { i32 220000, i32 110, i32 127, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VOUTS1\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"regulator-vouts1\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rohm,ocw-fet-ron-micro-ohms\00", [36 x i8] zeroinitializer }, align 32
@bd9576_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @bd957x_list_voltage, ptr null, ptr null, ptr null, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd9576_set_ovp, ptr @bd9576_set_uvp, ptr @bd9576_set_tw, ptr null, ptr null, ptr null, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd9576_vout34_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @bd957x_vout34_list_voltage, ptr null, ptr null, ptr null, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd9576_set_ovp, ptr @bd9576_set_uvp, ptr @bd9576_set_tw, ptr null, ptr null, ptr null, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd9576_vouts1_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd9576_set_ocp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@check_ovd_flag_mismatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 283, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't support both OVD WARN and ERR\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_ovd_flag_mismatch\00", [40 x i8] zeroinitializer }, align 32
@check_ovd_flag_mismatch._entry_ptr = internal global ptr @check_ovd_flag_mismatch._entry, section ".printk_index", align 4
@bd9576_set_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 232, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"limit %d out of range. Setting lower\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd9576_set_limit\00", [47 x i8] zeroinitializer }, align 32
@bd9576_set_limit._entry_ptr = internal global ptr @bd9576_set_limit._entry, section ".printk_index", align 4
@check_uvd_flag_mismatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 265, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't support both UVD WARN and ERR\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_uvd_flag_mismatch\00", [40 x i8] zeroinitializer }, align 32
@check_uvd_flag_mismatch._entry_ptr = internal global ptr @check_uvd_flag_mismatch._entry, section ".printk_index", align 4
@check_temp_flag_mismatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 301, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't support both thermal WARN and ERR\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_temp_flag_mismatch\00", [39 x i8] zeroinitializer }, align 32
@check_temp_flag_mismatch._entry_ptr = internal global ptr @check_temp_flag_mismatch._entry, section ".printk_index", align 4
@voutS1_ocp_ranges = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 70000, i32 1, i32 6, i32 0 }, %struct.linear_range { i32 80000, i32 7, i32 27, i32 10000 }, %struct.linear_range { i32 280000, i32 28, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@voutS1_ocp_ranges_internal = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 300000, i32 1, i32 6, i32 0 }, %struct.linear_range { i32 350000, i32 7, i32 27, i32 50000 }, %struct.linear_range { i32 1350000, i32 28, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@voutS1_ocw_ranges = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 50000, i32 1, i32 4, i32 0 }, %struct.linear_range { i32 60000, i32 5, i32 24, i32 10000 }, %struct.linear_range { i32 250000, i32 25, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@voutS1_ocw_ranges_internal = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 200000, i32 1, i32 4, i32 0 }, %struct.linear_range { i32 250000, i32 5, i32 24, i32 50000 }, %struct.linear_range { i32 1200000, i32 25, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@check_ocp_flag_mismatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.6, i32 246, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't support both OCP WARN and ERR\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_ocp_flag_mismatch\00", [40 x i8] zeroinitializer }, align 32
@check_ocp_flag_mismatch._entry_ptr = internal global ptr @check_ocp_flag_mismatch._entry, section ".printk_index", align 4
@bd9573_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @bd957x_list_voltage, ptr null, ptr null, ptr null, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd9573_vout34_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @bd957x_vout34_list_voltage, ptr null, ptr null, ptr null, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd9573_vouts1_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"bd957x_regulator\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1129, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1131, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"bd957x_pmic_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1122, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"bd9576_notif_uvd\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 908, i32 41 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 909, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"bd957x_regulators\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 594, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"bd9576_notif_ovd\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 915, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 916, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"bd9576_notif_temp\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 922, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 923, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 937, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 943, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 947, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 953, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 954, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 975, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 990, i32 7 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 999, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1002, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1005, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"bd9576_ops_arr\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 564, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"bd9573_ops_arr\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 555, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1040, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1090, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1103, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1115, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 598, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 599, i32 17 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 600, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"vout1_volt_table\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 31, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"vout1_xvd_ranges\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 52, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 621, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 622, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"vout2_volt_table\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 38, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant [19 x i8] c"vout234_xvd_ranges\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 58, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 644, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 645, i32 17 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 666, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 667, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 689, i32 13 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 690, i32 17 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"voutl1_volt_table\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 45, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"voutL1_xvd_ranges\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 64, i32 34 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 712, i32 13 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 713, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 583, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant [11 x i8] c"bd9576_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 546, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant [18 x i8] c"bd9576_vout34_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 522, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant [28 x i8] c"bd9576_vouts1_regulator_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 535, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 282, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 230, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 264, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 300, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [18 x i8] c"voutS1_ocp_ranges\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 88, i32 28 }
@___asan_gen_.290 = private unnamed_addr constant [27 x i8] c"voutS1_ocp_ranges_internal\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 82, i32 28 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"voutS1_ocw_ranges\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 76, i32 28 }
@___asan_gen_.296 = private unnamed_addr constant [27 x i8] c"voutS1_ocw_ranges_internal\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 70, i32 28 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 245, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [11 x i8] c"bd9573_ops\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 540, i32 35 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"bd9573_vout34_ops\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 516, i32 35 }
@___asan_gen_.314 = private unnamed_addr constant [28 x i8] c"bd9573_vouts1_regulator_ops\00", align 1
@___asan_gen_.315 = private constant [40 x i8] c"../drivers/regulator/bd9576-regulator.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 531, i32 35 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_bd957x_regulator_exit, ptr @__initcall__kmod_bd9576_regulator__291_1137_bd957x_regulator_init6, ptr @bd9576_set_limit._entry, ptr @bd9576_set_limit._entry_ptr, ptr @bd957x_probe._entry, ptr @bd957x_probe._entry.14, ptr @bd957x_probe._entry.20, ptr @bd957x_probe._entry.23, ptr @bd957x_probe._entry.26, ptr @bd957x_probe._entry.30, ptr @bd957x_probe._entry.33, ptr @bd957x_probe._entry_ptr, ptr @bd957x_probe._entry_ptr.16, ptr @bd957x_probe._entry_ptr.22, ptr @bd957x_probe._entry_ptr.25, ptr @bd957x_probe._entry_ptr.29, ptr @bd957x_probe._entry_ptr.32, ptr @bd957x_probe._entry_ptr.35, ptr @bd957x_regulator_exit, ptr @check_ocp_flag_mismatch._entry, ptr @check_ocp_flag_mismatch._entry_ptr, ptr @check_ovd_flag_mismatch._entry, ptr @check_ovd_flag_mismatch._entry_ptr, ptr @check_temp_flag_mismatch._entry, ptr @check_temp_flag_mismatch._entry_ptr, ptr @check_uvd_flag_mismatch._entry, ptr @check_uvd_flag_mismatch._entry_ptr, ptr @bd957x_regulator, ptr @.str, ptr @bd957x_pmic_id, ptr @bd957x_probe.bd9576_notif_uvd, ptr @.str.1, ptr @bd957x_regulators, ptr @bd957x_probe.bd9576_notif_ovd, ptr @.str.2, ptr @bd957x_probe.bd9576_notif_temp, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @bd9576_ops_arr, ptr @bd9573_ops_arr, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @vout1_volt_table, ptr @vout1_xvd_ranges, ptr @.str.39, ptr @.str.40, ptr @vout2_volt_table, ptr @vout234_xvd_ranges, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @voutl1_volt_table, ptr @voutL1_xvd_ranges, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @bd9576_ops, ptr @bd9576_vout34_ops, ptr @bd9576_vouts1_regulator_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @voutS1_ocp_ranges, ptr @voutS1_ocp_ranges_internal, ptr @voutS1_ocw_ranges, ptr @voutS1_ocw_ranges_internal, ptr @.str.58, ptr @.str.59, ptr @bd9573_ops, ptr @bd9573_vout34_ops, ptr @bd9573_vouts1_regulator_ops], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_regulator to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_pmic_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe.bd9576_notif_uvd to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_regulators to i32), i32 2284, i32 2848, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe.bd9576_notif_ovd to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe.bd9576_notif_temp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_ops_arr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9573_ops_arr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vout1_volt_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vout1_xvd_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vout2_volt_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vout234_xvd_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voutl1_volt_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voutL1_xvd_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_vout34_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_vouts1_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ovd_flag_mismatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_set_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_uvd_flag_mismatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_temp_flag_mismatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voutS1_ocp_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voutS1_ocp_ranges_internal to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voutS1_ocw_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voutS1_ocw_ranges_internal to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ocp_flag_mismatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9573_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9573_vout34_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9573_vouts1_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd957x_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd957x_regulator, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd957x_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd957x_regulator) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd957x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %rdevs = alloca [6 x ptr], align 4
  %ovd_devs = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rdevs) #7
  %1 = getelementptr inbounds [6 x ptr], ptr %rdevs, i32 0, i32 1
  %2 = getelementptr inbounds [6 x ptr], ptr %rdevs, i32 0, i32 2
  %3 = getelementptr inbounds [6 x ptr], ptr %rdevs, i32 0, i32 3
  %4 = getelementptr inbounds [6 x ptr], ptr %rdevs, i32 0, i32 4
  %5 = getelementptr inbounds [6 x ptr], ptr %rdevs, i32 0, i32 5
  %6 = call ptr @memset(ptr %rdevs, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ovd_devs) #7
  %7 = getelementptr inbounds [5 x ptr], ptr %ovd_devs, i32 0, i32 1
  %8 = getelementptr inbounds [5 x ptr], ptr %ovd_devs, i32 0, i32 2
  %9 = getelementptr inbounds [5 x ptr], ptr %ovd_devs, i32 0, i32 3
  %10 = getelementptr inbounds [5 x ptr], ptr %ovd_devs, i32 0, i32 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %11 = call ptr @memset(ptr %ovd_devs, i32 255, i32 20)
  %12 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %17, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup209

if.end:                                           ; preds = %entry
  store ptr %call, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.if.end33_crit_edge, label %if.then7

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd957x_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd957x_probe, %do.end19)) #7
          to label %if.then15 [label %do.end19], !srcloc !181

if.then15:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd957x_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %if.then7
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %of_node23 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node23, align 8
  %call24 = tail call ptr @devm_gpiod_get_from_of_node(ptr noundef %dev, ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @.str.13) #7
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %26 = ptrtoint ptr %call24 to i32
  br label %cleanup209

cleanup:                                          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %27 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call24, ptr %ena_gpiod, align 4
  br label %if.end33

if.end33:                                         ; preds = %cleanup, %if.end.if.end33_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bd957x_regulators, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 8
  %of_node36 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node36, align 8
  %call.i298 = tail call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.17, ptr noundef null) #7
  %tobool.i299.not = icmp eq ptr %call.i298, null
  %. = select i1 %tobool.i299.not, i32 1500000, i32 1350000
  store i32 %., ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2, i32 0, i32 17), align 4
  %33 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %do.end88 [
    i32 3, label %sw.bb
    i32 1, label %do.body67
  ]

sw.bb:                                            ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd957x_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd957x_probe, %if.then94)) #7
          to label %sw.epilog.thread [label %if.then94], !srcloc !181

sw.epilog.thread:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd957x_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  br label %if.then94

do.body67:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd957x_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd957x_probe, %if.else100)) #7
          to label %sw.epilog.thread329 [label %if.else100], !srcloc !181

sw.epilog.thread329:                              ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd957x_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %if.else100

do.end88:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %cleanup209

if.then94:                                        ; preds = %sw.epilog.thread, %sw.bb
  %34 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 0, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp95 = icmp ugt i32 %34, 5
  br i1 %cmp95, label %if.then94.cleanup209_crit_edge, label %if.then94.1

if.then94.cleanup209_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.else100:                                       ; preds = %sw.epilog.thread329, %do.body67
  %35 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 0, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp102 = icmp ugt i32 %35, 5
  br i1 %cmp102, label %if.else100.cleanup209_crit_edge, label %if.else100.1

if.else100.cleanup209_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.else100.1:                                     ; preds = %if.else100
  %arrayidx106 = getelementptr [6 x ptr], ptr @bd9573_ops_arr, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %storemerge = load ptr, ptr %arrayidx106, align 4
  store ptr %storemerge, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 0, i32 0, i32 10), align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp102.1 = icmp ugt i32 %37, 5
  br i1 %cmp102.1, label %if.else100.1.cleanup209_crit_edge, label %if.else100.2

if.else100.1.cleanup209_crit_edge:                ; preds = %if.else100.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.then94.1:                                      ; preds = %if.then94
  %arrayidx99 = getelementptr [6 x ptr], ptr @bd9576_ops_arr, i32 0, i32 %34
  %38 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %storemerge334 = load ptr, ptr %arrayidx99, align 4
  store ptr %storemerge334, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 0, i32 0, i32 10), align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %39)
  %cmp95.1 = icmp ugt i32 %39, 5
  br i1 %cmp95.1, label %if.then94.1.cleanup209_crit_edge, label %if.then94.2

if.then94.1.cleanup209_crit_edge:                 ; preds = %if.then94.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.else100.2:                                     ; preds = %if.else100.1
  %arrayidx106.1 = getelementptr [6 x ptr], ptr @bd9573_ops_arr, i32 0, i32 %37
  %40 = ptrtoint ptr %arrayidx106.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %storemerge321 = load ptr, ptr %arrayidx106.1, align 4
  store ptr %storemerge321, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1, i32 0, i32 10), align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp102.2 = icmp ugt i32 %41, 5
  br i1 %cmp102.2, label %if.else100.2.cleanup209_crit_edge, label %if.else100.3

if.else100.2.cleanup209_crit_edge:                ; preds = %if.else100.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.then94.2:                                      ; preds = %if.then94.1
  %arrayidx99.1 = getelementptr [6 x ptr], ptr @bd9576_ops_arr, i32 0, i32 %39
  %42 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %storemerge321339 = load ptr, ptr %arrayidx99.1, align 4
  store ptr %storemerge321339, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1, i32 0, i32 10), align 4
  %43 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %43)
  %cmp95.2 = icmp ugt i32 %43, 5
  br i1 %cmp95.2, label %if.then94.2.cleanup209_crit_edge, label %if.then94.3

if.then94.2.cleanup209_crit_edge:                 ; preds = %if.then94.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.else100.3:                                     ; preds = %if.else100.2
  %arrayidx106.2 = getelementptr [6 x ptr], ptr @bd9573_ops_arr, i32 0, i32 %41
  %44 = ptrtoint ptr %arrayidx106.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %storemerge322 = load ptr, ptr %arrayidx106.2, align 4
  store ptr %storemerge322, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2, i32 0, i32 10), align 4
  %45 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %cmp102.3 = icmp ugt i32 %45, 5
  br i1 %cmp102.3, label %if.else100.3.cleanup209_crit_edge, label %if.else100.4

if.else100.3.cleanup209_crit_edge:                ; preds = %if.else100.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.then94.3:                                      ; preds = %if.then94.2
  %arrayidx99.2 = getelementptr [6 x ptr], ptr @bd9576_ops_arr, i32 0, i32 %43
  %46 = ptrtoint ptr %arrayidx99.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %storemerge322344 = load ptr, ptr %arrayidx99.2, align 4
  store ptr %storemerge322344, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2, i32 0, i32 10), align 4
  %47 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp95.3 = icmp ugt i32 %47, 5
  br i1 %cmp95.3, label %if.then94.3.cleanup209_crit_edge, label %if.then94.4

if.then94.3.cleanup209_crit_edge:                 ; preds = %if.then94.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.else100.4:                                     ; preds = %if.else100.3
  %arrayidx106.3 = getelementptr [6 x ptr], ptr @bd9573_ops_arr, i32 0, i32 %45
  %48 = ptrtoint ptr %arrayidx106.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %storemerge323 = load ptr, ptr %arrayidx106.3, align 4
  store ptr %storemerge323, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3, i32 0, i32 10), align 4
  %49 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp102.4 = icmp ugt i32 %49, 5
  br i1 %cmp102.4, label %if.else100.4.cleanup209_crit_edge, label %if.else100.5

if.else100.4.cleanup209_crit_edge:                ; preds = %if.else100.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.then94.4:                                      ; preds = %if.then94.3
  %arrayidx99.3 = getelementptr [6 x ptr], ptr @bd9576_ops_arr, i32 0, i32 %47
  %50 = ptrtoint ptr %arrayidx99.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %storemerge323349 = load ptr, ptr %arrayidx99.3, align 4
  store ptr %storemerge323349, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3, i32 0, i32 10), align 4
  %51 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %51)
  %cmp95.4 = icmp ugt i32 %51, 5
  br i1 %cmp95.4, label %if.then94.4.cleanup209_crit_edge, label %if.then94.5

if.then94.4.cleanup209_crit_edge:                 ; preds = %if.then94.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.else100.5:                                     ; preds = %if.else100.4
  %arrayidx106.4 = getelementptr [6 x ptr], ptr @bd9573_ops_arr, i32 0, i32 %49
  %52 = ptrtoint ptr %arrayidx106.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %storemerge324 = load ptr, ptr %arrayidx106.4, align 4
  store ptr %storemerge324, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4, i32 0, i32 10), align 4
  %53 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 5, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cmp102.5 = icmp ugt i32 %53, 5
  br i1 %cmp102.5, label %if.else100.5.cleanup209_crit_edge, label %if.end104.5

if.else100.5.cleanup209_crit_edge:                ; preds = %if.else100.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.end104.5:                                      ; preds = %if.else100.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx106.5 = getelementptr [6 x ptr], ptr @bd9573_ops_arr, i32 0, i32 %53
  br label %for.inc.5

if.then94.5:                                      ; preds = %if.then94.4
  %arrayidx99.4 = getelementptr [6 x ptr], ptr @bd9576_ops_arr, i32 0, i32 %51
  %54 = ptrtoint ptr %arrayidx99.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %storemerge324354 = load ptr, ptr %arrayidx99.4, align 4
  store ptr %storemerge324354, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4, i32 0, i32 10), align 4
  %55 = load i32, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 5, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %cmp95.5 = icmp ugt i32 %55, 5
  br i1 %cmp95.5, label %if.then94.5.cleanup209_crit_edge, label %if.end97.5

if.then94.5.cleanup209_crit_edge:                 ; preds = %if.then94.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.end97.5:                                       ; preds = %if.then94.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx99.5 = getelementptr [6 x ptr], ptr @bd9576_ops_arr, i32 0, i32 %55
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end97.5, %if.end104.5
  %may_have_irqs.0.off0327335340345350355 = phi i1 [ false, %if.end104.5 ], [ true, %if.end97.5 ]
  %storemerge325.in = phi ptr [ %arrayidx106.5, %if.end104.5 ], [ %arrayidx99.5, %if.end97.5 ]
  %56 = ptrtoint ptr %storemerge325.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %storemerge325 = load ptr, ptr %storemerge325.in, align 4
  store ptr %storemerge325, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 5, i32 0, i32 10), align 4
  %57 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent, align 8
  %59 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %config, align 4
  %regmap115 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %60 = ptrtoint ptr %regmap115 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call, ptr %regmap115, align 4
  %driver_data116 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %61 = ptrtoint ptr %driver_data116 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @bd957x_regulators, ptr %driver_data116, align 4
  %ena_gpiod136 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %call125 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @bd957x_regulators, ptr noundef nonnull %config) #7
  store ptr %call125, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 0, i32 2), align 4
  %cmp.i300 = icmp ugt ptr %call125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %for.inc.5.cleanup147_crit_edge, label %if.end135

for.inc.5.cleanup147_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

if.end135:                                        ; preds = %for.inc.5
  %62 = ptrtoint ptr %ena_gpiod136 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %ena_gpiod136, align 4
  br i1 %may_have_irqs.0.off0327335340345350355, label %if.then143, label %if.end135.for.inc151_crit_edge

if.end135.for.inc151_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc151

if.then143:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %rdevs to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call125, ptr %rdevs, align 4
  %64 = ptrtoint ptr %ovd_devs to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call125, ptr %ovd_devs, align 4
  br label %for.inc151

cleanup147:                                       ; preds = %for.inc151.4.cleanup147_crit_edge, %for.inc151.3.cleanup147_crit_edge, %for.inc151.2.cleanup147_crit_edge, %for.inc151.1.cleanup147_crit_edge, %for.inc151.cleanup147_crit_edge, %for.inc.5.cleanup147_crit_edge
  %arrayidx121.lcssa = phi ptr [ @bd957x_regulators, %for.inc.5.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1), %for.inc151.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2), %for.inc151.1.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3), %for.inc151.2.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4), %for.inc151.3.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 5), %for.inc151.4.cleanup147_crit_edge ]
  %rdev.lcssa = phi ptr [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 0, i32 2), %for.inc.5.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1, i32 2), %for.inc151.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2, i32 2), %for.inc151.1.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3, i32 2), %for.inc151.2.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4, i32 2), %for.inc151.3.cleanup147_crit_edge ], [ getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 5, i32 2), %for.inc151.4.cleanup147_crit_edge ]
  %65 = ptrtoint ptr %arrayidx121.lcssa to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx121.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %66) #10
  %67 = ptrtoint ptr %rdev.lcssa to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rdev.lcssa, align 4
  %69 = ptrtoint ptr %68 to i32
  br label %cleanup209

for.inc151:                                       ; preds = %if.then143, %if.end135.for.inc151_crit_edge
  %call125.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1), ptr noundef nonnull %config) #7
  store ptr %call125.1, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 1, i32 2), align 4
  %cmp.i300.1 = icmp ugt ptr %call125.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300.1, label %for.inc151.cleanup147_crit_edge, label %if.end135.1

for.inc151.cleanup147_crit_edge:                  ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

if.end135.1:                                      ; preds = %for.inc151
  %70 = ptrtoint ptr %ena_gpiod136 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %ena_gpiod136, align 4
  br i1 %may_have_irqs.0.off0327335340345350355, label %if.then143.1, label %if.end135.1.for.inc151.1_crit_edge

if.end135.1.for.inc151.1_crit_edge:               ; preds = %if.end135.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc151.1

if.then143.1:                                     ; preds = %if.end135.1
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call125.1, ptr %1, align 4
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call125.1, ptr %7, align 4
  br label %for.inc151.1

for.inc151.1:                                     ; preds = %if.then143.1, %if.end135.1.for.inc151.1_crit_edge
  %call125.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2), ptr noundef nonnull %config) #7
  store ptr %call125.2, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 2, i32 2), align 4
  %cmp.i300.2 = icmp ugt ptr %call125.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300.2, label %for.inc151.1.cleanup147_crit_edge, label %if.end135.2

for.inc151.1.cleanup147_crit_edge:                ; preds = %for.inc151.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

if.end135.2:                                      ; preds = %for.inc151.1
  %73 = ptrtoint ptr %ena_gpiod136 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %ena_gpiod136, align 4
  br i1 %may_have_irqs.0.off0327335340345350355, label %if.then143.2, label %if.end135.2.for.inc151.2_crit_edge

if.end135.2.for.inc151.2_crit_edge:               ; preds = %if.end135.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc151.2

if.then143.2:                                     ; preds = %if.end135.2
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call125.2, ptr %2, align 4
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call125.2, ptr %8, align 4
  br label %for.inc151.2

for.inc151.2:                                     ; preds = %if.then143.2, %if.end135.2.for.inc151.2_crit_edge
  %call125.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3), ptr noundef nonnull %config) #7
  store ptr %call125.3, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 3, i32 2), align 4
  %cmp.i300.3 = icmp ugt ptr %call125.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300.3, label %for.inc151.2.cleanup147_crit_edge, label %if.end135.3

for.inc151.2.cleanup147_crit_edge:                ; preds = %for.inc151.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

if.end135.3:                                      ; preds = %for.inc151.2
  %76 = ptrtoint ptr %ena_gpiod136 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ena_gpiod136, align 4
  br i1 %may_have_irqs.0.off0327335340345350355, label %if.then143.3, label %if.end135.3.for.inc151.3_crit_edge

if.end135.3.for.inc151.3_crit_edge:               ; preds = %if.end135.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc151.3

if.then143.3:                                     ; preds = %if.end135.3
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call125.3, ptr %3, align 4
  %78 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call125.3, ptr %9, align 4
  br label %for.inc151.3

for.inc151.3:                                     ; preds = %if.then143.3, %if.end135.3.for.inc151.3_crit_edge
  %call125.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4), ptr noundef nonnull %config) #7
  store ptr %call125.4, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 4, i32 2), align 4
  %cmp.i300.4 = icmp ugt ptr %call125.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300.4, label %for.inc151.3.cleanup147_crit_edge, label %if.end135.4

for.inc151.3.cleanup147_crit_edge:                ; preds = %for.inc151.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

if.end135.4:                                      ; preds = %for.inc151.3
  %79 = ptrtoint ptr %ena_gpiod136 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %ena_gpiod136, align 4
  br i1 %may_have_irqs.0.off0327335340345350355, label %if.then143.4, label %if.end135.4.for.inc151.4_crit_edge

if.end135.4.for.inc151.4_crit_edge:               ; preds = %if.end135.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc151.4

if.then143.4:                                     ; preds = %if.end135.4
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call125.4, ptr %4, align 4
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call125.4, ptr %10, align 4
  br label %for.inc151.4

for.inc151.4:                                     ; preds = %if.then143.4, %if.end135.4.for.inc151.4_crit_edge
  %call125.5 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 5), ptr noundef nonnull %config) #7
  store ptr %call125.5, ptr getelementptr inbounds (%struct.bd957x_data, ptr @bd957x_regulators, i32 0, i32 0, i32 5, i32 2), align 4
  %cmp.i300.5 = icmp ugt ptr %call125.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300.5, label %for.inc151.4.cleanup147_crit_edge, label %if.end135.5

for.inc151.4.cleanup147_crit_edge:                ; preds = %for.inc151.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

if.end135.5:                                      ; preds = %for.inc151.4
  %82 = ptrtoint ptr %ena_gpiod136 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %ena_gpiod136, align 4
  br i1 %may_have_irqs.0.off0327335340345350355, label %if.then155, label %if.end135.5.cleanup209_crit_edge

if.end135.5.cleanup209_crit_edge:                 ; preds = %if.end135.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.then155:                                       ; preds = %if.end135.5
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call125.5, ptr %5, align 4
  %call156 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  %call159 = call ptr @devm_regulator_irq_helper(ptr noundef %dev, ptr noundef nonnull @bd957x_probe.bd9576_notif_uvd, i32 noundef %call156, i32 noundef 0, i32 noundef 198, ptr noundef null, ptr noundef nonnull %rdevs, i32 noundef 6) #7
  %cmp.i301 = icmp ugt ptr %call159, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then161, label %if.then155.if.end170_crit_edge

if.then155.if.end170_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

if.then161:                                       ; preds = %if.then155
  %cmp163 = icmp eq ptr %call159, inttoptr (i32 -517 to ptr)
  br i1 %cmp163, label %if.then161.cleanup209_crit_edge, label %do.end168

if.then161.cleanup209_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

do.end168:                                        ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull %call159) #10
  br label %if.end170

if.end170:                                        ; preds = %do.end168, %if.then155.if.end170_crit_edge
  %call171 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #7
  %call174 = call ptr @devm_regulator_irq_helper(ptr noundef %dev, ptr noundef nonnull @bd957x_probe.bd9576_notif_ovd, i32 noundef %call171, i32 noundef 0, i32 noundef 264, ptr noundef null, ptr noundef nonnull %ovd_devs, i32 noundef 5) #7
  %cmp.i302 = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %if.then176, label %if.end170.if.end185_crit_edge

if.end170.if.end185_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then176:                                       ; preds = %if.end170
  %cmp178 = icmp eq ptr %call174, inttoptr (i32 -517 to ptr)
  br i1 %cmp178, label %if.then176.cleanup209_crit_edge, label %do.end183

if.then176.cleanup209_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

do.end183:                                        ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull %call174) #10
  br label %if.end185

if.end185:                                        ; preds = %do.end183, %if.end170.if.end185_crit_edge
  %call186 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #7
  %call189 = call ptr @devm_regulator_irq_helper(ptr noundef %dev, ptr noundef nonnull @bd957x_probe.bd9576_notif_temp, i32 noundef %call186, i32 noundef 0, i32 noundef 544, ptr noundef null, ptr noundef nonnull %rdevs, i32 noundef 6) #7
  %cmp.i303 = icmp ugt ptr %call189, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then191, label %if.end185.cleanup209_crit_edge

if.end185.cleanup209_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

if.then191:                                       ; preds = %if.end185
  %cmp193 = icmp eq ptr %call189, inttoptr (i32 -517 to ptr)
  br i1 %cmp193, label %if.then191.cleanup209_crit_edge, label %do.end198

if.then191.cleanup209_crit_edge:                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup209

do.end198:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull %call189) #10
  br label %cleanup209

cleanup209:                                       ; preds = %do.end198, %if.then191.cleanup209_crit_edge, %if.end185.cleanup209_crit_edge, %if.then176.cleanup209_crit_edge, %if.then161.cleanup209_crit_edge, %if.end135.5.cleanup209_crit_edge, %cleanup147, %if.then94.5.cleanup209_crit_edge, %if.else100.5.cleanup209_crit_edge, %if.then94.4.cleanup209_crit_edge, %if.else100.4.cleanup209_crit_edge, %if.then94.3.cleanup209_crit_edge, %if.else100.3.cleanup209_crit_edge, %if.then94.2.cleanup209_crit_edge, %if.else100.2.cleanup209_crit_edge, %if.then94.1.cleanup209_crit_edge, %if.else100.1.cleanup209_crit_edge, %if.else100.cleanup209_crit_edge, %if.then94.cleanup209_crit_edge, %do.end88, %cleanup.thread, %do.end
  %retval.7 = phi i32 [ -22, %do.end88 ], [ %69, %cleanup147 ], [ -22, %do.end ], [ %26, %cleanup.thread ], [ 0, %do.end198 ], [ 0, %if.end185.cleanup209_crit_edge ], [ -517, %if.then161.cleanup209_crit_edge ], [ -517, %if.then176.cleanup209_crit_edge ], [ -517, %if.then191.cleanup209_crit_edge ], [ 0, %if.end135.5.cleanup209_crit_edge ], [ -22, %if.then94.5.cleanup209_crit_edge ], [ -22, %if.else100.5.cleanup209_crit_edge ], [ -22, %if.then94.4.cleanup209_crit_edge ], [ -22, %if.else100.4.cleanup209_crit_edge ], [ -22, %if.then94.3.cleanup209_crit_edge ], [ -22, %if.else100.3.cleanup209_crit_edge ], [ -22, %if.then94.2.cleanup209_crit_edge ], [ -22, %if.else100.2.cleanup209_crit_edge ], [ -22, %if.then94.1.cleanup209_crit_edge ], [ -22, %if.else100.1.cleanup209_crit_edge ], [ -22, %if.else100.cleanup209_crit_edge ], [ -22, %if.then94.cleanup209_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ovd_devs) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rdevs) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_uvd_handler(i32 noundef %irq, ptr nocapture noundef %rid, ptr noundef %dev_mask) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !182
  %data = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 2
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.bd957x_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 41, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 111
  %opaque = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 3
  %7 = ptrtoint ptr %opaque to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %opaque, align 4
  %and1 = and i32 %6, 15
  %and2 = lshr i32 %6, 1
  %shr = and i32 %and2, 16
  %or = or i32 %shr, %and1
  %shr4 = and i32 %and2, 32
  %or5 = or i32 %or, %shr4
  %8 = ptrtoint ptr %dev_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or5, ptr %dev_mask, align 4
  %call6 = call i32 @_find_next_bit_be(ptr noundef %dev_mask, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call6)
  %cmp29 = icmp slt i32 %call6, 6
  br i1 %cmp29, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.030 = phi i32 [ %call8, %for.body.for.body_crit_edge ], [ %call6, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rid, align 4
  %uvd_notif = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 %i.030, i32 4
  %11 = ptrtoint ptr %uvd_notif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uvd_notif, align 4
  %notifs = getelementptr %struct.regulator_err_state, ptr %10, i32 %i.030, i32 1
  %13 = ptrtoint ptr %notifs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %notifs, align 4
  %uvd_err = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 %i.030, i32 7
  %14 = ptrtoint ptr %uvd_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uvd_err, align 4
  %errors = getelementptr %struct.regulator_err_state, ptr %10, i32 %i.030, i32 2
  %16 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %errors, align 4
  %add = add nsw i32 %i.030, 1
  %call8 = call i32 @_find_next_bit_be(ptr noundef %dev_mask, i32 noundef 6, i32 noundef %add) #7
  %cmp = icmp slt i32 %call8, 6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and10 = and i32 %20, 111
  %call11 = call i32 @regmap_write(ptr noundef %18, i32 noundef 41, i32 noundef %and10) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_uvd_renable(ptr nocapture noundef %rid) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !182
  %data.i = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 2
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %regmap.i = getelementptr inbounds %struct.bd957x_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 41, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bd9576_renable.exit_crit_edge

entry.bd9576_renable.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9576_renable.exit

if.end.i:                                         ; preds = %entry
  %opaque.i = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 3
  %5 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opaque.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 111
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and.i)
  %cmp.i = icmp eq i32 %6, %and.i
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 41, i32 noundef %6) #7
  br label %bd9576_renable.exit

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %11 = ptrtoint ptr %opaque.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %opaque.i, align 4
  br label %bd9576_renable.exit

bd9576_renable.exit:                              ; preds = %if.end7.i, %if.then3.i, %entry.bd9576_renable.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.then3.i ], [ 0, %if.end7.i ], [ 1, %entry.bd9576_renable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_ovd_handler(i32 noundef %irq, ptr nocapture noundef %rid, ptr noundef %dev_mask) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !182
  %data = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 2
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.bd957x_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 40, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 47
  %opaque = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 3
  %7 = ptrtoint ptr %opaque to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %opaque, align 4
  %8 = ptrtoint ptr %dev_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dev_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %6, 15
  %and6 = lshr i32 %6, 1
  %shr = and i32 %and6, 16
  %or = or i32 %shr, %and5
  %9 = ptrtoint ptr %dev_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %dev_mask, align 4
  %call7 = call i32 @_find_next_bit_be(ptr noundef %dev_mask, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call7)
  %cmp29 = icmp slt i32 %call7, 5
  br i1 %cmp29, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.030 = phi i32 [ %call9, %for.body.for.body_crit_edge ], [ %call7, %if.end4.for.body_crit_edge ]
  %10 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rid, align 4
  %ovd_notif = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 %i.030, i32 3
  %12 = ptrtoint ptr %ovd_notif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ovd_notif, align 4
  %notifs = getelementptr %struct.regulator_err_state, ptr %11, i32 %i.030, i32 1
  %14 = ptrtoint ptr %notifs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %notifs, align 4
  %ovd_err = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 %i.030, i32 6
  %15 = ptrtoint ptr %ovd_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ovd_err, align 4
  %errors = getelementptr %struct.regulator_err_state, ptr %11, i32 %i.030, i32 2
  %17 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %errors, align 4
  %add = add nsw i32 %i.030, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef %dev_mask, i32 noundef 5, i32 noundef %add) #7
  %cmp = icmp slt i32 %call9, 5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %and11 = and i32 %21, 47
  %call12 = call i32 @regmap_write(ptr noundef %19, i32 noundef 40, i32 noundef %and11) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_ovd_renable(ptr nocapture noundef %rid) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !182
  %data.i = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 2
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %regmap.i = getelementptr inbounds %struct.bd957x_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 40, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bd9576_renable.exit_crit_edge

entry.bd9576_renable.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9576_renable.exit

if.end.i:                                         ; preds = %entry
  %opaque.i = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 3
  %5 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opaque.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 47
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and.i)
  %cmp.i = icmp eq i32 %6, %and.i
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 40, i32 noundef %6) #7
  br label %bd9576_renable.exit

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %11 = ptrtoint ptr %opaque.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %opaque.i, align 4
  br label %bd9576_renable.exit

bd9576_renable.exit:                              ; preds = %if.end7.i, %if.then3.i, %entry.bd9576_renable.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.then3.i ], [ 0, %if.end7.i ], [ 1, %entry.bd9576_renable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_thermal_handler(i32 noundef %irq, ptr nocapture noundef readonly %rid, ptr nocapture noundef writeonly %dev_mask) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !182
  %data = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 2
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.bd957x_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 35, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dev_mask, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 63, ptr %dev_mask, align 4
  %9 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rid, align 4
  %temp_notif = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 0, i32 5
  %11 = ptrtoint ptr %temp_notif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp_notif, align 4
  %notifs = getelementptr %struct.regulator_err_state, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %notifs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %notifs, align 4
  %temp_err = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 0, i32 8
  %14 = ptrtoint ptr %temp_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp_err, align 4
  %errors = getelementptr %struct.regulator_err_state, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %errors, align 4
  %17 = load ptr, ptr %rid, align 4
  %temp_notif.1 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %temp_notif.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp_notif.1, align 4
  %notifs.1 = getelementptr %struct.regulator_err_state, ptr %17, i32 1, i32 1
  %20 = ptrtoint ptr %notifs.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %notifs.1, align 4
  %temp_err.1 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %temp_err.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %temp_err.1, align 4
  %errors.1 = getelementptr %struct.regulator_err_state, ptr %17, i32 1, i32 2
  %23 = ptrtoint ptr %errors.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %errors.1, align 4
  %24 = load ptr, ptr %rid, align 4
  %temp_notif.2 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %temp_notif.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %temp_notif.2, align 4
  %notifs.2 = getelementptr %struct.regulator_err_state, ptr %24, i32 2, i32 1
  %27 = ptrtoint ptr %notifs.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %notifs.2, align 4
  %temp_err.2 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 2, i32 8
  %28 = ptrtoint ptr %temp_err.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temp_err.2, align 4
  %errors.2 = getelementptr %struct.regulator_err_state, ptr %24, i32 2, i32 2
  %30 = ptrtoint ptr %errors.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %errors.2, align 4
  %31 = load ptr, ptr %rid, align 4
  %temp_notif.3 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 3, i32 5
  %32 = ptrtoint ptr %temp_notif.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_notif.3, align 4
  %notifs.3 = getelementptr %struct.regulator_err_state, ptr %31, i32 3, i32 1
  %34 = ptrtoint ptr %notifs.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %notifs.3, align 4
  %temp_err.3 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %temp_err.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %temp_err.3, align 4
  %errors.3 = getelementptr %struct.regulator_err_state, ptr %31, i32 3, i32 2
  %37 = ptrtoint ptr %errors.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %errors.3, align 4
  %38 = load ptr, ptr %rid, align 4
  %temp_notif.4 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 4, i32 5
  %39 = ptrtoint ptr %temp_notif.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %temp_notif.4, align 4
  %notifs.4 = getelementptr %struct.regulator_err_state, ptr %38, i32 4, i32 1
  %41 = ptrtoint ptr %notifs.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %notifs.4, align 4
  %temp_err.4 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %temp_err.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %temp_err.4, align 4
  %errors.4 = getelementptr %struct.regulator_err_state, ptr %38, i32 4, i32 2
  %44 = ptrtoint ptr %errors.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %errors.4, align 4
  %45 = load ptr, ptr %rid, align 4
  %temp_notif.5 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 5, i32 5
  %46 = ptrtoint ptr %temp_notif.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %temp_notif.5, align 4
  %notifs.5 = getelementptr %struct.regulator_err_state, ptr %45, i32 5, i32 1
  %48 = ptrtoint ptr %notifs.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %notifs.5, align 4
  %temp_err.5 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %2, i32 0, i32 5, i32 8
  %49 = ptrtoint ptr %temp_err.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %temp_err.5, align 4
  %errors.5 = getelementptr %struct.regulator_err_state, ptr %45, i32 5, i32 2
  %51 = ptrtoint ptr %errors.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %errors.5, align 4
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_write(ptr noundef %53, i32 noundef 35, i32 noundef 32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.then2 ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_temp_renable(ptr nocapture noundef %rid) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !182
  %data.i = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 2
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %regmap.i = getelementptr inbounds %struct.bd957x_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 35, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bd9576_renable.exit_crit_edge

entry.bd9576_renable.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9576_renable.exit

if.end.i:                                         ; preds = %entry
  %opaque.i = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 3
  %5 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opaque.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and.i)
  %cmp.i = icmp eq i32 %6, %and.i
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 35, i32 noundef %6) #7
  br label %bd9576_renable.exit

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %11 = ptrtoint ptr %opaque.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %opaque.i, align 4
  br label %bd9576_renable.exit

bd9576_renable.exit:                              ; preds = %if.end7.i, %if.then3.i, %entry.bd9576_renable.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.then3.i ], [ 0, %if.end7.i ], [ 1, %entry.bd9576_renable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_irq_helper(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vouts1_get_fet_res(ptr noundef %np, ptr nocapture noundef writeonly %desc, ptr nocapture noundef readnone %cfg) #2 align 64 {
entry:
  %uohms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uohms) #7
  %0 = ptrtoint ptr %uohms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uohms, align 4, !annotation !182
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.49, ptr noundef nonnull %uohms, i32 noundef 1, i32 noundef 0) #7
  %1 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %if.end2
    i32 -22, label %if.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %uohms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uohms, align 4
  %ocw_rfet = getelementptr inbounds %struct.bd957x_regulator_data, ptr %desc, i32 0, i32 19
  %5 = ptrtoint ptr %ocw_rfet to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ocw_rfet, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end2 ], [ %1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uohms) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bd957x_list_voltage(ptr nocapture noundef readonly %rdev, i32 noundef %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsel_mask, align 4
  %and = and i32 %selector, 127
  %and2 = and i32 %and, %3
  %and3 = and i32 %selector, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_voltages, align 4
  %div14 = lshr i32 %5, 1
  %add = add nuw i32 %div14, %and2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index.0 = phi i32 [ %and2, %entry.if.end_crit_edge ], [ %add, %if.then ]
  %n_voltages4 = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %n_voltages4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_voltages4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0, i32 %7)
  %cmp.not = icmp ult i32 %index.0, %7
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %volt_table, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %index.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end6 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_set_ovp(ptr noundef %rdev, i32 noundef %lim_uV, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %found.i = alloca i8, align 1
  %sel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %severity)
  %cmp = icmp eq i32 %severity, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lim_uV)
  %tobool1.not = icmp eq i32 %lim_uV, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.cond = and i1 %tobool1.not, %enable
  %spec.select = select i1 %or.cond, i32 0, i32 -22
  br label %cleanup

if.end3:                                          ; preds = %entry
  %0 = xor i1 %tobool1.not, %enable
  br i1 %0, label %if.end11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %xvd_mask = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %xvd_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xvd_mask, align 4
  %ovd_reg = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 12
  %5 = ptrtoint ptr %ovd_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ovd_reg, align 4
  %ovd_notif = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %ovd_notif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ovd_notif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %9 = zext i32 %severity to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %severity, label %if.then13.if.end18_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true3.i
  ]

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp1.not.i = icmp eq i32 %8, 4
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end18_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i.if.end18_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true3.i:                                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 32768
  br i1 %cmp5.not.i, label %land.lhs.true3.i.if.end18_crit_edge, label %land.lhs.true3.i.do.end.i_crit_edge

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i.if.end18_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end.i:                                         ; preds = %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  %call.i = tail call ptr @rdev_get_dev(ptr noundef %rdev) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call.i, ptr noundef nonnull @.str.50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp6.i = icmp eq i32 %severity, 2
  br i1 %cmp6.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.if.end18.sink.split_crit_edge

do.end.i.if.end18.sink.split_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp17 = icmp eq i32 %severity, 2
  %spec.select.i = select i1 %cmp17, i32 32768, i32 4
  %spec.select7.i = select i1 %cmp17, i32 256, i32 8
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.else, %do.end.i.if.end18.sink.split_crit_edge
  %.sink46 = phi i32 [ %spec.select.i, %if.else ], [ 4, %do.end.i.if.end18.sink.split_crit_edge ]
  %.sink = phi i32 [ %spec.select7.i, %if.else ], [ 8, %do.end.i.if.end18.sink.split_crit_edge ]
  %10 = ptrtoint ptr %ovd_notif to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink46, ptr %ovd_notif, align 4
  %11 = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %land.lhs.true3.i.if.end18_crit_edge, %land.lhs.true.i.if.end18_crit_edge, %if.then13.if.end18_crit_edge
  %xvd_ranges = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 9
  %13 = ptrtoint ptr %xvd_ranges to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xvd_ranges, align 4
  %num_xvd_ranges = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 10
  %15 = ptrtoint ptr %num_xvd_ranges to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_xvd_ranges, align 4
  %regmap = getelementptr inbounds %struct.bd957x_data, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found.i) #7
  %19 = ptrtoint ptr %found.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %found.i, align 1, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i) #7
  %20 = ptrtoint ptr %sel.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sel.i, align 4
  br i1 %tobool1.not, label %if.end18.if.end7.i_crit_edge, label %if.then.i

if.end18.if.end7.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end18
  %call.i39 = call i32 @linear_range_get_selector_low_array(ptr noundef %14, i32 noundef %16, i32 noundef %lim_uV, ptr noundef nonnull %sel.i, ptr noundef nonnull %found.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool1.not.i = icmp eq i32 %call.i39, 0
  br i1 %tobool1.not.i, label %if.end.i40, label %if.then.i.bd9576_set_limit.exit_crit_edge

if.then.i.bd9576_set_limit.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9576_set_limit.exit

if.end.i40:                                       ; preds = %if.then.i
  %21 = ptrtoint ptr %found.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %found.i, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i, label %do.end.i41, label %if.end.i40.if.end7.i_crit_edge

if.end.i40.if.end7.i_crit_edge:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

do.end.i41:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call ptr @regmap_get_device(ptr noundef %18) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call5.i, ptr noundef nonnull @.str.52, i32 noundef %lim_uV) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i41, %if.end.i40.if.end7.i_crit_edge, %if.end18.if.end7.i_crit_edge
  %23 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sel.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %6, i32 noundef %4, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %bd9576_set_limit.exit

bd9576_set_limit.exit:                            ; preds = %if.end7.i, %if.then.i.bd9576_set_limit.exit_crit_edge
  %retval.0.i42 = phi i32 [ %call.i.i, %if.end7.i ], [ %call.i39, %if.then.i.bd9576_set_limit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bd9576_set_limit.exit, %do.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i42, %bd9576_set_limit.exit ], [ -22, %if.end3.cleanup_crit_edge ], [ %spec.select, %if.then ], [ 0, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_set_uvp(ptr noundef %rdev, i32 noundef %lim_uV, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %found.i = alloca i8, align 1
  %sel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %severity)
  %cmp = icmp eq i32 %severity, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lim_uV)
  %tobool1.not = icmp eq i32 %lim_uV, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.cond = and i1 %tobool1.not, %enable
  %spec.select = select i1 %or.cond, i32 0, i32 -22
  br label %cleanup

if.end3:                                          ; preds = %entry
  %0 = xor i1 %tobool1.not, %enable
  br i1 %0, label %if.end11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %xvd_mask = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %xvd_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xvd_mask, align 4
  %uvd_reg = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 13
  %5 = ptrtoint ptr %uvd_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uvd_reg, align 4
  %uvd_notif = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %uvd_notif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uvd_notif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %9 = zext i32 %severity to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %severity, label %if.then13.if.end18_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true3.i
  ]

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.not.i = icmp eq i32 %8, 1
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end18_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i.if.end18_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true3.i:                                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 8192
  br i1 %cmp5.not.i, label %land.lhs.true3.i.if.end18_crit_edge, label %land.lhs.true3.i.do.end.i_crit_edge

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i.if.end18_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end.i:                                         ; preds = %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  %call.i = tail call ptr @rdev_get_dev(ptr noundef %rdev) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call.i, ptr noundef nonnull @.str.54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp6.i = icmp eq i32 %severity, 2
  br i1 %cmp6.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.if.end18.sink.split_crit_edge

do.end.i.if.end18.sink.split_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.sink.split

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp17 = icmp eq i32 %severity, 2
  %spec.select.i = select i1 %cmp17, i32 8192, i32 1
  %spec.select7.i = select i1 %cmp17, i32 64, i32 2
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.else, %do.end.i.if.end18.sink.split_crit_edge
  %.sink46 = phi i32 [ %spec.select.i, %if.else ], [ 1, %do.end.i.if.end18.sink.split_crit_edge ]
  %.sink = phi i32 [ %spec.select7.i, %if.else ], [ 2, %do.end.i.if.end18.sink.split_crit_edge ]
  %10 = ptrtoint ptr %uvd_notif to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink46, ptr %uvd_notif, align 4
  %11 = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %land.lhs.true3.i.if.end18_crit_edge, %land.lhs.true.i.if.end18_crit_edge, %if.then13.if.end18_crit_edge
  %xvd_ranges = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 9
  %13 = ptrtoint ptr %xvd_ranges to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xvd_ranges, align 4
  %num_xvd_ranges = getelementptr inbounds %struct.bd957x_regulator_data, ptr %2, i32 0, i32 10
  %15 = ptrtoint ptr %num_xvd_ranges to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_xvd_ranges, align 4
  %regmap = getelementptr inbounds %struct.bd957x_data, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found.i) #7
  %19 = ptrtoint ptr %found.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %found.i, align 1, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i) #7
  %20 = ptrtoint ptr %sel.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sel.i, align 4
  br i1 %tobool1.not, label %if.end18.if.end7.i_crit_edge, label %if.then.i

if.end18.if.end7.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end18
  %call.i39 = call i32 @linear_range_get_selector_low_array(ptr noundef %14, i32 noundef %16, i32 noundef %lim_uV, ptr noundef nonnull %sel.i, ptr noundef nonnull %found.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool1.not.i = icmp eq i32 %call.i39, 0
  br i1 %tobool1.not.i, label %if.end.i40, label %if.then.i.bd9576_set_limit.exit_crit_edge

if.then.i.bd9576_set_limit.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9576_set_limit.exit

if.end.i40:                                       ; preds = %if.then.i
  %21 = ptrtoint ptr %found.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %found.i, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i, label %do.end.i41, label %if.end.i40.if.end7.i_crit_edge

if.end.i40.if.end7.i_crit_edge:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

do.end.i41:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call ptr @regmap_get_device(ptr noundef %18) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call5.i, ptr noundef nonnull @.str.52, i32 noundef %lim_uV) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i41, %if.end.i40.if.end7.i_crit_edge, %if.end18.if.end7.i_crit_edge
  %23 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sel.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %6, i32 noundef %4, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %bd9576_set_limit.exit

bd9576_set_limit.exit:                            ; preds = %if.end7.i, %if.then.i.bd9576_set_limit.exit_crit_edge
  %retval.0.i42 = phi i32 [ %call.i.i, %if.end7.i ], [ %call.i39, %if.then.i.bd9576_set_limit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bd9576_set_limit.exit, %do.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i42, %bd9576_set_limit.exit ], [ -22, %if.end3.cleanup_crit_edge ], [ %spec.select, %if.then ], [ 0, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_set_tw(ptr noundef %rdev, i32 noundef %lim, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lim)
  %tobool.not = icmp eq i32 %lim, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %severity)
  %cmp = icmp eq i32 %severity, 0
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %. = select i1 %enable, i32 0, i32 -22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %temp_notif = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %temp_notif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp_notif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %if.then6

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.end4
  %4 = zext i32 %severity to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %severity, label %if.then6.if.end10_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true3.i
  ]

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 16
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true3.i:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %cmp5.not.i = icmp eq i32 %3, 65536
  br i1 %cmp5.not.i, label %land.lhs.true3.i.if.end10_crit_edge, label %land.lhs.true3.i.do.end.i_crit_edge

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i.if.end10_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end.i:                                         ; preds = %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  %call.i = tail call ptr @rdev_get_dev(ptr noundef %rdev) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call.i, ptr noundef nonnull @.str.56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp6.i = icmp eq i32 %severity, 2
  br i1 %cmp6.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.if.end10_crit_edge

do.end.i.if.end10_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end.i.if.end10_crit_edge, %land.lhs.true3.i.if.end10_crit_edge, %land.lhs.true.i.if.end10_crit_edge, %if.then6.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp12 = icmp eq i32 %severity, 2
  %..i = select i1 %cmp12, i32 65536, i32 16
  %.16.i = select i1 %cmp12, i32 512, i32 32
  %.sink15.i = select i1 %enable, i32 %..i, i32 0
  %.sink.i = select i1 %enable, i32 %.16.i, i32 0
  %5 = ptrtoint ptr %temp_notif to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink15.i, ptr %temp_notif, align 4
  %temp_err5.i = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %temp_err5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink.i, ptr %temp_err5.i, align 4
  br i1 %enable, label %if.then14, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end10
  %temp_notif18 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %call, i32 0, i32 0, i32 5
  %7 = ptrtoint ptr %temp_notif18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp_notif18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.bd957x_data, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 36, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %temp_notif18.1 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %call, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %temp_notif18.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp_notif18.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not.1 = icmp eq i32 %12, 0
  br i1 %tobool19.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %temp_notif18.2 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %call, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %temp_notif18.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_notif18.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not.2 = icmp eq i32 %14, 0
  br i1 %tobool19.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %temp_notif18.3 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %call, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %temp_notif18.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp_notif18.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not.3 = icmp eq i32 %16, 0
  br i1 %tobool19.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %temp_notif18.4 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %call, i32 0, i32 4, i32 5
  %17 = ptrtoint ptr %temp_notif18.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_notif18.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not.4 = icmp eq i32 %18, 0
  br i1 %tobool19.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %temp_notif18.5 = getelementptr [6 x %struct.bd957x_regulator_data], ptr %call, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %temp_notif18.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp_notif18.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not.5 = icmp eq i32 %20, 0
  br i1 %tobool19.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  %regmap22 = getelementptr inbounds %struct.bd957x_data, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap22, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 36, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then14, %for.body.preheader.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i39, %if.then14 ], [ %call.i40, %for.cond.5 ], [ -22, %entry.cleanup_crit_edge ], [ %., %if.then1 ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_selector_low_array(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bd957x_vout34_list_voltage(ptr nocapture noundef readonly %rdev, i32 noundef %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsel_mask, align 4
  %and = and i32 %selector, 127
  %and2 = and i32 %and, %3
  %mul = mul nuw nsw i32 %and2, 10000
  %and3 = and i32 %selector, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %fixed_uV = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %fixed_uV to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fixed_uV, align 4
  %6 = sub nsw i32 0, %mul
  %retval.0.p = select i1 %tobool.not, i32 %6, i32 %mul
  %retval.0 = add i32 %5, %retval.0.p
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_set_ocp(ptr noundef %rdev, i32 noundef %lim_uA, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %found.i = alloca i8, align 1
  %sel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lim_uA)
  %tobool.not = icmp ne i32 %lim_uA, 0
  %or.cond = xor i1 %tobool.not, %enable
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %oc_supported = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %oc_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oc_supported, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %severity)
  %cmp = icmp eq i32 %severity, 0
  br i1 %cmp, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %ocp_reg = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %ocp_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ocp_reg, align 4
  %ocp_mask = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ocp_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ocp_mask, align 4
  %ocw_rfet = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %ocw_rfet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocw_rfet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %div = udiv i32 %9, 1000
  %spec.select = select i1 %tobool9.not, i32 1000, i32 %div
  %spec.select61 = select i1 %tobool9.not, ptr @voutS1_ocp_ranges_internal, ptr @voutS1_ocp_ranges
  br label %if.end31

if.else13:                                        ; preds = %if.end7
  %ocw_reg = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %ocw_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ocw_reg, align 4
  %ocw_mask = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %ocw_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ocw_mask, align 4
  %ocw_rfet14 = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %ocw_rfet14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ocw_rfet14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  %div18 = udiv i32 %15, 1000
  %rfet.0 = select i1 %tobool15.not, i32 1000, i32 %div18
  %range.0 = select i1 %tobool15.not, ptr @voutS1_ocw_ranges_internal, ptr @voutS1_ocw_ranges
  %uvd_notif = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %uvd_notif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uvd_notif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.else26, label %if.then22

if.then22:                                        ; preds = %if.else13
  %18 = zext i32 %severity to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %severity, label %if.then22.if.end31_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true3.i
  ]

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true.i:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp1.not.i = icmp eq i32 %17, 2
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end31_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i.if.end31_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true3.i:                                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %17)
  %cmp5.not.i = icmp eq i32 %17, 16384
  br i1 %cmp5.not.i, label %land.lhs.true3.i.if.end31_crit_edge, label %land.lhs.true3.i.do.end.i_crit_edge

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i.if.end31_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end.i:                                         ; preds = %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  %call.i = tail call ptr @rdev_get_dev(ptr noundef %rdev) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call.i, ptr noundef nonnull @.str.58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp6.i = icmp eq i32 %severity, 2
  br i1 %cmp6.i, label %do.end.i.cleanup_crit_edge, label %if.end.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %uvd_notif to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %uvd_notif, align 4
  %20 = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %20, align 4
  br label %if.end31

if.else26:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %severity)
  %cmp27 = icmp eq i32 %severity, 2
  %spec.select.i = select i1 %cmp27, i32 16384, i32 2
  %spec.select7.i = select i1 %cmp27, i32 128, i32 4
  %22 = ptrtoint ptr %uvd_notif to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %uvd_notif, align 4
  %23 = getelementptr inbounds %struct.bd957x_regulator_data, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select7.i, ptr %23, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else26, %if.end.i, %land.lhs.true3.i.if.end31_crit_edge, %land.lhs.true.i.if.end31_crit_edge, %if.then22.if.end31_crit_edge, %if.then8
  %reg.0 = phi i32 [ %11, %if.else26 ], [ %5, %if.then8 ], [ %11, %if.then22.if.end31_crit_edge ], [ %11, %if.end.i ], [ %11, %land.lhs.true3.i.if.end31_crit_edge ], [ %11, %land.lhs.true.i.if.end31_crit_edge ]
  %mask.0 = phi i32 [ %13, %if.else26 ], [ %7, %if.then8 ], [ %13, %if.then22.if.end31_crit_edge ], [ %13, %if.end.i ], [ %13, %land.lhs.true3.i.if.end31_crit_edge ], [ %13, %land.lhs.true.i.if.end31_crit_edge ]
  %rfet.1 = phi i32 [ %rfet.0, %if.else26 ], [ %spec.select, %if.then8 ], [ %rfet.0, %if.then22.if.end31_crit_edge ], [ %rfet.0, %if.end.i ], [ %rfet.0, %land.lhs.true3.i.if.end31_crit_edge ], [ %rfet.0, %land.lhs.true.i.if.end31_crit_edge ]
  %range.1 = phi ptr [ %range.0, %if.else26 ], [ %spec.select61, %if.then8 ], [ %range.0, %if.then22.if.end31_crit_edge ], [ %range.0, %if.end.i ], [ %range.0, %land.lhs.true3.i.if.end31_crit_edge ], [ %range.0, %land.lhs.true.i.if.end31_crit_edge ]
  %div32 = sdiv i32 %lim_uA, 1000
  %mul = mul i32 %rfet.1, %div32
  %regmap = getelementptr inbounds %struct.bd957x_data, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found.i) #7
  %27 = ptrtoint ptr %found.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %found.i, align 1, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i) #7
  %28 = ptrtoint ptr %sel.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  br i1 %tobool.not.i, label %if.end31.if.end7.i_crit_edge, label %if.then.i

if.end31.if.end7.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end31
  %call.i62 = call i32 @linear_range_get_selector_low_array(ptr noundef nonnull %range.1, i32 noundef 3, i32 noundef %mul, ptr noundef nonnull %sel.i, ptr noundef nonnull %found.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool1.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool1.not.i, label %if.end.i63, label %if.then.i.bd9576_set_limit.exit_crit_edge

if.then.i.bd9576_set_limit.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9576_set_limit.exit

if.end.i63:                                       ; preds = %if.then.i
  %29 = ptrtoint ptr %found.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %found.i, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool3.not.i = icmp eq i8 %30, 0
  br i1 %tobool3.not.i, label %do.end.i64, label %if.end.i63.if.end7.i_crit_edge

if.end.i63.if.end7.i_crit_edge:                   ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

do.end.i64:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call ptr @regmap_get_device(ptr noundef %26) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call5.i, ptr noundef nonnull @.str.52, i32 noundef %mul) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i64, %if.end.i63.if.end7.i_crit_edge, %if.end31.if.end7.i_crit_edge
  %31 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %reg.0, i32 noundef %mask.0, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %bd9576_set_limit.exit

bd9576_set_limit.exit:                            ; preds = %if.end7.i, %if.then.i.bd9576_set_limit.exit_crit_edge
  %retval.0.i65 = phi i32 [ %call.i.i, %if.end7.i ], [ %call.i62, %if.then.i.bd9576_set_limit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bd9576_set_limit.exit, %do.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i65, %bd9576_set_limit.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !50, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !160, !161, !162, !164, !166, !168, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__initcall__kmod_bd9576_regulator__291_1137_bd957x_regulator_init6, !1, !"__initcall__kmod_bd9576_regulator__291_1137_bd957x_regulator_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1137, i32 1}
!2 = !{ptr @__exitcall_bd957x_regulator_exit, !1, !"__exitcall_bd957x_regulator_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1139, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1140, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1141, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias296, !11, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!11 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1142, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1131, i32 11}
!14 = !{ptr @bd957x_regulator, !15, !"bd957x_regulator", i1 false, i1 false}
!15 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1129, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/bd9576-regulator.c", i32 909, i32 11}
!18 = !{ptr @bd957x_probe.bd9576_notif_uvd, !19, !"bd9576_notif_uvd", i1 false, i1 false}
!19 = !{!"../drivers/regulator/bd9576-regulator.c", i32 908, i32 41}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/regulator/bd9576-regulator.c", i32 916, i32 11}
!22 = !{ptr @bd957x_probe.bd9576_notif_ovd, !23, !"bd9576_notif_ovd", i1 false, i1 false}
!23 = !{!"../drivers/regulator/bd9576-regulator.c", i32 915, i32 41}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/bd9576-regulator.c", i32 923, i32 11}
!26 = !{ptr @bd957x_probe.bd9576_notif_temp, !27, !"bd9576_notif_temp", i1 false, i1 false}
!27 = !{!"../drivers/regulator/bd9576-regulator.c", i32 922, i32 41}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/bd9576-regulator.c", i32 937, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bd957x_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @bd957x_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/bd9576-regulator.c", i32 943, i32 7}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/bd9576-regulator.c", i32 947, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bd957x_probe.__UNIQUE_ID_ddebug288, !39, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/bd9576-regulator.c", i32 953, i32 8}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/bd9576-regulator.c", i32 954, i32 23}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/bd9576-regulator.c", i32 975, i32 4}
!48 = !{ptr @bd957x_probe._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bd957x_probe._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/bd9576-regulator.c", i32 990, i32 7}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/bd9576-regulator.c", i32 999, i32 3}
!54 = !{ptr @bd957x_probe.__UNIQUE_ID_ddebug289, !53, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1002, i32 3}
!57 = !{ptr @bd957x_probe.__UNIQUE_ID_ddebug290, !56, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1005, i32 3}
!60 = !{ptr @bd957x_probe._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bd957x_probe._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1040, i32 4}
!64 = !{ptr @bd957x_probe._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @bd957x_probe._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1090, i32 4}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @bd957x_probe._entry.26, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @bd957x_probe._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1103, i32 4}
!73 = !{ptr @bd957x_probe._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bd957x_probe._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1115, i32 4}
!77 = !{ptr @bd957x_probe._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @bd957x_probe._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/bd9576-regulator.c", i32 598, i32 13}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/bd9576-regulator.c", i32 599, i32 17}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/bd9576-regulator.c", i32 600, i32 24}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/bd9576-regulator.c", i32 621, i32 13}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/bd9576-regulator.c", i32 622, i32 17}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/bd9576-regulator.c", i32 644, i32 13}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/bd9576-regulator.c", i32 645, i32 17}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/bd9576-regulator.c", i32 666, i32 13}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/bd9576-regulator.c", i32 667, i32 17}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/bd9576-regulator.c", i32 689, i32 13}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/bd9576-regulator.c", i32 690, i32 17}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/bd9576-regulator.c", i32 712, i32 13}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/bd9576-regulator.c", i32 713, i32 17}
!105 = !{ptr @bd957x_regulators, !106, !"bd957x_regulators", i1 false, i1 false}
!106 = !{!"../drivers/regulator/bd9576-regulator.c", i32 594, i32 27}
!107 = !{ptr @vout1_volt_table, !108, !"vout1_volt_table", i1 false, i1 false}
!108 = !{!"../drivers/regulator/bd9576-regulator.c", i32 31, i32 27}
!109 = !{ptr @vout1_xvd_ranges, !110, !"vout1_xvd_ranges", i1 false, i1 false}
!110 = !{!"../drivers/regulator/bd9576-regulator.c", i32 52, i32 34}
!111 = !{ptr @vout2_volt_table, !112, !"vout2_volt_table", i1 false, i1 false}
!112 = !{!"../drivers/regulator/bd9576-regulator.c", i32 38, i32 27}
!113 = !{ptr @vout234_xvd_ranges, !114, !"vout234_xvd_ranges", i1 false, i1 false}
!114 = !{!"../drivers/regulator/bd9576-regulator.c", i32 58, i32 34}
!115 = !{ptr @voutl1_volt_table, !116, !"voutl1_volt_table", i1 false, i1 false}
!116 = !{!"../drivers/regulator/bd9576-regulator.c", i32 45, i32 27}
!117 = !{ptr @voutL1_xvd_ranges, !118, !"voutL1_xvd_ranges", i1 false, i1 false}
!118 = !{!"../drivers/regulator/bd9576-regulator.c", i32 64, i32 34}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/bd9576-regulator.c", i32 583, i32 33}
!121 = !{ptr @bd9576_ops_arr, !122, !"bd9576_ops_arr", i1 false, i1 false}
!122 = !{!"../drivers/regulator/bd9576-regulator.c", i32 564, i32 37}
!123 = !{ptr @bd9576_ops, !124, !"bd9576_ops", i1 false, i1 false}
!124 = !{!"../drivers/regulator/bd9576-regulator.c", i32 546, i32 35}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/bd9576-regulator.c", i32 282, i32 3}
!127 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @check_ovd_flag_mismatch._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @check_ovd_flag_mismatch._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/bd9576-regulator.c", i32 230, i32 4}
!132 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @bd9576_set_limit._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @bd9576_set_limit._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/bd9576-regulator.c", i32 264, i32 3}
!137 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @check_uvd_flag_mismatch._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @check_uvd_flag_mismatch._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/regulator/bd9576-regulator.c", i32 300, i32 3}
!142 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @check_temp_flag_mismatch._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @check_temp_flag_mismatch._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @bd9576_vout34_ops, !146, !"bd9576_vout34_ops", i1 false, i1 false}
!146 = !{!"../drivers/regulator/bd9576-regulator.c", i32 522, i32 35}
!147 = !{ptr @bd9576_vouts1_regulator_ops, !148, !"bd9576_vouts1_regulator_ops", i1 false, i1 false}
!148 = !{!"../drivers/regulator/bd9576-regulator.c", i32 535, i32 35}
!149 = !{ptr @voutS1_ocp_ranges, !150, !"voutS1_ocp_ranges", i1 false, i1 false}
!150 = !{!"../drivers/regulator/bd9576-regulator.c", i32 88, i32 28}
!151 = !{ptr @voutS1_ocp_ranges_internal, !152, !"voutS1_ocp_ranges_internal", i1 false, i1 false}
!152 = !{!"../drivers/regulator/bd9576-regulator.c", i32 82, i32 28}
!153 = !{ptr @voutS1_ocw_ranges, !154, !"voutS1_ocw_ranges", i1 false, i1 false}
!154 = !{!"../drivers/regulator/bd9576-regulator.c", i32 76, i32 28}
!155 = !{ptr @voutS1_ocw_ranges_internal, !156, !"voutS1_ocw_ranges_internal", i1 false, i1 false}
!156 = !{!"../drivers/regulator/bd9576-regulator.c", i32 70, i32 28}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/regulator/bd9576-regulator.c", i32 245, i32 3}
!159 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @check_ocp_flag_mismatch._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @check_ocp_flag_mismatch._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @bd9573_ops_arr, !163, !"bd9573_ops_arr", i1 false, i1 false}
!163 = !{!"../drivers/regulator/bd9576-regulator.c", i32 555, i32 37}
!164 = !{ptr @bd9573_ops, !165, !"bd9573_ops", i1 false, i1 false}
!165 = !{!"../drivers/regulator/bd9576-regulator.c", i32 540, i32 35}
!166 = !{ptr @bd9573_vout34_ops, !167, !"bd9573_vout34_ops", i1 false, i1 false}
!167 = !{!"../drivers/regulator/bd9576-regulator.c", i32 516, i32 35}
!168 = !{ptr @bd9573_vouts1_regulator_ops, !169, !"bd9573_vouts1_regulator_ops", i1 false, i1 false}
!169 = !{!"../drivers/regulator/bd9576-regulator.c", i32 531, i32 35}
!170 = !{ptr @bd957x_pmic_id, !171, !"bd957x_pmic_id", i1 false, i1 false}
!171 = !{!"../drivers/regulator/bd9576-regulator.c", i32 1122, i32 40}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 2148207818, i64 2148207823, i64 2148207836, i64 2148207880, i64 2148207914, i64 2148207935}
!182 = !{!"auto-init"}
!183 = !{i8 0, i8 2}
