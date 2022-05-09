; ModuleID = '/llk/IR_all_yes/drivers/thermal/ti-soc-thermal/ti-bandgap.c_pt.bc'
source_filename = "../drivers/thermal/ti-soc-thermal/ti-bandgap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_bandgap_data = type { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [0 x %struct.ti_temp_sensor] }
%struct.ti_temp_sensor = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.ti_bandgap = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, ptr, i32, %struct.notifier_block, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.temp_sensor_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.temp_sensor_regval = type { i32, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.temp_sensor_data = type { i32, i32, i32, i32, i32, i32 }

@ti_bandgap_get_trend.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti_soc_thermal\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_bandgap_get_trend\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/thermal/ti-soc-thermal/ti-bandgap.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"The temperatures are t1 = %d and t2 = %d and trend =%d\0A\00", [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_ti_soc_thermal__190_1294_ti_bandgap_sensor_driver_init6 = internal global ptr @ti_bandgap_sensor_driver_init, section ".initcall6.init", align 4
@ti_bandgap_sensor_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_bandgap_probe, ptr @ti_bandgap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.21, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ti_bandgap_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_bandgap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_bandgap_sensor_driver_exit = internal global ptr @ti_bandgap_sensor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description191 = internal constant [68 x i8] c"ti_soc_thermal.description=OMAP4+ bandgap temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [66 x i8] c"ti_soc_thermal.file=drivers/thermal/ti-soc-thermal/ti-soc-thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [30 x i8] c"ti_soc_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [45 x i8] c"ti_soc_thermal.alias=platform:ti-soc-thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_author195 = internal constant [44 x i8] c"ti_soc_thermal.author=Texas Instrument Inc.\00", section ".modinfo", align 1
@ti_bandgap_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid bandgap pointer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_bandgap_validate\00", [44 x i8] zeroinitializer }, align 32
@ti_bandgap_validate._entry_ptr = internal global ptr @ti_bandgap_validate._entry, section ".printk_index", align 4
@ti_bandgap_validate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 324, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: sensor id out of range (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_bandgap_validate._entry_ptr.10 = internal global ptr @ti_bandgap_validate._entry.6, section ".printk_index", align 4
@ti_bandgap_read_counter_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 389, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Wrong counter delay value read from register %X\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti_bandgap_read_counter_delay\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ti_bandgap_read_counter_delay._entry_ptr = internal global ptr @ti_bandgap_read_counter_delay._entry, section ".printk_index", align 4
@ti_bandgap_write_counter_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 459, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Delay %d ms is not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti_bandgap_write_counter_delay\00", [33 x i8] zeroinitializer }, align 32
@ti_bandgap_write_counter_delay._entry_ptr = internal global ptr @ti_bandgap_write_counter_delay._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ti_bandgap_force_single_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 627, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"eocz timed out waiting high\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti_bandgap_force_single_read\00", [35 x i8] zeroinitializer }, align 32
@ti_bandgap_force_single_read._entry_ptr = internal global ptr @ti_bandgap_force_single_read._entry, section ".printk_index", align 4
@ti_bandgap_force_single_read._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 638, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"eocz timed out waiting low\0A\00", [36 x i8] zeroinitializer }, align 32
@ti_bandgap_force_single_read._entry_ptr.20 = internal global ptr @ti_bandgap_force_single_read._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti-soc-thermal\00", [17 x i8] zeroinitializer }, align 32
@of_ti_bandgap_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap34xx-bandgap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap34xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap36xx-bandgap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap36xx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-bandgap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4460-bandgap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4460_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4470-bandgap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4470_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5430-bandgap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra752-bandgap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra752_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@ti_bandgap_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ti_bandgap_suspend, ptr @ti_bandgap_resume, ptr @ti_bandgap_suspend, ptr @ti_bandgap_resume, ptr @ti_bandgap_suspend, ptr @ti_bandgap_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 894, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to fetch platform data\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_bandgap_probe\00", [47 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr = internal global ptr @ti_bandgap_probe._entry, section ".printk_index", align 4
@ti_bandgap_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 901, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"This OMAP thermal sensor is unreliable. You've been warned\0A\00", [36 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.26 = internal global ptr @ti_bandgap_probe._entry.24, section ".printk_index", align 4
@ti_bandgap_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 907, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize system tshut IRQ\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.29 = internal global ptr @ti_bandgap_probe._entry.27, section ".printk_index", align 4
@ti_bandgap_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 914, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request fclock reference\0A\00", [60 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.32 = internal global ptr @ti_bandgap_probe._entry.30, section ".printk_index", align 4
@ti_bandgap_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 921, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to request div_ts_ck clock ref\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.35 = internal global ptr @ti_bandgap_probe._entry.33, section ".printk_index", align 4
@ti_bandgap_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 939, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Non-trimmed BGAP, Temp not accurate\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.39 = internal global ptr @ti_bandgap_probe._entry.36, section ".printk_index", align 4
@ti_bandgap_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.23, ptr @.str.2, i32 947, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wrong clock rate (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.42 = internal global ptr @ti_bandgap_probe._entry.40, section ".printk_index", align 4
@ti_bandgap_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.23, ptr @.str.2, i32 953, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot re-set clock rate. Continuing\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.45 = internal global ptr @ti_bandgap_probe._entry.43, section ".printk_index", align 4
@ti_bandgap_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&bgp->lock\00", [21 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.23, ptr @.str.2, i32 1032, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize Talert IRQ\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_bandgap_probe._entry_ptr.49 = internal global ptr @ti_bandgap_probe._entry.47, section ".printk_index", align 4
@soc_no_cpu_notifier = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.65, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ti_bandgap_build._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 828, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no platform information available\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_bandgap_build\00", [47 x i8] zeroinitializer }, align 32
@ti_bandgap_build._entry_ptr = internal global ptr @ti_bandgap_build._entry, section ".printk_index", align 4
@ti_bandgap_build._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 865, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid gpio for tshut\0A\00", [40 x i8] zeroinitializer }, align 32
@ti_bandgap_build._entry_ptr.54 = internal global ptr @ti_bandgap_build._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tshut\00", [26 x i8] zeroinitializer }, align 32
@ti_bandgap_tshut_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 767, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request irq failed for TSHUT\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_bandgap_tshut_init\00", [42 x i8] zeroinitializer }, align 32
@ti_bandgap_tshut_init._entry_ptr = internal global ptr @ti_bandgap_tshut_init._entry, section ".printk_index", align 4
@ti_bandgap_tshut_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\010%s: TSHUT temperature reached. Needs shut down...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti_bandgap_tshut_irq_handler\00", [35 x i8] zeroinitializer }, align 32
@ti_bandgap_tshut_irq_handler._entry_ptr = internal global ptr @ti_bandgap_tshut_irq_handler._entry, section ".printk_index", align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"talert\00", [25 x i8] zeroinitializer }, align 32
@ti_bandgap_talert_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 799, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Request threaded irq failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti_bandgap_talert_init\00", [41 x i8] zeroinitializer }, align 32
@ti_bandgap_talert_init._entry_ptr = internal global ptr @ti_bandgap_talert_init._entry, section ".printk_index", align 4
@ti_bandgap_talert_irq_handler.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti_bandgap_talert_irq_handler\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: IRQ from %s sensor: hotevent %d coldevent %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP4430\00", [23 x i8] zeroinitializer }, align 32
@omap34xx_data = external dso_local constant %struct.ti_bandgap_data, align 4
@omap36xx_data = external dso_local constant %struct.ti_bandgap_data, align 4
@omap4430_data = external dso_local constant %struct.ti_bandgap_data, align 4
@omap4460_data = external dso_local constant %struct.ti_bandgap_data, align 4
@omap4470_data = external dso_local constant %struct.ti_bandgap_data, align 4
@omap5430_data = external dso_local constant %struct.ti_bandgap_data, align 4
@dra752_data = external dso_local constant %struct.ti_bandgap_data, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 10, i64 100, i64 250, i64 500]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 734, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [25 x i8] c"ti_bandgap_sensor_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1284, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 318, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 323, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 388, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 459, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 627, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 638, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1288, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"of_ti_bandgap_match\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1242, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"ti_bandgap_dev_pm_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1234, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 894, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 900, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 906, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 914, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 921, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 938, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 947, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 953, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 960, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1032, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"soc_no_cpu_notifier\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 879, i32 42 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 828, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 865, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 765, i32 30 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 767, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 268, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 797, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 799, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 241, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [47 x i8] c"../drivers/thermal/ti-soc-thermal/ti-bandgap.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 880, i32 15 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_ti_bandgap_sensor_driver_exit, ptr @__initcall__kmod_ti_soc_thermal__190_1294_ti_bandgap_sensor_driver_init6, ptr @ti_bandgap_build._entry, ptr @ti_bandgap_build._entry.52, ptr @ti_bandgap_build._entry_ptr, ptr @ti_bandgap_build._entry_ptr.54, ptr @ti_bandgap_force_single_read._entry, ptr @ti_bandgap_force_single_read._entry.18, ptr @ti_bandgap_force_single_read._entry_ptr, ptr @ti_bandgap_force_single_read._entry_ptr.20, ptr @ti_bandgap_probe._entry, ptr @ti_bandgap_probe._entry.24, ptr @ti_bandgap_probe._entry.27, ptr @ti_bandgap_probe._entry.30, ptr @ti_bandgap_probe._entry.33, ptr @ti_bandgap_probe._entry.36, ptr @ti_bandgap_probe._entry.40, ptr @ti_bandgap_probe._entry.43, ptr @ti_bandgap_probe._entry.47, ptr @ti_bandgap_probe._entry_ptr, ptr @ti_bandgap_probe._entry_ptr.26, ptr @ti_bandgap_probe._entry_ptr.29, ptr @ti_bandgap_probe._entry_ptr.32, ptr @ti_bandgap_probe._entry_ptr.35, ptr @ti_bandgap_probe._entry_ptr.39, ptr @ti_bandgap_probe._entry_ptr.42, ptr @ti_bandgap_probe._entry_ptr.45, ptr @ti_bandgap_probe._entry_ptr.49, ptr @ti_bandgap_read_counter_delay._entry, ptr @ti_bandgap_read_counter_delay._entry_ptr, ptr @ti_bandgap_sensor_driver_exit, ptr @ti_bandgap_talert_init._entry, ptr @ti_bandgap_talert_init._entry_ptr, ptr @ti_bandgap_tshut_init._entry, ptr @ti_bandgap_tshut_init._entry_ptr, ptr @ti_bandgap_tshut_irq_handler._entry, ptr @ti_bandgap_tshut_irq_handler._entry_ptr, ptr @ti_bandgap_validate._entry, ptr @ti_bandgap_validate._entry.6, ptr @ti_bandgap_validate._entry_ptr, ptr @ti_bandgap_validate._entry_ptr.10, ptr @ti_bandgap_write_counter_delay._entry, ptr @ti_bandgap_write_counter_delay._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ti_bandgap_sensor_driver, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @of_ti_bandgap_match, ptr @ti_bandgap_dev_pm_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @ti_bandgap_probe.__key, ptr @.str.46, ptr @.str.48, ptr @soc_no_cpu_notifier, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_sensor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_validate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_read_counter_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_write_counter_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_force_single_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_force_single_read._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_bandgap_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_no_cpu_notifier to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_build._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_build._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_tshut_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_tshut_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bandgap_talert_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_read_update_interval(ptr noundef readonly %bgp, i32 noundef %id, ptr nocapture noundef writeonly %interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bgp, null
  %cmp.i.i = icmp ugt ptr %bgp, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i = icmp slt i32 %id, 0
  br i1 %cmp.i, label %if.end.i.do.end6.i_crit_edge, label %lor.lhs.false2.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

lor.lhs.false2.i:                                 ; preds = %if.end.i
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp3.not.i = icmp sgt i32 %3, %id
  br i1 %cmp3.not.i, label %if.end, label %lor.lhs.false2.i.do.end6.i_crit_edge

lor.lhs.false2.i.do.end6.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %lor.lhs.false2.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %4 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %id) #9
  br label %exit

if.end:                                           ; preds = %lor.lhs.false2.i
  %6 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end.exit_crit_edge, label %if.end7

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end7:                                          ; preds = %if.end
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %registers.i25 = getelementptr %struct.ti_bandgap_data, ptr %7, i32 0, i32 10, i32 %id, i32 1
  %12 = ptrtoint ptr %registers.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers.i25, align 4
  br i1 %tobool1.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %bgap_counter.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %bgap_counter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bgap_counter.i, align 4
  %base.i.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %counter_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 13
  %20 = ptrtoint ptr %counter_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %counter_mask.i, align 4
  %and.i = and i32 %21, %19
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #6, !range !145
  %shr.i = lshr i32 %and.i, %22
  %mul.i = mul i32 %shr.i, 1000
  %clk_rate.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 9
  %23 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_rate.i, align 4
  %div.i = udiv i32 %mul.i, %24
  %25 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %interval, align 4
  br label %exit

if.end13:                                         ; preds = %if.end7
  %bgap_mask_ctrl.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 5
  %26 = ptrtoint ptr %bgap_mask_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bgap_mask_ctrl.i, align 4
  %base.i.i26 = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i26, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %29, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #6, !srcloc !143
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_counter_delay_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 8
  %32 = ptrtoint ptr %mask_counter_delay_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask_counter_delay_mask.i, align 4
  %and.i28 = and i32 %33, %31
  %34 = tail call i32 @llvm.cttz.i32(i32 %33, i1 false) #6, !range !145
  %shr.i29 = lshr i32 %and.i28, %34
  %35 = zext i32 %shr.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i29, label %do.end.i30 [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb6.i
    i32 5, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %interval, align 4
  br label %exit

sw.bb3.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %interval, align 4
  br label %exit

sw.bb4.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %interval, align 4
  br label %exit

sw.bb5.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 100, ptr %interval, align 4
  br label %exit

sw.bb6.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 250, ptr %interval, align 4
  br label %exit

sw.bb7.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 500, ptr %interval, align 4
  br label %exit

do.end.i30:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.11, i32 noundef %shr.i29) #9
  br label %exit

exit:                                             ; preds = %do.end.i30, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb.i, %if.then12, %if.end.exit_crit_edge, %do.end6.i, %do.end.i
  %ret.0 = phi i32 [ 0, %if.then12 ], [ -524, %if.end.exit_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb6.i ], [ 0, %sw.bb7.i ], [ 0, %do.end.i30 ], [ -34, %do.end6.i ], [ -22, %do.end.i ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_write_update_interval(ptr noundef %bgp, i32 noundef %id, i32 noundef %interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bgp, null
  %cmp.i.i = icmp ugt ptr %bgp, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i = icmp slt i32 %id, 0
  br i1 %cmp.i, label %if.end.i.do.end6.i_crit_edge, label %lor.lhs.false2.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

lor.lhs.false2.i:                                 ; preds = %if.end.i
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp3.not.i = icmp sgt i32 %3, %id
  br i1 %cmp3.not.i, label %if.end, label %lor.lhs.false2.i.do.end6.i_crit_edge

lor.lhs.false2.i.do.end6.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %lor.lhs.false2.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %4 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %id) #9
  br label %exit

if.end:                                           ; preds = %lor.lhs.false2.i
  %6 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end.exit_crit_edge, label %if.end7

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end7:                                          ; preds = %if.end
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %clk_rate.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 9
  %12 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_rate.i, align 4
  %mul.i = mul i32 %13, %interval
  %div.i = udiv i32 %mul.i, 1000
  %lock.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %14 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf.i, align 4
  %registers.i = getelementptr %struct.ti_bandgap_data, ptr %15, i32 0, i32 10, i32 %id, i32 1
  %16 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers.i, align 4
  %bgap_counter.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %bgap_counter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bgap_counter.i, align 4
  %base.i.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %counter_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %17, i32 0, i32 13
  %24 = ptrtoint ptr %counter_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %counter_mask.i, align 4
  %neg.i = xor i32 %25, -1
  %and.i = and i32 %23, %neg.i
  %26 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #6, !range !145
  %shl.i = shl i32 %div.i, %26
  %or.i = or i32 %shl.i, %and.i
  %27 = ptrtoint ptr %bgap_counter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bgap_counter.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %31, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %29) #6, !srcloc !147
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %exit

if.end13:                                         ; preds = %if.end7
  %32 = zext i32 %interval to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %interval, label %do.end.i25 [
    i32 0, label %if.end13.sw.epilog.i_crit_edge
    i32 1, label %sw.bb1.i
    i32 10, label %sw.bb2.i
    i32 100, label %sw.bb3.i
    i32 250, label %sw.bb4.i
    i32 500, label %sw.bb5.i
  ]

if.end13.sw.epilog.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i25:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.14, i32 noundef %interval) #9
  br label %exit

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end13.sw.epilog.i_crit_edge
  %rval.0.i = phi i32 [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ %interval, %if.end13.sw.epilog.i_crit_edge ]
  %lock.i26 = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock.i26) #6
  %35 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %conf.i, align 4
  %registers.i28 = getelementptr %struct.ti_bandgap_data, ptr %36, i32 0, i32 10, i32 %id, i32 1
  %37 = ptrtoint ptr %registers.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %registers.i28, align 4
  %bgap_mask_ctrl.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %bgap_mask_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bgap_mask_ctrl.i, align 4
  %base.i.i29 = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %41 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %42, i32 %40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #6, !srcloc !143
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_counter_delay_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %38, i32 0, i32 8
  %45 = ptrtoint ptr %mask_counter_delay_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask_counter_delay_mask.i, align 4
  %neg.i31 = xor i32 %46, -1
  %and.i32 = and i32 %44, %neg.i31
  %47 = tail call i32 @llvm.cttz.i32(i32 %46, i1 false) #6, !range !145
  %shl.i33 = shl i32 %rval.0.i, %47
  %or.i34 = or i32 %shl.i33, %and.i32
  %48 = ptrtoint ptr %bgap_mask_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bgap_mask_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i34) #6
  %51 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %52, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %50) #6, !srcloc !147
  tail call void @_raw_spin_unlock(ptr noundef %lock.i26) #6
  br label %exit

exit:                                             ; preds = %sw.epilog.i, %do.end.i25, %if.then12, %if.end.exit_crit_edge, %do.end6.i, %do.end.i
  %ret.0 = phi i32 [ 0, %if.then12 ], [ -524, %if.end.exit_crit_edge ], [ -22, %do.end.i25 ], [ 0, %sw.epilog.i ], [ -34, %do.end6.i ], [ -22, %do.end.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_read_temperature(ptr noundef %bgp, i32 noundef %id, ptr nocapture noundef writeonly %temperature) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bgp, null
  %cmp.i.i = icmp ugt ptr %bgp, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i = icmp slt i32 %id, 0
  br i1 %cmp.i, label %if.end.i.do.end6.i_crit_edge, label %lor.lhs.false2.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

lor.lhs.false2.i:                                 ; preds = %if.end.i
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp3.not.i = icmp sgt i32 %3, %id
  br i1 %cmp3.not.i, label %if.end, label %lor.lhs.false2.i.do.end6.i_crit_edge

lor.lhs.false2.i.do.end6.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %lor.lhs.false2.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %4 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %id) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  %6 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ti_bandgap_force_single_read(ptr noundef nonnull %bgp, i32 noundef %id)
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %lock = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %10 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf.i, align 4
  %registers.i = getelementptr %struct.ti_bandgap_data, ptr %11, i32 0, i32 10, i32 %id, i32 1
  %12 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %and.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i28 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i28, label %if.end7.if.end.i29_crit_edge, label %do.body.i

if.end7.if.end.i29_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

do.body.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %bgap_mask_ctrl.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %bgap_mask_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bgap_mask_ctrl.i, align 4
  %base.i.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_freeze_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 9
  %22 = ptrtoint ptr %mask_freeze_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask_freeze_mask.i, align 4
  %neg.i = xor i32 %23, -1
  %and6.i = and i32 %21, %neg.i
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #6, !range !145
  %shl.i = shl nuw i32 1, %24
  %or.i = or i32 %shl.i, %and6.i
  %25 = ptrtoint ptr %bgap_mask_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bgap_mask_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %29, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %27) #6, !srcloc !147
  %ctrl_dtemp_1.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 23
  br label %if.end.i29

if.end.i29:                                       ; preds = %do.body.i, %if.end7.if.end.i29_crit_edge
  %reg.0.in.i = phi ptr [ %ctrl_dtemp_1.i, %do.body.i ], [ %13, %if.end7.if.end.i29_crit_edge ]
  %30 = ptrtoint ptr %reg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %reg.0.i = load i32, ptr %reg.0.in.i, align 4
  %31 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %conf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and12.i = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %base.i73.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %35 = ptrtoint ptr %base.i73.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i73.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %36, i32 %reg.0.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool13.not.i, label %if.end.i29.if.end17.i_crit_edge, label %if.then14.i

if.end.i29.if.end17.i_crit_edge:                  ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i29
  %39 = ptrtoint ptr %base.i73.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i73.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %40, i32 %reg.0.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %41)
  %cmp.i.i30 = icmp eq i32 %37, %41
  br i1 %cmp.i.i30, label %if.then14.i.if.end17.i_crit_edge, label %if.end.i.i

if.then14.i.if.end17.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %base.i73.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i73.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %43, i32 %reg.0.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #6, !srcloc !143
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i.i, %if.then14.i.if.end17.i_crit_edge, %if.end.i29.if.end17.i_crit_edge
  %temp.0.i = phi i32 [ %45, %if.end.i.i ], [ %38, %if.then14.i.if.end17.i_crit_edge ], [ %38, %if.end.i29.if.end17.i_crit_edge ]
  %bgap_dtemp_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %13, i32 0, i32 4
  %46 = ptrtoint ptr %bgap_dtemp_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bgap_dtemp_mask.i, align 4
  %48 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conf.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %and21.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end17.i.ti_bandgap_read_temp.exit_crit_edge, label %do.body24.i

if.end17.i.ti_bandgap_read_temp.exit_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_read_temp.exit

do.body24.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %registers30.i = getelementptr %struct.ti_bandgap_data, ptr %49, i32 0, i32 10, i32 %id, i32 1
  %52 = ptrtoint ptr %registers30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %registers30.i, align 4
  %bgap_mask_ctrl31.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %bgap_mask_ctrl31.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bgap_mask_ctrl31.i, align 4
  %56 = ptrtoint ptr %base.i73.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i73.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %57, i32 %55
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i) #6, !srcloc !143
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_freeze_mask33.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %53, i32 0, i32 9
  %60 = ptrtoint ptr %mask_freeze_mask33.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mask_freeze_mask33.i, align 4
  %neg34.i = xor i32 %61, -1
  %and35.i = and i32 %59, %neg34.i
  %62 = ptrtoint ptr %bgap_mask_ctrl31.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bgap_mask_ctrl31.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %and35.i) #6
  %65 = ptrtoint ptr %base.i73.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i73.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %66, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 %64) #6, !srcloc !147
  br label %ti_bandgap_read_temp.exit

ti_bandgap_read_temp.exit:                        ; preds = %do.body24.i, %if.end17.i.ti_bandgap_read_temp.exit_crit_edge
  %and18.i = and i32 %47, %temp.0.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %67 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %conf.i, align 4
  %adc_start_val.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %adc_start_val.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %adc_start_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and18.i, i32 %70)
  %cmp.i31 = icmp ult i32 %and18.i, %70
  br i1 %cmp.i31, label %ti_bandgap_read_temp.exit.cleanup_crit_edge, label %lor.lhs.false.i

ti_bandgap_read_temp.exit.cleanup_crit_edge:      ; preds = %ti_bandgap_read_temp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %ti_bandgap_read_temp.exit
  %adc_end_val.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %adc_end_val.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %adc_end_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %and18.i)
  %cmp2.i = icmp ult i32 %72, %and18.i
  br i1 %cmp2.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end13

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv_table.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %conv_table.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %conv_table.i, align 4
  %sub.i = sub i32 %and18.i, %70
  %arrayidx.i = getelementptr i32, ptr %74, i32 %sub.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  %77 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %temperature, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false.i.cleanup_crit_edge, %ti_bandgap_read_temp.exit.cleanup_crit_edge, %do.end6.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -34, %do.end6.i ], [ -22, %do.end.i ], [ -5, %lor.lhs.false.i.cleanup_crit_edge ], [ -5, %ti_bandgap_read_temp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_bandgap_force_single_read(ptr nocapture noundef readonly %bgp, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %registers = getelementptr %struct.ti_bandgap_data, ptr %1, i32 0, i32 10, i32 %id, i32 1
  %2 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers, align 4
  %base = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then:                                          ; preds = %entry
  %and5 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %bgap_mode_ctrl23 = getelementptr inbounds %struct.temp_sensor_registers, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %bgap_mode_ctrl23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bgap_mode_ctrl23, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %mode_ctrl_mask25 = getelementptr inbounds %struct.temp_sensor_registers, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %mode_ctrl_mask25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_ctrl_mask25, align 4
  %neg26 = xor i32 %15, -1
  %and27 = and i32 %13, %neg26
  br i1 %tobool6.not, label %do.body16, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.cttz.i32(i32 %15, i1 false) #6, !range !145
  %shl = shl nuw i32 1, %16
  %or = or i32 %shl, %and27
  %17 = ptrtoint ptr %bgap_mode_ctrl23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bgap_mode_ctrl23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i2 = getelementptr i8, ptr %21, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %19) #6, !srcloc !147
  br label %if.end35

do.body16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %bgap_mode_ctrl23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bgap_mode_ctrl23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %and27) #6
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr.i6 = getelementptr i8, ptr %26, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %24) #6, !srcloc !147
  br label %if.end35

if.end35:                                         ; preds = %do.body16, %do.body, %entry.if.end35_crit_edge
  %bgap_soc_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %bgap_soc_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bgap_soc_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not = icmp eq i32 %28, 0
  br i1 %tobool36.not, label %if.end35.if.end111_crit_edge, label %do.body38

if.end35.if.end111_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

do.body38:                                        ; preds = %if.end35
  %29 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conf, align 4
  %registers44 = getelementptr %struct.ti_bandgap_data, ptr %30, i32 0, i32 10, i32 %id, i32 1
  %31 = ptrtoint ptr %registers44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %registers44, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i8 = getelementptr i8, ptr %36, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #6, !srcloc !143
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_soc_mask47 = getelementptr inbounds %struct.temp_sensor_registers, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %bgap_soc_mask47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bgap_soc_mask47, align 4
  %neg48 = xor i32 %40, -1
  %and49 = and i32 %38, %neg48
  %41 = tail call i32 @llvm.cttz.i32(i32 %40, i1 false) #6, !range !145
  %shl52 = shl nuw i32 1, %41
  %or53 = or i32 %shl52, %and49
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %or53) #6
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr.i10 = getelementptr i8, ptr %46, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %44) #6, !srcloc !147
  %call57 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call57, 1000000
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %bgap_eocz_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %3, i32 0, i32 3
  %49 = ptrtoint ptr %bgap_eocz_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bgap_eocz_mask, align 4
  %and6128 = and i32 %50, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6128)
  %tobool62.not29 = icmp eq i32 %and6128, 0
  br i1 %tobool62.not29, label %do.body38.land.lhs.true_crit_edge, label %do.body38.for.end_crit_edge

do.body38.for.end_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body38.land.lhs.true_crit_edge:                ; preds = %do.body38
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.body38.land.lhs.true_crit_edge
  %call66 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call66, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call66, %add.i
  br i1 %cmp3.i, label %if.then68, label %cond.false

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #6
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %56 = ptrtoint ptr %bgap_eocz_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bgap_eocz_mask, align 4
  %and61 = and i32 %57, %55
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then68, %do.body38.for.end_crit_edge
  %val.0 = phi i32 [ %52, %if.then68 ], [ %48, %do.body38.for.end_crit_edge ], [ %55, %cond.false.for.end_crit_edge ]
  %58 = ptrtoint ptr %bgap_eocz_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bgap_eocz_mask, align 4
  %and84 = and i32 %59, %val.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.end90, label %for.end.do.body92_crit_edge

for.end.do.body92_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body92

do.end90:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.16) #9
  br label %do.body92

do.body92:                                        ; preds = %do.end90, %for.end.do.body92_crit_edge
  %62 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conf, align 4
  %registers98 = getelementptr %struct.ti_bandgap_data, ptr %63, i32 0, i32 10, i32 %id, i32 1
  %64 = ptrtoint ptr %registers98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %registers98, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i12 = getelementptr i8, ptr %69, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #6, !srcloc !143
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_soc_mask101 = getelementptr inbounds %struct.temp_sensor_registers, ptr %65, i32 0, i32 2
  %72 = ptrtoint ptr %bgap_soc_mask101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bgap_soc_mask101, align 4
  %neg102 = xor i32 %73, -1
  %and103 = and i32 %71, %neg102
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %65, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %76 = tail call i32 @llvm.bswap.i32(i32 %and103) #6
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr.i14 = getelementptr i8, ptr %78, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %76) #6, !srcloc !147
  br label %if.end111

if.end111:                                        ; preds = %do.body92, %if.end35.if.end111_crit_edge
  %call115 = tail call i64 @ktime_get() #6
  %add.i15 = add i64 %call115, 1500000
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %bgap_eocz_mask123 = getelementptr inbounds %struct.temp_sensor_registers, ptr %3, i32 0, i32 3
  %81 = ptrtoint ptr %bgap_eocz_mask123 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bgap_eocz_mask123, align 4
  %and12431 = and i32 %82, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12431)
  %tobool125.not32 = icmp eq i32 %and12431, 0
  br i1 %tobool125.not32, label %if.end111.for.end151_crit_edge, label %if.end111.land.lhs.true129_crit_edge

if.end111.land.lhs.true129_crit_edge:             ; preds = %if.end111
  br label %land.lhs.true129

if.end111.for.end151_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end151

land.lhs.true129:                                 ; preds = %cond.false145.land.lhs.true129_crit_edge, %if.end111.land.lhs.true129_crit_edge
  %call130 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call130, i64 %add.i15)
  %cmp3.i17 = icmp sgt i64 %call130, %add.i15
  br i1 %cmp3.i17, label %if.then133, label %cond.false145

if.then133:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #8
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  br label %for.end151

cond.false145:                                    ; preds = %land.lhs.true129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748) #6
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !143
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %88 = ptrtoint ptr %bgap_eocz_mask123 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bgap_eocz_mask123, align 4
  %and124 = and i32 %89, %87
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %cond.false145.for.end151_crit_edge, label %cond.false145.land.lhs.true129_crit_edge

cond.false145.land.lhs.true129_crit_edge:         ; preds = %cond.false145
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true129

cond.false145.for.end151_crit_edge:               ; preds = %cond.false145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end151

for.end151:                                       ; preds = %cond.false145.for.end151_crit_edge, %if.then133, %if.end111.for.end151_crit_edge
  %val.1 = phi i32 [ %84, %if.then133 ], [ %80, %if.end111.for.end151_crit_edge ], [ %87, %cond.false145.for.end151_crit_edge ]
  %90 = ptrtoint ptr %bgap_eocz_mask123 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bgap_eocz_mask123, align 4
  %and154 = and i32 %91, %val.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %for.end151.if.end163_crit_edge, label %do.end161

for.end151.if.end163_crit_edge:                   ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

do.end161:                                        ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.19) #9
  br label %if.end163

if.end163:                                        ; preds = %do.end161, %for.end151.if.end163_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_set_sensor_data(ptr noundef readonly %bgp, i32 noundef %id, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bgp, null
  %cmp.i.i = icmp ugt ptr %bgp, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i = icmp slt i32 %id, 0
  br i1 %cmp.i, label %if.end.i.do.end6.i_crit_edge, label %lor.lhs.false2.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

lor.lhs.false2.i:                                 ; preds = %if.end.i
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp3.not.i = icmp sgt i32 %3, %id
  br i1 %cmp3.not.i, label %if.end, label %lor.lhs.false2.i.do.end6.i_crit_edge

lor.lhs.false2.i.do.end6.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %lor.lhs.false2.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %4 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %id) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  %regval = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 3
  %6 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regval, align 4
  %data1 = getelementptr %struct.temp_sensor_regval, ptr %7, i32 %id, i32 5
  %8 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end6.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %do.end6.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ti_bandgap_get_sensor_data(ptr noundef readonly %bgp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bgp, null
  %cmp.i.i = icmp ugt ptr %bgp, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i = icmp slt i32 %id, 0
  br i1 %cmp.i, label %if.end.i.do.end6.i_crit_edge, label %lor.lhs.false2.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

lor.lhs.false2.i:                                 ; preds = %if.end.i
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp3.not.i = icmp sgt i32 %3, %id
  br i1 %cmp3.not.i, label %if.end, label %lor.lhs.false2.i.do.end6.i_crit_edge

lor.lhs.false2.i.do.end6.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %lor.lhs.false2.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %4 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %id) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  %regval = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 3
  %6 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regval, align 4
  %data = getelementptr %struct.temp_sensor_regval, ptr %7, i32 %id, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end6.i, %do.end.i
  %retval.0 = phi ptr [ %9, %if.end ], [ inttoptr (i32 -34 to ptr), %do.end6.i ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_get_trend(ptr noundef %bgp, i32 noundef %id, ptr nocapture noundef %trend) local_unnamed_addr #0 align 64 {
entry:
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #6
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %interval, align 4, !annotation !152
  %tobool.not.i = icmp eq ptr %bgp, null
  %cmp.i.i = icmp ugt ptr %bgp, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i = icmp slt i32 %id, 0
  br i1 %cmp.i, label %if.end.i.do.end6.i_crit_edge, label %lor.lhs.false2.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

lor.lhs.false2.i:                                 ; preds = %if.end.i
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %1 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensor_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %id)
  %cmp3.not.i = icmp sgt i32 %4, %id
  br i1 %cmp3.not.i, label %if.end, label %lor.lhs.false2.i.do.end6.i_crit_edge

lor.lhs.false2.i.do.end6.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %lor.lhs.false2.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %5 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bgp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %id) #9
  br label %exit

if.end:                                           ; preds = %lor.lhs.false2.i
  %7 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = and i32 %10, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %11)
  %.not = icmp eq i32 %11, 640
  br i1 %.not, label %if.end7, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end7:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %12 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conf.i, align 4
  %registers = getelementptr %struct.ti_bandgap_data, ptr %13, i32 0, i32 10, i32 %id, i32 1
  %14 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers, align 4
  %bgap_mask_ctrl = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bgap_mask_ctrl, align 4
  %base.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !143
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_freeze_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 9
  %22 = ptrtoint ptr %mask_freeze_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask_freeze_mask, align 4
  %neg = xor i32 %23, -1
  %and14 = and i32 %21, %neg
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #6, !range !145
  %shl = shl nuw i32 1, %24
  %or = or i32 %shl, %and14
  %25 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bgap_mask_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %29, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %27) #6, !srcloc !147
  %ctrl_dtemp_1 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 23
  %30 = ptrtoint ptr %ctrl_dtemp_1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctrl_dtemp_1, align 4
  %ctrl_dtemp_2 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 24
  %32 = ptrtoint ptr %ctrl_dtemp_2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl_dtemp_2, align 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %35, i32 %31
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #6, !srcloc !143
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_dtemp_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 4
  %38 = ptrtoint ptr %bgap_dtemp_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bgap_dtemp_mask, align 4
  %and19 = and i32 %39, %37
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %41, i32 %33
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #6, !srcloc !143
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %44 = ptrtoint ptr %bgap_dtemp_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bgap_dtemp_mask, align 4
  %46 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %conf.i, align 4
  %adc_start_val.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %adc_start_val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %adc_start_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and19, i32 %49)
  %cmp.i114 = icmp ult i32 %and19, %49
  br i1 %cmp.i114, label %if.end7.do.body46_crit_edge, label %lor.lhs.false.i

if.end7.do.body46_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

lor.lhs.false.i:                                  ; preds = %if.end7
  %adc_end_val.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %adc_end_val.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %adc_end_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %and19)
  %cmp2.i = icmp ult i32 %51, %and19
  br i1 %cmp2.i, label %lor.lhs.false.i.do.body46_crit_edge, label %if.end26

lor.lhs.false.i.do.body46_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

if.end26:                                         ; preds = %lor.lhs.false.i
  %conv_table.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %conv_table.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %conv_table.i, align 4
  %sub.i = sub i32 %and19, %49
  %arrayidx.i = getelementptr i32, ptr %53, i32 %sub.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %and22 = and i32 %45, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %and22, i32 %49)
  %cmp.i119 = icmp ult i32 %and22, %49
  br i1 %cmp.i119, label %if.end26.do.body46_crit_edge, label %lor.lhs.false.i122

if.end26.do.body46_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

lor.lhs.false.i122:                               ; preds = %if.end26
  %56 = ptrtoint ptr %adc_end_val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %adc_end_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %and22)
  %cmp2.i121 = icmp ult i32 %57, %and22
  br i1 %cmp2.i121, label %lor.lhs.false.i122.do.body46_crit_edge, label %if.end30

lor.lhs.false.i122.do.body46_crit_edge:           ; preds = %lor.lhs.false.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

if.end30:                                         ; preds = %lor.lhs.false.i122
  %58 = ptrtoint ptr %conv_table.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %conv_table.i, align 4
  %sub.i124 = sub i32 %and22, %49
  %arrayidx.i125 = getelementptr i32, ptr %59, i32 %sub.i124
  %60 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i125, align 4
  %call31 = call i32 @ti_bandgap_read_update_interval(ptr noundef nonnull %bgp, i32 noundef %id, ptr noundef nonnull %interval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.do.body46_crit_edge

if.end30.do.body46_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp = icmp eq i32 %63, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %63
  %64 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.store.select, ptr %interval, align 4
  %sub = sub i32 %55, %61
  %div = sdiv i32 %sub, %spec.store.select
  %65 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div, ptr %trend, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_bandgap_get_trend.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_bandgap_get_trend, %if.then42)) #6
          to label %do.body46 [label %if.then42], !srcloc !153

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %bgp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bgp, align 4
  %68 = ptrtoint ptr %trend to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %trend, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_bandgap_get_trend.__UNIQUE_ID_ddebug189, ptr noundef %67, ptr noundef nonnull @.str.3, i32 noundef %55, i32 noundef %61, i32 noundef %69) #6
  br label %do.body46

do.body46:                                        ; preds = %if.then42, %if.end34, %if.end30.do.body46_crit_edge, %lor.lhs.false.i122.do.body46_crit_edge, %if.end26.do.body46_crit_edge, %lor.lhs.false.i.do.body46_crit_edge, %if.end7.do.body46_crit_edge
  %ret.0 = phi i32 [ %call31, %if.end30.do.body46_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end34 ], [ -34, %lor.lhs.false.i.do.body46_crit_edge ], [ -34, %if.end7.do.body46_crit_edge ], [ -34, %lor.lhs.false.i122.do.body46_crit_edge ], [ -34, %if.end26.do.body46_crit_edge ]
  %70 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %conf.i, align 4
  %registers52 = getelementptr %struct.ti_bandgap_data, ptr %71, i32 0, i32 10, i32 %id, i32 1
  %72 = ptrtoint ptr %registers52 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %registers52, align 4
  %bgap_mask_ctrl53 = getelementptr inbounds %struct.temp_sensor_registers, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %bgap_mask_ctrl53 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bgap_mask_ctrl53, align 4
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %77, i32 %75
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #6, !srcloc !143
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_freeze_mask55 = getelementptr inbounds %struct.temp_sensor_registers, ptr %73, i32 0, i32 9
  %80 = ptrtoint ptr %mask_freeze_mask55 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mask_freeze_mask55, align 4
  %neg56 = xor i32 %81, -1
  %and57 = and i32 %79, %neg56
  %82 = ptrtoint ptr %bgap_mask_ctrl53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bgap_mask_ctrl53, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %84 = tail call i32 @llvm.bswap.i32(i32 %and57) #6
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %86, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %84) #6, !srcloc !147
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %exit

exit:                                             ; preds = %do.body46, %if.end.exit_crit_edge, %do.end6.i, %do.end.i
  %ret.1 = phi i32 [ %ret.0, %do.body46 ], [ -524, %if.end.exit_crit_edge ], [ -34, %do.end6.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_bandgap_sensor_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_bandgap_sensor_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_bandgap_sensor_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_bandgap_sensor_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_bandgap_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50) #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 96, i32 noundef 3520) #6
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.do.end_crit_edge, label %if.end7.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.i:                                        ; preds = %if.end.i
  %call9.i = tail call ptr @of_match_device(ptr noundef nonnull @of_ti_bandgap_match, ptr noundef %dev.i) #6
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then11.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call9.i, i32 0, i32 3
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %conf.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end12.i_crit_edge
  %conf14.i = getelementptr inbounds %struct.ti_bandgap, ptr %call.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %conf14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conf14.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sensor_count.i, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 24) #6
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !154

devm_kcalloc.exit.thread.i:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %regval85.i = getelementptr inbounds %struct.ti_bandgap, ptr %call.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %regval85.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %regval85.i, align 4
  br label %do.end

devm_kcalloc.exit.i:                              ; preds = %if.end12.i
  %12 = extractvalue { i32, i1 } %9, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %12, i32 noundef 3520) #6
  %regval.i = getelementptr inbounds %struct.ti_bandgap, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i.i, ptr %regval.i, align 4
  %tobool17.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool17.not.i, label %devm_kcalloc.exit.i.do.end_crit_edge, label %do.body21.preheader.i

devm_kcalloc.exit.i.do.end_crit_edge:             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body21.preheader.i:                            ; preds = %devm_kcalloc.exit.i
  %call2296.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool23.not97.i = icmp eq ptr %call2296.i, null
  br i1 %tobool23.not97.i, label %do.body21.preheader.i.do.end36.i_crit_edge, label %if.end25.lr.ph.i

do.body21.preheader.i.do.end36.i_crit_edge:       ; preds = %do.body21.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36.i

if.end25.lr.ph.i:                                 ; preds = %do.body21.preheader.i
  %base.i = getelementptr inbounds %struct.ti_bandgap, ptr %call.i.i, i32 0, i32 1
  br label %if.end25.i

do.body21.i:                                      ; preds = %if.end29.i
  %inc.i = add i32 %i.098.i, 1
  %call22.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %inc.i) #6
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %do.body21.i.do.end36.i_crit_edge, label %do.body21.i.if.end25.i_crit_edge

do.body21.i.if.end25.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

do.body21.i.do.end36.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36.i

if.end25.i:                                       ; preds = %do.body21.i.if.end25.i_crit_edge, %if.end25.lr.ph.i
  %call2299.i = phi ptr [ %call2296.i, %if.end25.lr.ph.i ], [ %call22.i, %do.body21.i.if.end25.i_crit_edge ]
  %i.098.i = phi i32 [ 0, %if.end25.lr.ph.i ], [ %inc.i, %do.body21.i.if.end25.i_crit_edge ]
  %call27.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev.i, ptr noundef nonnull %call2299.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.098.i)
  %cmp.i = icmp eq i32 %i.098.i, 0
  br i1 %cmp.i, label %if.then28.i, label %if.end25.i.if.end29.i_crit_edge

if.end25.i.if.end29.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call27.i, ptr %base.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end29.i_crit_edge
  %cmp.i.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end29.i.ti_bandgap_build.exit_crit_edge, label %do.body21.i

if.end29.i.ti_bandgap_build.exit_crit_edge:       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_build.exit

do.end36.i:                                       ; preds = %do.body21.i.do.end36.i_crit_edge, %do.body21.preheader.i.do.end36.i_crit_edge
  %15 = ptrtoint ptr %conf14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conf14.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %do.end36.i.ti_bandgap_build.exit_crit_edge, label %if.then39.i

do.end36.i.ti_bandgap_build.exit_crit_edge:       ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_build.exit

if.then39.i:                                      ; preds = %do.end36.i
  %call41.i = tail call ptr @devm_gpiod_get(ptr noundef %dev.i, ptr noundef null, i32 noundef 1) #6
  %tshut_gpiod.i = getelementptr inbounds %struct.ti_bandgap, ptr %call.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %tshut_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41.i, ptr %tshut_gpiod.i, align 4
  %cmp.i83.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83.i, label %do.end47.i, label %if.then39.i.ti_bandgap_build.exit_crit_edge

if.then39.i.ti_bandgap_build.exit_crit_edge:      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_build.exit

do.end47.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53) #9
  br label %ti_bandgap_build.exit

ti_bandgap_build.exit:                            ; preds = %do.end47.i, %if.then39.i.ti_bandgap_build.exit_crit_edge, %do.end36.i.ti_bandgap_build.exit_crit_edge, %if.end29.i.ti_bandgap_build.exit_crit_edge
  %retval.2.i = phi ptr [ %call41.i, %do.end47.i ], [ %call.i.i, %if.then39.i.ti_bandgap_build.exit_crit_edge ], [ %call.i.i, %do.end36.i.ti_bandgap_build.exit_crit_edge ], [ %call27.i, %if.end29.i.ti_bandgap_build.exit_crit_edge ]
  %cmp.i611 = icmp ugt ptr %retval.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i611, label %ti_bandgap_build.exit.do.end_crit_edge, label %if.end

ti_bandgap_build.exit.do.end_crit_edge:           ; preds = %ti_bandgap_build.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %ti_bandgap_build.exit.do.end_crit_edge, %devm_kcalloc.exit.i.do.end_crit_edge, %devm_kcalloc.exit.thread.i, %if.end.i.do.end_crit_edge, %do.end.i
  %retval.2.i709 = phi ptr [ %retval.2.i, %ti_bandgap_build.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.do.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22) #9
  %20 = ptrtoint ptr %retval.2.i709 to i32
  br label %cleanup410

if.end:                                           ; preds = %ti_bandgap_build.exit
  %21 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev.i, ptr %retval.2.i, align 4
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 2
  %22 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conf, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %and = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.end8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.25) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %26 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conf, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and13 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end24_crit_edge, label %if.then15

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then15:                                        ; preds = %if.end10
  %tshut_gpiod.i612 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 8
  %30 = ptrtoint ptr %tshut_gpiod.i612 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tshut_gpiod.i612, align 4
  %call.i = tail call i32 @gpiod_to_irq(ptr noundef %31) #6
  %call.i.i613 = tail call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef nonnull @ti_bandgap_tshut_irq_handler, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i613)
  %tobool.not.i614 = icmp eq i32 %call.i.i613, 0
  br i1 %tobool.not.i614, label %if.then15.if.end24_crit_edge, label %do.end.i615

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end.i615:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %retval.2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.56) #9
  br label %if.end24

if.end24:                                         ; preds = %do.end.i615, %if.then15.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %34 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conf, align 4
  %fclock_name = getelementptr inbounds %struct.ti_bandgap_data, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %fclock_name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fclock_name, align 4
  %call26 = tail call ptr @clk_get(ptr noundef null, ptr noundef %37) #6
  %fclock = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 4
  %38 = ptrtoint ptr %fclock to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call26, ptr %fclock, align 4
  %cmp.i617 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i617, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31) #9
  %39 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fclock, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %free_irqs

if.end36:                                         ; preds = %if.end24
  %42 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conf, align 4
  %div_ck_name = getelementptr inbounds %struct.ti_bandgap_data, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %div_ck_name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %div_ck_name, align 4
  %call38 = tail call ptr @clk_get(ptr noundef null, ptr noundef %45) #6
  %div_clk = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 5
  %46 = ptrtoint ptr %div_clk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call38, ptr %div_clk, align 4
  %cmp.i618 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i618, label %do.end44, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end36
  %47 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %conf, align 4
  %sensor_count731 = getelementptr inbounds %struct.ti_bandgap_data, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %sensor_count731 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sensor_count731, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp732 = icmp sgt i32 %50, 0
  br i1 %cmp732, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %base.i619 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 1
  br label %for.body

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #9
  %51 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %div_clk, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %put_fclock

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.body.lr.ph
  %54 = phi ptr [ %48, %for.body.lr.ph ], [ %63, %if.end58.for.body_crit_edge ]
  %i.0733 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end58.for.body_crit_edge ]
  %registers = getelementptr %struct.ti_bandgap_data, ptr %54, i32 0, i32 10, i32 %i.0733, i32 1
  %55 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %registers, align 4
  %bgap_efuse = getelementptr inbounds %struct.temp_sensor_registers, ptr %56, i32 0, i32 25
  %57 = ptrtoint ptr %bgap_efuse to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bgap_efuse, align 4
  %59 = ptrtoint ptr %base.i619 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i619, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 %58
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool52.not = icmp eq i32 %61, 0
  br i1 %tobool52.not, label %do.end56, label %for.body.if.end58_crit_edge

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.end56:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.37) #9
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %for.body.if.end58_crit_edge
  %inc = add nuw nsw i32 %i.0733, 1
  %62 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conf, align 4
  %sensor_count = getelementptr inbounds %struct.ti_bandgap_data, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %sensor_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sensor_count, align 4
  %cmp = icmp slt i32 %inc, %65
  br i1 %cmp, label %if.end58.for.body_crit_edge, label %if.end58.for.end_crit_edge

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end58.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa729 = phi ptr [ %48, %for.cond.preheader.for.end_crit_edge ], [ %63, %if.end58.for.end_crit_edge ]
  %66 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %div_clk, align 4
  %sensors61 = getelementptr inbounds %struct.ti_bandgap_data, ptr %.lcssa729, i32 0, i32 10
  %68 = ptrtoint ptr %sensors61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sensors61, align 4
  %max_freq = getelementptr inbounds %struct.temp_sensor_data, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_freq, align 4
  %call63 = tail call i32 @clk_round_rate(ptr noundef %67, i32 noundef %71) #6
  %72 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %conf, align 4
  %sensors65 = getelementptr inbounds %struct.ti_bandgap_data, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %sensors65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sensors65, align 4
  %min_freq = getelementptr inbounds %struct.temp_sensor_data, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call63, i32 %77)
  %cmp68 = icmp ult i32 %call63, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63)
  %cmp69 = icmp slt i32 %call63, 1
  %or.cond = or i1 %cmp69, %cmp68
  br i1 %or.cond, label %if.then70, label %if.end75

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %call63) #9
  br label %put_clks

if.end75:                                         ; preds = %for.end
  %78 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %div_clk, align 4
  %call77 = tail call i32 @clk_set_rate(ptr noundef %79, i32 noundef %call63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end75.if.end84_crit_edge, label %do.end82

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end82, %if.end75.if.end84_crit_edge
  %clk_rate85 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 9
  %80 = ptrtoint ptr %clk_rate85 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call63, ptr %clk_rate85, align 4
  %81 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %conf, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %and88 = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end84.do.body94_crit_edge, label %if.then90

if.end84.do.body94_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body94

if.then90:                                        ; preds = %if.end84
  %85 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fclock, align 4
  %call.i620 = tail call i32 @clk_prepare(ptr noundef %86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i620)
  %tobool.not.i621 = icmp eq i32 %call.i620, 0
  br i1 %tobool.not.i621, label %if.end.i622, label %if.then90.do.body94_crit_edge

if.then90.do.body94_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body94

if.end.i622:                                      ; preds = %if.then90
  %call1.i = tail call i32 @clk_enable(ptr noundef %86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i622.do.body94_crit_edge, label %if.then3.i

if.end.i622.do.body94_crit_edge:                  ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body94

if.then3.i:                                       ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %86) #6
  br label %do.body94

do.body94:                                        ; preds = %if.then3.i, %if.end.i622.do.body94_crit_edge, %if.then90.do.body94_crit_edge, %if.end84.do.body94_crit_edge
  %lock = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @ti_bandgap_probe.__key, i16 noundef signext 3) #6
  %87 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dev.i, ptr %retval.2.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %retval.2.i, ptr %driver_data.i.i, align 4
  %89 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %conf, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %and.i624 = and i32 %92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i624)
  %tobool.not.i625 = icmp eq i32 %and.i624, 0
  br i1 %tobool.not.i625, label %do.body94.ti_bandgap_power.exit_crit_edge, label %for.cond.preheader.i

do.body94.ti_bandgap_power.exit_crit_edge:        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

for.cond.preheader.i:                             ; preds = %do.body94
  %sensor_count3.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %90, i32 0, i32 6
  %93 = ptrtoint ptr %sensor_count3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sensor_count3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp4.i = icmp sgt i32 %94, 0
  br i1 %cmp4.i, label %do.body.lr.ph.i, label %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge

for.cond.preheader.i.ti_bandgap_power.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %base.i.i = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %95 = phi ptr [ %90, %do.body.lr.ph.i ], [ %112, %do.body.i.do.body.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i626, %do.body.i.do.body.i_crit_edge ]
  %registers.i = getelementptr %struct.ti_bandgap_data, ptr %95, i32 0, i32 10, i32 %i.05.i, i32 1
  %96 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %registers.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %100 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %101, i32 %99
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_tempsoff_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %97, i32 0, i32 1
  %104 = ptrtoint ptr %bgap_tempsoff_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bgap_tempsoff_mask.i, align 4
  %neg.i = xor i32 %105, -1
  %and3.i = and i32 %103, %neg.i
  %106 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %97, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %108 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #6
  %109 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %110, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %108) #6, !srcloc !147
  %inc.i626 = add nuw nsw i32 %i.05.i, 1
  %111 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %conf, align 4
  %sensor_count.i627 = getelementptr inbounds %struct.ti_bandgap_data, ptr %112, i32 0, i32 6
  %113 = ptrtoint ptr %sensor_count.i627 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sensor_count.i627, align 4
  %cmp.i628 = icmp slt i32 %inc.i626, %114
  br i1 %cmp.i628, label %do.body.i.do.body.i_crit_edge, label %do.body.i.ti_bandgap_power.exit_crit_edge

do.body.i.ti_bandgap_power.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ti_bandgap_power.exit:                            ; preds = %do.body.i.ti_bandgap_power.exit_crit_edge, %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge, %do.body94.ti_bandgap_power.exit_crit_edge
  %115 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %conf, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %and103 = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %ti_bandgap_power.exit.if.end126_crit_edge, label %for.cond106.preheader

ti_bandgap_power.exit.if.end126_crit_edge:        ; preds = %ti_bandgap_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

for.cond106.preheader:                            ; preds = %ti_bandgap_power.exit
  %119 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %conf, align 4
  %sensor_count108734 = getelementptr inbounds %struct.ti_bandgap_data, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %sensor_count108734 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sensor_count108734, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp109735 = icmp sgt i32 %122, 0
  br i1 %cmp109735, label %do.body111.lr.ph, label %for.cond106.preheader.if.end126_crit_edge

for.cond106.preheader.if.end126_crit_edge:        ; preds = %for.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

do.body111.lr.ph:                                 ; preds = %for.cond106.preheader
  %base.i629 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 1
  br label %do.body111

do.body111:                                       ; preds = %do.body111.do.body111_crit_edge, %do.body111.lr.ph
  %123 = phi ptr [ %120, %do.body111.lr.ph ], [ %141, %do.body111.do.body111_crit_edge ]
  %i.1736 = phi i32 [ 0, %do.body111.lr.ph ], [ %inc124, %do.body111.do.body111_crit_edge ]
  %registers115 = getelementptr %struct.ti_bandgap_data, ptr %123, i32 0, i32 10, i32 %i.1736, i32 1
  %124 = ptrtoint ptr %registers115 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %registers115, align 4
  %bgap_counter = getelementptr inbounds %struct.temp_sensor_registers, ptr %125, i32 0, i32 12
  %126 = ptrtoint ptr %bgap_counter to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bgap_counter, align 4
  %128 = ptrtoint ptr %base.i629 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i629, align 4
  %add.ptr.i630 = getelementptr i8, ptr %129, i32 %127
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i630) #6, !srcloc !143
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %counter_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %125, i32 0, i32 13
  %132 = ptrtoint ptr %counter_mask to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %counter_mask, align 4
  %neg = xor i32 %133, -1
  %and117 = and i32 %131, %neg
  %134 = tail call i32 @llvm.cttz.i32(i32 %133, i1 false) #6, !range !145
  %shl = shl nuw i32 1, %134
  %or = or i32 %shl, %and117
  %135 = ptrtoint ptr %bgap_counter to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %bgap_counter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %137 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %138 = ptrtoint ptr %base.i629 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i629, align 4
  %add.ptr.i632 = getelementptr i8, ptr %139, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i632, i32 %137) #6, !srcloc !147
  %inc124 = add nuw nsw i32 %i.1736, 1
  %140 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %conf, align 4
  %sensor_count108 = getelementptr inbounds %struct.ti_bandgap_data, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %sensor_count108 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sensor_count108, align 4
  %cmp109 = icmp slt i32 %inc124, %143
  br i1 %cmp109, label %do.body111.do.body111_crit_edge, label %do.body111.if.end126_crit_edge

do.body111.if.end126_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

do.body111.do.body111_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body111

if.end126:                                        ; preds = %do.body111.if.end126_crit_edge, %for.cond106.preheader.if.end126_crit_edge, %ti_bandgap_power.exit.if.end126_crit_edge
  %144 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %conf, align 4
  %sensor_count129737 = getelementptr inbounds %struct.ti_bandgap_data, ptr %145, i32 0, i32 6
  %146 = ptrtoint ptr %sensor_count129737 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sensor_count129737, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp130738 = icmp sgt i32 %147, 0
  br i1 %cmp130738, label %for.body131.lr.ph, label %if.end126.if.end263_crit_edge

if.end126.if.end263_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

for.body131.lr.ph:                                ; preds = %if.end126
  %base.i633 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 1
  br label %for.body131

for.body131:                                      ; preds = %if.end253.for.body131_crit_edge, %for.body131.lr.ph
  %148 = phi ptr [ %145, %for.body131.lr.ph ], [ %270, %if.end253.for.body131_crit_edge ]
  %i.2739 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc255, %if.end253.for.body131_crit_edge ]
  %arrayidx135 = getelementptr %struct.ti_bandgap_data, ptr %148, i32 0, i32 10, i32 %i.2739
  %149 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx135, align 4
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %148, align 4
  %and139 = and i32 %152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %for.body131.if.end212_crit_edge, label %do.body142

for.body131.if.end212_crit_edge:                  ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212

do.body142:                                       ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  %registers148 = getelementptr %struct.ti_bandgap_data, ptr %148, i32 0, i32 10, i32 %i.2739, i32 1
  %153 = ptrtoint ptr %registers148 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %registers148, align 4
  %bgap_threshold = getelementptr inbounds %struct.temp_sensor_registers, ptr %154, i32 0, i32 14
  %155 = ptrtoint ptr %bgap_threshold to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bgap_threshold, align 4
  %157 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i633, align 4
  %add.ptr.i634 = getelementptr i8, ptr %158, i32 %156
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i634) #6, !srcloc !143
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %threshold_tcold_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %154, i32 0, i32 16
  %161 = ptrtoint ptr %threshold_tcold_mask to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %threshold_tcold_mask, align 4
  %neg150 = xor i32 %162, -1
  %and151 = and i32 %160, %neg150
  %t_cold = getelementptr inbounds %struct.temp_sensor_data, ptr %150, i32 0, i32 3
  %163 = ptrtoint ptr %t_cold to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %t_cold, align 4
  %165 = tail call i32 @llvm.cttz.i32(i32 %162, i1 false) #6, !range !145
  %shl154 = shl i32 %164, %165
  %or155 = or i32 %shl154, %and151
  %166 = ptrtoint ptr %bgap_threshold to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bgap_threshold, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %168 = tail call i32 @llvm.bswap.i32(i32 %or155) #6
  %169 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i633, align 4
  %add.ptr.i636 = getelementptr i8, ptr %170, i32 %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i636, i32 %168) #6, !srcloc !147
  %171 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %conf, align 4
  %registers165 = getelementptr %struct.ti_bandgap_data, ptr %172, i32 0, i32 10, i32 %i.2739, i32 1
  %173 = ptrtoint ptr %registers165 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %registers165, align 4
  %bgap_threshold166 = getelementptr inbounds %struct.temp_sensor_registers, ptr %174, i32 0, i32 14
  %175 = ptrtoint ptr %bgap_threshold166 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bgap_threshold166, align 4
  %177 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i633, align 4
  %add.ptr.i638 = getelementptr i8, ptr %178, i32 %176
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i638) #6, !srcloc !143
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %threshold_thot_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %174, i32 0, i32 15
  %181 = ptrtoint ptr %threshold_thot_mask to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %threshold_thot_mask, align 4
  %neg168 = xor i32 %182, -1
  %and169 = and i32 %180, %neg168
  %t_hot = getelementptr inbounds %struct.temp_sensor_data, ptr %150, i32 0, i32 2
  %183 = ptrtoint ptr %t_hot to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %t_hot, align 4
  %185 = tail call i32 @llvm.cttz.i32(i32 %182, i1 false) #6, !range !145
  %shl172 = shl i32 %184, %185
  %or173 = or i32 %shl172, %and169
  %186 = ptrtoint ptr %bgap_threshold166 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %bgap_threshold166, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %188 = tail call i32 @llvm.bswap.i32(i32 %or173) #6
  %189 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i633, align 4
  %add.ptr.i640 = getelementptr i8, ptr %190, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i640, i32 %188) #6, !srcloc !147
  %191 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %conf, align 4
  %registers183 = getelementptr %struct.ti_bandgap_data, ptr %192, i32 0, i32 10, i32 %i.2739, i32 1
  %193 = ptrtoint ptr %registers183 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %registers183, align 4
  %bgap_mask_ctrl = getelementptr inbounds %struct.temp_sensor_registers, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bgap_mask_ctrl, align 4
  %197 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i633, align 4
  %add.ptr.i642 = getelementptr i8, ptr %198, i32 %196
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i642) #6, !srcloc !143
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_hot_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %194, i32 0, i32 6
  %201 = ptrtoint ptr %mask_hot_mask to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %mask_hot_mask, align 4
  %neg185 = xor i32 %202, -1
  %and186 = and i32 %200, %neg185
  %203 = tail call i32 @llvm.cttz.i32(i32 %202, i1 false) #6, !range !145
  %shl189 = shl nuw i32 1, %203
  %or190 = or i32 %shl189, %and186
  %204 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %bgap_mask_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %206 = tail call i32 @llvm.bswap.i32(i32 %or190) #6
  %207 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base.i633, align 4
  %add.ptr.i644 = getelementptr i8, ptr %208, i32 %205
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644, i32 %206) #6, !srcloc !147
  %209 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %conf, align 4
  %registers200 = getelementptr %struct.ti_bandgap_data, ptr %210, i32 0, i32 10, i32 %i.2739, i32 1
  %211 = ptrtoint ptr %registers200 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %registers200, align 4
  %bgap_mask_ctrl201 = getelementptr inbounds %struct.temp_sensor_registers, ptr %212, i32 0, i32 5
  %213 = ptrtoint ptr %bgap_mask_ctrl201 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %bgap_mask_ctrl201, align 4
  %215 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %base.i633, align 4
  %add.ptr.i646 = getelementptr i8, ptr %216, i32 %214
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i646) #6, !srcloc !143
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mask_cold_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %212, i32 0, i32 7
  %219 = ptrtoint ptr %mask_cold_mask to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %mask_cold_mask, align 4
  %neg203 = xor i32 %220, -1
  %and204 = and i32 %218, %neg203
  %221 = tail call i32 @llvm.cttz.i32(i32 %220, i1 false) #6, !range !145
  %shl207 = shl nuw i32 1, %221
  %or208 = or i32 %shl207, %and204
  %222 = ptrtoint ptr %bgap_mask_ctrl201 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %bgap_mask_ctrl201, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %224 = tail call i32 @llvm.bswap.i32(i32 %or208) #6
  %225 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %base.i633, align 4
  %add.ptr.i648 = getelementptr i8, ptr %226, i32 %223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i648, i32 %224) #6, !srcloc !147
  br label %if.end212

if.end212:                                        ; preds = %do.body142, %for.body131.if.end212_crit_edge
  %227 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %conf, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %and215 = and i32 %230, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.end212.if.end253_crit_edge, label %do.body218

if.end212.if.end253_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

do.body218:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  %registers224 = getelementptr %struct.ti_bandgap_data, ptr %228, i32 0, i32 10, i32 %i.2739, i32 1
  %231 = ptrtoint ptr %registers224 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %registers224, align 4
  %tshut_threshold = getelementptr inbounds %struct.temp_sensor_registers, ptr %232, i32 0, i32 17
  %233 = ptrtoint ptr %tshut_threshold to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %tshut_threshold, align 4
  %235 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base.i633, align 4
  %add.ptr.i650 = getelementptr i8, ptr %236, i32 %234
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i650) #6, !srcloc !143
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %tshut_hot_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %232, i32 0, i32 18
  %239 = ptrtoint ptr %tshut_hot_mask to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %tshut_hot_mask, align 4
  %neg226 = xor i32 %240, -1
  %and227 = and i32 %238, %neg226
  %241 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %150, align 4
  %243 = tail call i32 @llvm.cttz.i32(i32 %240, i1 false) #6, !range !145
  %shl230 = shl i32 %242, %243
  %or231 = or i32 %shl230, %and227
  %244 = ptrtoint ptr %tshut_threshold to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %tshut_threshold, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %246 = tail call i32 @llvm.bswap.i32(i32 %or231) #6
  %247 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %base.i633, align 4
  %add.ptr.i652 = getelementptr i8, ptr %248, i32 %245
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i652, i32 %246) #6, !srcloc !147
  %249 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %conf, align 4
  %registers241 = getelementptr %struct.ti_bandgap_data, ptr %250, i32 0, i32 10, i32 %i.2739, i32 1
  %251 = ptrtoint ptr %registers241 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %registers241, align 4
  %tshut_threshold242 = getelementptr inbounds %struct.temp_sensor_registers, ptr %252, i32 0, i32 17
  %253 = ptrtoint ptr %tshut_threshold242 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %tshut_threshold242, align 4
  %255 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base.i633, align 4
  %add.ptr.i654 = getelementptr i8, ptr %256, i32 %254
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i654) #6, !srcloc !143
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %tshut_cold_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %252, i32 0, i32 19
  %259 = ptrtoint ptr %tshut_cold_mask to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %tshut_cold_mask, align 4
  %neg244 = xor i32 %260, -1
  %and245 = and i32 %258, %neg244
  %tshut_cold = getelementptr inbounds %struct.temp_sensor_data, ptr %150, i32 0, i32 1
  %261 = ptrtoint ptr %tshut_cold to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %tshut_cold, align 4
  %263 = tail call i32 @llvm.cttz.i32(i32 %260, i1 false) #6, !range !145
  %shl248 = shl i32 %262, %263
  %or249 = or i32 %shl248, %and245
  %264 = ptrtoint ptr %tshut_threshold242 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %tshut_threshold242, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %266 = tail call i32 @llvm.bswap.i32(i32 %or249) #6
  %267 = ptrtoint ptr %base.i633 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %base.i633, align 4
  %add.ptr.i656 = getelementptr i8, ptr %268, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i656, i32 %266) #6, !srcloc !147
  br label %if.end253

if.end253:                                        ; preds = %do.body218, %if.end212.if.end253_crit_edge
  %inc255 = add nuw nsw i32 %i.2739, 1
  %269 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %conf, align 4
  %sensor_count129 = getelementptr inbounds %struct.ti_bandgap_data, ptr %270, i32 0, i32 6
  %271 = ptrtoint ptr %sensor_count129 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %sensor_count129, align 4
  %cmp130 = icmp slt i32 %inc255, %272
  br i1 %cmp130, label %if.end253.for.body131_crit_edge, label %for.end256

if.end253.for.body131_crit_edge:                  ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body131

for.end256:                                       ; preds = %if.end253
  %273 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %270, align 4
  %and259 = and i32 %274, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp ne i32 %and259, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp4.i659 = icmp sgt i32 %272, 0
  %or.cond721 = select i1 %tobool260.not, i1 %cmp4.i659, i1 false
  br i1 %or.cond721, label %for.body.lr.ph.i, label %for.end256.if.end263_crit_edge

for.end256.if.end263_crit_edge:                   ; preds = %for.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

for.body.lr.ph.i:                                 ; preds = %for.end256
  %base.i.i660 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i661 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i667, %for.body.i.for.body.i_crit_edge ]
  tail call fastcc void @ti_bandgap_force_single_read(ptr noundef nonnull %retval.2.i, i32 noundef %i.05.i661) #6
  %275 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %conf, align 4
  %registers.i662 = getelementptr %struct.ti_bandgap_data, ptr %276, i32 0, i32 10, i32 %i.05.i661, i32 1
  %277 = ptrtoint ptr %registers.i662 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %registers.i662, align 4
  %bgap_mode_ctrl.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %278, i32 0, i32 10
  %279 = ptrtoint ptr %bgap_mode_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %bgap_mode_ctrl.i, align 4
  %281 = ptrtoint ptr %base.i.i660 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %base.i.i660, align 4
  %add.ptr.i.i663 = getelementptr i8, ptr %282, i32 %280
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i663) #6, !srcloc !143
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %mode_ctrl_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %278, i32 0, i32 11
  %285 = ptrtoint ptr %mode_ctrl_mask.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %mode_ctrl_mask.i, align 4
  %neg.i664 = xor i32 %286, -1
  %and.i665 = and i32 %284, %neg.i664
  %287 = tail call i32 @llvm.cttz.i32(i32 %286, i1 false) #6, !range !145
  %shl.i = shl nuw i32 1, %287
  %or.i = or i32 %shl.i, %and.i665
  %288 = ptrtoint ptr %bgap_mode_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %bgap_mode_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %290 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %291 = ptrtoint ptr %base.i.i660 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %base.i.i660, align 4
  %add.ptr.i2.i666 = getelementptr i8, ptr %292, i32 %289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i666, i32 %290) #6, !srcloc !147
  %inc.i667 = add nuw nsw i32 %i.05.i661, 1
  %293 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %conf, align 4
  %sensor_count.i668 = getelementptr inbounds %struct.ti_bandgap_data, ptr %294, i32 0, i32 6
  %295 = ptrtoint ptr %sensor_count.i668 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %sensor_count.i668, align 4
  %cmp.i669 = icmp slt i32 %inc.i667, %296
  br i1 %cmp.i669, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end263_crit_edge

for.body.i.if.end263_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end263:                                        ; preds = %for.body.i.if.end263_crit_edge, %for.end256.if.end263_crit_edge, %if.end126.if.end263_crit_edge
  %297 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %conf, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %298, align 4
  %and266 = and i32 %300, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %if.end263.if.end297_crit_edge, label %for.cond269.preheader

if.end263.if.end297_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end297

for.cond269.preheader:                            ; preds = %if.end263
  %301 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %conf, align 4
  %sensor_count271744 = getelementptr inbounds %struct.ti_bandgap_data, ptr %302, i32 0, i32 6
  %303 = ptrtoint ptr %sensor_count271744 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %sensor_count271744, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %cmp272745 = icmp sgt i32 %304, 0
  br i1 %cmp272745, label %do.body274.lr.ph, label %for.cond269.preheader.if.end297_crit_edge

for.cond269.preheader.if.end297_crit_edge:        ; preds = %for.cond269.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end297

do.body274.lr.ph:                                 ; preds = %for.cond269.preheader
  %base.i670 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 1
  br label %do.body274

do.body274:                                       ; preds = %do.body274.do.body274_crit_edge, %do.body274.lr.ph
  %305 = phi ptr [ %302, %do.body274.lr.ph ], [ %325, %do.body274.do.body274_crit_edge ]
  %i.3746 = phi i32 [ 0, %do.body274.lr.ph ], [ %inc295, %do.body274.do.body274_crit_edge ]
  %registers280 = getelementptr %struct.ti_bandgap_data, ptr %305, i32 0, i32 10, i32 %i.3746, i32 1
  %306 = ptrtoint ptr %registers280 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %registers280, align 4
  %bgap_counter281 = getelementptr inbounds %struct.temp_sensor_registers, ptr %307, i32 0, i32 12
  %308 = ptrtoint ptr %bgap_counter281 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %bgap_counter281, align 4
  %310 = ptrtoint ptr %base.i670 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %base.i670, align 4
  %add.ptr.i671 = getelementptr i8, ptr %311, i32 %309
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i671) #6, !srcloc !143
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %counter_mask283 = getelementptr inbounds %struct.temp_sensor_registers, ptr %307, i32 0, i32 13
  %314 = ptrtoint ptr %counter_mask283 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %counter_mask283, align 4
  %neg284 = xor i32 %315, -1
  %and285 = and i32 %313, %neg284
  %316 = ptrtoint ptr %clk_rate85 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %clk_rate85, align 4
  %div610 = lshr i32 %317, 2
  %318 = tail call i32 @llvm.cttz.i32(i32 %315, i1 false) #6, !range !145
  %shl289 = shl i32 %div610, %318
  %or290 = or i32 %shl289, %and285
  %319 = ptrtoint ptr %bgap_counter281 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %bgap_counter281, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %321 = tail call i32 @llvm.bswap.i32(i32 %or290) #6
  %322 = ptrtoint ptr %base.i670 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %base.i670, align 4
  %add.ptr.i673 = getelementptr i8, ptr %323, i32 %320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i673, i32 %321) #6, !srcloc !147
  %inc295 = add nuw nsw i32 %i.3746, 1
  %324 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %conf, align 4
  %sensor_count271 = getelementptr inbounds %struct.ti_bandgap_data, ptr %325, i32 0, i32 6
  %326 = ptrtoint ptr %sensor_count271 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %sensor_count271, align 4
  %cmp272 = icmp slt i32 %inc295, %327
  br i1 %cmp272, label %do.body274.do.body274_crit_edge, label %do.body274.if.end297_crit_edge

do.body274.if.end297_crit_edge:                   ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end297

do.body274.do.body274_crit_edge:                  ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body274

if.end297:                                        ; preds = %do.body274.if.end297_crit_edge, %for.cond269.preheader.if.end297_crit_edge, %if.end263.if.end297_crit_edge
  %328 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %conf, align 4
  %sensor_count300747 = getelementptr inbounds %struct.ti_bandgap_data, ptr %329, i32 0, i32 6
  %330 = ptrtoint ptr %sensor_count300747 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %sensor_count300747, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %cmp301748 = icmp sgt i32 %331, 0
  br i1 %cmp301748, label %if.end297.for.body302_crit_edge, label %if.end297.for.end333_crit_edge

if.end297.for.end333_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end333

if.end297.for.body302_crit_edge:                  ; preds = %if.end297
  br label %for.body302

for.body302:                                      ; preds = %for.inc331.for.body302_crit_edge, %if.end297.for.body302_crit_edge
  %332 = phi ptr [ %342, %for.inc331.for.body302_crit_edge ], [ %329, %if.end297.for.body302_crit_edge ]
  %i.4749 = phi i32 [ %inc332, %for.inc331.for.body302_crit_edge ], [ 0, %if.end297.for.body302_crit_edge ]
  %register_cooling = getelementptr %struct.ti_bandgap_data, ptr %332, i32 0, i32 10, i32 %i.4749, i32 5
  %333 = ptrtoint ptr %register_cooling to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %register_cooling, align 4
  %tobool306.not = icmp eq ptr %334, null
  br i1 %tobool306.not, label %for.body302.if.end316_crit_edge, label %if.then307

for.body302.if.end316_crit_edge:                  ; preds = %for.body302
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end316

if.then307:                                       ; preds = %for.body302
  %call312 = tail call i32 %334(ptr noundef nonnull %retval.2.i, i32 noundef %i.4749) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %if.then307.if.end316_crit_edge, label %if.then307.remove_sensors_crit_edge

if.then307.remove_sensors_crit_edge:              ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_sensors

if.then307.if.end316_crit_edge:                   ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end316

if.end316:                                        ; preds = %if.then307.if.end316_crit_edge, %for.body302.if.end316_crit_edge
  %335 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %conf, align 4
  %expose_sensor = getelementptr inbounds %struct.ti_bandgap_data, ptr %336, i32 0, i32 8
  %337 = ptrtoint ptr %expose_sensor to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %expose_sensor, align 4
  %tobool318.not = icmp eq ptr %338, null
  br i1 %tobool318.not, label %if.end316.for.inc331_crit_edge, label %if.then319

if.end316.for.inc331_crit_edge:                   ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc331

if.then319:                                       ; preds = %if.end316
  %domain323 = getelementptr %struct.ti_bandgap_data, ptr %336, i32 0, i32 10, i32 %i.4749, i32 2
  %339 = ptrtoint ptr %domain323 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %domain323, align 4
  %call326 = tail call i32 %338(ptr noundef nonnull %retval.2.i, i32 noundef %i.4749, ptr noundef %340) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.then319.for.inc331_crit_edge, label %remove_last_cooling

if.then319.for.inc331_crit_edge:                  ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc331

for.inc331:                                       ; preds = %if.then319.for.inc331_crit_edge, %if.end316.for.inc331_crit_edge
  %inc332 = add nuw nsw i32 %i.4749, 1
  %341 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %conf, align 4
  %sensor_count300 = getelementptr inbounds %struct.ti_bandgap_data, ptr %342, i32 0, i32 6
  %343 = ptrtoint ptr %sensor_count300 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %sensor_count300, align 4
  %cmp301 = icmp slt i32 %inc332, %344
  br i1 %cmp301, label %for.inc331.for.body302_crit_edge, label %for.inc331.for.end333_crit_edge

for.inc331.for.end333_crit_edge:                  ; preds = %for.inc331
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end333

for.inc331.for.body302_crit_edge:                 ; preds = %for.inc331
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body302

for.end333:                                       ; preds = %for.inc331.for.end333_crit_edge, %if.end297.for.end333_crit_edge
  %.lcssa = phi ptr [ %329, %if.end297.for.end333_crit_edge ], [ %342, %for.inc331.for.end333_crit_edge ]
  %345 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %.lcssa, align 4
  %and336 = and i32 %346, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %for.end333.if.end349_crit_edge, label %if.then338

for.end333.if.end349_crit_edge:                   ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end349

if.then338:                                       ; preds = %for.end333
  %call.i674 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq.i = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 7
  %347 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %call.i674, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i674)
  %cmp.i675 = icmp slt i32 %call.i674, 0
  br i1 %cmp.i675, label %if.then338.do.end344_crit_edge, label %if.end.i677

if.then338.do.end344_crit_edge:                   ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end344

if.end.i677:                                      ; preds = %if.then338
  %call4.i = tail call i32 @request_threaded_irq(i32 noundef %call.i674, ptr noundef null, ptr noundef nonnull @ti_bandgap_talert_irq_handler, i32 noundef 8196, ptr noundef nonnull @.str.60, ptr noundef nonnull %retval.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i676 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i676, label %if.end.i677.if.end349_crit_edge, label %do.end.i679

if.end.i677.if.end349_crit_edge:                  ; preds = %if.end.i677
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end349

do.end.i679:                                      ; preds = %if.end.i677
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61) #9
  br label %do.end344

do.end344:                                        ; preds = %do.end.i679, %if.then338.do.end344_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i674, %if.then338.do.end344_crit_edge ], [ %call4.i, %do.end.i679 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48) #9
  br label %disable_clk

if.end349:                                        ; preds = %if.end.i677.if.end349_crit_edge, %for.end333.if.end349_crit_edge
  %nb = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 10
  %348 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr @bandgap_omap_cpu_notifier, ptr %nb, align 4
  %call350 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_no_cpu_notifier) #6
  %tobool351.not = icmp eq ptr %call350, null
  br i1 %tobool351.not, label %if.then352, label %if.end349.cleanup410_crit_edge

if.end349.cleanup410_crit_edge:                   ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

if.then352:                                       ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #8
  %call354 = tail call i32 @cpu_pm_register_notifier(ptr noundef %nb) #6
  br label %cleanup410

remove_last_cooling:                              ; preds = %if.then319
  %349 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %conf, align 4
  %unregister_cooling = getelementptr %struct.ti_bandgap_data, ptr %350, i32 0, i32 10, i32 %i.4749, i32 6
  %351 = ptrtoint ptr %unregister_cooling to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %unregister_cooling, align 4
  %tobool359.not = icmp eq ptr %352, null
  br i1 %tobool359.not, label %remove_last_cooling.remove_sensors_crit_edge, label %if.then360

remove_last_cooling.remove_sensors_crit_edge:     ; preds = %remove_last_cooling
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_sensors

if.then360:                                       ; preds = %remove_last_cooling
  call void @__sanitizer_cov_trace_pc() #8
  %call365 = tail call i32 %352(ptr noundef nonnull %retval.2.i, i32 noundef %i.4749) #6
  br label %remove_sensors

remove_sensors:                                   ; preds = %if.then360, %remove_last_cooling.remove_sensors_crit_edge, %if.then307.remove_sensors_crit_edge
  %ret.3716 = phi i32 [ %call326, %remove_last_cooling.remove_sensors_crit_edge ], [ %call326, %if.then360 ], [ %call312, %if.then307.remove_sensors_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.4749)
  %cmp368753.not = icmp eq i32 %i.4749, 0
  br i1 %cmp368753.not, label %remove_sensors.for.end391_crit_edge, label %remove_sensors.for.body369_crit_edge

remove_sensors.for.body369_crit_edge:             ; preds = %remove_sensors
  br label %for.body369

remove_sensors.for.end391_crit_edge:              ; preds = %remove_sensors
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end391

for.body369:                                      ; preds = %for.inc389.for.body369_crit_edge, %remove_sensors.for.body369_crit_edge
  %i.5754.in = phi i32 [ %i.5754, %for.inc389.for.body369_crit_edge ], [ %i.4749, %remove_sensors.for.body369_crit_edge ]
  %i.5754 = add nsw i32 %i.5754.in, -1
  %353 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %conf, align 4
  %unregister_cooling373 = getelementptr %struct.ti_bandgap_data, ptr %354, i32 0, i32 10, i32 %i.5754, i32 6
  %355 = ptrtoint ptr %unregister_cooling373 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %unregister_cooling373, align 4
  %tobool374.not = icmp eq ptr %356, null
  br i1 %tobool374.not, label %for.body369.if.end381_crit_edge, label %if.then375

for.body369.if.end381_crit_edge:                  ; preds = %for.body369
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end381

if.then375:                                       ; preds = %for.body369
  call void @__sanitizer_cov_trace_pc() #8
  %call380 = tail call i32 %356(ptr noundef nonnull %retval.2.i, i32 noundef %i.5754) #6
  br label %if.end381

if.end381:                                        ; preds = %if.then375, %for.body369.if.end381_crit_edge
  %357 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %conf, align 4
  %remove_sensor = getelementptr inbounds %struct.ti_bandgap_data, ptr %358, i32 0, i32 9
  %359 = ptrtoint ptr %remove_sensor to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %remove_sensor, align 4
  %tobool383.not = icmp eq ptr %360, null
  br i1 %tobool383.not, label %if.end381.for.inc389_crit_edge, label %if.then384

if.end381.for.inc389_crit_edge:                   ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc389

if.then384:                                       ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  %call387 = tail call i32 %360(ptr noundef nonnull %retval.2.i, i32 noundef %i.5754) #6
  br label %for.inc389

for.inc389:                                       ; preds = %if.then384, %if.end381.for.inc389_crit_edge
  %cmp368 = icmp sgt i32 %i.5754.in, 1
  br i1 %cmp368, label %for.inc389.for.body369_crit_edge, label %for.inc389.for.end391_crit_edge

for.inc389.for.end391_crit_edge:                  ; preds = %for.inc389
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end391

for.inc389.for.body369_crit_edge:                 ; preds = %for.inc389
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body369

for.end391:                                       ; preds = %for.inc389.for.end391_crit_edge, %remove_sensors.for.end391_crit_edge
  %361 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %conf, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %362, align 4
  %and.i681 = and i32 %364, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i681)
  %tobool.not.i682 = icmp eq i32 %and.i681, 0
  br i1 %tobool.not.i682, label %for.end391.disable_clk_crit_edge, label %for.cond.preheader.i685

for.end391.disable_clk_crit_edge:                 ; preds = %for.end391
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

for.cond.preheader.i685:                          ; preds = %for.end391
  %sensor_count3.i683 = getelementptr inbounds %struct.ti_bandgap_data, ptr %362, i32 0, i32 6
  %365 = ptrtoint ptr %sensor_count3.i683 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %sensor_count3.i683, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %cmp4.i684 = icmp sgt i32 %366, 0
  br i1 %cmp4.i684, label %do.body.lr.ph.i687, label %for.cond.preheader.i685.disable_clk_crit_edge

for.cond.preheader.i685.disable_clk_crit_edge:    ; preds = %for.cond.preheader.i685
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

do.body.lr.ph.i687:                               ; preds = %for.cond.preheader.i685
  %base.i.i686 = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 1
  br label %do.body.i700

do.body.i700:                                     ; preds = %do.body.i700.do.body.i700_crit_edge, %do.body.lr.ph.i687
  %367 = phi ptr [ %362, %do.body.lr.ph.i687 ], [ %385, %do.body.i700.do.body.i700_crit_edge ]
  %i.05.i688 = phi i32 [ 0, %do.body.lr.ph.i687 ], [ %inc.i697, %do.body.i700.do.body.i700_crit_edge ]
  %registers.i689 = getelementptr %struct.ti_bandgap_data, ptr %367, i32 0, i32 10, i32 %i.05.i688, i32 1
  %368 = ptrtoint ptr %registers.i689 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %registers.i689, align 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %369, align 4
  %372 = ptrtoint ptr %base.i.i686 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %base.i.i686, align 4
  %add.ptr.i.i690 = getelementptr i8, ptr %373, i32 %371
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i690) #6, !srcloc !143
  %375 = tail call i32 @llvm.bswap.i32(i32 %374) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_tempsoff_mask.i691 = getelementptr inbounds %struct.temp_sensor_registers, ptr %369, i32 0, i32 1
  %376 = ptrtoint ptr %bgap_tempsoff_mask.i691 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %bgap_tempsoff_mask.i691, align 4
  %neg.i692 = xor i32 %377, -1
  %and3.i693 = and i32 %375, %neg.i692
  %378 = tail call i32 @llvm.cttz.i32(i32 %377, i1 false) #6, !range !145
  %shl.i694 = shl nuw i32 1, %378
  %or.i695 = or i32 %shl.i694, %and3.i693
  %379 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %369, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %381 = tail call i32 @llvm.bswap.i32(i32 %or.i695) #6
  %382 = ptrtoint ptr %base.i.i686 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %base.i.i686, align 4
  %add.ptr.i2.i696 = getelementptr i8, ptr %383, i32 %380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i696, i32 %381) #6, !srcloc !147
  %inc.i697 = add nuw nsw i32 %i.05.i688, 1
  %384 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %conf, align 4
  %sensor_count.i698 = getelementptr inbounds %struct.ti_bandgap_data, ptr %385, i32 0, i32 6
  %386 = ptrtoint ptr %sensor_count.i698 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %sensor_count.i698, align 4
  %cmp.i699 = icmp slt i32 %inc.i697, %387
  br i1 %cmp.i699, label %do.body.i700.do.body.i700_crit_edge, label %do.body.i700.disable_clk_crit_edge

do.body.i700.disable_clk_crit_edge:               ; preds = %do.body.i700
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

do.body.i700.do.body.i700_crit_edge:              ; preds = %do.body.i700
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i700

disable_clk:                                      ; preds = %do.body.i700.disable_clk_crit_edge, %for.cond.preheader.i685.disable_clk_crit_edge, %for.end391.disable_clk_crit_edge, %do.end344
  %ret.4 = phi i32 [ %retval.0.i.ph, %do.end344 ], [ %ret.3716, %for.end391.disable_clk_crit_edge ], [ %ret.3716, %for.cond.preheader.i685.disable_clk_crit_edge ], [ %ret.3716, %do.body.i700.disable_clk_crit_edge ]
  %388 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %conf, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %389, align 4
  %and395 = and i32 %391, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and395)
  %tobool396.not = icmp eq i32 %and395, 0
  br i1 %tobool396.not, label %disable_clk.put_clks_crit_edge, label %if.then397

disable_clk.put_clks_crit_edge:                   ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_clks

if.then397:                                       ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #8
  %392 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %fclock, align 4
  tail call void @clk_disable(ptr noundef %393) #6
  tail call void @clk_unprepare(ptr noundef %393) #6
  br label %put_clks

put_clks:                                         ; preds = %if.then397, %disable_clk.put_clks_crit_edge, %if.then70
  %ret.5 = phi i32 [ -19, %if.then70 ], [ %ret.4, %if.then397 ], [ %ret.4, %disable_clk.put_clks_crit_edge ]
  %394 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %div_clk, align 4
  tail call void @clk_put(ptr noundef %395) #6
  br label %put_fclock

put_fclock:                                       ; preds = %put_clks, %do.end44
  %ret.6 = phi i32 [ %53, %do.end44 ], [ %ret.5, %put_clks ]
  %396 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %fclock, align 4
  tail call void @clk_put(ptr noundef %397) #6
  br label %free_irqs

free_irqs:                                        ; preds = %put_fclock, %do.end32
  %ret.7 = phi i32 [ %41, %do.end32 ], [ %ret.6, %put_fclock ]
  %398 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %conf, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %399, align 4
  %and404 = and i32 %401, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404)
  %tobool405.not = icmp eq i32 %and404, 0
  br i1 %tobool405.not, label %free_irqs.cleanup410_crit_edge, label %if.then406

free_irqs.cleanup410_crit_edge:                   ; preds = %free_irqs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup410

if.then406:                                       ; preds = %free_irqs
  call void @__sanitizer_cov_trace_pc() #8
  %tshut_gpiod = getelementptr inbounds %struct.ti_bandgap, ptr %retval.2.i, i32 0, i32 8
  %402 = ptrtoint ptr %tshut_gpiod to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %tshut_gpiod, align 4
  %call407 = tail call i32 @gpiod_to_irq(ptr noundef %403) #6
  %call408 = tail call ptr @free_irq(i32 noundef %call407, ptr noundef null) #6
  br label %cleanup410

cleanup410:                                       ; preds = %if.then406, %free_irqs.cleanup410_crit_edge, %if.then352, %if.end349.cleanup410_crit_edge, %do.end
  %retval.0 = phi i32 [ %20, %do.end ], [ 0, %if.then352 ], [ 0, %if.end349.cleanup410_crit_edge ], [ %ret.7, %if.then406 ], [ %ret.7, %free_irqs.cleanup410_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_bandgap_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_no_cpu_notifier) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nb = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 10
  %call2 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %nb) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %sensor_count64 = getelementptr inbounds %struct.ti_bandgap_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %sensor_count64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_count64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp65 = icmp sgt i32 %5, 0
  br i1 %cmp65, label %if.end.for.body_crit_edge, label %if.end.ti_bandgap_power.exit_crit_edge

if.end.ti_bandgap_power.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %6 = phi ptr [ %14, %for.inc.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %i.066 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %unregister_cooling = getelementptr %struct.ti_bandgap_data, ptr %6, i32 0, i32 10, i32 %i.066, i32 6
  %7 = ptrtoint ptr %unregister_cooling to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unregister_cooling, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %for.body.if.end11_crit_edge, label %if.then5

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 %8(ptr noundef %1, i32 noundef %i.066) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %for.body.if.end11_crit_edge
  %9 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conf, align 4
  %remove_sensor = getelementptr inbounds %struct.ti_bandgap_data, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %remove_sensor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remove_sensor, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.end11.for.inc_crit_edge, label %if.then14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %12(ptr noundef %1, i32 noundef %i.066) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end11.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.066, 1
  %13 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conf, align 4
  %sensor_count = getelementptr inbounds %struct.ti_bandgap_data, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %sensor_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sensor_count, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %and.i = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.i = icmp sgt i32 %16, 0
  %or.cond = select i1 %tobool.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond, label %do.body.lr.ph.i, label %for.end.ti_bandgap_power.exit_crit_edge

for.end.ti_bandgap_power.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.lr.ph.i:                                  ; preds = %for.end
  %base.i.i = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %19 = phi ptr [ %14, %do.body.lr.ph.i ], [ %37, %do.body.i.do.body.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %registers.i = getelementptr %struct.ti_bandgap_data, ptr %19, i32 0, i32 10, i32 %i.05.i, i32 1
  %20 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %registers.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_tempsoff_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %bgap_tempsoff_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bgap_tempsoff_mask.i, align 4
  %neg.i = xor i32 %29, -1
  %and3.i = and i32 %27, %neg.i
  %30 = tail call i32 @llvm.cttz.i32(i32 %29, i1 false) #6, !range !145
  %shl.i = shl nuw i32 1, %30
  %or.i = or i32 %shl.i, %and3.i
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %35, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %33) #6, !srcloc !147
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %36 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conf, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sensor_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %39
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.ti_bandgap_power.exit_crit_edge

do.body.i.ti_bandgap_power.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ti_bandgap_power.exit:                            ; preds = %do.body.i.ti_bandgap_power.exit_crit_edge, %for.end.ti_bandgap_power.exit_crit_edge, %if.end.ti_bandgap_power.exit_crit_edge
  %40 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %conf, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %and = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %ti_bandgap_power.exit.if.end23_crit_edge, label %if.then22

ti_bandgap_power.exit.if.end23_crit_edge:         ; preds = %ti_bandgap_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %ti_bandgap_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  %fclock = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fclock, align 4
  tail call void @clk_disable(ptr noundef %45) #6
  tail call void @clk_unprepare(ptr noundef %45) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %ti_bandgap_power.exit.if.end23_crit_edge
  %fclock24 = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %fclock24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fclock24, align 4
  tail call void @clk_put(ptr noundef %47) #6
  %div_clk = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %div_clk, align 4
  tail call void @clk_put(ptr noundef %49) #6
  %50 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %conf, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and27 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end23.if.end31_crit_edge, label %if.then29

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %call30 = tail call ptr @free_irq(i32 noundef %55, ptr noundef %1) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end23.if.end31_crit_edge
  %56 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %conf, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %and34 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end31.if.end39_crit_edge, label %if.then36

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %tshut_gpiod = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %tshut_gpiod to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tshut_gpiod, align 4
  %call37 = tail call i32 @gpiod_to_irq(ptr noundef %61) #6
  %call38 = tail call ptr @free_irq(i32 noundef %call37, ptr noundef null) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end31.if.end39_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bandgap_omap_cpu_notifier(ptr noundef %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -80
  %lock = getelementptr i8, ptr %nb, i32 -56
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge55
  ]

entry.sw.bb5_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %is_suspended = getelementptr i8, ptr %nb, i32 12
  %1 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %is_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  tail call fastcc void @ti_bandgap_save_ctxt(ptr noundef %add.ptr)
  %conf.i = getelementptr i8, ptr %nb, i32 -72
  %2 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.ti_bandgap_power.exit_crit_edge, label %for.cond.preheader.i

if.end.ti_bandgap_power.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

for.cond.preheader.i:                             ; preds = %if.end
  %sensor_count3.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %sensor_count3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_count3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i = icmp sgt i32 %7, 0
  br i1 %cmp4.i, label %do.body.lr.ph.i, label %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge

for.cond.preheader.i.ti_bandgap_power.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %base.i.i = getelementptr i8, ptr %nb, i32 -76
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %8 = phi ptr [ %3, %do.body.lr.ph.i ], [ %26, %do.body.i.do.body.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %registers.i = getelementptr %struct.ti_bandgap_data, ptr %8, i32 0, i32 10, i32 %i.05.i, i32 1
  %9 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %registers.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_tempsoff_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %bgap_tempsoff_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bgap_tempsoff_mask.i, align 4
  %neg.i = xor i32 %18, -1
  %and3.i = and i32 %16, %neg.i
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 false) #6, !range !145
  %shl.i = shl nuw i32 1, %19
  %or.i = or i32 %shl.i, %and3.i
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %24, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %22) #6, !srcloc !147
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %25 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sensor_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %28
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.ti_bandgap_power.exit_crit_edge

do.body.i.ti_bandgap_power.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ti_bandgap_power.exit:                            ; preds = %do.body.i.ti_bandgap_power.exit_crit_edge, %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge, %if.end.ti_bandgap_power.exit_crit_edge
  %29 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %ti_bandgap_power.exit.sw.epilog_crit_edge, label %if.then3

ti_bandgap_power.exit.sw.epilog_crit_edge:        ; preds = %ti_bandgap_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then3:                                         ; preds = %ti_bandgap_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  %fclock = getelementptr i8, ptr %nb, i32 -64
  %33 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fclock, align 4
  tail call void @clk_disable(ptr noundef %34) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge55
  %is_suspended6 = getelementptr i8, ptr %nb, i32 12
  %35 = ptrtoint ptr %is_suspended6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load7 = load i8, ptr %is_suspended6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load7)
  %tobool10.not = icmp sgt i8 %bf.load7, -1
  br i1 %tobool10.not, label %if.end12, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end12:                                         ; preds = %sw.bb5
  %conf13 = getelementptr i8, ptr %nb, i32 -72
  %36 = ptrtoint ptr %conf13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conf13, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %and15 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end12.if.end20_crit_edge, label %if.then17

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %fclock18 = getelementptr i8, ptr %nb, i32 -64
  %40 = ptrtoint ptr %fclock18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fclock18, align 4
  %call19 = tail call i32 @clk_enable(ptr noundef %41) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end12.if.end20_crit_edge
  %42 = ptrtoint ptr %conf13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conf13, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %and.i36 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %if.end20.ti_bandgap_power.exit54_crit_edge, label %for.cond.preheader.i40

if.end20.ti_bandgap_power.exit54_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit54

for.cond.preheader.i40:                           ; preds = %if.end20
  %sensor_count3.i38 = getelementptr inbounds %struct.ti_bandgap_data, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %sensor_count3.i38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sensor_count3.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp4.i39 = icmp sgt i32 %47, 0
  br i1 %cmp4.i39, label %do.body.lr.ph.i42, label %for.cond.preheader.i40.ti_bandgap_power.exit54_crit_edge

for.cond.preheader.i40.ti_bandgap_power.exit54_crit_edge: ; preds = %for.cond.preheader.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit54

do.body.lr.ph.i42:                                ; preds = %for.cond.preheader.i40
  %base.i.i41 = getelementptr i8, ptr %nb, i32 -76
  br label %do.body.i53

do.body.i53:                                      ; preds = %do.body.i53.do.body.i53_crit_edge, %do.body.lr.ph.i42
  %48 = phi ptr [ %43, %do.body.lr.ph.i42 ], [ %65, %do.body.i53.do.body.i53_crit_edge ]
  %i.05.i43 = phi i32 [ 0, %do.body.lr.ph.i42 ], [ %inc.i50, %do.body.i53.do.body.i53_crit_edge ]
  %registers.i44 = getelementptr %struct.ti_bandgap_data, ptr %48, i32 0, i32 10, i32 %i.05.i43, i32 1
  %49 = ptrtoint ptr %registers.i44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %registers.i44, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = ptrtoint ptr %base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i41, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %54, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #6, !srcloc !143
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_tempsoff_mask.i46 = getelementptr inbounds %struct.temp_sensor_registers, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %bgap_tempsoff_mask.i46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bgap_tempsoff_mask.i46, align 4
  %neg.i47 = xor i32 %58, -1
  %and3.i48 = and i32 %56, %neg.i47
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %50, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %and3.i48) #6
  %62 = ptrtoint ptr %base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i41, align 4
  %add.ptr.i2.i49 = getelementptr i8, ptr %63, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i49, i32 %61) #6, !srcloc !147
  %inc.i50 = add nuw nsw i32 %i.05.i43, 1
  %64 = ptrtoint ptr %conf13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %conf13, align 4
  %sensor_count.i51 = getelementptr inbounds %struct.ti_bandgap_data, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %sensor_count.i51 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sensor_count.i51, align 4
  %cmp.i52 = icmp slt i32 %inc.i50, %67
  br i1 %cmp.i52, label %do.body.i53.do.body.i53_crit_edge, label %do.body.i53.ti_bandgap_power.exit54_crit_edge

do.body.i53.ti_bandgap_power.exit54_crit_edge:    ; preds = %do.body.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit54

do.body.i53.do.body.i53_crit_edge:                ; preds = %do.body.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i53

ti_bandgap_power.exit54:                          ; preds = %do.body.i53.ti_bandgap_power.exit54_crit_edge, %for.cond.preheader.i40.ti_bandgap_power.exit54_crit_edge, %if.end20.ti_bandgap_power.exit54_crit_edge
  tail call fastcc void @ti_bandgap_restore_ctxt(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %ti_bandgap_power.exit54, %sw.bb5.sw.epilog_crit_edge, %if.then3, %ti_bandgap_power.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_bandgap_tshut_irq_handler(i32 noundef %irq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #9
  tail call void @orderly_poweroff(i1 noundef zeroext true) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_bandgap_talert_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ti_bandgap, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %sensor_count73 = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count73 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp74 = icmp sgt i32 %3, 0
  br i1 %cmp74, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base.i = getelementptr inbounds %struct.ti_bandgap, ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %42, %for.inc.for.body_crit_edge ]
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %registers = getelementptr %struct.ti_bandgap_data, ptr %4, i32 0, i32 10, i32 %i.075, i32 1
  %5 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %registers, align 4
  %bgap_status = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %bgap_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bgap_status, align 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !143
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %status_hot_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 21
  %13 = ptrtoint ptr %status_hot_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status_hot_mask, align 4
  %and = and i32 %14, %12
  %status_cold_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 22
  %15 = ptrtoint ptr %status_cold_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status_cold_mask, align 4
  %and2 = and i32 %16, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bgap_mask_ctrl = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 5
  %17 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bgap_mask_ctrl, align 4
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %20, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #6, !srcloc !143
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  br i1 %tobool3.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mask_hot_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 6
  %mask_cold_mask = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 7
  br label %if.end16.sink.split

if.else:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.else.if.end16_crit_edge, label %if.then9

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mask_cold_mask10 = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 7
  %mask_hot_mask13 = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 6
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then9, %if.then6
  %mask_hot_mask13.sink = phi ptr [ %mask_hot_mask13, %if.then9 ], [ %mask_cold_mask, %if.then6 ]
  %neg11.pn.in.in = phi ptr [ %mask_cold_mask10, %if.then9 ], [ %mask_hot_mask, %if.then6 ]
  %23 = ptrtoint ptr %neg11.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %neg11.pn.in = load i32, ptr %neg11.pn.in.in, align 4
  %neg11.pn = xor i32 %neg11.pn.in, -1
  %and12.sink = and i32 %22, %neg11.pn
  %24 = ptrtoint ptr %mask_hot_mask13.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_hot_mask13.sink, align 4
  %or14 = or i32 %and12.sink, %25
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge
  %ctrl.0 = phi i32 [ %22, %if.else.if.end16_crit_edge ], [ %or14, %if.end16.sink.split ]
  %26 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bgap_mask_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #6
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %30, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %28) #6, !srcloc !147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_bandgap_talert_irq_handler.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_bandgap_talert_irq_handler, %if.then22)) #6
          to label %do.end [label %if.then22], !srcloc !153

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %conf, align 4
  %domain = getelementptr %struct.ti_bandgap_data, ptr %34, i32 0, i32 10, i32 %i.075, i32 2
  %35 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %domain, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_bandgap_talert_irq_handler.__UNIQUE_ID_ddebug188, ptr noundef %32, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, ptr noundef %36, i32 noundef %and, i32 noundef %and2) #6
  br label %do.end

do.end:                                           ; preds = %if.then22, %if.end16
  %37 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conf, align 4
  %report_temperature = getelementptr inbounds %struct.ti_bandgap_data, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %report_temperature to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %report_temperature, align 4
  %tobool28.not = icmp eq ptr %40, null
  br i1 %tobool28.not, label %do.end.for.inc_crit_edge, label %if.then29

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 %40(ptr noundef %data, i32 noundef %i.075) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %do.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.075, 1
  %41 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %conf, align 4
  %sensor_count = getelementptr inbounds %struct.ti_bandgap_data, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %sensor_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sensor_count, align 4
  %cmp = icmp slt i32 %inc, %44
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_bandgap_save_ctxt(ptr nocapture noundef readonly %bgp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %sensor_count9 = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regval = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %59, %if.end26.for.body_crit_edge ]
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end26.for.body_crit_edge ]
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regval, align 4
  %registers = getelementptr %struct.ti_bandgap_data, ptr %4, i32 0, i32 10, i32 %i.011, i32 1
  %7 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011
  %bgap_mode_ctrl = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %bgap_mode_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bgap_mode_ctrl, align 4
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !143
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %18 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and6 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bgap_counter = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 12
  %22 = ptrtoint ptr %bgap_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bgap_counter, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !143
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bg_counter = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 2
  %28 = ptrtoint ptr %bg_counter to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %bg_counter, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %29 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and13 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end18_crit_edge, label %if.then15

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %bgap_threshold = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 14
  %33 = ptrtoint ptr %bgap_threshold to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bgap_threshold, align 4
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %36, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #6, !srcloc !143
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bg_threshold = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 3
  %39 = ptrtoint ptr %bg_threshold to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %bg_threshold, align 4
  %bgap_mask_ctrl = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 5
  %40 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bgap_mask_ctrl, align 4
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %43, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !143
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bg_ctrl = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 1
  %46 = ptrtoint ptr %bg_ctrl to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bg_ctrl, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end10.if.end18_crit_edge
  %47 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %conf, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and21 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.if.end26_crit_edge, label %if.then23

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %tshut_threshold = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 17
  %51 = ptrtoint ptr %tshut_threshold to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tshut_threshold, align 4
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %54, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #6, !srcloc !143
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %tshut_threshold25 = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 4
  %57 = ptrtoint ptr %tshut_threshold25 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %tshut_threshold25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end18.if.end26_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %58 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %conf, align 4
  %sensor_count = getelementptr inbounds %struct.ti_bandgap_data, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %sensor_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sensor_count, align 4
  %cmp = icmp slt i32 %inc, %61
  br i1 %cmp, label %if.end26.for.body_crit_edge, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_bandgap_restore_ctxt(ptr nocapture noundef readonly %bgp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 2
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %sensor_count9 = getelementptr inbounds %struct.ti_bandgap_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sensor_count9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_count9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regval = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.ti_bandgap, ptr %bgp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %59, %if.end22.for.body_crit_edge ]
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end22.for.body_crit_edge ]
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regval, align 4
  %arrayidx = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011
  %registers = getelementptr %struct.ti_bandgap_data, ptr %4, i32 0, i32 10, i32 %i.011, i32 1
  %7 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tshut_threshold = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 4
  %11 = ptrtoint ptr %tshut_threshold to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tshut_threshold, align 4
  %tshut_threshold4 = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 17
  %13 = ptrtoint ptr %tshut_threshold4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tshut_threshold4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #6, !srcloc !147
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call fastcc void @ti_bandgap_force_single_read(ptr noundef %bgp, i32 noundef %i.011)
  %18 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and7 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bg_counter = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 2
  %22 = ptrtoint ptr %bg_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bg_counter, align 4
  %bgap_counter = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 12
  %24 = ptrtoint ptr %bgap_counter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bgap_counter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %28, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %26) #6, !srcloc !147
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %29 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and13 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end16_crit_edge, label %if.then15

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %bgap_mode_ctrl = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 10
  %35 = ptrtoint ptr %bgap_mode_ctrl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bgap_mode_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %39, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %37) #6, !srcloc !147
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end10.if.end16_crit_edge
  %40 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %conf, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %and19 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end16.if.end22_crit_edge, label %if.then21

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %bg_threshold = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 3
  %44 = ptrtoint ptr %bg_threshold to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bg_threshold, align 4
  %bgap_threshold = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 14
  %46 = ptrtoint ptr %bgap_threshold to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bgap_threshold, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %50, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %48) #6, !srcloc !147
  %bg_ctrl = getelementptr %struct.temp_sensor_regval, ptr %6, i32 %i.011, i32 1
  %51 = ptrtoint ptr %bg_ctrl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bg_ctrl, align 4
  %bgap_mask_ctrl = getelementptr inbounds %struct.temp_sensor_registers, ptr %8, i32 0, i32 5
  %53 = ptrtoint ptr %bgap_mask_ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bgap_mask_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %57, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %55) #6, !srcloc !147
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %58 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %conf, align 4
  %sensor_count = getelementptr inbounds %struct.ti_bandgap_data, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %sensor_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sensor_count, align 4
  %cmp = icmp slt i32 %inc, %61
  br i1 %cmp, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_bandgap_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @ti_bandgap_save_ctxt(ptr noundef %1)
  %conf.i = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ti_bandgap_power.exit_crit_edge, label %for.cond.preheader.i

entry.ti_bandgap_power.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

for.cond.preheader.i:                             ; preds = %entry
  %sensor_count3.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %sensor_count3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_count3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i = icmp sgt i32 %7, 0
  br i1 %cmp4.i, label %do.body.lr.ph.i, label %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge

for.cond.preheader.i.ti_bandgap_power.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %base.i.i = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %8 = phi ptr [ %3, %do.body.lr.ph.i ], [ %26, %do.body.i.do.body.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %registers.i = getelementptr %struct.ti_bandgap_data, ptr %8, i32 0, i32 10, i32 %i.05.i, i32 1
  %9 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %registers.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_tempsoff_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %bgap_tempsoff_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bgap_tempsoff_mask.i, align 4
  %neg.i = xor i32 %18, -1
  %and3.i = and i32 %16, %neg.i
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 false) #6, !range !145
  %shl.i = shl nuw i32 1, %19
  %or.i = or i32 %shl.i, %and3.i
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %24, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %22) #6, !srcloc !147
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %25 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conf.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sensor_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %28
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.ti_bandgap_power.exit_crit_edge

do.body.i.ti_bandgap_power.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ti_bandgap_power.exit:                            ; preds = %do.body.i.ti_bandgap_power.exit_crit_edge, %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge, %entry.ti_bandgap_power.exit_crit_edge
  %29 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ti_bandgap_power.exit.if.end_crit_edge, label %if.then

ti_bandgap_power.exit.if.end_crit_edge:           ; preds = %ti_bandgap_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ti_bandgap_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  %fclock = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fclock, align 4
  tail call void @clk_disable(ptr noundef %34) #6
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %ti_bandgap_power.exit.if.end_crit_edge
  %is_suspended = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %is_suspended, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_suspended, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_bandgap_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conf = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %fclock = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fclock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i8, label %if.end.ti_bandgap_power.exit_crit_edge, label %for.cond.preheader.i

if.end.ti_bandgap_power.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

for.cond.preheader.i:                             ; preds = %if.end
  %sensor_count3.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %sensor_count3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensor_count3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i = icmp sgt i32 %13, 0
  br i1 %cmp4.i, label %do.body.lr.ph.i, label %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge

for.cond.preheader.i.ti_bandgap_power.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %base.i.i = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %14 = phi ptr [ %9, %do.body.lr.ph.i ], [ %31, %do.body.i.do.body.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %registers.i = getelementptr %struct.ti_bandgap_data, ptr %14, i32 0, i32 10, i32 %i.05.i, i32 1
  %15 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !143
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %bgap_tempsoff_mask.i = getelementptr inbounds %struct.temp_sensor_registers, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %bgap_tempsoff_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bgap_tempsoff_mask.i, align 4
  %neg.i = xor i32 %24, -1
  %and3.i = and i32 %22, %neg.i
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #6
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %29, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %27) #6, !srcloc !147
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %30 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conf, align 4
  %sensor_count.i = getelementptr inbounds %struct.ti_bandgap_data, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sensor_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %33
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.ti_bandgap_power.exit_crit_edge

do.body.i.ti_bandgap_power.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ti_bandgap_power.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ti_bandgap_power.exit:                            ; preds = %do.body.i.ti_bandgap_power.exit_crit_edge, %for.cond.preheader.i.ti_bandgap_power.exit_crit_edge, %if.end.ti_bandgap_power.exit_crit_edge
  %is_suspended = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %is_suspended, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %is_suspended, align 4
  tail call fastcc void @ti_bandgap_restore_ctxt(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 734, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ti_bandgap_get_trend.__UNIQUE_ID_ddebug189, !1, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ti_soc_thermal__190_1294_ti_bandgap_sensor_driver_init6, !7, !"__initcall__kmod_ti_soc_thermal__190_1294_ti_bandgap_sensor_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1294, i32 1}
!8 = !{ptr @__exitcall_ti_bandgap_sensor_driver_exit, !7, !"__exitcall_ti_bandgap_sensor_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description191, !10, !"__UNIQUE_ID_description191", i1 false, i1 false}
!10 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1296, i32 1}
!11 = !{ptr @__UNIQUE_ID_file192, !12, !"__UNIQUE_ID_file192", i1 false, i1 false}
!12 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1297, i32 1}
!13 = !{ptr @__UNIQUE_ID_license193, !12, !"__UNIQUE_ID_license193", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias194, !15, !"__UNIQUE_ID_alias194", i1 false, i1 false}
!15 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1298, i32 1}
!16 = !{ptr @__UNIQUE_ID_author195, !17, !"__UNIQUE_ID_author195", i1 false, i1 false}
!17 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1299, i32 1}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 318, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ti_bandgap_validate._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ti_bandgap_validate._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 323, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ti_bandgap_validate._entry.6, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @ti_bandgap_validate._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 388, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ti_bandgap_read_counter_delay._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @ti_bandgap_read_counter_delay._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 459, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ti_bandgap_write_counter_delay._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ti_bandgap_write_counter_delay._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 627, i32 4}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ti_bandgap_force_single_read._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ti_bandgap_force_single_read._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 638, i32 3}
!47 = !{ptr @ti_bandgap_force_single_read._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ti_bandgap_force_single_read._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1288, i32 12}
!51 = !{ptr @ti_bandgap_sensor_driver, !52, !"ti_bandgap_sensor_driver", i1 false, i1 false}
!52 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1284, i32 31}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 894, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ti_bandgap_probe._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ti_bandgap_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 900, i32 3}
!60 = !{ptr @ti_bandgap_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ti_bandgap_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 906, i32 4}
!64 = !{ptr @ti_bandgap_probe._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ti_bandgap_probe._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 914, i32 3}
!68 = !{ptr @ti_bandgap_probe._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ti_bandgap_probe._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 921, i32 3}
!72 = !{ptr @ti_bandgap_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ti_bandgap_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 938, i32 4}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ti_bandgap_probe._entry.36, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ti_bandgap_probe._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 947, i32 3}
!81 = !{ptr @ti_bandgap_probe._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ti_bandgap_probe._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 953, i32 3}
!85 = !{ptr @ti_bandgap_probe._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ti_bandgap_probe._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ti_bandgap_probe.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 960, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1032, i32 4}
!92 = !{ptr @ti_bandgap_probe._entry.47, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ti_bandgap_probe._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 828, i32 3}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ti_bandgap_build._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @ti_bandgap_build._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 865, i32 4}
!101 = !{ptr @ti_bandgap_build._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ti_bandgap_build._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 765, i32 30}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 767, i32 3}
!107 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ti_bandgap_tshut_init._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ti_bandgap_tshut_init._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 268, i32 2}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ti_bandgap_tshut_irq_handler._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ti_bandgap_tshut_irq_handler._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 797, i32 8}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 799, i32 3}
!119 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ti_bandgap_talert_init._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ti_bandgap_talert_init._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 241, i32 3}
!124 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ti_bandgap_talert_irq_handler.__UNIQUE_ID_ddebug188, !123, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 880, i32 15}
!128 = !{ptr @soc_no_cpu_notifier, !129, !"soc_no_cpu_notifier", i1 false, i1 false}
!129 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 879, i32 42}
!130 = !{ptr @of_ti_bandgap_match, !131, !"of_ti_bandgap_match", i1 false, i1 false}
!131 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1242, i32 34}
!132 = !{ptr @ti_bandgap_dev_pm_ops, !133, !"ti_bandgap_dev_pm_ops", i1 false, i1 false}
!133 = !{!"../drivers/thermal/ti-soc-thermal/ti-bandgap.c", i32 1234, i32 8}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 4951274}
!144 = !{i64 2153309195}
!145 = !{i32 0, i32 33}
!146 = !{i64 2153309407}
!147 = !{i64 4950856}
!148 = !{i64 2153328198}
!149 = !{i64 2153328680}
!150 = !{i64 2153333224}
!151 = !{i64 2153333706}
!152 = !{!"auto-init"}
!153 = !{i64 2148753767, i64 2148753772, i64 2148753785, i64 2148753829, i64 2148753863, i64 2148753884}
!154 = !{!"branch_weights", i32 1, i32 2000}
