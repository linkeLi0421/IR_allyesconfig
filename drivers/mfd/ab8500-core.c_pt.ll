; ModuleID = '/llk/IR_all_yes/drivers/mfd/ab8500-core.c_pt.bc'
source_filename = "../drivers/mfd/ab8500-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.abx500_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@on_stat_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@turn_on_stat_mask = internal global { i8, [31 x i8] } { i8 -1, [31 x i8] zeroinitializer }, align 32
@turn_on_stat_set = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__initcall__kmod_ab8500_core__288_1297_ab8500_core_init1 = internal global ptr @ab8500_core_init, section ".initcall1.init", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"on_stat_lock\00", [19 x i8] zeroinitializer }, align 32
@ab8500_core_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ab8500_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ab8500-core\00", [20 x i8] zeroinitializer }, align 32
@ab8500_id = internal constant { [5 x %struct.platform_device_id], [40 x i8] } { [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ab8500-core\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"ab8505-core\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"ab9540-i2c\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"ab8540-i2c\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Swoff bit programming\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Thermal protection activation\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Vbat lower then BattOk falling threshold\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Watchdog expired\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Non presence of 32kHz clock\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Battery level lower than power on reset threshold\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Power on key 1 pressed longer than 10 seconds\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DB8500 thermal shutdown\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Battery rising (Vbat)\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Power On Key 1 dbF\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Power On Key 2 dbF\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTC Alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Main Charger Detect\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Vbus Detect (USB)\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB ID Detect\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UART Factory Mode Detect\00", [39 x i8] zeroinitializer }, align 32
@ab8500_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 1058, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no IRQ resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/ab8500-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr = internal global ptr @ab8500_probe._entry, section ".printk_index", align 4
@ab8500_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ab8500->lock\00", [18 x i8] zeroinitializer }, align 32
@ab8500_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ab8500->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@ab8500_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.20, i32 1083, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not probe HW\0A\00", [44 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.28 = internal global ptr @ab8500_probe._entry.26, section ".printk_index", align 4
@ab8500_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.20, i32 1100, ptr @.str.31, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"detected chip, %s rev. %1x.%1x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.32 = internal global ptr @ab8500_probe._entry.29, section ".printk_index", align 4
@ab8500_version_str = internal constant { [5 x [7 x i8]], [61 x i8] } { [5 x [7 x i8]] [[7 x i8] c"AB8500\00", [7 x i8] c"AB8505\00", [7 x i8] c"AB9540\00", [7 x i8] zeroinitializer, [7 x i8] c"AB8540\00"], [61 x i8] zeroinitializer }, align 32
@ab8540_irq_regoffset = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 -1, i32 -1, i32 -1, i32 -1, i32 11, i32 18, i32 19, i32 20, i32 21, i32 12, i32 13, i32 24, i32 5, i32 22, i32 23, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], [52 x i8] zeroinitializer }, align 32
@ab9540_irq_regoffset = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 11, i32 18, i32 19, i32 20, i32 21, i32 12, i32 13, i32 24, i32 5, i32 22, i32 23], [48 x i8] zeroinitializer }, align 32
@ab8500_irq_regoffset = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 11, i32 18, i32 19, i32 20, i32 21], [40 x i8] zeroinitializer }, align 32
@ab8500_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.19, ptr @.str.20, i32 1142, ptr @.str.31, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"switch off cause(s) (%#x): \00", [36 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.35 = internal global ptr @ab8500_probe._entry.33, section ".printk_index", align 4
@ab8500_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.19, ptr @.str.20, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c \22%s\22\00", [24 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.38 = internal global ptr @ab8500_probe._entry.36, section ".printk_index", align 4
@ab8500_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.19, ptr @.str.20, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.41 = internal global ptr @ab8500_probe._entry.39, section ".printk_index", align 4
@ab8500_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.19, ptr @.str.20, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c None\0A\00", [23 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.44 = internal global ptr @ab8500_probe._entry.42, section ".printk_index", align 4
@ab8500_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.19, ptr @.str.20, i32 1159, ptr @.str.31, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"turn on reason(s) (%#x): \00", [38 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.47 = internal global ptr @ab8500_probe._entry.45, section ".printk_index", align 4
@ab8500_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.19, ptr @.str.20, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c\22%s\22 \00", [24 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.50 = internal global ptr @ab8500_probe._entry.48, section ".printk_index", align 4
@ab8500_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.19, ptr @.str.20, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.52 = internal global ptr @ab8500_probe._entry.51, section ".printk_index", align 4
@ab8500_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.19, ptr @.str.20, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cNone\0A\00", [24 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.55 = internal global ptr @ab8500_probe._entry.53, section ".printk_index", align 4
@ab8500_ops = internal global { %struct.abx500_ops, [60 x i8] } { %struct.abx500_ops { ptr @ab8500_get_chip_id, ptr @ab8500_get_register, ptr @ab8500_set_register, ptr null, ptr null, ptr @ab8500_mask_and_set_register, ptr null, ptr null, ptr @ab8500_dump_all_banks }, [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ab8500\00", [25 x i8] zeroinitializer }, align 32
@ab9540_devs = internal constant { [15 x %struct.mfd_cell], [344 x i8] } { [15 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.81, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.82, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.83, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.84, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.85, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.86, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.87, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.88, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.89, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.90, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.91, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.92, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.93, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.94, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.95, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.96, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.97, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.98, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [344 x i8] zeroinitializer }, align 32
@ab8540_devs = internal constant { [14 x %struct.mfd_cell], [304 x i8] } { [14 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.81, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.82, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.83, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.84, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.85, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.86, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.87, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.88, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.90, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.91, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.92, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.93, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.99, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.100, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.101, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.98, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [304 x i8] zeroinitializer }, align 32
@ab8540_cut1_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.89, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.102, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ab8540_cut2_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.103, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.104, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ab8505_devs = internal constant { [13 x %struct.mfd_cell], [264 x i8] } { [13 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.81, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.105, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.82, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.106, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.84, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.107, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.85, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.108, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.87, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.88, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.89, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.102, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.90, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.109, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.91, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.110, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.92, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.111, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.112, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.113, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.114, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.115, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.116, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.117, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.98, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@ab8500_devs = internal constant { [17 x %struct.mfd_cell], [360 x i8] } { [17 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.81, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.105, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.82, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.106, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.83, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.118, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.84, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.119, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.120, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.108, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.87, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.88, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.89, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.102, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.90, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.109, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.91, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.110, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.92, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.111, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.92, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.111, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.92, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.111, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.121, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.122, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.123, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.124, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.93, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.125, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.114, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.115, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.116, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.117, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [360 x i8] zeroinitializer }, align 32
@ab8500_bm_devs = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.126, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.127, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.128, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.129, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.130, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.131, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.132, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.133, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ab8500_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.19, ptr @.str.20, i32 1255, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error adding bm devices\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.59 = internal global ptr @ab8500_probe._entry.57, section ".printk_index", align 4
@ab9540_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ab9540_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@ab8500_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ab8500_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@ab8505_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ab8505_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@ab8500_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.19, ptr @.str.20, i32 1271, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error creating sysfs entries\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_probe._entry_ptr.62 = internal global ptr @ab8500_probe._entry.60, section ".printk_index", align 4
@ab8500_prcmu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.20, i32 187, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"prcmu i2c error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ab8500_prcmu_read\00", [46 x i8] zeroinitializer }, align 32
@ab8500_prcmu_read._entry_ptr = internal global ptr @ab8500_prcmu_read._entry, section ".printk_index", align 4
@ab8500_prcmu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.65, ptr @.str.20, i32 164, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_prcmu_write\00", [45 x i8] zeroinitializer }, align 32
@ab8500_prcmu_write._entry_ptr = internal global ptr @ab8500_prcmu_write._entry, section ".printk_index", align 4
@ab8500_prcmu_write_masked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.66, ptr @.str.20, i32 176, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_prcmu_write_masked\00", [38 x i8] zeroinitializer }, align 32
@ab8500_prcmu_write_masked._entry_ptr = internal global ptr @ab8500_prcmu_write_masked._entry, section ".printk_index", align 4
@get_register_interruptible._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.20, i32 249, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read reg %#x: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get_register_interruptible\00", [37 x i8] zeroinitializer }, align 32
@get_register_interruptible._entry_ptr = internal global ptr @get_register_interruptible._entry, section ".printk_index", align 4
@set_register_interruptible._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.20, i32 220, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to write reg %#x: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set_register_interruptible\00", [37 x i8] zeroinitializer }, align 32
@set_register_interruptible._entry_ptr = internal global ptr @set_register_interruptible._entry, section ".printk_index", align 4
@mask_and_set_register_interruptible._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.71, ptr @.str.20, i32 285, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mask_and_set_register_interruptible\00", [60 x i8] zeroinitializer }, align 32
@mask_and_set_register_interruptible._entry_ptr = internal global ptr @mask_and_set_register_interruptible._entry, section ".printk_index", align 4
@mask_and_set_register_interruptible._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.71, ptr @.str.20, i32 295, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@mask_and_set_register_interruptible._entry_ptr.73 = internal global ptr @mask_and_set_register_interruptible._entry.72, section ".printk_index", align 4
@mask_and_set_register_interruptible._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.20, i32 304, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to modify reg %#x: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mask_and_set_register_interruptible._entry_ptr.76 = internal global ptr @mask_and_set_register_interruptible._entry.74, section ".printk_index", align 4
@ab8500_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @ab8500_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ab8500_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.20, i32 589, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create irqdomain\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_irq_init\00", [16 x i8] zeroinitializer }, align 32
@ab8500_irq_init._entry_ptr = internal global ptr @ab8500_irq_init._entry, section ".printk_index", align 4
@ab8500_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.56, ptr null, ptr null, ptr null, ptr @ab8500_irq_mask, ptr null, ptr @ab8500_irq_mask, ptr null, ptr @ab8500_irq_unmask, ptr null, ptr null, ptr null, ptr @ab8500_irq_set_type, ptr null, ptr @ab8500_irq_lock, ptr @ab8500_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@ab8500_handle_hierarchical_line._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.20, i32 463, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Register offset 0x%2x not declared\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_handle_hierarchical_line\00", [32 x i8] zeroinitializer }, align 32
@ab8500_handle_hierarchical_line._entry_ptr = internal global ptr @ab8500_handle_hierarchical_line._entry, section ".printk_index", align 4
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-debug\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500-sysctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500-ext-regulator\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500-regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"abx500-clk\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stericsson,abx500-clk\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-gpadc\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stericsson,ab8500-gpadc\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500-rtc\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500-acc-det\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-poweron-key\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500-pwm\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abx500-temp\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-ab9540\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stericsson,ab9540-gpio\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab9540-usb\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab9540-codec\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ab-iddet\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-ab8540\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8540-usb\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8540-codec\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stericsson,ab8500-rtc\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8540-rtc\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stericsson,ab8540-rtc\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stericsson,ab8500-debug\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stericsson,ab8500-sysctrl\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stericsson,ab8505-regulator\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stericsson,ab8500-clk\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stericsson,ab8500-acc-det\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stericsson,ab8500-poweron-key\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stericsson,ab8500-pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-ab8505\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stericsson,ab8505-gpio\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500-usb\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stericsson,ab8500-usb\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-codec\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stericsson,ab8500-codec\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stericsson,ab8500-ext-regulator\00", [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stericsson,ab8500-regulator\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500-clk\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ab8500-denc\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stericsson,ab8500-denc\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl-ab8500\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stericsson,ab8500-gpio\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stericsson,abx500-temp\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500-charger\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stericsson,ab8500-charger\00", [38 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-btemp\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stericsson,ab8500-btemp\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500-fg\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stericsson,ab8500-fg\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500-chargalg\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stericsson,ab8500-chargalg\00", [37 x i8] zeroinitializer }, align 32
@ab9540_sysfs_entries = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_chip_id, ptr @dev_attr_switch_off_status, ptr @dev_attr_turn_on_status, ptr @dev_attr_dbbrstn, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_chip_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chip_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_switch_off_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @switch_off_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_turn_on_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @turn_on_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dbbrstn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dbbrstn_show, ptr @dbbrstn_store }, [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"switch_off_status\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"turn_on_status\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dbbrstn\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@dbbrstn_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.20, i32 976, ptr @.str.31, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set DBBRSTN %c, err %#x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dbbrstn_store\00", [18 x i8] zeroinitializer }, align 32
@dbbrstn_store._entry_ptr = internal global ptr @dbbrstn_store._entry, section ".printk_index", align 4
@ab8500_sysfs_entries = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_chip_id, ptr @dev_attr_switch_off_status, ptr @dev_attr_turn_on_status, ptr null], [16 x i8] zeroinitializer }, align 32
@ab8505_sysfs_entries = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_turn_on_status_2, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_turn_on_status_2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @turn_on_status_2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"turn_on_status_2\00", [47 x i8] zeroinitializer }, align 32
@switch.table.ab8500_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 20, i32 20, i32 14, i32 27], [16 x i8] zeroinitializer }, align 32
@switch.table.ab8500_probe.143 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ab9540_irq_regoffset, ptr @ab9540_irq_regoffset, ptr @ab8500_irq_regoffset, ptr @ab8540_irq_regoffset], [16 x i8] zeroinitializer }, align 32
@switch.table.ab8500_probe.144 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 3, i32 3, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 168, i64 170]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 169, i64 171]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 169, i64 171]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"on_stat_lock\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"turn_on_stat_mask\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 121, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"turn_on_stat_set\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 122, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 120, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"ab8500_core_driver\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1284, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1286, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [10 x i8] c"ab8500_id\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1276, i32 40 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1024, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1025, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1026, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1027, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1028, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1029, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1030, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1031, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1033, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1034, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1035, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1036, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1037, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1038, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1039, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1040, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1058, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1068, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1069, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1083, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1097, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [19 x i8] c"ab8500_version_str\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 151, i32 19 }
@___asan_gen_.269 = private unnamed_addr constant [21 x i8] c"ab8540_irq_regoffset\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 146, i32 18 }
@___asan_gen_.272 = private unnamed_addr constant [21 x i8] c"ab9540_irq_regoffset\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 141, i32 18 }
@___asan_gen_.275 = private unnamed_addr constant [21 x i8] c"ab8500_irq_regoffset\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 136, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1142, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1147, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1151, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1153, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1159, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1164, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1167, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1169, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [11 x i8] c"ab8500_ops\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 323, i32 26 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1216, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant [12 x i8] c"ab9540_devs\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 654, i32 30 }
@___asan_gen_.332 = private unnamed_addr constant [12 x i8] c"ab8540_devs\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 766, i32 30 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"ab8540_cut1_devs\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 816, i32 30 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"ab8540_cut2_devs\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 823, i32 30 }
@___asan_gen_.341 = private unnamed_addr constant [12 x i8] c"ab8505_devs\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 709, i32 30 }
@___asan_gen_.344 = private unnamed_addr constant [12 x i8] c"ab8500_devs\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 615, i32 30 }
@___asan_gen_.347 = private unnamed_addr constant [15 x i8] c"ab8500_bm_devs\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 604, i32 30 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1255, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [18 x i8] c"ab9540_attr_group\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1017, i32 37 }
@___asan_gen_.359 = private unnamed_addr constant [18 x i8] c"ab8500_attr_group\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1009, i32 37 }
@___asan_gen_.362 = private unnamed_addr constant [18 x i8] c"ab8505_attr_group\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1013, i32 37 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1271, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 187, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 164, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 176, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 248, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 219, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 284, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 294, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 303, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [15 x i8] c"ab8500_irq_ops\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 565, i32 36 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 589, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [16 x i8] c"ab8500_irq_chip\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 430, i32 24 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 462, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 657, i32 11 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 661, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 664, i32 11 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 667, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 670, i32 11 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 671, i32 20 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 674, i32 11 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 675, i32 20 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 678, i32 11 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 681, i32 11 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 684, i32 11 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 687, i32 11 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 691, i32 11 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 694, i32 11 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 695, i32 20 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 698, i32 11 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 701, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 704, i32 11 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 803, i32 11 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 806, i32 11 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 809, i32 11 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 819, i32 20 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 825, i32 11 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 826, i32 20 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 713, i32 20 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 718, i32 20 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 722, i32 20 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 726, i32 20 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 738, i32 20 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 742, i32 20 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 746, i32 20 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 750, i32 11 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 751, i32 20 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 754, i32 11 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 755, i32 20 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 758, i32 11 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 759, i32 20 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 622, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 624, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 626, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 642, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 644, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 646, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 605, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 607, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 609, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 611, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c"ab9540_sysfs_entries\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1001, i32 26 }
@___asan_gen_.611 = private unnamed_addr constant [17 x i8] c"dev_attr_chip_id\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [27 x i8] c"dev_attr_switch_off_status\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [24 x i8] c"dev_attr_turn_on_status\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [17 x i8] c"dev_attr_dbbrstn\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 983, i32 8 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 837, i32 22 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 984, i32 8 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 985, i32 8 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 987, i32 8 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 944, i32 22 }
@___asan_gen_.641 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 974, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant [21 x i8] c"ab8500_sysfs_entries\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 989, i32 26 }
@___asan_gen_.653 = private unnamed_addr constant [21 x i8] c"ab8505_sysfs_entries\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 996, i32 26 }
@___asan_gen_.656 = private unnamed_addr constant [26 x i8] c"dev_attr_turn_on_status_2\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.660 = private constant [29 x i8] c"../drivers/mfd/ab8500-core.c\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 986, i32 8 }
@___asan_gen_.662 = private unnamed_addr constant [26 x i8] c"switch.table.ab8500_probe\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [30 x i8] c"switch.table.ab8500_probe.143\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [30 x i8] c"switch.table.ab8500_probe.144\00", align 1
@llvm.compiler.used = appending global [198 x ptr] [ptr @__initcall__kmod_ab8500_core__288_1297_ab8500_core_init1, ptr @ab8500_handle_hierarchical_line._entry, ptr @ab8500_handle_hierarchical_line._entry_ptr, ptr @ab8500_irq_init._entry, ptr @ab8500_irq_init._entry_ptr, ptr @ab8500_prcmu_read._entry, ptr @ab8500_prcmu_read._entry_ptr, ptr @ab8500_prcmu_write._entry, ptr @ab8500_prcmu_write._entry_ptr, ptr @ab8500_prcmu_write_masked._entry, ptr @ab8500_prcmu_write_masked._entry_ptr, ptr @ab8500_probe._entry, ptr @ab8500_probe._entry.26, ptr @ab8500_probe._entry.29, ptr @ab8500_probe._entry.33, ptr @ab8500_probe._entry.36, ptr @ab8500_probe._entry.39, ptr @ab8500_probe._entry.42, ptr @ab8500_probe._entry.45, ptr @ab8500_probe._entry.48, ptr @ab8500_probe._entry.51, ptr @ab8500_probe._entry.53, ptr @ab8500_probe._entry.57, ptr @ab8500_probe._entry.60, ptr @ab8500_probe._entry_ptr, ptr @ab8500_probe._entry_ptr.28, ptr @ab8500_probe._entry_ptr.32, ptr @ab8500_probe._entry_ptr.35, ptr @ab8500_probe._entry_ptr.38, ptr @ab8500_probe._entry_ptr.41, ptr @ab8500_probe._entry_ptr.44, ptr @ab8500_probe._entry_ptr.47, ptr @ab8500_probe._entry_ptr.50, ptr @ab8500_probe._entry_ptr.52, ptr @ab8500_probe._entry_ptr.55, ptr @ab8500_probe._entry_ptr.59, ptr @ab8500_probe._entry_ptr.62, ptr @dbbrstn_store._entry, ptr @dbbrstn_store._entry_ptr, ptr @get_register_interruptible._entry, ptr @get_register_interruptible._entry_ptr, ptr @mask_and_set_register_interruptible._entry, ptr @mask_and_set_register_interruptible._entry.72, ptr @mask_and_set_register_interruptible._entry.74, ptr @mask_and_set_register_interruptible._entry_ptr, ptr @mask_and_set_register_interruptible._entry_ptr.73, ptr @mask_and_set_register_interruptible._entry_ptr.76, ptr @set_register_interruptible._entry, ptr @set_register_interruptible._entry_ptr, ptr @on_stat_lock, ptr @turn_on_stat_mask, ptr @turn_on_stat_set, ptr @.str, ptr @ab8500_core_driver, ptr @.str.1, ptr @ab8500_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ab8500_probe.__key, ptr @.str.23, ptr @ab8500_probe.__key.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @ab8500_version_str, ptr @ab8540_irq_regoffset, ptr @ab9540_irq_regoffset, ptr @ab8500_irq_regoffset, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.54, ptr @ab8500_ops, ptr @.str.56, ptr @ab9540_devs, ptr @ab8540_devs, ptr @ab8540_cut1_devs, ptr @ab8540_cut2_devs, ptr @ab8505_devs, ptr @ab8500_devs, ptr @ab8500_bm_devs, ptr @.str.58, ptr @ab9540_attr_group, ptr @ab8500_attr_group, ptr @ab8505_attr_group, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.75, ptr @ab8500_irq_ops, ptr @.str.77, ptr @.str.78, ptr @ab8500_irq_chip, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @ab9540_sysfs_entries, ptr @dev_attr_chip_id, ptr @dev_attr_switch_off_status, ptr @dev_attr_turn_on_status, ptr @dev_attr_dbbrstn, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @ab8500_sysfs_entries, ptr @ab8505_sysfs_entries, ptr @dev_attr_turn_on_status_2, ptr @.str.142, ptr @switch.table.ab8500_probe, ptr @switch.table.ab8500_probe.143, ptr @switch.table.ab8500_probe.144], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on_stat_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turn_on_stat_mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turn_on_stat_set to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_core_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_version_str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8540_irq_regoffset to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab9540_irq_regoffset to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_irq_regoffset to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab9540_devs to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8540_devs to i32), i32 1232, i32 1536, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8540_cut1_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8540_cut2_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_devs to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_devs to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_bm_devs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab9540_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_prcmu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_prcmu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_prcmu_write_masked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_register_interruptible._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_register_interruptible._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_and_set_register_interruptible._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_and_set_register_interruptible._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_and_set_register_interruptible._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_handle_hierarchical_line._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab9540_sysfs_entries to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_switch_off_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_turn_on_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dbbrstn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbbrstn_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_sysfs_entries to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_sysfs_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_turn_on_status_2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_probe.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_probe.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_suspend(ptr noundef %ab8500) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_ongoing = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  %0 = ptrtoint ptr %transfer_ongoing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %transfer_ongoing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ab8500_override_turn_on_stat(i8 noundef zeroext %mask, i8 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @on_stat_lock) #12
  store i8 %mask, ptr @turn_on_stat_mask, align 1
  store i8 %set, ptr @turn_on_stat_set, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull @on_stat_lock) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_core_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_core_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #12
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call4, align 4
  %irq = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq, align 4
  %read = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ab8500_prcmu_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ab8500_prcmu_write, ptr %write, align 4
  %write_masked = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %write_masked to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ab8500_prcmu_write_masked, ptr %write_masked, align 4
  %lock = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @ab8500_probe.__key) #12
  %irq_lock = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @ab8500_probe.__key.24) #12
  %transfer_ongoing = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  %9 = ptrtoint ptr %transfer_ongoing to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %transfer_ongoing, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %if.end8.if.else_crit_edge, label %if.end17

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end17:                                         ; preds = %if.end8
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp.not = icmp eq i32 %12, 5
  br i1 %cmp.not, label %if.end17.if.else_crit_edge, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %if.end17.if.else_crit_edge, %if.end8.if.else_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %call.i477 = tail call i32 %14(ptr noundef nonnull %call.i, i16 noundef zeroext 4226) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i477)
  %cmp.i = icmp slt i32 %call.i477, 0
  br i1 %cmp.i, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.67, i32 noundef 4226, i32 noundef %call.i477) #15
  tail call void @mutex_unlock(ptr noundef %lock) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #15
  br label %cleanup

if.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %conv6.i = trunc i32 %call.i477 to i8
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %value, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %conv = and i32 %call.i477, 255
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end17.if.end29_crit_edge
  %conv.sink = phi i32 [ %conv, %if.end27 ], [ %12, %if.end17.if.end29_crit_edge ]
  %version28 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %version28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.sink, ptr %version28, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %19 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read, align 4
  %call.i480 = tail call i32 %20(ptr noundef nonnull %call.i, i16 noundef zeroext 4224) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i480)
  %cmp.i481 = icmp slt i32 %call.i480, 0
  br i1 %cmp.i481, label %get_register_interruptible.exit485.thread, label %if.end34

get_register_interruptible.exit485.thread:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.67, i32 noundef 4224, i32 noundef %call.i480) #15
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %conv6.i483 = trunc i32 %call.i480 to i8
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv6.i483, ptr %value, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %chip_id = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6.i483, ptr %chip_id, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %version39 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version39, align 4
  %arrayidx = getelementptr [5 x [7 x i8]], ptr @ab8500_version_str, i32 0, i32 %28
  %conv41 = lshr i32 %call.i480, 4
  %29 = and i32 %conv41, 15
  %and = and i32 %call.i480, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.30, ptr noundef %arrayidx, i32 noundef %29, i32 noundef %and) #15
  %30 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version39, align 4
  %switch.tableidx = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %32 = icmp ult i32 %switch.tableidx, 4
  br i1 %32, label %switch.lookup, label %if.end34.if.end61_crit_edge

if.end34.if.end61_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

switch.lookup:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ab8500_probe, i32 0, i32 %switch.tableidx
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep549 = getelementptr inbounds [4 x ptr], ptr @switch.table.ab8500_probe.143, i32 0, i32 %switch.tableidx
  %34 = ptrtoint ptr %switch.gep549 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load550 = load ptr, ptr %switch.gep549, align 4
  %switch.gep551 = getelementptr inbounds [4 x i32], ptr @switch.table.ab8500_probe.144, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep551 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load552 = load i32, ptr %switch.gep551, align 4
  br label %if.end61

if.end61:                                         ; preds = %switch.lookup, %if.end34.if.end61_crit_edge
  %.sink547 = phi i32 [ %switch.load, %switch.lookup ], [ 14, %if.end34.if.end61_crit_edge ]
  %ab9540_irq_regoffset.sink = phi ptr [ %switch.load550, %switch.lookup ], [ @ab8500_irq_regoffset, %if.end34.if.end61_crit_edge ]
  %.sink = phi i32 [ %switch.load552, %switch.lookup ], [ 3, %if.end34.if.end61_crit_edge ]
  %mask_size53 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 15
  %36 = ptrtoint ptr %mask_size53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink547, ptr %mask_size53, align 4
  %irq_reg_offset54 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 16
  %37 = ptrtoint ptr %irq_reg_offset54 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ab9540_irq_regoffset.sink, ptr %irq_reg_offset54, align 4
  %it_latchhier_num55 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 17
  %38 = ptrtoint ptr %it_latchhier_num55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %it_latchhier_num55, align 4
  %mask_size63 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 15
  %call.i493 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %.sink547, i32 noundef 3520) #12
  %mask = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 13
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i493, ptr %mask, align 4
  %tobool66.not = icmp eq ptr %call.i493, null
  br i1 %tobool66.not, label %if.end61.cleanup_crit_edge, label %if.end68

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %40 = ptrtoint ptr %mask_size63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask_size63, align 4
  %call.i494 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %41, i32 noundef 3520) #12
  %oldmask = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 14
  %42 = ptrtoint ptr %oldmask to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i494, ptr %oldmask, align 4
  %tobool73.not = icmp eq ptr %call.i494, null
  br i1 %tobool73.not, label %if.end68.cleanup_crit_edge, label %if.end75

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %call76 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %call.i, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end75.cleanup_crit_edge, label %do.end83

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end83:                                         ; preds = %if.end75
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %45 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %value, align 1
  %conv85 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.34, i32 noundef %conv85) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool86.not = icmp eq i8 %46, 0
  br i1 %tobool86.not, label %do.end83.if.end114_crit_edge, label %for.cond.preheader

do.end83.if.end114_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

for.cond.preheader:                               ; preds = %do.end83
  %47 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %47)
  %value.promoted = load i8, ptr %value, align 1
  %48 = and i8 %value.promoted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool92.not = icmp eq i8 %48, 0
  br i1 %tobool92.not, label %for.cond.preheader.if.end99_crit_edge, label %do.end96

for.cond.preheader.if.end99_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

do.end96:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2) #15
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %for.cond.preheader.if.end99_crit_edge
  %49 = and i8 %value.promoted, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool92.not.1 = icmp eq i8 %49, 0
  br i1 %tobool92.not.1, label %if.end99.if.end99.1_crit_edge, label %do.end96.1

if.end99.if.end99.1_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.1

do.end96.1:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %call98.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #15
  br label %if.end99.1

if.end99.1:                                       ; preds = %do.end96.1, %if.end99.if.end99.1_crit_edge
  %50 = and i8 %value.promoted, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool92.not.2 = icmp eq i8 %50, 0
  br i1 %tobool92.not.2, label %if.end99.1.if.end99.2_crit_edge, label %do.end96.2

if.end99.1.if.end99.2_crit_edge:                  ; preds = %if.end99.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.2

do.end96.2:                                       ; preds = %if.end99.1
  call void @__sanitizer_cov_trace_pc() #14
  %call98.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.4) #15
  br label %if.end99.2

if.end99.2:                                       ; preds = %do.end96.2, %if.end99.1.if.end99.2_crit_edge
  %51 = and i8 %value.promoted, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool92.not.3 = icmp eq i8 %51, 0
  br i1 %tobool92.not.3, label %if.end99.2.if.end99.3_crit_edge, label %do.end96.3

if.end99.2.if.end99.3_crit_edge:                  ; preds = %if.end99.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.3

do.end96.3:                                       ; preds = %if.end99.2
  call void @__sanitizer_cov_trace_pc() #14
  %call98.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.5) #15
  br label %if.end99.3

if.end99.3:                                       ; preds = %do.end96.3, %if.end99.2.if.end99.3_crit_edge
  %52 = and i8 %value.promoted, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool92.not.4 = icmp eq i8 %52, 0
  br i1 %tobool92.not.4, label %if.end99.3.if.end99.4_crit_edge, label %do.end96.4

if.end99.3.if.end99.4_crit_edge:                  ; preds = %if.end99.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.4

do.end96.4:                                       ; preds = %if.end99.3
  call void @__sanitizer_cov_trace_pc() #14
  %call98.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.6) #15
  br label %if.end99.4

if.end99.4:                                       ; preds = %do.end96.4, %if.end99.3.if.end99.4_crit_edge
  %53 = and i8 %value.promoted, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool92.not.5 = icmp eq i8 %53, 0
  br i1 %tobool92.not.5, label %if.end99.4.if.end99.5_crit_edge, label %do.end96.5

if.end99.4.if.end99.5_crit_edge:                  ; preds = %if.end99.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.5

do.end96.5:                                       ; preds = %if.end99.4
  call void @__sanitizer_cov_trace_pc() #14
  %call98.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.7) #15
  br label %if.end99.5

if.end99.5:                                       ; preds = %do.end96.5, %if.end99.4.if.end99.5_crit_edge
  %54 = and i8 %value.promoted, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool92.not.6 = icmp eq i8 %54, 0
  br i1 %tobool92.not.6, label %if.end99.5.if.end99.6_crit_edge, label %do.end96.6

if.end99.5.if.end99.6_crit_edge:                  ; preds = %if.end99.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.6

do.end96.6:                                       ; preds = %if.end99.5
  call void @__sanitizer_cov_trace_pc() #14
  %call98.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.8) #15
  br label %if.end99.6

if.end99.6:                                       ; preds = %do.end96.6, %if.end99.5.if.end99.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %value.promoted)
  %tobool92.not.7 = icmp sgt i8 %value.promoted, -1
  br i1 %tobool92.not.7, label %if.end99.6.if.end99.7_crit_edge, label %do.end96.7

if.end99.6.if.end99.7_crit_edge:                  ; preds = %if.end99.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.7

do.end96.7:                                       ; preds = %if.end99.6
  call void @__sanitizer_cov_trace_pc() #14
  %call98.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.9) #15
  br label %if.end99.7

if.end99.7:                                       ; preds = %do.end96.7, %if.end99.6.if.end99.7_crit_edge
  %55 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %value, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.end99.7, %do.end83.if.end114_crit_edge
  %.str.43.sink = phi ptr [ @.str.40, %if.end99.7 ], [ @.str.43, %do.end83.if.end114_crit_edge ]
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.43.sink) #15
  %call115 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %call.i, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end114.cleanup_crit_edge, label %do.end122

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end122:                                        ; preds = %if.end114
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %58 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %value, align 1
  %conv124 = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.46, i32 noundef %conv124) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool125.not = icmp eq i8 %59, 0
  br i1 %tobool125.not, label %do.end122.if.end159_crit_edge, label %for.cond127.preheader

do.end122.if.end159_crit_edge:                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

for.cond127.preheader:                            ; preds = %do.end122
  %60 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %60)
  %value.promoted537 = load i8, ptr %value, align 1
  %61 = and i8 %value.promoted537, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool133.not = icmp eq i8 %61, 0
  br i1 %tobool133.not, label %for.cond127.preheader.if.end141_crit_edge, label %do.end137

for.cond127.preheader.if.end141_crit_edge:        ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

do.end137:                                        ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.10) #15
  br label %if.end141

if.end141:                                        ; preds = %do.end137, %for.cond127.preheader.if.end141_crit_edge
  %62 = and i8 %value.promoted537, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool133.not.1 = icmp eq i8 %62, 0
  br i1 %tobool133.not.1, label %if.end141.if.end141.1_crit_edge, label %do.end137.1

if.end141.if.end141.1_crit_edge:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.1

do.end137.1:                                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  %call140.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.11) #15
  br label %if.end141.1

if.end141.1:                                      ; preds = %do.end137.1, %if.end141.if.end141.1_crit_edge
  %63 = and i8 %value.promoted537, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool133.not.2 = icmp eq i8 %63, 0
  br i1 %tobool133.not.2, label %if.end141.1.if.end141.2_crit_edge, label %do.end137.2

if.end141.1.if.end141.2_crit_edge:                ; preds = %if.end141.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.2

do.end137.2:                                      ; preds = %if.end141.1
  call void @__sanitizer_cov_trace_pc() #14
  %call140.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.12) #15
  br label %if.end141.2

if.end141.2:                                      ; preds = %do.end137.2, %if.end141.1.if.end141.2_crit_edge
  %64 = and i8 %value.promoted537, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool133.not.3 = icmp eq i8 %64, 0
  br i1 %tobool133.not.3, label %if.end141.2.if.end141.3_crit_edge, label %do.end137.3

if.end141.2.if.end141.3_crit_edge:                ; preds = %if.end141.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.3

do.end137.3:                                      ; preds = %if.end141.2
  call void @__sanitizer_cov_trace_pc() #14
  %call140.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.13) #15
  br label %if.end141.3

if.end141.3:                                      ; preds = %do.end137.3, %if.end141.2.if.end141.3_crit_edge
  %65 = and i8 %value.promoted537, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool133.not.4 = icmp eq i8 %65, 0
  br i1 %tobool133.not.4, label %if.end141.3.if.end141.4_crit_edge, label %do.end137.4

if.end141.3.if.end141.4_crit_edge:                ; preds = %if.end141.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.4

do.end137.4:                                      ; preds = %if.end141.3
  call void @__sanitizer_cov_trace_pc() #14
  %call140.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.14) #15
  br label %if.end141.4

if.end141.4:                                      ; preds = %do.end137.4, %if.end141.3.if.end141.4_crit_edge
  %66 = and i8 %value.promoted537, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool133.not.5 = icmp eq i8 %66, 0
  br i1 %tobool133.not.5, label %if.end141.4.if.end141.5_crit_edge, label %do.end137.5

if.end141.4.if.end141.5_crit_edge:                ; preds = %if.end141.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.5

do.end137.5:                                      ; preds = %if.end141.4
  call void @__sanitizer_cov_trace_pc() #14
  %call140.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.15) #15
  br label %if.end141.5

if.end141.5:                                      ; preds = %do.end137.5, %if.end141.4.if.end141.5_crit_edge
  %67 = and i8 %value.promoted537, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool133.not.6 = icmp eq i8 %67, 0
  br i1 %tobool133.not.6, label %if.end141.5.if.end141.6_crit_edge, label %do.end137.6

if.end141.5.if.end141.6_crit_edge:                ; preds = %if.end141.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.6

do.end137.6:                                      ; preds = %if.end141.5
  call void @__sanitizer_cov_trace_pc() #14
  %call140.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.16) #15
  br label %if.end141.6

if.end141.6:                                      ; preds = %do.end137.6, %if.end141.5.if.end141.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %value.promoted537)
  %tobool133.not.7 = icmp sgt i8 %value.promoted537, -1
  br i1 %tobool133.not.7, label %if.end141.6.if.end141.7_crit_edge, label %do.end137.7

if.end141.6.if.end141.7_crit_edge:                ; preds = %if.end141.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.7

do.end137.7:                                      ; preds = %if.end141.6
  call void @__sanitizer_cov_trace_pc() #14
  %call140.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.17) #15
  br label %if.end141.7

if.end141.7:                                      ; preds = %do.end137.7, %if.end141.6.if.end141.7_crit_edge
  %68 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %value, align 1
  br label %if.end159

if.end159:                                        ; preds = %if.end141.7, %do.end122.if.end159_crit_edge
  %.str.54.sink = phi ptr [ @.str.40, %if.end141.7 ], [ @.str.54, %do.end122.if.end159_crit_edge ]
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.54.sink) #15
  %69 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %version39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp.i496.not = icmp eq i32 %70, 2
  br i1 %cmp.i496.not, label %if.then162, label %if.end159.if.end176_crit_edge

if.end159.if.end176_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then162:                                       ; preds = %if.end159
  %call163 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %call.i, i8 noundef zeroext 11, i8 noundef zeroext 2, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.then162.cleanup_crit_edge, label %if.end167

if.then162.cleanup_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end167:                                        ; preds = %if.then162
  %71 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %value, align 1
  %73 = and i8 %72, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %73)
  %.not = icmp eq i8 %73, 3
  br i1 %.not, label %if.then174, label %if.end167.if.end176_crit_edge

if.end167.if.end176_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then174:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @on_stat_lock) #12
  store i8 -3, ptr @turn_on_stat_mask, align 1
  store i8 32, ptr @turn_on_stat_set, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull @on_stat_lock) #12
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.end167.if.end176_crit_edge, %if.end159.if.end176_crit_edge
  %74 = ptrtoint ptr %mask_size63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mask_size63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp179542 = icmp sgt i32 %75, 0
  br i1 %cmp179542, label %for.body181.lr.ph, label %if.end176.for.end208_crit_edge

if.end176.for.end208_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end208

for.body181.lr.ph:                                ; preds = %if.end176
  %irq_reg_offset182 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 16
  br label %for.body181

for.body181:                                      ; preds = %for.inc206.for.body181_crit_edge, %for.body181.lr.ph
  %i.2543 = phi i32 [ 0, %for.body181.lr.ph ], [ %inc207, %for.inc206.for.body181_crit_edge ]
  %76 = ptrtoint ptr %irq_reg_offset182 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irq_reg_offset182, align 4
  %arrayidx183 = getelementptr i32, ptr %77, i32 %i.2543
  %78 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %79)
  %cmp184 = icmp eq i32 %79, 11
  br i1 %cmp184, label %land.lhs.true186, label %if.end190

land.lhs.true186:                                 ; preds = %for.body181
  %80 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %version39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.not.i = icmp eq i32 %81, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %land.lhs.true186.if.end196_crit_edge

land.lhs.true186.if.end196_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

is_ab8500_1p1_or_earlier.exit:                    ; preds = %land.lhs.true186
  %82 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %83)
  %cmp.i498 = icmp ugt i8 %83, 17
  br i1 %cmp.i498, label %is_ab8500_1p1_or_earlier.exit.if.end196_crit_edge, label %is_ab8500_1p1_or_earlier.exit.for.inc206_crit_edge

is_ab8500_1p1_or_earlier.exit.for.inc206_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc206

is_ab8500_1p1_or_earlier.exit.if.end196_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

if.end190:                                        ; preds = %for.body181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp193 = icmp slt i32 %79, 0
  br i1 %cmp193, label %if.end190.for.inc206_crit_edge, label %if.end190.if.end196_crit_edge

if.end190.if.end196_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

if.end190.for.inc206_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc206

if.end196:                                        ; preds = %if.end190.if.end196_crit_edge, %is_ab8500_1p1_or_earlier.exit.if.end196_crit_edge, %land.lhs.true186.if.end196_crit_edge
  %84 = trunc i32 %79 to i8
  %conv199 = add i8 %84, 32
  %call200 = call fastcc i32 @get_register_interruptible(ptr noundef nonnull %call.i, i8 noundef zeroext 14, i8 noundef zeroext %conv199, ptr noundef nonnull %value)
  %85 = ptrtoint ptr %irq_reg_offset182 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %irq_reg_offset182, align 4
  %arrayidx202 = getelementptr i32, ptr %86, i32 %i.2543
  %87 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx202, align 4
  %89 = trunc i32 %88 to i8
  %conv204 = add i8 %89, 64
  %call205 = tail call fastcc i32 @set_register_interruptible(ptr noundef nonnull %call.i, i8 noundef zeroext 14, i8 noundef zeroext %conv204, i8 noundef zeroext -1)
  br label %for.inc206

for.inc206:                                       ; preds = %if.end196, %if.end190.for.inc206_crit_edge, %is_ab8500_1p1_or_earlier.exit.for.inc206_crit_edge
  %inc207 = add nuw nsw i32 %i.2543, 1
  %90 = ptrtoint ptr %mask_size63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mask_size63, align 4
  %cmp179 = icmp slt i32 %inc207, %91
  br i1 %cmp179, label %for.inc206.for.body181_crit_edge, label %for.inc206.for.end208_crit_edge

for.inc206.for.end208_crit_edge:                  ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end208

for.inc206.for.body181_crit_edge:                 ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body181

for.end208:                                       ; preds = %for.inc206.for.end208_crit_edge, %if.end176.for.end208_crit_edge
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  %call210 = tail call i32 @abx500_register_ops(ptr noundef %93, ptr noundef nonnull @ab8500_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %for.cond214.preheader, label %for.end208.cleanup_crit_edge

for.end208.cleanup_crit_edge:                     ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond214.preheader:                            ; preds = %for.end208
  %94 = ptrtoint ptr %mask_size63 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mask_size63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp216544 = icmp sgt i32 %95, 0
  br i1 %cmp216544, label %for.cond214.preheader.for.body218_crit_edge, label %for.cond214.preheader.for.end225_crit_edge

for.cond214.preheader.for.end225_crit_edge:       ; preds = %for.cond214.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end225

for.cond214.preheader.for.body218_crit_edge:      ; preds = %for.cond214.preheader
  br label %for.body218

for.body218:                                      ; preds = %for.body218.for.body218_crit_edge, %for.cond214.preheader.for.body218_crit_edge
  %i.3545 = phi i32 [ %inc224, %for.body218.for.body218_crit_edge ], [ 0, %for.cond214.preheader.for.body218_crit_edge ]
  %96 = ptrtoint ptr %oldmask to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %oldmask, align 4
  %arrayidx220 = getelementptr i8, ptr %97, i32 %i.3545
  %98 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %arrayidx220, align 1
  %99 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mask, align 4
  %arrayidx222 = getelementptr i8, ptr %100, i32 %i.3545
  %101 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %arrayidx222, align 1
  %inc224 = add nuw nsw i32 %i.3545, 1
  %102 = ptrtoint ptr %mask_size63 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mask_size63, align 4
  %cmp216 = icmp slt i32 %inc224, %103
  br i1 %cmp216, label %for.body218.for.body218_crit_edge, label %for.body218.for.end225_crit_edge

for.body218.for.end225_crit_edge:                 ; preds = %for.body218
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end225

for.body218.for.body218_crit_edge:                ; preds = %for.body218
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body218

for.end225:                                       ; preds = %for.body218.for.end225_crit_edge, %for.cond214.preheader.for.end225_crit_edge
  %call226 = tail call fastcc i32 @ab8500_irq_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end229, label %for.end225.cleanup_crit_edge

for.end225.cleanup_crit_edge:                     ; preds = %for.end225
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end229:                                        ; preds = %for.end225
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq, align 4
  %call232 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %105, ptr noundef null, ptr noundef nonnull @ab8500_hierarchical_irq, i32 noundef 24576, ptr noundef nonnull @.str.56, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end235, label %if.end229.cleanup_crit_edge

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end235:                                        ; preds = %if.end229
  %106 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %version39, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i32 %107, label %if.else269 [
    i32 2, label %if.then238
    i32 4, label %if.then244
    i32 1, label %if.then265
  ]

if.then238:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 4
  %domain = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 5
  %111 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %domain, align 4
  %call240 = tail call i32 @mfd_add_devices(ptr noundef %110, i32 noundef 0, ptr noundef nonnull @ab9540_devs, i32 noundef 15, ptr noundef null, i32 noundef 0, ptr noundef %112) #12
  br label %if.end275

if.then244:                                       ; preds = %if.end235
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 4
  %domain246 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 5
  %115 = ptrtoint ptr %domain246 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %domain246, align 4
  %call247 = tail call i32 @mfd_add_devices(ptr noundef %114, i32 noundef 0, ptr noundef nonnull @ab8540_devs, i32 noundef 14, ptr noundef null, i32 noundef 0, ptr noundef %116) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end250, label %if.then244.cleanup_crit_edge

if.then244.cleanup_crit_edge:                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end250:                                        ; preds = %if.then244
  %117 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %version39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %118)
  %cmp.i.not.i506 = icmp eq i32 %118, 4
  br i1 %cmp.i.not.i506, label %is_ab8540_1p2_or_earlier.exit, label %if.end250.if.else257_crit_edge

if.end250.if.else257_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else257

is_ab8540_1p2_or_earlier.exit:                    ; preds = %if.end250
  %119 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %120)
  %cmp.i508 = icmp ugt i8 %120, 18
  br i1 %cmp.i508, label %is_ab8540_1p2_or_earlier.exit.if.else257_crit_edge, label %if.then253

is_ab8540_1p2_or_earlier.exit.if.else257_crit_edge: ; preds = %is_ab8540_1p2_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else257

if.then253:                                       ; preds = %is_ab8540_1p2_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  %123 = ptrtoint ptr %domain246 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %domain246, align 4
  %call256 = tail call i32 @mfd_add_devices(ptr noundef %122, i32 noundef 0, ptr noundef nonnull @ab8540_cut1_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %124) #12
  br label %if.end275

if.else257:                                       ; preds = %is_ab8540_1p2_or_earlier.exit.if.else257_crit_edge, %if.end250.if.else257_crit_edge
  %125 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call.i, align 4
  %127 = ptrtoint ptr %domain246 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %domain246, align 4
  %call260 = tail call i32 @mfd_add_devices(ptr noundef %126, i32 noundef 0, ptr noundef nonnull @ab8540_cut2_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %128) #12
  br label %if.end275

if.then265:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i, align 4
  %domain267 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 5
  %131 = ptrtoint ptr %domain267 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %domain267, align 4
  %call268 = tail call i32 @mfd_add_devices(ptr noundef %130, i32 noundef 0, ptr noundef nonnull @ab8505_devs, i32 noundef 13, ptr noundef null, i32 noundef 0, ptr noundef %132) #12
  br label %if.end275

if.else269:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call.i, align 4
  %domain271 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 5
  %135 = ptrtoint ptr %domain271 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %domain271, align 4
  %call272 = tail call i32 @mfd_add_devices(ptr noundef %134, i32 noundef 0, ptr noundef nonnull @ab8500_devs, i32 noundef 17, ptr noundef null, i32 noundef 0, ptr noundef %136) #12
  br label %if.end275

if.end275:                                        ; preds = %if.else269, %if.then265, %if.else257, %if.then253, %if.then238
  %ret.0 = phi i32 [ %call240, %if.then238 ], [ %call256, %if.then253 ], [ %call260, %if.else257 ], [ %call268, %if.then265 ], [ %call272, %if.else269 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool276.not = icmp eq i32 %ret.0, 0
  br i1 %tobool276.not, label %if.end278, label %if.end275.cleanup_crit_edge

if.end275.cleanup_crit_edge:                      ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end278:                                        ; preds = %if.end275
  %137 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call.i, align 4
  %domain280 = getelementptr inbounds %struct.ab8500, ptr %call.i, i32 0, i32 5
  %139 = ptrtoint ptr %domain280 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %domain280, align 4
  %call281 = tail call i32 @mfd_add_devices(ptr noundef %138, i32 noundef 0, ptr noundef nonnull @ab8500_bm_devs, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %140) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.end278.if.end288_crit_edge, label %do.end286

if.end278.if.end288_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end288

do.end286:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.58) #15
  br label %if.end288

if.end288:                                        ; preds = %do.end286, %if.end278.if.end288_crit_edge
  %143 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %version39, align 4
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %144, label %if.end288.if.else305_crit_edge [
    i32 1, label %if.end288.land.lhs.true294_crit_edge
    i32 2, label %if.end288.land.lhs.true294_crit_edge553
    i32 4, label %if.end288.if.end309_crit_edge
  ]

if.end288.if.end309_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.end288.land.lhs.true294_crit_edge553:          ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true294

if.end288.land.lhs.true294_crit_edge:             ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true294

if.end288.if.else305_crit_edge:                   ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else305

land.lhs.true294:                                 ; preds = %if.end288.land.lhs.true294_crit_edge, %if.end288.land.lhs.true294_crit_edge553
  %146 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %147)
  %cmp297 = icmp ugt i8 %147, 31
  br i1 %cmp297, label %land.lhs.true294.if.end309_crit_edge, label %land.lhs.true294.if.else305_crit_edge

land.lhs.true294.if.else305_crit_edge:            ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else305

land.lhs.true294.if.end309_crit_edge:             ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.else305:                                       ; preds = %land.lhs.true294.if.else305_crit_edge, %if.end288.if.else305_crit_edge
  br label %if.end309

if.end309:                                        ; preds = %if.else305, %land.lhs.true294.if.end309_crit_edge, %if.end288.if.end309_crit_edge
  %ab8500_attr_group.sink = phi ptr [ @ab8500_attr_group, %if.else305 ], [ @ab9540_attr_group, %if.end288.if.end309_crit_edge ], [ @ab9540_attr_group, %land.lhs.true294.if.end309_crit_edge ]
  %148 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %call.i, align 4
  %call308 = tail call i32 @sysfs_create_group(ptr noundef %149, ptr noundef nonnull %ab8500_attr_group.sink) #12
  %150 = ptrtoint ptr %version39 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %version39, align 4
  %.off = add i32 %151, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true315, label %if.end309.if.end324_crit_edge

if.end309.if.end324_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

land.lhs.true315:                                 ; preds = %if.end309
  %152 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %153)
  %cmp318 = icmp ugt i8 %153, 31
  br i1 %cmp318, label %if.then320, label %land.lhs.true315.if.end324_crit_edge

land.lhs.true315.if.end324_crit_edge:             ; preds = %land.lhs.true315
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

if.then320:                                       ; preds = %land.lhs.true315
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call.i, align 4
  %call323 = tail call i32 @sysfs_create_group(ptr noundef %155, ptr noundef nonnull @ab8505_attr_group) #12
  br label %if.end324

if.end324:                                        ; preds = %if.then320, %land.lhs.true315.if.end324_crit_edge, %if.end309.if.end324_crit_edge
  %ret.2 = phi i32 [ %call323, %if.then320 ], [ %call308, %land.lhs.true315.if.end324_crit_edge ], [ %call308, %if.end309.if.end324_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool325.not = icmp eq i32 %ret.2, 0
  br i1 %tobool325.not, label %if.end324.cleanup_crit_edge, label %do.end329

if.end324.cleanup_crit_edge:                      ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end329:                                        ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.61) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end329, %if.end324.cleanup_crit_edge, %if.end275.cleanup_crit_edge, %if.then244.cleanup_crit_edge, %if.end229.cleanup_crit_edge, %for.end225.cleanup_crit_edge, %for.end208.cleanup_crit_edge, %if.then162.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %get_register_interruptible.exit485.thread, %do.end25, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i477, %do.end25 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end61.cleanup_crit_edge ], [ -12, %if.end68.cleanup_crit_edge ], [ %call76, %if.end75.cleanup_crit_edge ], [ %call115, %if.end114.cleanup_crit_edge ], [ %call163, %if.then162.cleanup_crit_edge ], [ %call210, %for.end208.cleanup_crit_edge ], [ %call226, %for.end225.cleanup_crit_edge ], [ %call232, %if.end229.cleanup_crit_edge ], [ %call247, %if.then244.cleanup_crit_edge ], [ %ret.0, %if.end275.cleanup_crit_edge ], [ %ret.2, %do.end329 ], [ 0, %if.end324.cleanup_crit_edge ], [ %call.i480, %get_register_interruptible.exit485.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_prcmu_read(ptr nocapture noundef readonly %ab8500, i16 noundef zeroext %addr) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !332
  %1 = lshr i16 %addr, 8
  %conv1 = trunc i16 %1 to i8
  %conv3 = trunc i16 %addr to i8
  %call = call i32 @prcmu_abb_read(i8 noundef zeroext %conv1, i8 noundef zeroext %conv3, ptr noundef nonnull %data, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ab8500, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %conv5 = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %conv5, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_prcmu_write(ptr nocapture noundef readonly %ab8500, i16 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %data.addr, align 1
  %1 = lshr i16 %addr, 8
  %conv1 = trunc i16 %1 to i8
  %conv3 = trunc i16 %addr to i8
  %call = call i32 @prcmu_abb_write(i8 noundef zeroext %conv1, i8 noundef zeroext %conv3, ptr noundef nonnull %data.addr, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ab8500, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_prcmu_write_masked(ptr nocapture noundef readonly %ab8500, i16 noundef zeroext %addr, i8 noundef zeroext %mask, i8 noundef zeroext %data) #0 align 64 {
entry:
  %mask.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %mask, ptr %mask.addr, align 1
  %1 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %data, ptr %data.addr, align 1
  %2 = lshr i16 %addr, 8
  %conv1 = trunc i16 %2 to i8
  %conv3 = trunc i16 %addr to i8
  %call = call i32 @prcmu_abb_write_masked(i8 noundef zeroext %conv1, i8 noundef zeroext %conv3, ptr noundef nonnull %data.addr, ptr noundef nonnull %mask.addr, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ab8500, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.63, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_register_interruptible(ptr noundef %ab8500, i8 noundef zeroext %bank, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i8 %bank to i16
  %shl = shl nuw i16 %conv1, 8
  %conv2 = zext i8 %reg to i16
  %or = or i16 %shl, %conv2
  %lock = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %read = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 10
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %call = tail call i32 %1(ptr noundef %ab8500, i16 noundef zeroext %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ab8500, align 4
  %conv5 = zext i16 %or to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.67, i32 noundef %conv5, i32 noundef %call) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv6 = trunc i32 %call to i8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %value, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %5 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_register_interruptible(ptr noundef %ab8500, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i8 %bank to i16
  %shl = shl nuw i16 %conv1, 8
  %conv2 = zext i8 %reg to i16
  %or = or i16 %shl, %conv2
  %lock = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %write = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 8
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %call = tail call i32 %1(ptr noundef %ab8500, i16 noundef zeroext %or, i8 noundef zeroext %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ab8500, align 4
  %conv5 = zext i16 %or to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.69, i32 noundef %conv5, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_register_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_irq_init(ptr noundef %ab8500) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %version.i = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 6
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %1, label %if.else4 [
    i32 4, label %entry.if.end10_crit_edge
    i32 2, label %if.end10.fold.split
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i5.not = icmp eq i32 %1, 1
  %. = select i1 %cmp.i5.not, i32 153, i32 112
  br label %if.end10

if.end10.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %if.end10.fold.split, %if.else4, %entry.if.end10_crit_edge
  %num_irqs.0 = phi i32 [ 216, %entry.if.end10_crit_edge ], [ %., %if.else4 ], [ 153, %if.end10.fold.split ]
  %3 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ab8500, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef %num_irqs.0, i32 noundef 0, ptr noundef nonnull @ab8500_irq_ops, ptr noundef %ab8500) #12
  %domain = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 5
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %domain, align 4
  %tobool13.not = icmp eq ptr %call1.i, null
  br i1 %tobool13.not, label %do.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ab8500, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.77) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_hierarchical_irq(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  %irq.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %it_latchhier_num = getelementptr inbounds %struct.ab8500, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %it_latchhier_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_latchhier_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33 = icmp sgt i32 %1, 0
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %dev, i32 0, i32 1
  %read.i = getelementptr inbounds %struct.ab8500, ptr %dev, i32 0, i32 10
  %mask_size.i.i = getelementptr inbounds %struct.ab8500, ptr %dev, i32 0, i32 15
  %irq_reg_offset.i.i = getelementptr inbounds %struct.ab8500, ptr %dev, i32 0, i32 16
  %mask.i.i = getelementptr inbounds %struct.ab8500, ptr %dev, i32 0, i32 13
  %domain.i.i = getelementptr inbounds %struct.ab8500, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv36 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %i.034 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i8 %i.034, 96
  %conv2.i = zext i8 %add to i16
  %or.i = or i16 %conv2.i, 3584
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %3(ptr noundef %dev, i16 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_register_interruptible.exit.thread, label %get_register_interruptible.exit

get_register_interruptible.exit.thread:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %conv5.i = zext i16 %or.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef %conv5.i, i32 noundef %call.i) #15
  call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %for.inc

get_register_interruptible.exit:                  ; preds = %for.body
  %conv6.i = trunc i32 %call.i to i8
  call void @mutex_unlock(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6.i)
  %cmp7 = icmp eq i8 %conv6.i, 0
  br i1 %cmp7, label %get_register_interruptible.exit.for.inc_crit_edge, label %if.end

get_register_interruptible.exit.for.inc_crit_edge: ; preds = %get_register_interruptible.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %get_register_interruptible.exit
  %shl.i = shl nuw nsw i32 %conv36, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %i.034)
  %cmp14.i.i = icmp eq i8 %i.034, 3
  br label %do.body.i

do.body.i:                                        ; preds = %discard.i.do.body.i_crit_edge, %if.end
  %hier_val.addr.0.i = phi i8 [ %conv6.i, %if.end ], [ %conv18.i, %discard.i.do.body.i_crit_edge ]
  %conv.i = zext i8 %hier_val.addr.0.i to i32
  %6 = call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #12, !range !333
  %add.i = add nuw nsw i32 %6, %shl.i
  %conv1.i = trunc i32 %add.i to i8
  %7 = zext i8 %conv1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %conv1.i, label %do.body.i.if.end13.i.i_crit_edge [
    i8 17, label %do.body.i.if.end13.sink.split.i.i_crit_edge
    i8 16, label %if.then12.i.i
  ], !prof !334

do.body.i.if.end13.sink.split.i.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.sink.split.i.i

do.body.i.if.end13.i.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.sink.split.i.i

if.end13.sink.split.i.i:                          ; preds = %if.then12.i.i, %do.body.i.if.end13.sink.split.i.i_crit_edge
  %.sink.i.i = phi i8 [ 25, %if.then12.i.i ], [ 24, %do.body.i.if.end13.sink.split.i.i_crit_edge ]
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end13.sink.split.i.i, %do.body.i.if.end13.i.i_crit_edge
  %latch_offset.0.i = phi i8 [ %conv1.i, %do.body.i.if.end13.i.i_crit_edge ], [ %.sink.i.i, %if.end13.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %latch_offset.0.i)
  %cmp17.i.i = icmp ugt i8 %latch_offset.0.i, 23
  %or.cond.i = select i1 %cmp14.i.i, i1 %cmp17.i.i, i1 false
  %add.i.i = add i8 %latch_offset.0.i, 2
  %latch_offset.1.i = select i1 %or.cond.i, i8 %add.i.i, i8 %latch_offset.0.i
  %add3.i = add i8 %latch_offset.1.i, 32
  %conv2.i.i = zext i8 %add3.i to i16
  %or.i.i = or i16 %conv2.i.i, 3584
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %call.i.i = call i32 %9(ptr noundef %dev, i16 noundef zeroext %or.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %get_register_interruptible.exit.thread.i, label %get_register_interruptible.exit.i

get_register_interruptible.exit.thread.i:         ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %conv5.i.i = zext i16 %or.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.67, i32 noundef %conv5.i.i, i32 noundef %call.i.i) #15
  call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %discard.i

get_register_interruptible.exit.i:                ; preds = %if.end13.i.i
  %conv6.i.i = trunc i32 %call.i.i to i8
  call void @mutex_unlock(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6.i.i)
  %cmp8.i = icmp eq i8 %conv6.i.i, 0
  br i1 %cmp8.i, label %get_register_interruptible.exit.i.discard.i_crit_edge, label %if.end.i

get_register_interruptible.exit.i.discard.i_crit_edge: ; preds = %get_register_interruptible.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard.i

if.end.i:                                         ; preds = %get_register_interruptible.exit.i
  %conv10.i = zext i8 %latch_offset.1.i to i32
  %12 = ptrtoint ptr %mask_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp65.i.i = icmp sgt i32 %13, 0
  br i1 %cmp65.i.i, label %for.body.lr.ph.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %14 = ptrtoint ptr %irq_reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_reg_offset.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.066.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %i.066.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv10.i)
  %cmp1.i.i = icmp eq i32 %17, %conv10.i
  br i1 %cmp1.i.i, label %if.end5.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.066.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i.i:                                      ; preds = %for.body.i.i
  %18 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mask.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %19, i32 %i.066.i.i
  %20 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6.i.i, align 1
  %neg.i.i = xor i8 %21, -1
  %and.i.i = and i8 %neg.i.i, %conv6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i.i)
  %tobool.not67.i.i = icmp eq i8 %and.i.i, 0
  br i1 %tobool.not67.i.i, label %if.end5.i.i.discard.i_crit_edge, label %while.body.lr.ph.i.i

if.end5.i.i.discard.i_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard.i

while.body.lr.ph.i.i:                             ; preds = %if.end5.i.i
  %shl.i.i = shl i32 %i.066.i.i, 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %irq_find_mapping.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %latch_val.addr.068.i.i = phi i8 [ %and.i.i, %while.body.lr.ph.i.i ], [ %conv14.i.i, %irq_find_mapping.exit.i.i.while.body.i.i_crit_edge ]
  %22 = call i8 @llvm.cttz.i8(i8 %latch_val.addr.068.i.i, i1 true) #12, !range !335
  %23 = zext i8 %22 to i32
  %add.i30.i = or i32 %shl.i.i, %23
  %shl10.i.i = shl nuw i8 1, %22
  %24 = xor i8 %shl10.i.i, -1
  %conv14.i.i = and i8 %latch_val.addr.068.i.i, %24
  %25 = add i32 %add.i30.i, -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %26 = icmp ult i32 %25, 16
  %sub.i.i = add i32 %add.i30.i, -16
  %line.0.i.i = select i1 %26, i32 %sub.i.i, i32 %add.i30.i
  %27 = add i32 %line.0.i.i, -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %28 = icmp ult i32 %27, 5
  %sub27.i.i = add i32 %line.0.i.i, -8
  %line.1.i.i = select i1 %28, i32 %sub27.i.i, i32 %line.0.i.i
  %29 = zext i32 %line.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %line.1.i.i, label %while.body.i.i.if.end35.i.i_crit_edge [
    i32 168, label %while.body.i.i.if.then33.i.i_crit_edge
    i32 170, label %while.body.i.i.if.then33.i.i_crit_edge59
  ]

while.body.i.i.if.then33.i.i_crit_edge59:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.i

while.body.i.i.if.then33.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i.i

while.body.i.i.if.end35.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

if.then33.i.i:                                    ; preds = %while.body.i.i.if.then33.i.i_crit_edge, %while.body.i.i.if.then33.i.i_crit_edge59
  %add34.i.i = add nuw nsw i32 %line.1.i.i, 1
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then33.i.i, %while.body.i.i.if.end35.i.i_crit_edge
  %line.2.i.i = phi i32 [ %add34.i.i, %if.then33.i.i ], [ %line.1.i.i, %while.body.i.i.if.end35.i.i_crit_edge ]
  %30 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i) #12
  %32 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %irq.i.i.i, align 4, !annotation !332
  %call.i.i.i = call ptr @__irq_resolve_mapping(ptr noundef %31, i32 noundef %line.2.i.i, ptr noundef nonnull %irq.i.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end35.i.i.irq_find_mapping.exit.i.i_crit_edge, label %if.then.i.i.i

if.end35.i.i.irq_find_mapping.exit.i.i_crit_edge: ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_find_mapping.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i.i.i, align 4
  br label %irq_find_mapping.exit.i.i

irq_find_mapping.exit.i.i:                        ; preds = %if.then.i.i.i, %if.end35.i.i.irq_find_mapping.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %34, %if.then.i.i.i ], [ 0, %if.end35.i.i.irq_find_mapping.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #12
  call void @handle_nested_irq(i32 noundef %retval.0.i.i.i) #12
  %tobool.not.i.i = icmp eq i8 %conv14.i.i, 0
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.i.i.discard.i_crit_edge, label %irq_find_mapping.exit.i.i.while.body.i.i_crit_edge

irq_find_mapping.exit.i.i.while.body.i.i_crit_edge: ; preds = %irq_find_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

irq_find_mapping.exit.i.i.discard.i_crit_edge:    ; preds = %irq_find_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %discard.i

discard.i:                                        ; preds = %irq_find_mapping.exit.i.i.discard.i_crit_edge, %if.end5.i.i.discard.i_crit_edge, %get_register_interruptible.exit.i.discard.i_crit_edge, %get_register_interruptible.exit.thread.i
  %shl16.i = shl nuw i32 1, %6
  %35 = trunc i32 %shl16.i to i8
  %36 = xor i8 %35, -1
  %conv18.i = and i8 %hier_val.addr.0.i, %36
  %tobool.not.i = icmp eq i8 %conv18.i, 0
  br i1 %tobool.not.i, label %discard.i.for.inc_crit_edge, label %discard.i.do.body.i_crit_edge

discard.i.do.body.i_crit_edge:                    ; preds = %discard.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

discard.i.for.inc_crit_edge:                      ; preds = %discard.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cleanup:                                          ; preds = %for.inc.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.79, i32 noundef %conv10.i) #15
  br label %for.end

for.inc:                                          ; preds = %discard.i.for.inc_crit_edge, %get_register_interruptible.exit.for.inc_crit_edge, %get_register_interruptible.exit.thread
  %inc = add i8 %i.034, 1
  %conv = zext i8 %inc to i32
  %39 = ptrtoint ptr %it_latchhier_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %it_latchhier_num, align 4
  %cmp = icmp sgt i32 %40, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_abb_read(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_abb_write(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_abb_write_masked(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_get_chip_id(ptr noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %cond.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %chip_id = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id, align 4
  %conv = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %conv, %cond.true ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_get_register(ptr nocapture noundef readonly %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %transfer_ongoing = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !336
  %conv1.i = zext i8 %bank to i16
  %shl.i = shl nuw i16 %conv1.i, 8
  %conv2.i = zext i8 %reg to i16
  %or.i = or i16 %shl.i, %conv2.i
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %read.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %6(ptr noundef %3, i16 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %conv5.i = zext i16 %or.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.67, i32 noundef %conv5.i, i32 noundef %call.i) #15
  br label %get_register_interruptible.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv6.i = trunc i32 %call.i to i8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6.i, ptr %value, align 1
  br label %get_register_interruptible.exit

get_register_interruptible.exit:                  ; preds = %if.else.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #12
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !337
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_set_register(ptr nocapture noundef readonly %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %transfer_ongoing = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !336
  %conv1.i = zext i8 %bank to i16
  %shl.i = shl nuw i16 %conv1.i, 8
  %conv2.i = zext i8 %reg to i16
  %or.i = or i16 %shl.i, %conv2.i
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %write.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %6(ptr noundef %3, i16 noundef zeroext %or.i, i8 noundef zeroext %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.set_register_interruptible.exit_crit_edge

entry.set_register_interruptible.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_register_interruptible.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %conv5.i = zext i16 %or.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.69, i32 noundef %conv5.i, i32 noundef %call.i) #15
  br label %set_register_interruptible.exit

set_register_interruptible.exit:                  ; preds = %do.end.i, %entry.set_register_interruptible.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !337
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_mask_and_set_register(ptr nocapture noundef readonly %dev, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %bitmask, i8 noundef zeroext %bitvalues) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %transfer_ongoing = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !336
  %call1 = tail call fastcc i32 @mask_and_set_register_interruptible(ptr noundef %3, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %bitmask, i8 noundef zeroext %bitvalues)
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !337
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ab8500_dump_all_banks(ptr noundef) #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mask_and_set_register_interruptible(ptr noundef %ab8500, i8 noundef zeroext %bank, i8 noundef zeroext %reg, i8 noundef zeroext %bitmask, i8 noundef zeroext %bitvalues) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i8 %bank to i16
  %shl = shl nuw i16 %conv1, 8
  %conv2 = zext i8 %reg to i16
  %or = or i16 %shl, %conv2
  %lock = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %write_masked = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 9
  %0 = ptrtoint ptr %write_masked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_masked, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %read = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 10
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = tail call i32 %3(ptr noundef %ab8500, i16 noundef zeroext %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ab8500, align 4
  %conv8 = zext i16 %or to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef %conv8, i32 noundef %call) #15
  br label %out

if.end:                                           ; preds = %if.then
  %conv10 = zext i8 %bitmask to i32
  %neg = xor i32 %conv10, -1
  %and = and i32 %call, %neg
  %and1469 = and i8 %bitvalues, %bitmask
  %6 = trunc i32 %and to i8
  %conv16 = or i8 %and1469, %6
  %write = getelementptr inbounds %struct.ab8500, ptr %ab8500, i32 0, i32 8
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %call17 = tail call i32 %8(ptr noundef %ab8500, i16 noundef zeroext %or, i8 noundef zeroext %conv16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ab8500, align 4
  %conv25 = zext i16 %or to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.69, i32 noundef %conv25, i32 noundef %call17) #15
  br label %out

if.end27:                                         ; preds = %entry
  %call29 = tail call i32 %1(ptr noundef %ab8500, i16 noundef zeroext %or, i8 noundef zeroext %bitmask, i8 noundef zeroext %bitvalues) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end35, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %ab8500 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ab8500, align 4
  %conv37 = zext i16 %or to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.75, i32 noundef %conv37, i32 noundef %call29) #15
  br label %out

out:                                              ; preds = %do.end35, %if.end27.out_crit_edge, %do.end23, %if.end.out_crit_edge, %do.end
  %ret.1 = phi i32 [ %call29, %do.end35 ], [ %call29, %if.end27.out_crit_edge ], [ %call, %do.end ], [ %call17, %do.end23 ], [ %call17, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_irq_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef nonnull %1) #12
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @ab8500_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #12
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #12
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ab8500_irq_mask(ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %3, 8
  %rem53 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem53
  %mask1 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mask1, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %div
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = trunc i32 %shl to i8
  %conv2 = or i8 %7, %8
  store i8 %conv2, ptr %arrayidx, align 1
  %9 = add i32 %3, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %entry.if.end23.sink.split_crit_edge, label %if.end

entry.if.end23.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split

if.end:                                           ; preds = %entry
  %11 = add i32 %3, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %if.end.if.end23.sink.split_crit_edge, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.if.end23.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.end.if.end23.sink.split_crit_edge, %entry.if.end23.sink.split_crit_edge
  %.sink59 = phi i32 [ 2, %entry.if.end23.sink.split_crit_edge ], [ 1, %if.end.if.end23.sink.split_crit_edge ]
  %13 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mask1, align 4
  %add18 = add nsw i32 %div, %.sink59
  %arrayidx19 = getelementptr i8, ptr %14, i32 %add18
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %conv10 = or i8 %16, %8
  store i8 %conv10, ptr %arrayidx19, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.end.if.end23_crit_edge
  %17 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %3, label %if.end23.if.end35_crit_edge [
    i32 169, label %if.end23.if.then28_crit_edge
    i32 171, label %if.end23.if.then28_crit_edge60
  ]

if.end23.if.then28_crit_edge60:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.end23.if.then28_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then28:                                        ; preds = %if.end23.if.then28_crit_edge, %if.end23.if.then28_crit_edge60
  %18 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mask1, align 4
  %arrayidx31 = getelementptr i8, ptr %19, i32 %div
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx31, align 1
  %22 = shl i8 %8, 1
  %conv34 = or i8 %21, %22
  store i8 %conv34, ptr %arrayidx31, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.end23.if.end35_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ab8500_irq_unmask(ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %7, 8
  %rem87 = and i32 %7, 7
  %shl = shl nuw nsw i32 1, %rem87
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mask2 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mask2, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = trunc i32 %shl to i8
  %13 = xor i8 %12, -1
  %conv4 = and i8 %11, %13
  store i8 %conv4, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else54, label %if.then7

if.then7:                                         ; preds = %if.end
  %14 = add i32 %7, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %15 = icmp ult i32 %14, 16
  br i1 %15, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %mask13 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %mask13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask13, align 4
  %add = add nsw i32 %div, 2
  %arrayidx14 = getelementptr i8, ptr %17, i32 %add
  %18 = trunc i32 %shl to i8
  br label %if.end61

if.else:                                          ; preds = %if.then7
  %19 = add i32 %7, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %if.then23, label %if.else31

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %mask25 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %mask25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mask25, align 4
  %add26 = add nsw i32 %div, 1
  %arrayidx27 = getelementptr i8, ptr %22, i32 %add26
  %23 = trunc i32 %shl to i8
  br label %if.end61

if.else31:                                        ; preds = %if.else
  %24 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %7, label %if.else44 [
    i32 169, label %if.else31.if.then36_crit_edge
    i32 171, label %if.else31.if.then36_crit_edge91
  ]

if.else31.if.then36_crit_edge91:                  ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.else31.if.then36_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36:                                        ; preds = %if.else31.if.then36_crit_edge, %if.else31.if.then36_crit_edge91
  %mask39 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %mask39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mask39, align 4
  %arrayidx40 = getelementptr i8, ptr %26, i32 %div
  %shl.tr = trunc i32 %shl to i8
  %27 = shl i8 %shl.tr, 1
  br label %if.end61

if.else44:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  %mask46 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %mask46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mask46, align 4
  %arrayidx47 = getelementptr i8, ptr %29, i32 %div
  %30 = trunc i32 %shl to i8
  br label %if.end61

if.else54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mask56 = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %mask56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mask56, align 4
  %arrayidx57 = getelementptr i8, ptr %32, i32 %div
  %33 = trunc i32 %shl to i8
  br label %if.end61

if.end61:                                         ; preds = %if.else54, %if.else44, %if.then36, %if.then23, %if.then11
  %.sink90 = phi i8 [ %18, %if.then11 ], [ %27, %if.then36 ], [ %30, %if.else44 ], [ %23, %if.then23 ], [ %33, %if.else54 ]
  %arrayidx14.sink = phi ptr [ %arrayidx14, %if.then11 ], [ %arrayidx40, %if.then36 ], [ %arrayidx47, %if.else44 ], [ %arrayidx27, %if.then23 ], [ %arrayidx57, %if.else54 ]
  %34 = ptrtoint ptr %arrayidx14.sink to i32
  call void @__asan_load1_noabort(i32 %34)
  %.sink = load i8, ptr %arrayidx14.sink, align 1
  %35 = xor i8 %.sink90, -1
  %conv17 = and i8 %.sink, %35
  store i8 %conv17, ptr %arrayidx14.sink, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_irq_set_type(ptr nocapture noundef readnone %data, i32 noundef %type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #12
  %transfer_ongoing = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !336
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %mask_size = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %mask_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47 = icmp sgt i32 %3, 0
  br i1 %cmp47, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %oldmask = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 14
  %mask = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 13
  %irq_reg_offset = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 16
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 6
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 1
  %write.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %oldmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oldmask, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %i.048
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mask, align 4
  %arrayidx1 = getelementptr i8, ptr %9, i32 %i.048
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %7)
  %cmp3 = icmp eq i8 %11, %7
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %irq_reg_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_reg_offset, align 4
  %arrayidx5 = getelementptr i32, ptr %13, i32 %i.048
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %15)
  %cmp6 = icmp eq i32 %15, 11
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %16 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 0
  br i1 %cmp.i.not.i, label %is_ab8500_1p1_or_earlier.exit, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

is_ab8500_1p1_or_earlier.exit:                    ; preds = %land.lhs.true
  %18 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %19)
  %cmp.i = icmp ugt i8 %19, 17
  br i1 %cmp.i, label %is_ab8500_1p1_or_earlier.exit.if.end16_crit_edge, label %is_ab8500_1p1_or_earlier.exit.cleanup_crit_edge

is_ab8500_1p1_or_earlier.exit.cleanup_crit_edge:  ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_ab8500_1p1_or_earlier.exit.if.end16_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13 = icmp slt i32 %15, 0
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %is_ab8500_1p1_or_earlier.exit.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %11, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %irq_reg_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_reg_offset, align 4
  %arrayidx20 = getelementptr i32, ptr %22, i32 %i.048
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx20, align 4
  %25 = trunc i32 %24 to i8
  %conv21 = add i8 %25, 64
  %conv2.i = zext i8 %conv21 to i16
  %or.i = or i16 %conv2.i, 3584
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %26 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %27(ptr noundef %1, i16 noundef zeroext %or.i, i8 noundef zeroext %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i44 = icmp slt i32 %call.i, 0
  br i1 %cmp.i44, label %do.end.i, label %if.end16.set_register_interruptible.exit_crit_edge

if.end16.set_register_interruptible.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_register_interruptible.exit

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %conv5.i = zext i16 %or.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.69, i32 noundef %conv5.i, i32 noundef %call.i) #15
  br label %set_register_interruptible.exit

set_register_interruptible.exit:                  ; preds = %do.end.i, %if.end16.set_register_interruptible.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %set_register_interruptible.exit, %if.end10.cleanup_crit_edge, %is_ab8500_1p1_or_earlier.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %30 = ptrtoint ptr %mask_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask_size, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %transfer_ongoing = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %transfer_ongoing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %transfer_ongoing, i32 1, i32 3, i32 1) #12
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %transfer_ongoing, ptr %transfer_ongoing, i32 1, ptr elementtype(i32) %transfer_ongoing) #12, !srcloc !337
  %irq_lock = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %irq_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip_id = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id, align 4
  %conv = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ -22, %entry.cond.end_crit_edge ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.135, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_off_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %read.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i16 noundef zeroext 3840) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_register_interruptible.exit.thread, label %if.end

get_register_interruptible.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef 3840, i32 noundef %call.i) #15
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = and i32 %call.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.135, i32 noundef %phi.cast)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_register_interruptible.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %get_register_interruptible.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @turn_on_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %read.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i16 noundef zeroext 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_register_interruptible.exit.thread, label %if.end

get_register_interruptible.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef 256, i32 noundef %call.i) #15
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6.i = trunc i32 %call.i to i8
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %version.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i16.not = icmp eq i32 %7, 2
  br i1 %cmp.i16.not, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @on_stat_lock) #12
  %8 = load i8, ptr @turn_on_stat_mask, align 1
  %and14 = and i8 %8, %conv6.i
  %9 = load i8, ptr @turn_on_stat_set, align 1
  %or15 = or i8 %and14, %9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @on_stat_lock) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %value.1 = phi i8 [ %conv6.i, %if.end.if.end7_crit_edge ], [ %or15, %if.then3 ]
  %conv8 = zext i8 %value.1 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.135, i32 noundef %conv8)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %get_register_interruptible.exit.thread
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ %call.i, %get_register_interruptible.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbbrstn_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %read.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i16 noundef zeroext 1059) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_register_interruptible.exit.thread, label %if.end

get_register_interruptible.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef 1059, i32 noundef %call.i) #15
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = lshr i32 %call.i, 2
  %phi.bo6 = and i32 %phi.bo, 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.139, i32 noundef %phi.bo6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_register_interruptible.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %get_register_interruptible.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbbrstn_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.exit_crit_edge, label %if.then

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %3, label %if.then.exit_crit_edge [
    i8 48, label %if.then.sw.epilog_crit_edge
    i8 49, label %sw.bb1
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.then.sw.epilog_crit_edge
  %bitvalues.0 = phi i8 [ 4, %sw.bb1 ], [ 0, %if.then.sw.epilog_crit_edge ]
  %call2 = tail call fastcc i32 @mask_and_set_register_interruptible(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 35, i8 noundef zeroext 4, i8 noundef zeroext %bitvalues.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.epilog.exit_crit_edge, label %do.end

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %conv6 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.140, i32 noundef %conv6, i32 noundef %call2) #15
  br label %exit

exit:                                             ; preds = %do.end, %sw.epilog.exit_crit_edge, %if.then.exit_crit_edge, %entry.exit_crit_edge
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @turn_on_status_2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %read.i = getelementptr inbounds %struct.ab8500, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i16 noundef zeroext 260) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_register_interruptible.exit.thread, label %if.end

get_register_interruptible.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef 260, i32 noundef %call.i) #15
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = and i32 %call.i, 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.135, i32 noundef %phi.bo)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_register_interruptible.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %get_register_interruptible.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !166, !168, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !266, !267, !269, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !287, !289, !291, !292, !294, !296, !297, !299, !300, !302, !303, !305, !307, !308, !309, !310, !312, !314, !316, !318, !320, !321}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329, !330}
!llvm.ident = !{!331}

!0 = !{ptr @__initcall__kmod_ab8500_core__288_1297_ab8500_core_init1, !1, !"__initcall__kmod_ab8500_core__288_1297_ab8500_core_init1", i1 false, i1 false}
!1 = !{!"../drivers/mfd/ab8500-core.c", i32 1297, i32 1}
!2 = !{ptr @turn_on_stat_set, !3, !"turn_on_stat_set", i1 false, i1 false}
!3 = !{!"../drivers/mfd/ab8500-core.c", i32 122, i32 11}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mfd/ab8500-core.c", i32 120, i32 8}
!6 = !{ptr @on_stat_lock, !5, !"on_stat_lock", i1 false, i1 false}
!7 = !{ptr @turn_on_stat_mask, !8, !"turn_on_stat_mask", i1 false, i1 false}
!8 = !{!"../drivers/mfd/ab8500-core.c", i32 121, i32 11}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mfd/ab8500-core.c", i32 1286, i32 11}
!11 = !{ptr @ab8500_core_driver, !12, !"ab8500_core_driver", i1 false, i1 false}
!12 = !{!"../drivers/mfd/ab8500-core.c", i32 1284, i32 31}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mfd/ab8500-core.c", i32 1024, i32 3}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/ab8500-core.c", i32 1025, i32 3}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/ab8500-core.c", i32 1026, i32 3}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/ab8500-core.c", i32 1027, i32 3}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/ab8500-core.c", i32 1028, i32 3}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/ab8500-core.c", i32 1029, i32 3}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/ab8500-core.c", i32 1030, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/ab8500-core.c", i32 1031, i32 3}
!29 = distinct !{null, !30, !"switch_off_status", i1 false, i1 false}
!30 = !{!"../drivers/mfd/ab8500-core.c", i32 1023, i32 28}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/ab8500-core.c", i32 1033, i32 3}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/ab8500-core.c", i32 1034, i32 3}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/ab8500-core.c", i32 1035, i32 3}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/ab8500-core.c", i32 1036, i32 3}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/ab8500-core.c", i32 1037, i32 3}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/ab8500-core.c", i32 1038, i32 3}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/ab8500-core.c", i32 1039, i32 3}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/ab8500-core.c", i32 1040, i32 3}
!47 = distinct !{null, !48, !"turn_on_status", i1 false, i1 false}
!48 = !{!"../drivers/mfd/ab8500-core.c", i32 1032, i32 28}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/ab8500-core.c", i32 1058, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ab8500_probe._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @ab8500_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ab8500_probe.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/mfd/ab8500-core.c", i32 1068, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ab8500_probe.__key.24, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/mfd/ab8500-core.c", i32 1069, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/ab8500-core.c", i32 1083, i32 4}
!65 = !{ptr @ab8500_probe._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ab8500_probe._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/ab8500-core.c", i32 1097, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ab8500_probe._entry.29, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ab8500_probe._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/ab8500-core.c", i32 1142, i32 2}
!74 = !{ptr @ab8500_probe._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ab8500_probe._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/ab8500-core.c", i32 1147, i32 5}
!78 = !{ptr @ab8500_probe._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ab8500_probe._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/ab8500-core.c", i32 1151, i32 3}
!82 = !{ptr @ab8500_probe._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ab8500_probe._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/ab8500-core.c", i32 1153, i32 3}
!86 = !{ptr @ab8500_probe._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ab8500_probe._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/ab8500-core.c", i32 1159, i32 2}
!90 = !{ptr @ab8500_probe._entry.45, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ab8500_probe._entry_ptr.47, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/ab8500-core.c", i32 1164, i32 5}
!94 = !{ptr @ab8500_probe._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ab8500_probe._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ab8500_probe._entry.51, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/mfd/ab8500-core.c", i32 1167, i32 3}
!98 = !{ptr @ab8500_probe._entry_ptr.52, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/ab8500-core.c", i32 1169, i32 3}
!101 = !{ptr @ab8500_probe._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ab8500_probe._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mfd/ab8500-core.c", i32 1216, i32 4}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/ab8500-core.c", i32 1255, i32 3}
!107 = !{ptr @ab8500_probe._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ab8500_probe._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/ab8500-core.c", i32 1271, i32 3}
!111 = !{ptr @ab8500_probe._entry.60, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ab8500_probe._entry_ptr.62, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/ab8500-core.c", i32 187, i32 3}
!115 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ab8500_prcmu_read._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ab8500_prcmu_read._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mfd/ab8500-core.c", i32 164, i32 3}
!120 = !{ptr @ab8500_prcmu_write._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ab8500_prcmu_write._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mfd/ab8500-core.c", i32 176, i32 3}
!124 = !{ptr @ab8500_prcmu_write_masked._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ab8500_prcmu_write_masked._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mfd/ab8500-core.c", i32 248, i32 3}
!128 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @get_register_interruptible._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @get_register_interruptible._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @ab8500_version_str, !132, !"ab8500_version_str", i1 false, i1 false}
!132 = !{!"../drivers/mfd/ab8500-core.c", i32 151, i32 19}
!133 = !{ptr @ab8540_irq_regoffset, !134, !"ab8540_irq_regoffset", i1 false, i1 false}
!134 = !{!"../drivers/mfd/ab8500-core.c", i32 146, i32 18}
!135 = !{ptr @ab9540_irq_regoffset, !136, !"ab9540_irq_regoffset", i1 false, i1 false}
!136 = !{!"../drivers/mfd/ab8500-core.c", i32 141, i32 18}
!137 = !{ptr @ab8500_irq_regoffset, !138, !"ab8500_irq_regoffset", i1 false, i1 false}
!138 = !{!"../drivers/mfd/ab8500-core.c", i32 136, i32 18}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/ab8500-core.c", i32 219, i32 3}
!141 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @set_register_interruptible._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @set_register_interruptible._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @ab8500_ops, !145, !"ab8500_ops", i1 false, i1 false}
!145 = !{!"../drivers/mfd/ab8500-core.c", i32 323, i32 26}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mfd/ab8500-core.c", i32 284, i32 4}
!148 = !{ptr @mask_and_set_register_interruptible._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mask_and_set_register_interruptible._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @mask_and_set_register_interruptible._entry.72, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/mfd/ab8500-core.c", i32 294, i32 4}
!152 = !{ptr @mask_and_set_register_interruptible._entry_ptr.73, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mfd/ab8500-core.c", i32 303, i32 3}
!155 = !{ptr @mask_and_set_register_interruptible._entry.74, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @mask_and_set_register_interruptible._entry_ptr.76, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mfd/ab8500-core.c", i32 589, i32 3}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @ab8500_irq_init._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @ab8500_irq_init._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @ab8500_irq_ops, !163, !"ab8500_irq_ops", i1 false, i1 false}
!163 = !{!"../drivers/mfd/ab8500-core.c", i32 565, i32 36}
!164 = !{ptr @ab8500_irq_chip, !165, !"ab8500_irq_chip", i1 false, i1 false}
!165 = !{!"../drivers/mfd/ab8500-core.c", i32 430, i32 24}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mfd/ab8500-core.c", i32 462, i32 3}
!168 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ab8500_handle_hierarchical_line._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @ab8500_handle_hierarchical_line._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mfd/ab8500-core.c", i32 657, i32 11}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mfd/ab8500-core.c", i32 661, i32 11}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mfd/ab8500-core.c", i32 664, i32 11}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mfd/ab8500-core.c", i32 667, i32 11}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mfd/ab8500-core.c", i32 670, i32 11}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mfd/ab8500-core.c", i32 671, i32 20}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mfd/ab8500-core.c", i32 674, i32 11}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mfd/ab8500-core.c", i32 675, i32 20}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mfd/ab8500-core.c", i32 678, i32 11}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mfd/ab8500-core.c", i32 681, i32 11}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mfd/ab8500-core.c", i32 684, i32 11}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mfd/ab8500-core.c", i32 687, i32 11}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mfd/ab8500-core.c", i32 691, i32 11}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mfd/ab8500-core.c", i32 694, i32 11}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mfd/ab8500-core.c", i32 695, i32 20}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mfd/ab8500-core.c", i32 698, i32 11}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mfd/ab8500-core.c", i32 701, i32 11}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mfd/ab8500-core.c", i32 704, i32 11}
!207 = !{ptr @ab9540_devs, !208, !"ab9540_devs", i1 false, i1 false}
!208 = !{!"../drivers/mfd/ab8500-core.c", i32 654, i32 30}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mfd/ab8500-core.c", i32 803, i32 11}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mfd/ab8500-core.c", i32 806, i32 11}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mfd/ab8500-core.c", i32 809, i32 11}
!215 = !{ptr @ab8540_devs, !216, !"ab8540_devs", i1 false, i1 false}
!216 = !{!"../drivers/mfd/ab8500-core.c", i32 766, i32 30}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mfd/ab8500-core.c", i32 819, i32 20}
!219 = !{ptr @ab8540_cut1_devs, !220, !"ab8540_cut1_devs", i1 false, i1 false}
!220 = !{!"../drivers/mfd/ab8500-core.c", i32 816, i32 30}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mfd/ab8500-core.c", i32 825, i32 11}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mfd/ab8500-core.c", i32 826, i32 20}
!225 = !{ptr @ab8540_cut2_devs, !226, !"ab8540_cut2_devs", i1 false, i1 false}
!226 = !{!"../drivers/mfd/ab8500-core.c", i32 823, i32 30}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mfd/ab8500-core.c", i32 713, i32 20}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mfd/ab8500-core.c", i32 718, i32 20}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mfd/ab8500-core.c", i32 722, i32 20}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mfd/ab8500-core.c", i32 726, i32 20}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mfd/ab8500-core.c", i32 738, i32 20}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mfd/ab8500-core.c", i32 742, i32 20}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mfd/ab8500-core.c", i32 746, i32 20}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mfd/ab8500-core.c", i32 750, i32 11}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mfd/ab8500-core.c", i32 751, i32 20}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mfd/ab8500-core.c", i32 754, i32 11}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mfd/ab8500-core.c", i32 755, i32 20}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mfd/ab8500-core.c", i32 758, i32 11}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mfd/ab8500-core.c", i32 759, i32 20}
!253 = !{ptr @ab8505_devs, !254, !"ab8505_devs", i1 false, i1 false}
!254 = !{!"../drivers/mfd/ab8500-core.c", i32 709, i32 30}
!255 = !{ptr @.str.118, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mfd/ab8500-core.c", i32 622, i32 2}
!257 = !{ptr @.str.119, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/mfd/ab8500-core.c", i32 624, i32 2}
!259 = !{ptr @.str.120, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mfd/ab8500-core.c", i32 626, i32 2}
!261 = !{ptr @.str.121, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mfd/ab8500-core.c", i32 642, i32 2}
!263 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mfd/ab8500-core.c", i32 644, i32 2}
!266 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.125, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mfd/ab8500-core.c", i32 646, i32 2}
!269 = !{ptr @ab8500_devs, !270, !"ab8500_devs", i1 false, i1 false}
!270 = !{!"../drivers/mfd/ab8500-core.c", i32 615, i32 30}
!271 = !{ptr @.str.126, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mfd/ab8500-core.c", i32 605, i32 2}
!273 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.128, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/mfd/ab8500-core.c", i32 607, i32 2}
!276 = !{ptr @.str.129, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mfd/ab8500-core.c", i32 609, i32 2}
!279 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.132, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/mfd/ab8500-core.c", i32 611, i32 2}
!282 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @ab8500_bm_devs, !284, !"ab8500_bm_devs", i1 false, i1 false}
!284 = !{!"../drivers/mfd/ab8500-core.c", i32 604, i32 30}
!285 = !{ptr @ab9540_attr_group, !286, !"ab9540_attr_group", i1 false, i1 false}
!286 = !{!"../drivers/mfd/ab8500-core.c", i32 1017, i32 37}
!287 = !{ptr @ab9540_sysfs_entries, !288, !"ab9540_sysfs_entries", i1 false, i1 false}
!288 = !{!"../drivers/mfd/ab8500-core.c", i32 1001, i32 26}
!289 = !{ptr @.str.134, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mfd/ab8500-core.c", i32 983, i32 8}
!291 = !{ptr @dev_attr_chip_id, !290, !"dev_attr_chip_id", i1 false, i1 false}
!292 = !{ptr @.str.135, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/mfd/ab8500-core.c", i32 837, i32 22}
!294 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/mfd/ab8500-core.c", i32 984, i32 8}
!296 = !{ptr @dev_attr_switch_off_status, !295, !"dev_attr_switch_off_status", i1 false, i1 false}
!297 = !{ptr @.str.137, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mfd/ab8500-core.c", i32 985, i32 8}
!299 = !{ptr @dev_attr_turn_on_status, !298, !"dev_attr_turn_on_status", i1 false, i1 false}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/mfd/ab8500-core.c", i32 987, i32 8}
!302 = !{ptr @dev_attr_dbbrstn, !301, !"dev_attr_dbbrstn", i1 false, i1 false}
!303 = !{ptr @.str.139, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mfd/ab8500-core.c", i32 944, i32 22}
!305 = !{ptr @.str.140, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mfd/ab8500-core.c", i32 974, i32 4}
!307 = !{ptr @.str.141, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @dbbrstn_store._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @dbbrstn_store._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @ab8500_attr_group, !311, !"ab8500_attr_group", i1 false, i1 false}
!311 = !{!"../drivers/mfd/ab8500-core.c", i32 1009, i32 37}
!312 = !{ptr @ab8500_sysfs_entries, !313, !"ab8500_sysfs_entries", i1 false, i1 false}
!313 = !{!"../drivers/mfd/ab8500-core.c", i32 989, i32 26}
!314 = !{ptr @ab8505_attr_group, !315, !"ab8505_attr_group", i1 false, i1 false}
!315 = !{!"../drivers/mfd/ab8500-core.c", i32 1013, i32 37}
!316 = !{ptr @ab8505_sysfs_entries, !317, !"ab8505_sysfs_entries", i1 false, i1 false}
!317 = !{!"../drivers/mfd/ab8500-core.c", i32 996, i32 26}
!318 = !{ptr @.str.142, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/mfd/ab8500-core.c", i32 986, i32 8}
!320 = !{ptr @dev_attr_turn_on_status_2, !319, !"dev_attr_turn_on_status_2", i1 false, i1 false}
!321 = !{ptr @ab8500_id, !322, !"ab8500_id", i1 false, i1 false}
!322 = !{!"../drivers/mfd/ab8500-core.c", i32 1276, i32 40}
!323 = !{i32 1, !"wchar_size", i32 2}
!324 = !{i32 1, !"min_enum_size", i32 4}
!325 = !{i32 8, !"branch-target-enforcement", i32 0}
!326 = !{i32 8, !"sign-return-address", i32 0}
!327 = !{i32 8, !"sign-return-address-all", i32 0}
!328 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!329 = !{i32 7, !"uwtable", i32 1}
!330 = !{i32 7, !"frame-pointer", i32 2}
!331 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!332 = !{!"auto-init"}
!333 = !{i32 0, i32 33}
!334 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!335 = !{i8 0, i8 9}
!336 = !{i64 2148239930, i64 2148239956, i64 2148239985, i64 2148240019, i64 2148240050, i64 2148240073}
!337 = !{i64 2148242395, i64 2148242421, i64 2148242450, i64 2148242484, i64 2148242515, i64 2148242538}
