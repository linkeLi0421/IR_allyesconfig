; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-max77693.c_pt.bc'
source_filename = "../drivers/extcon/extcon-max77693.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.max77693_muic_irq = type { i32, ptr, i32 }
%struct.max77693_reg_data = type { i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max77693_muic_info = type { ptr, ptr, ptr, i32, i32, i32, i32, [2 x i8], i32, %struct.work_struct, %struct.mutex, %struct.delayed_work, ptr, i32, i32 }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.max77693_muic_platform_data = type { ptr, i32, i32, i32, i32 }

@__initcall__kmod_extcon_max77693__289_1268_max77693_muic_driver_init6 = internal global ptr @max77693_muic_driver_init, section ".initcall6.init", align 4
@max77693_muic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77693_muic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77693_muic_driver_exit = internal global ptr @max77693_muic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"extcon_max77693.description=Maxim MAX77693 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"extcon_max77693.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [52 x i8] c"extcon_max77693.file=drivers/extcon/extcon-max77693\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [28 x i8] c"extcon_max77693.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [45 x i8] c"extcon_max77693.alias=platform:max77693-muic\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77693-muic\00", [18 x i8] zeroinitializer }, align 32
@max77693_muic_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"extcon_max77693\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77693_muic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/extcon/extcon-max77693.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allocate register map\0A\00", [41 x i8] zeroinitializer }, align 32
@max77693_muic_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77693_muic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"extcon_max77693:1094:(&max77693_muic_regmap_config)->lock\00", [38 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1098, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr = internal global ptr @max77693_muic_probe._entry, section ".printk_index", align 4
@max77693_muic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1106, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: failed to allocate input\0A\00", [34 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.11 = internal global ptr @max77693_muic_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77693-muic/dock\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max77693-muic/extcon\00", [43 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1124, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot register input device error(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.16 = internal global ptr @max77693_muic_probe._entry.14, section ".printk_index", align 4
@max77693_muic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@muic_irqs = internal global { [16 x %struct.max77693_muic_irq], [32 x i8] } { [16 x %struct.max77693_muic_irq] [%struct.max77693_muic_irq { i32 0, ptr @.str.83, i32 0 }, %struct.max77693_muic_irq { i32 1, ptr @.str.84, i32 0 }, %struct.max77693_muic_irq { i32 2, ptr @.str.85, i32 0 }, %struct.max77693_muic_irq { i32 3, ptr @.str.86, i32 0 }, %struct.max77693_muic_irq { i32 4, ptr @.str.87, i32 0 }, %struct.max77693_muic_irq { i32 5, ptr @.str.88, i32 0 }, %struct.max77693_muic_irq { i32 6, ptr @.str.89, i32 0 }, %struct.max77693_muic_irq { i32 7, ptr @.str.90, i32 0 }, %struct.max77693_muic_irq { i32 8, ptr @.str.91, i32 0 }, %struct.max77693_muic_irq { i32 9, ptr @.str.92, i32 0 }, %struct.max77693_muic_irq { i32 10, ptr @.str.93, i32 0 }, %struct.max77693_muic_irq { i32 11, ptr @.str.94, i32 0 }, %struct.max77693_muic_irq { i32 12, ptr @.str.95, i32 0 }, %struct.max77693_muic_irq { i32 13, ptr @.str.96, i32 0 }, %struct.max77693_muic_irq { i32 14, ptr @.str.97, i32 0 }, %struct.max77693_muic_irq { i32 15, ptr @.str.98, i32 0 }], [32 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1154, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.20 = internal global ptr @max77693_muic_probe._entry.18, section ".printk_index", align 4
@max77693_extcon_cable = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 2, i32 5, i32 6, i32 9, i32 10, i32 7, i32 41, i32 61, i32 60, i32 0], [52 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1163, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.23 = internal global ptr @max77693_muic_probe._entry.21, section ".printk_index", align 4
@max77693_muic_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1169, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.26 = internal global ptr @max77693_muic_probe._entry.24, section ".printk_index", align 4
@default_init_data = internal constant { [5 x %struct.max77693_reg_data], [22 x i8] } { [5 x %struct.max77693_reg_data] [%struct.max77693_reg_data { i8 5, i8 8 }, %struct.max77693_reg_data { i8 7, i8 9 }, %struct.max77693_reg_data { i8 8, i8 1 }, %struct.max77693_reg_data { i8 9, i8 0 }, %struct.max77693_reg_data { i8 11, i8 10 }], [22 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1225, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read MUIC register\0A\00", [34 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.29 = internal global ptr @max77693_muic_probe._entry.27, section ".printk_index", align 4
@max77693_muic_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1238, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read revision number\0A\00", [32 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.32 = internal global ptr @max77693_muic_probe._entry.30, section ".printk_index", align 4
@max77693_muic_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1241, ptr @.str.35, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device ID : 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max77693_muic_probe._entry_ptr.36 = internal global ptr @max77693_muic_probe._entry.33, section ".printk_index", align 4
@max77693_muic_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->wq_detcable)->work)\00", [49 x i8] zeroinitializer }, align 32
@max77693_muic_probe.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->wq_detcable)->timer\00", [35 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@devm_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(work_completion)(w)\00", [43 x i8] zeroinitializer }, align 32
@max77693_muic_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.42, ptr @.str.3, i32 955, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77693_muic_irq_work\00", [41 x i8] zeroinitializer }, align 32
@max77693_muic_irq_work._entry_ptr = internal global ptr @max77693_muic_irq_work._entry, section ".printk_index", align 4
@max77693_muic_irq_work._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 989, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"muic interrupt: irq %d occurred\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_muic_irq_work._entry_ptr.45 = internal global ptr @max77693_muic_irq_work._entry.43, section ".printk_index", align 4
@max77693_muic_irq_work._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 995, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to handle MUIC interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_muic_irq_work._entry_ptr.48 = internal global ptr @max77693_muic_irq_work._entry.46, section ".printk_index", align 4
@max77693_muic_adc_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 668, ptr @.str.35, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"external connector is %s (adc:0x%02x, prev_adc:0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77693_muic_adc_handler\00", [38 x i8] zeroinitializer }, align 32
@max77693_muic_adc_handler._entry_ptr = internal global ptr @max77693_muic_adc_handler._entry, section ".printk_index", align 4
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attached\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detached\00", [23 x i8] zeroinitializer }, align 32
@max77693_muic_adc_handler._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.50, ptr @.str.3, i32 750, ptr @.str.35, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@max77693_muic_adc_handler._entry_ptr.55 = internal global ptr @max77693_muic_adc_handler._entry.53, section ".printk_index", align 4
@max77693_muic_adc_handler._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.3, i32 755, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@max77693_muic_adc_handler._entry_ptr.58 = internal global ptr @max77693_muic_adc_handler._entry.56, section ".printk_index", align 4
@max77693_muic_adc_ground_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 611, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to detect %s cable of gnd type\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max77693_muic_adc_ground_handler\00", [63 x i8] zeroinitializer }, align 32
@max77693_muic_adc_ground_handler._entry_ptr = internal global ptr @max77693_muic_adc_ground_handler._entry, section ".printk_index", align 4
@max77693_muic_jig_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 626, ptr @.str.35, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"external connector is %s (adc:0x%02x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77693_muic_jig_handler\00", [38 x i8] zeroinitializer }, align 32
@max77693_muic_jig_handler._entry_ptr = internal global ptr @max77693_muic_jig_handler._entry, section ".printk_index", align 4
@max77693_muic_jig_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 641, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to detect %s jig cable\0A\00", [33 x i8] zeroinitializer }, align 32
@max77693_muic_jig_handler._entry_ptr.65 = internal global ptr @max77693_muic_jig_handler._entry.63, section ".printk_index", align 4
@max77693_muic_dock_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.66, ptr @.str.3, i32 460, ptr @.str.35, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max77693_muic_dock_handler\00", [37 x i8] zeroinitializer }, align 32
@max77693_muic_dock_handler._entry_ptr = internal global ptr @max77693_muic_dock_handler._entry, section ".printk_index", align 4
@max77693_muic_dock_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 474, ptr @.str.69, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot detect external power supply\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max77693_muic_dock_handler._entry_ptr.70 = internal global ptr @max77693_muic_dock_handler._entry.67, section ".printk_index", align 4
@max77693_muic_dock_handler._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.3, i32 517, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to detect %s dock device\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_muic_dock_handler._entry_ptr.73 = internal global ptr @max77693_muic_dock_handler._entry.71, section ".printk_index", align 4
@max77693_muic_dock_button_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 565, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detect %s key (adc:0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max77693_muic_dock_button_handler\00", [62 x i8] zeroinitializer }, align 32
@max77693_muic_dock_button_handler._entry_ptr = internal global ptr @max77693_muic_dock_button_handler._entry, section ".printk_index", align 4
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@max77693_muic_chg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 777, ptr @.str.35, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77693_muic_chg_handler\00", [38 x i8] zeroinitializer }, align 32
@max77693_muic_chg_handler._entry_ptr = internal global ptr @max77693_muic_chg_handler._entry, section ".printk_index", align 4
@max77693_muic_chg_handler._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 929, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@max77693_muic_chg_handler._entry_ptr.82 = internal global ptr @max77693_muic_chg_handler._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-ADCLOW\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"muic-ADCError\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-ADC1K\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-CHGTYP\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"muic-CHGDETREUN\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-DCDTMR\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-DXOVP\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-VBVOLT\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-VIDRM\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-EOC\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-CGMBC\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-OVP\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"muic-MBCCHG_ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"muic-CHG_ENABLED\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-BAT_DET\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@max77693_muic_get_cable_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 442, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown cable group (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max77693_muic_get_cable_type\00", [35 x i8] zeroinitializer }, align 32
@max77693_muic_get_cable_type._entry_ptr = internal global ptr @max77693_muic_get_cable_type._entry, section ".printk_index", align 4
@max77693_muic_set_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 271, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to update MUIC register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77693_muic_set_path\00", [41 x i8] zeroinitializer }, align 32
@max77693_muic_set_path._entry_ptr = internal global ptr @max77693_muic_set_path._entry, section ".printk_index", align 4
@max77693_muic_set_path._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 285, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@max77693_muic_set_path._entry_ptr.104 = internal global ptr @max77693_muic_set_path._entry.103, section ".printk_index", align 4
@max77693_muic_set_path._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.102, ptr @.str.3, i32 291, ptr @.str.35, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", [46 x i8] zeroinitializer }, align 32
@max77693_muic_set_path._entry_ptr.107 = internal global ptr @max77693_muic_set_path._entry.105, section ".printk_index", align 4
@max77693_muic_set_debounce_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 235, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set ADC debounce time\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"max77693_muic_set_debounce_time\00", [32 x i8] zeroinitializer }, align 32
@max77693_muic_set_debounce_time._entry_ptr = internal global ptr @max77693_muic_set_debounce_time._entry, section ".printk_index", align 4
@max77693_muic_set_debounce_time._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 240, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid ADC debounce time\0A\00", [37 x i8] zeroinitializer }, align 32
@max77693_muic_set_debounce_time._entry_ptr.112 = internal global ptr @max77693_muic_set_debounce_time._entry.110, section ".printk_index", align 4
@max77693_muic_detect_accessory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.113, ptr @.str.3, i32 1028, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max77693_muic_detect_accessory\00", [33 x i8] zeroinitializer }, align 32
@max77693_muic_detect_accessory._entry_ptr = internal global ptr @max77693_muic_detect_accessory._entry, section ".printk_index", align 4
@max77693_muic_detect_accessory._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.3, i32 1038, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot detect accessory\0A\00", [39 x i8] zeroinitializer }, align 32
@max77693_muic_detect_accessory._entry_ptr.116 = internal global ptr @max77693_muic_detect_accessory._entry.114, section ".printk_index", align 4
@max77693_muic_detect_accessory._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.3, i32 1049, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot detect charger accessory\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_muic_detect_accessory._entry_ptr.119 = internal global ptr @max77693_muic_detect_accessory._entry.117, section ".printk_index", align 4
@switch.table.max77693_muic_adc_handler = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09\09\09\09\1B\1B", [26 x i8] zeroinitializer }, align 32
@switch.table.max77693_muic_adc_handler.120 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 165, i32 165, i32 165, i32 165, i32 163, i32 163, i32 163, i32 114, i32 115, i32 164, i32 164, i32 164], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.121 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.122 = internal global [7 x i64] [i64 5, i64 32, i64 256, i64 258, i64 259, i64 260, i64 263]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 26, i64 30]
@__sancov_gen_cov_switch_values.124 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 259, i64 263]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 26]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"max77693_muic_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1261, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1263, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1090, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [28 x i8] c"max77693_muic_regmap_config\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1010, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1092, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1097, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1106, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1109, i32 21 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1110, i32 21 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1123, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1129, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [10 x i8] c"muic_irqs\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 128, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1152, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [22 x i8] c"max77693_extcon_cable\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 197, i32 27 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1163, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1169, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"default_init_data\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 33, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1225, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1238, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1241, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1254, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 75, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 955, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 988, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 995, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 665, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 748, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 753, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 610, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 624, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 640, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 458, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 473, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 516, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 563, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 774, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 927, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 129, i32 33 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 130, i32 36 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 131, i32 36 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 132, i32 35 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 133, i32 35 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 134, i32 39 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 135, i32 35 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 136, i32 35 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 137, i32 35 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 138, i32 35 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 139, i32 33 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 140, i32 35 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 141, i32 33 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 142, i32 39 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 143, i32 40 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 144, i32 36 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 442, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 271, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 285, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 289, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 235, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 240, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1028, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1038, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.483 = private constant [36 x i8] c"../drivers/extcon/extcon-max77693.c\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1049, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant [39 x i8] c"switch.table.max77693_muic_adc_handler\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [43 x i8] c"switch.table.max77693_muic_adc_handler.120\00", align 1
@llvm.compiler.used = appending global [162 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77693_muic_driver_exit, ptr @__initcall__kmod_extcon_max77693__289_1268_max77693_muic_driver_init6, ptr @max77693_muic_adc_ground_handler._entry, ptr @max77693_muic_adc_ground_handler._entry_ptr, ptr @max77693_muic_adc_handler._entry, ptr @max77693_muic_adc_handler._entry.53, ptr @max77693_muic_adc_handler._entry.56, ptr @max77693_muic_adc_handler._entry_ptr, ptr @max77693_muic_adc_handler._entry_ptr.55, ptr @max77693_muic_adc_handler._entry_ptr.58, ptr @max77693_muic_chg_handler._entry, ptr @max77693_muic_chg_handler._entry.80, ptr @max77693_muic_chg_handler._entry_ptr, ptr @max77693_muic_chg_handler._entry_ptr.82, ptr @max77693_muic_detect_accessory._entry, ptr @max77693_muic_detect_accessory._entry.114, ptr @max77693_muic_detect_accessory._entry.117, ptr @max77693_muic_detect_accessory._entry_ptr, ptr @max77693_muic_detect_accessory._entry_ptr.116, ptr @max77693_muic_detect_accessory._entry_ptr.119, ptr @max77693_muic_dock_button_handler._entry, ptr @max77693_muic_dock_button_handler._entry_ptr, ptr @max77693_muic_dock_handler._entry, ptr @max77693_muic_dock_handler._entry.67, ptr @max77693_muic_dock_handler._entry.71, ptr @max77693_muic_dock_handler._entry_ptr, ptr @max77693_muic_dock_handler._entry_ptr.70, ptr @max77693_muic_dock_handler._entry_ptr.73, ptr @max77693_muic_driver_exit, ptr @max77693_muic_get_cable_type._entry, ptr @max77693_muic_get_cable_type._entry_ptr, ptr @max77693_muic_irq_work._entry, ptr @max77693_muic_irq_work._entry.43, ptr @max77693_muic_irq_work._entry.46, ptr @max77693_muic_irq_work._entry_ptr, ptr @max77693_muic_irq_work._entry_ptr.45, ptr @max77693_muic_irq_work._entry_ptr.48, ptr @max77693_muic_jig_handler._entry, ptr @max77693_muic_jig_handler._entry.63, ptr @max77693_muic_jig_handler._entry_ptr, ptr @max77693_muic_jig_handler._entry_ptr.65, ptr @max77693_muic_probe._entry, ptr @max77693_muic_probe._entry.14, ptr @max77693_muic_probe._entry.18, ptr @max77693_muic_probe._entry.21, ptr @max77693_muic_probe._entry.24, ptr @max77693_muic_probe._entry.27, ptr @max77693_muic_probe._entry.30, ptr @max77693_muic_probe._entry.33, ptr @max77693_muic_probe._entry.9, ptr @max77693_muic_probe._entry_ptr, ptr @max77693_muic_probe._entry_ptr.11, ptr @max77693_muic_probe._entry_ptr.16, ptr @max77693_muic_probe._entry_ptr.20, ptr @max77693_muic_probe._entry_ptr.23, ptr @max77693_muic_probe._entry_ptr.26, ptr @max77693_muic_probe._entry_ptr.29, ptr @max77693_muic_probe._entry_ptr.32, ptr @max77693_muic_probe._entry_ptr.36, ptr @max77693_muic_set_debounce_time._entry, ptr @max77693_muic_set_debounce_time._entry.110, ptr @max77693_muic_set_debounce_time._entry_ptr, ptr @max77693_muic_set_debounce_time._entry_ptr.112, ptr @max77693_muic_set_path._entry, ptr @max77693_muic_set_path._entry.103, ptr @max77693_muic_set_path._entry.105, ptr @max77693_muic_set_path._entry_ptr, ptr @max77693_muic_set_path._entry_ptr.104, ptr @max77693_muic_set_path._entry_ptr.107, ptr @max77693_muic_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @max77693_muic_probe._key, ptr @max77693_muic_regmap_config, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @max77693_muic_probe.__key, ptr @.str.17, ptr @muic_irqs, ptr @.str.19, ptr @max77693_extcon_cable, ptr @.str.22, ptr @.str.25, ptr @default_init_data, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @max77693_muic_probe.__key.37, ptr @.str.38, ptr @max77693_muic_probe.__key.39, ptr @.str.40, ptr @devm_work_autocancel.__key, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @switch.table.max77693_muic_adc_handler, ptr @switch.table.max77693_muic_adc_handler.120], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @muic_irqs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_extcon_cable to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_init_data to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_probe.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_irq_work._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_irq_work._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_adc_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_adc_handler._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_adc_handler._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_adc_ground_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_jig_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_jig_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_dock_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_dock_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_dock_handler._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_dock_button_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_chg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_chg_handler._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_get_cable_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_set_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_set_path._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_set_path._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_set_debounce_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_set_debounce_time._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_detect_accessory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_detect_accessory._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_detect_accessory._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77693_muic_adc_handler to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77693_muic_adc_handler.120 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_muic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_muic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77693_muic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_muic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_muic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %id = alloca i32, align 4
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %id, align 4, !annotation !236
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup229_crit_edge, label %if.end

entry.cleanup229_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup229

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call.i, align 4
  %max776937 = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %max776937 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %max776937, align 4
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap_muic, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_muic_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77693_muic_probe, %if.then15)) #6
          to label %if.end35 [label %if.then15], !srcloc !237

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_muic_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %if.end35

if.else:                                          ; preds = %if.end
  %i2c_muic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_muic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_muic, align 4
  %call20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %14, ptr noundef nonnull @max77693_muic_regmap_config, ptr noundef nonnull @max77693_muic_probe._key, ptr noundef nonnull @.str.5) #6
  %15 = ptrtoint ptr %max776937 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %max776937, align 4
  %regmap_muic22 = getelementptr inbounds %struct.max77693_dev, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %regmap_muic22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %regmap_muic22, align 4
  %18 = load ptr, ptr %max776937, align 4
  %regmap_muic24 = getelementptr inbounds %struct.max77693_dev, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %regmap_muic24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap_muic24, align 4
  %cmp.i360 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i360, label %if.then26, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.6, i32 noundef %21) #9
  br label %cleanup229

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.then15, %do.body
  %call37 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %dock = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 12
  %24 = ptrtoint ptr %dock to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call37, ptr %dock, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #9
  br label %cleanup229

if.end45:                                         ; preds = %if.end35
  %25 = ptrtoint ptr %call37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.12, ptr %call37, align 8
  %26 = ptrtoint ptr %dock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dock, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.13, ptr %phys, align 4
  %29 = load ptr, ptr %dock, align 4
  %parent51 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 40, i32 1
  %30 = ptrtoint ptr %parent51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %parent51, align 8
  %31 = load ptr, ptr %dock, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %evbit, align 4
  %or.i = or i32 %33, 1048576
  store i32 %or.i, ptr %evbit, align 4
  %34 = load ptr, ptr %dock, align 4
  tail call void @input_set_capability(ptr noundef %34, i32 noundef 1, i32 noundef 115) #6
  %35 = ptrtoint ptr %dock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dock, align 4
  tail call void @input_set_capability(ptr noundef %36, i32 noundef 1, i32 noundef 114) #6
  %37 = ptrtoint ptr %dock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dock, align 4
  tail call void @input_set_capability(ptr noundef %38, i32 noundef 1, i32 noundef 164) #6
  %39 = ptrtoint ptr %dock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dock, align 4
  tail call void @input_set_capability(ptr noundef %40, i32 noundef 1, i32 noundef 165) #6
  %41 = ptrtoint ptr %dock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dock, align 4
  tail call void @input_set_capability(ptr noundef %42, i32 noundef 1, i32 noundef 163) #6
  %43 = ptrtoint ptr %dock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dock, align 4
  %call59 = tail call i32 @input_register_device(ptr noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp = icmp slt i32 %call59, 0
  br i1 %cmp, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call59) #9
  br label %cleanup229

if.end65:                                         ; preds = %if.end45
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @max77693_muic_probe.__key) #6
  %irq_work = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #6
  %46 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map.i = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @devm_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry1.i = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry1.i, ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry1.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 9, i32 2
  %49 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @max77693_muic_irq_work, ptr %func.i, align 4
  %call.i361 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_work_drop, ptr noundef %irq_work) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i361)
  %tobool71.not = icmp eq i32 %call.i361, 0
  br i1 %tobool71.not, label %for.cond.preheader, label %if.end65.cleanup229_crit_edge

if.end65.cleanup229_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup229

for.cond.preheader:                               ; preds = %if.end65
  %irq_data_muic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 13
  br label %for.body

for.cond:                                         ; preds = %if.end78
  %inc = add nuw nsw i32 %i.0377, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0377 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 %i.0377
  %50 = ptrtoint ptr %irq_data_muic to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irq_data_muic, align 4
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %call75 = tail call i32 @regmap_irq_get_virq(ptr noundef %51, i32 noundef %53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 1
  br i1 %cmp76, label %for.body.cleanup229_crit_edge, label %if.end78

for.body.cleanup229_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup229

if.end78:                                         ; preds = %for.body
  %virq79 = getelementptr [16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 %i.0377, i32 2
  %54 = ptrtoint ptr %virq79 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call75, ptr %virq79, align 4
  %name81 = getelementptr [16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 %i.0377, i32 1
  %55 = ptrtoint ptr %name81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name81, align 4
  %call82 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call75, ptr noundef null, ptr noundef nonnull @max77693_muic_irq_handler, i32 noundef 16384, ptr noundef %56, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %for.cond, label %do.end87

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %58, i32 noundef %call82) #9
  br label %cleanup229

for.end:                                          ; preds = %for.cond
  %call93 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @max77693_extcon_cable) #6
  %edev = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 2
  %59 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call93, ptr %edev, align 4
  %cmp.i362 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i362, label %do.end99, label %if.end103

do.end99:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  %60 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edev, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %cleanup229

if.end103:                                        ; preds = %for.end
  %call106 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %cleanup229

if.end113:                                        ; preds = %if.end103
  %tobool114.not = icmp eq ptr %7, null
  br i1 %tobool114.not, label %if.end113.for.body125.preheader_crit_edge, label %land.lhs.true

if.end113.for.body125.preheader_crit_edge:        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body125.preheader

land.lhs.true:                                    ; preds = %if.end113
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %7, align 4
  %tobool115.not = icmp eq ptr %64, null
  br i1 %tobool115.not, label %land.lhs.true.for.body125.preheader_crit_edge, label %if.end122

land.lhs.true.for.body125.preheader_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body125.preheader

if.end122:                                        ; preds = %land.lhs.true
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %num_init_data120 = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %num_init_data120 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_init_data120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp124378 = icmp sgt i32 %68, 0
  br i1 %cmp124378, label %if.end122.for.body125.preheader_crit_edge, label %if.end122.land.lhs.true136_crit_edge

if.end122.land.lhs.true136_crit_edge:             ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true136

if.end122.for.body125.preheader_crit_edge:        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body125.preheader

for.body125.preheader:                            ; preds = %if.end122.for.body125.preheader_crit_edge, %land.lhs.true.for.body125.preheader_crit_edge, %if.end113.for.body125.preheader_crit_edge
  %num_init_data.0389 = phi i32 [ %68, %if.end122.for.body125.preheader_crit_edge ], [ 5, %land.lhs.true.for.body125.preheader_crit_edge ], [ 5, %if.end113.for.body125.preheader_crit_edge ]
  %init_data.0388 = phi ptr [ %66, %if.end122.for.body125.preheader_crit_edge ], [ @default_init_data, %land.lhs.true.for.body125.preheader_crit_edge ], [ @default_init_data, %if.end113.for.body125.preheader_crit_edge ]
  br label %for.body125

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %for.body125.preheader
  %i.1379 = phi i32 [ %inc133, %for.body125.for.body125_crit_edge ], [ 0, %for.body125.preheader ]
  %69 = ptrtoint ptr %max776937 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %max776937, align 4
  %regmap_muic127 = getelementptr inbounds %struct.max77693_dev, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %regmap_muic127 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap_muic127, align 4
  %arrayidx128 = getelementptr %struct.max77693_reg_data, ptr %init_data.0388, i32 %i.1379
  %73 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx128, align 1
  %conv = zext i8 %74 to i32
  %data = getelementptr %struct.max77693_reg_data, ptr %init_data.0388, i32 %i.1379, i32 1
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %data, align 1
  %conv130 = zext i8 %76 to i32
  %call131 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef %conv, i32 noundef %conv130) #6
  %inc133 = add nuw nsw i32 %i.1379, 1
  %exitcond383.not = icmp eq i32 %inc133, %num_init_data.0389
  br i1 %exitcond383.not, label %for.end134, label %for.body125.for.body125_crit_edge

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body125

for.end134:                                       ; preds = %for.body125
  br i1 %tobool114.not, label %for.end134.if.else162_crit_edge, label %for.end134.land.lhs.true136_crit_edge

for.end134.land.lhs.true136_crit_edge:            ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true136

for.end134.if.else162_crit_edge:                  ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162

land.lhs.true136:                                 ; preds = %for.end134.land.lhs.true136_crit_edge, %if.end122.land.lhs.true136_crit_edge
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %7, align 4
  %tobool138.not = icmp eq ptr %78, null
  br i1 %tobool138.not, label %land.lhs.true136.if.else162_crit_edge, label %if.then139

land.lhs.true136.if.else162_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162

if.then139:                                       ; preds = %land.lhs.true136
  %path_uart = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %path_uart to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %path_uart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool141.not = icmp eq i32 %80, 0
  %spec.select = select i1 %tobool141.not, i32 27, i32 %80
  %81 = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 14
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %spec.select, ptr %81, align 4
  %path_usb = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %78, i32 0, i32 3
  %83 = ptrtoint ptr %path_usb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %path_usb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool148.not = icmp eq i32 %84, 0
  %.sink384 = select i1 %tobool148.not, i32 9, i32 %84
  %85 = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 13
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %.sink384, ptr %85, align 4
  %detcable_delay_ms = getelementptr inbounds %struct.max77693_muic_platform_data, ptr %78, i32 0, i32 2
  %87 = ptrtoint ptr %detcable_delay_ms to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %detcable_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool155.not = icmp eq i32 %88, 0
  br i1 %tobool155.not, label %if.then139.if.end166_crit_edge, label %if.else.i

if.then139.if.end166_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

if.else.i:                                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %88) #6
  br label %if.end166

if.else162:                                       ; preds = %land.lhs.true136.if.else162_crit_edge, %for.end134.if.else162_crit_edge
  %path_usb163 = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 13
  %89 = ptrtoint ptr %path_usb163 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 9, ptr %path_usb163, align 4
  %path_uart164 = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 14
  %90 = ptrtoint ptr %path_uart164 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 27, ptr %path_uart164, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else162, %if.else.i, %if.then139.if.end166_crit_edge
  %delay_jiffies.1 = phi i32 [ 2000, %if.else162 ], [ %call2.i, %if.else.i ], [ 2000, %if.then139.if.end166_crit_edge ]
  %91 = ptrtoint ptr %max776937 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %max776937, align 4
  %regmap_muic168 = getelementptr inbounds %struct.max77693_dev, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %regmap_muic168 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap_muic168, align 4
  %status = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 7
  %call170 = tail call i32 @regmap_bulk_read(ptr noundef %94, i32 noundef 4, ptr noundef %status, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end177, label %do.end175

do.end175:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.28) #9
  br label %cleanup229

if.end177:                                        ; preds = %if.end166
  %97 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %status, align 4
  %99 = and i8 %98, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %99)
  %cmp.i363 = icmp eq i8 %99, 31
  br i1 %cmp.i363, label %max77693_muic_get_cable_type.exit.thread, label %max77693_muic_get_cable_type.exit

max77693_muic_get_cable_type.exit.thread:         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  %prev_cable_type.i = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 3
  %100 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %if.end190

max77693_muic_get_cable_type.exit:                ; preds = %if.end177
  %and.i = zext i8 %99 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 3
  %101 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  %102 = and i32 %and.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %102)
  %switch = icmp eq i32 %102, 28
  br i1 %switch, label %if.then186, label %max77693_muic_get_cable_type.exit.if.end190_crit_edge

max77693_muic_get_cable_type.exit.if.end190_crit_edge: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then186:                                       ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %path_uart187 = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 14
  %103 = ptrtoint ptr %path_uart187 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %path_uart187, align 4
  %conv188 = trunc i32 %104 to i8
  %call189 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef nonnull %call.i, i8 noundef zeroext %conv188, i1 noundef zeroext true)
  br label %if.end190

if.end190:                                        ; preds = %if.then186, %max77693_muic_get_cable_type.exit.if.end190_crit_edge, %max77693_muic_get_cable_type.exit.thread
  %105 = ptrtoint ptr %max776937 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %max776937, align 4
  %regmap_muic192 = getelementptr inbounds %struct.max77693_dev, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %regmap_muic192 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap_muic192, align 4
  %call193 = call i32 @regmap_read(ptr noundef %108, i32 noundef 0, ptr noundef nonnull %id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp slt i32 %call193, 0
  br i1 %cmp194, label %do.end199, label %do.end204

do.end199:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  br label %cleanup229

do.end204:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 4
  %111 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.34, i32 noundef %112) #9
  call fastcc void @max77693_muic_set_debounce_time(ptr noundef nonnull %call.i)
  %wq_detcable = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 11
  call void @__init_work(ptr noundef %wq_detcable, i32 noundef 0) #6
  %113 = ptrtoint ptr %wq_detcable to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -64, ptr %wq_detcable, align 4
  %lockdep_map = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @max77693_muic_probe.__key.37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry216 = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %114 = ptrtoint ptr %entry216 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %entry216, ptr %entry216, align 4
  %prev.i = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %entry216, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %116 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @max77693_muic_detect_cable_wq, ptr %func, align 4
  %timer = getelementptr inbounds %struct.max77693_muic_info, ptr %call.i, i32 0, i32 11, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.40, ptr noundef nonnull @max77693_muic_probe.__key.39) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %117 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i366 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %117, ptr noundef %wq_detcable, i32 noundef %delay_jiffies.1) #6
  br label %cleanup229

cleanup229:                                       ; preds = %do.end204, %do.end199, %do.end175, %do.end111, %do.end99, %do.end87, %for.body.cleanup229_crit_edge, %if.end65.cleanup229_crit_edge, %do.end63, %do.end43, %if.then26, %entry.cleanup229_crit_edge
  %retval.2 = phi i32 [ %call59, %do.end63 ], [ %62, %do.end99 ], [ %call106, %do.end111 ], [ %call170, %do.end175 ], [ %call193, %do.end199 ], [ %call193, %do.end204 ], [ -12, %do.end43 ], [ %21, %if.then26 ], [ -12, %entry.cleanup229_crit_edge ], [ %call.i361, %if.end65.cleanup229_crit_edge ], [ %call82, %do.end87 ], [ -22, %for.body.cleanup229_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77693_muic_irq_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %edev = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %irq = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %4 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = load i32, ptr @muic_irqs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.end.for.inc_crit_edge
  %irq_type.1 = phi i32 [ %5, %if.then2 ], [ -1, %if.end.for.inc_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp1.1 = icmp eq i32 %3, %6
  br i1 %cmp1.1, label %if.then2.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %7 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %irq_type.1.1 = phi i32 [ %7, %if.then2.1 ], [ %irq_type.1, %for.inc.for.inc.1_crit_edge ]
  %8 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %8)
  %cmp1.2 = icmp eq i32 %3, %8
  br i1 %cmp1.2, label %if.then2.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %9 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %irq_type.1.2 = phi i32 [ %9, %if.then2.2 ], [ %irq_type.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %10)
  %cmp1.3 = icmp eq i32 %3, %10
  br i1 %cmp1.3, label %if.then2.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %irq_type.1.3 = phi i32 [ %11, %if.then2.3 ], [ %irq_type.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp1.4 = icmp eq i32 %3, %12
  br i1 %cmp1.4, label %if.then2.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 4), align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then2.4, %for.inc.3.for.inc.4_crit_edge
  %irq_type.1.4 = phi i32 [ %13, %if.then2.4 ], [ %irq_type.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %14)
  %cmp1.5 = icmp eq i32 %3, %14
  br i1 %cmp1.5, label %if.then2.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %15 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 5), align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then2.5, %for.inc.4.for.inc.5_crit_edge
  %irq_type.1.5 = phi i32 [ %15, %if.then2.5 ], [ %irq_type.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %16)
  %cmp1.6 = icmp eq i32 %3, %16
  br i1 %cmp1.6, label %if.then2.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then2.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 6), align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then2.6, %for.inc.5.for.inc.6_crit_edge
  %irq_type.1.6 = phi i32 [ %17, %if.then2.6 ], [ %irq_type.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %18)
  %cmp1.7 = icmp eq i32 %3, %18
  br i1 %cmp1.7, label %if.then2.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then2.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 7), align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then2.7, %for.inc.6.for.inc.7_crit_edge
  %irq_type.1.7 = phi i32 [ %19, %if.then2.7 ], [ %irq_type.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %20)
  %cmp1.8 = icmp eq i32 %3, %20
  br i1 %cmp1.8, label %if.then2.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8

if.then2.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 8), align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then2.8, %for.inc.7.for.inc.8_crit_edge
  %irq_type.1.8 = phi i32 [ %21, %if.then2.8 ], [ %irq_type.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %22)
  %cmp1.9 = icmp eq i32 %3, %22
  br i1 %cmp1.9, label %if.then2.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9

if.then2.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 9), align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then2.9, %for.inc.8.for.inc.9_crit_edge
  %irq_type.1.9 = phi i32 [ %23, %if.then2.9 ], [ %irq_type.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 10, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %24)
  %cmp1.10 = icmp eq i32 %3, %24
  br i1 %cmp1.10, label %if.then2.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.10

if.then2.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  %25 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 10), align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then2.10, %for.inc.9.for.inc.10_crit_edge
  %irq_type.1.10 = phi i32 [ %25, %if.then2.10 ], [ %irq_type.1.9, %for.inc.9.for.inc.10_crit_edge ]
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 11, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %26)
  %cmp1.11 = icmp eq i32 %3, %26
  br i1 %cmp1.11, label %if.then2.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.11

if.then2.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  %27 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 11), align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then2.11, %for.inc.10.for.inc.11_crit_edge
  %irq_type.1.11 = phi i32 [ %27, %if.then2.11 ], [ %irq_type.1.10, %for.inc.10.for.inc.11_crit_edge ]
  %28 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 12, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %28)
  %cmp1.12 = icmp eq i32 %3, %28
  br i1 %cmp1.12, label %if.then2.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.12

if.then2.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  %29 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 12), align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then2.12, %for.inc.11.for.inc.12_crit_edge
  %irq_type.1.12 = phi i32 [ %29, %if.then2.12 ], [ %irq_type.1.11, %for.inc.11.for.inc.12_crit_edge ]
  %30 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 13, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %30)
  %cmp1.13 = icmp eq i32 %3, %30
  br i1 %cmp1.13, label %if.then2.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.13

if.then2.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  %31 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 13), align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then2.13, %for.inc.12.for.inc.13_crit_edge
  %irq_type.1.13 = phi i32 [ %31, %if.then2.13 ], [ %irq_type.1.12, %for.inc.12.for.inc.13_crit_edge ]
  %32 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 14, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %32)
  %cmp1.14 = icmp eq i32 %3, %32
  br i1 %cmp1.14, label %if.then2.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.14

if.then2.14:                                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #8
  %33 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 14), align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then2.14, %for.inc.13.for.inc.14_crit_edge
  %irq_type.1.14 = phi i32 [ %33, %if.then2.14 ], [ %irq_type.1.13, %for.inc.13.for.inc.14_crit_edge ]
  %34 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 15, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %34)
  %cmp1.15 = icmp eq i32 %3, %34
  br i1 %cmp1.15, label %if.then2.15, label %for.inc.14.for.inc.15_crit_edge

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.15

if.then2.15:                                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #8
  %35 = load i32, ptr getelementptr inbounds ([16 x %struct.max77693_muic_irq], ptr @muic_irqs, i32 0, i32 15), align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then2.15, %for.inc.14.for.inc.15_crit_edge
  %irq_type.1.15 = phi i32 [ %35, %if.then2.15 ], [ %irq_type.1.14, %for.inc.14.for.inc.15_crit_edge ]
  %max77693 = getelementptr i8, ptr %work, i32 -32
  %36 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %max77693, align 4
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap_muic, align 4
  %status = getelementptr i8, ptr %work, i32 -8
  %call = tail call i32 @regmap_bulk_read(ptr noundef %39, i32 noundef 4, ptr noundef %status, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.28) #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %for.inc.15
  %42 = zext i32 %irq_type.1.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_type.1.15, label %do.end16 [
    i32 0, label %if.end9.sw.bb_crit_edge
    i32 1, label %if.end9.sw.bb_crit_edge52
    i32 2, label %if.end9.sw.bb_crit_edge53
    i32 3, label %if.end9.sw.bb_crit_edge54
    i32 4, label %if.end9.sw.bb11_crit_edge
    i32 5, label %if.end9.sw.bb11_crit_edge55
    i32 6, label %if.end9.sw.bb11_crit_edge56
    i32 7, label %if.end9.sw.bb11_crit_edge57
    i32 8, label %if.end9.sw.bb11_crit_edge58
    i32 9, label %if.end9.sw.bb11_crit_edge59
    i32 10, label %if.end9.cleanup.sink.split_crit_edge
    i32 11, label %if.end9.cleanup.sink.split_crit_edge60
    i32 12, label %if.end9.cleanup.sink.split_crit_edge61
    i32 13, label %if.end9.cleanup.sink.split_crit_edge62
    i32 14, label %if.end9.cleanup.sink.split_crit_edge63
    i32 15, label %if.end9.cleanup.sink.split_crit_edge64
  ]

if.end9.cleanup.sink.split_crit_edge64:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9.cleanup.sink.split_crit_edge63:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9.cleanup.sink.split_crit_edge62:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9.cleanup.sink.split_crit_edge61:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9.cleanup.sink.split_crit_edge60:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9.sw.bb11_crit_edge59:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end9.sw.bb11_crit_edge58:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end9.sw.bb11_crit_edge57:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end9.sw.bb11_crit_edge56:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end9.sw.bb11_crit_edge55:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end9.sw.bb11_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end9.sw.bb_crit_edge54:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end9.sw.bb_crit_edge53:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end9.sw.bb_crit_edge52:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge52, %if.end9.sw.bb_crit_edge53, %if.end9.sw.bb_crit_edge54
  %call10 = tail call fastcc i32 @max77693_muic_adc_handler(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9.sw.bb11_crit_edge, %if.end9.sw.bb11_crit_edge55, %if.end9.sw.bb11_crit_edge56, %if.end9.sw.bb11_crit_edge57, %if.end9.sw.bb11_crit_edge58, %if.end9.sw.bb11_crit_edge59
  %call12 = tail call fastcc i32 @max77693_muic_chg_handler(ptr noundef %add.ptr)
  br label %sw.epilog

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.44, i32 noundef %irq_type.1.15) #9
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  %ret.0 = phi i32 [ %call12, %sw.bb11 ], [ %call10, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp19 = icmp slt i32 %ret.0, 0
  br i1 %cmp19, label %do.end23, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.47) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end23, %sw.epilog.cleanup.sink.split_crit_edge, %do.end16, %if.end9.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge60, %if.end9.cleanup.sink.split_crit_edge61, %if.end9.cleanup.sink.split_crit_edge62, %if.end9.cleanup.sink.split_crit_edge63, %if.end9.cleanup.sink.split_crit_edge64, %do.end
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_muic_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.max77693_muic_info, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %irq, ptr %irq1, align 4
  %irq_work = getelementptr inbounds %struct.max77693_muic_info, ptr %data, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %irq_work) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_muic_set_path(ptr nocapture noundef readonly %info, i8 noundef zeroext %val, i1 noundef zeroext %attached) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %val to i32
  %ctrl1.0 = select i1 %attached, i32 %conv, i32 0
  %max77693 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max77693, align 4
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_muic, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 63, i32 noundef %ctrl1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.101) #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %. = select i1 %attached, i32 4, i32 1
  %6 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %max77693, align 4
  %regmap_muic10 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %regmap_muic10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_muic10, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13, i32 noundef 5, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp12 = icmp slt i32 %call.i41, 0
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  br i1 %cmp12, label %do.end17, label %do.end22

do.end17:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.101) #9
  br label %cleanup

do.end22:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %attached, ptr @.str.51, ptr @.str.52
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.106, i32 noundef %ctrl1.0, i32 noundef %., ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end17, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i41, %do.end17 ], [ 0, %do.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max77693_muic_set_debounce_time(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max77693 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %max77693 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max77693, align 4
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_muic, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 14, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.108) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77693_muic_detect_cable_wq(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  %mutex.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %max77693.i = getelementptr i8, ptr %work, i32 -168
  %0 = ptrtoint ptr %max77693.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max77693.i, align 4
  %regmap_muic.i = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap_muic.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_muic.i, align 4
  %status.i = getelementptr i8, ptr %work, i32 -144
  %call.i = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 4, ptr noundef %status.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28) #9
  br label %max77693_muic_detect_accessory.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status.i, align 4
  %8 = and i8 %7, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 31
  br i1 %cmp.i.i, label %max77693_muic_get_cable_type.exit.thread.i, label %max77693_muic_get_cable_type.exit.i

max77693_muic_get_cable_type.exit.thread.i:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev_cable_type.i.i = getelementptr i8, ptr %work, i32 -160
  %9 = ptrtoint ptr %prev_cable_type.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 31, ptr %prev_cable_type.i.i, align 4
  br label %if.end14.i

max77693_muic_get_cable_type.exit.i:              ; preds = %if.end.i
  %and.i.i = zext i8 %8 to i32
  %prev_cable_type3.i.i = getelementptr i8, ptr %work, i32 -160
  %10 = ptrtoint ptr %prev_cable_type3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i.i, ptr %prev_cable_type3.i.i, align 4
  %call5.i = tail call fastcc i32 @max77693_muic_adc_handler(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %max77693_muic_get_cable_type.exit.i.if.end14.i_crit_edge

max77693_muic_get_cable_type.exit.i.if.end14.i_crit_edge: ; preds = %max77693_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

do.end10.i:                                       ; preds = %max77693_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.115) #9
  br label %max77693_muic_detect_accessory.exit

if.end14.i:                                       ; preds = %max77693_muic_get_cable_type.exit.i.if.end14.i_crit_edge, %max77693_muic_get_cable_type.exit.thread.i
  %arrayidx38.i.i = getelementptr i8, ptr %work, i32 -143
  %13 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx38.i.i, align 1
  %15 = and i8 %14, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp42.i.i = icmp eq i8 %15, 0
  br i1 %cmp42.i.i, label %max77693_muic_get_cable_type.exit3.thread.i, label %max77693_muic_get_cable_type.exit3.i

max77693_muic_get_cable_type.exit3.thread.i:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev_chg_type.i.i = getelementptr i8, ptr %work, i32 -152
  %16 = ptrtoint ptr %prev_chg_type.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %prev_chg_type.i.i, align 4
  br label %max77693_muic_detect_accessory.exit

max77693_muic_get_cable_type.exit3.i:             ; preds = %if.end14.i
  %and40.i.i = zext i8 %15 to i32
  %prev_chg_type47.i.i = getelementptr i8, ptr %work, i32 -152
  %17 = ptrtoint ptr %prev_chg_type47.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and40.i.i, ptr %prev_chg_type47.i.i, align 4
  %call20.i = tail call fastcc i32 @max77693_muic_chg_handler(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %do.end25.i, label %max77693_muic_get_cable_type.exit3.i.max77693_muic_detect_accessory.exit_crit_edge

max77693_muic_get_cable_type.exit3.i.max77693_muic_detect_accessory.exit_crit_edge: ; preds = %max77693_muic_get_cable_type.exit3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77693_muic_detect_accessory.exit

do.end25.i:                                       ; preds = %max77693_muic_get_cable_type.exit3.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.118) #9
  br label %max77693_muic_detect_accessory.exit

max77693_muic_detect_accessory.exit:              ; preds = %do.end25.i, %max77693_muic_get_cable_type.exit3.i.max77693_muic_detect_accessory.exit_crit_edge, %max77693_muic_get_cable_type.exit3.thread.i, %do.end10.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_work_drop(ptr noundef %res) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %res) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_muic_adc_handler(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status.i, align 4
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %2)
  %cmp.i = icmp eq i8 %2, 31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev_cable_type.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prev_cable_type.i, align 4
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %max77693_muic_get_cable_type.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = zext i8 %2 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  br label %max77693_muic_get_cable_type.exit

max77693_muic_get_cable_type.exit:                ; preds = %if.else.i, %if.then.i
  %cond = phi ptr [ @.str.52, %if.then.i ], [ @.str.51, %if.else.i ]
  %cable_type.0.i = phi i32 [ %4, %if.then.i ], [ %and.i, %if.else.i ]
  %6 = xor i1 %cmp.i, true
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %prev_cable_type = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %prev_cable_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_cable_type, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i, i32 noundef %10) #9
  %11 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %cable_type.0.i, label %do.end30 [
    i32 0, label %sw.bb
    i32 24, label %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge
    i32 25, label %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge97
    i32 28, label %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge98
    i32 29, label %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge99
    i32 16, label %max77693_muic_get_cable_type.exit.sw.bb5_crit_edge
    i32 30, label %max77693_muic_get_cable_type.exit.sw.bb5_crit_edge100
    i32 26, label %max77693_muic_get_cable_type.exit.sw.bb5_crit_edge101
    i32 4, label %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge
    i32 8, label %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge102
    i32 10, label %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge103
    i32 11, label %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge104
    i32 13, label %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge105
    i32 1, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge
    i32 2, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge106
    i32 3, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge107
    i32 5, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge108
    i32 6, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge109
    i32 7, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge110
    i32 9, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge111
    i32 12, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge112
    i32 14, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge113
    i32 15, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge114
    i32 17, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge115
    i32 18, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge116
    i32 19, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge117
    i32 20, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge118
    i32 21, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge119
    i32 22, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge120
    i32 23, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge121
    i32 27, label %max77693_muic_get_cable_type.exit.do.end24_crit_edge122
  ]

max77693_muic_get_cable_type.exit.do.end24_crit_edge122: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge121: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge120: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge119: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge118: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge117: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge116: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge115: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge114: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge113: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge112: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge111: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge110: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge109: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge108: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge107: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge106: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.do.end24_crit_edge: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

max77693_muic_get_cable_type.exit.sw.bb11_crit_edge105: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

max77693_muic_get_cable_type.exit.sw.bb11_crit_edge104: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

max77693_muic_get_cable_type.exit.sw.bb11_crit_edge103: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

max77693_muic_get_cable_type.exit.sw.bb11_crit_edge102: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

max77693_muic_get_cable_type.exit.sw.bb11_crit_edge: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

max77693_muic_get_cable_type.exit.sw.bb5_crit_edge101: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

max77693_muic_get_cable_type.exit.sw.bb5_crit_edge100: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

max77693_muic_get_cable_type.exit.sw.bb5_crit_edge: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

max77693_muic_get_cable_type.exit.sw.bb2_crit_edge99: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

max77693_muic_get_cable_type.exit.sw.bb2_crit_edge98: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

max77693_muic_get_cable_type.exit.sw.bb2_crit_edge97: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

max77693_muic_get_cable_type.exit.sw.bb2_crit_edge: ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb:                                            ; preds = %max77693_muic_get_cable_type.exit
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status.i, align 4
  %14 = and i8 %13, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %14)
  %cmp10.i.i = icmp eq i8 %14, 31
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else14.i.i

if.then12.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %prev_cable_type_gnd.i.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %prev_cable_type_gnd.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prev_cable_type_gnd.i.i, align 4
  store i32 31, ptr %prev_cable_type_gnd.i.i, align 4
  br label %max77693_muic_get_cable_type.exit.i

if.else14.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and8.i.i = zext i8 %14 to i32
  %conv17.i.i = zext i8 %13 to i32
  %17 = lshr i32 %conv17.i.i, 7
  %arrayidx26.i.i = getelementptr %struct.max77693_muic_info, ptr %info, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx26.i.i, align 1
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 4
  %shl.i.i = zext i8 %21 to i32
  %22 = lshr i32 %conv17.i.i, 4
  %shl30.i.i = and i32 %22, 2
  %or.i.i = or i32 %17, %shl30.i.i
  %or31.i.i = or i32 %or.i.i, %shl.i.i
  %or32.i.i = or i32 %or31.i.i, 256
  %23 = ptrtoint ptr %prev_cable_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and8.i.i, ptr %prev_cable_type, align 4
  %prev_cable_type_gnd34.i.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %prev_cable_type_gnd34.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or32.i.i, ptr %prev_cable_type_gnd34.i.i, align 4
  br label %max77693_muic_get_cable_type.exit.i

max77693_muic_get_cable_type.exit.i:              ; preds = %if.else14.i.i, %if.then12.i.i
  %cable_type.0.i.i = phi i32 [ %16, %if.then12.i.i ], [ %or32.i.i, %if.else14.i.i ]
  %25 = xor i1 %cmp10.i.i, true
  %26 = zext i32 %cable_type.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %cable_type.0.i.i, label %do.end.i [
    i32 256, label %max77693_muic_get_cable_type.exit.i.sw.bb.i_crit_edge
    i32 260, label %max77693_muic_get_cable_type.exit.i.sw.bb.i_crit_edge123
    i32 258, label %sw.bb4.i
    i32 259, label %max77693_muic_get_cable_type.exit.i.sw.bb16.i_crit_edge
    i32 263, label %max77693_muic_get_cable_type.exit.i.sw.bb16.i_crit_edge124
  ]

max77693_muic_get_cable_type.exit.i.sw.bb16.i_crit_edge124: ; preds = %max77693_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

max77693_muic_get_cable_type.exit.i.sw.bb16.i_crit_edge: ; preds = %max77693_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

max77693_muic_get_cable_type.exit.i.sw.bb.i_crit_edge123: ; preds = %max77693_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

max77693_muic_get_cable_type.exit.i.sw.bb.i_crit_edge: ; preds = %max77693_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %max77693_muic_get_cable_type.exit.i.sw.bb.i_crit_edge, %max77693_muic_get_cable_type.exit.i.sw.bb.i_crit_edge123
  %call1.i = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %info, i8 noundef zeroext 9, i1 noundef zeroext %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i58 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i58, label %sw.bb.i.cleanup_crit_edge, label %if.end.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %edev.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %27 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edev.i, align 4
  %call3.i = tail call i32 @extcon_set_state_sync(ptr noundef %28, i32 noundef 2, i1 noundef zeroext %25) #6
  br label %cleanup

sw.bb4.i:                                         ; preds = %max77693_muic_get_cable_type.exit.i
  %call6.i = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %info, i8 noundef zeroext 18, i1 noundef zeroext %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %sw.bb4.i.cleanup_crit_edge, label %if.end9.i

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %edev10.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %29 = ptrtoint ptr %edev10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edev10.i, align 4
  %call12.i = tail call i32 @extcon_set_state_sync(ptr noundef %30, i32 noundef 1, i1 noundef zeroext %25) #6
  %31 = ptrtoint ptr %edev10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edev10.i, align 4
  %call15.i = tail call i32 @extcon_set_state_sync(ptr noundef %32, i32 noundef 5, i1 noundef zeroext %25) #6
  br label %cleanup

sw.bb16.i:                                        ; preds = %max77693_muic_get_cable_type.exit.i.sw.bb16.i_crit_edge, %max77693_muic_get_cable_type.exit.i.sw.bb16.i_crit_edge124
  %edev17.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %33 = ptrtoint ptr %edev17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edev17.i, align 4
  %call19.i = tail call i32 @extcon_set_state_sync(ptr noundef %34, i32 noundef 41, i1 noundef zeroext %25) #6
  br label %cleanup

do.end.i:                                         ; preds = %max77693_muic_get_cable_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 4
  %cond.i = select i1 %cmp10.i.i, ptr @.str.52, ptr @.str.51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge, %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge97, %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge98, %max77693_muic_get_cable_type.exit.sw.bb2_crit_edge99
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i) #9
  %switch.tableidx = add i32 %cable_type.0.i, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %39 = icmp ult i32 %switch.tableidx, 6
  br i1 %39, label %switch.hole_check, label %sw.bb2.do.end4.i_crit_edge

sw.bb2.do.end4.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %switch.hole_check.do.end4.i_crit_edge, %sw.bb2.do.end4.i_crit_edge
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond) #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb2
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %42 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.lobit.not = icmp eq i8 %42, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end4.i_crit_edge, label %switch.lookup

switch.hole_check.do.end4.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.max77693_muic_adc_handler, i32 0, i32 %switch.tableidx
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %43)
  %switch.load = load i8, ptr %switch.gep, align 1
  %call.i = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %info, i8 noundef zeroext %switch.load, i1 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i60 = icmp slt i32 %call.i, 0
  br i1 %cmp.i60, label %switch.lookup.cleanup_crit_edge, label %max77693_muic_jig_handler.exit

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

max77693_muic_jig_handler.exit:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %edev.i61 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %44 = ptrtoint ptr %edev.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %edev.i61, align 4
  %call10.i = tail call i32 @extcon_set_state_sync(ptr noundef %45, i32 noundef 61, i1 noundef zeroext %6) #6
  br label %cleanup

sw.bb5:                                           ; preds = %max77693_muic_get_cable_type.exit.sw.bb5_crit_edge, %max77693_muic_get_cable_type.exit.sw.bb5_crit_edge100, %max77693_muic_get_cable_type.exit.sw.bb5_crit_edge101
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i) #9
  %48 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %cable_type.0.i, label %do.end28.i [
    i32 16, label %sw.bb.i64
    i32 30, label %sw.bb5.sw.epilog.i68_crit_edge
    i32 26, label %sw.bb18.i
  ]

sw.bb5.sw.epilog.i68_crit_edge:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i68

sw.bb.i64:                                        ; preds = %sw.bb5
  %arrayidx56.i.i = getelementptr %struct.max77693_muic_info, ptr %info, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx56.i.i, align 1
  %51 = and i8 %50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool2.not.i = icmp eq i8 %51, 0
  %or.cond.i = select i1 %6, i1 %tobool2.not.i, i1 false
  br i1 %or.cond.i, label %do.end5.i, label %if.end.i66

do.end5.i:                                        ; preds = %sw.bb.i64
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.68) #9
  br label %cleanup

if.end.i66:                                       ; preds = %sw.bb.i64
  %path_usb.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 13
  %54 = ptrtoint ptr %path_usb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %path_usb.i, align 4
  %conv.i = trunc i32 %55 to i8
  %call8.i = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv.i, i1 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i65 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i65, label %if.end.i66.cleanup_crit_edge, label %if.end11.i

if.end.i66.cleanup_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  %edev.i67 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %56 = ptrtoint ptr %edev.i67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %edev.i67, align 4
  %call13.i = tail call i32 @extcon_set_state_sync(ptr noundef %57, i32 noundef 60, i1 noundef zeroext %6) #6
  %58 = ptrtoint ptr %edev.i67 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %edev.i67, align 4
  %call16.i = tail call i32 @extcon_set_state_sync(ptr noundef %59, i32 noundef 41, i1 noundef zeroext %6) #6
  br label %cleanup

sw.bb18.i:                                        ; preds = %sw.bb5
  br i1 %cmp.i, label %if.then20.i, label %sw.bb18.i.sw.epilog.i68_crit_edge

sw.bb18.i.sw.epilog.i68_crit_edge:                ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i68

if.then20.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  %edev21.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %60 = ptrtoint ptr %edev21.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edev21.i, align 4
  %call22.i = tail call i32 @extcon_set_state_sync(ptr noundef %61, i32 noundef 1, i1 noundef zeroext false) #6
  %62 = ptrtoint ptr %edev21.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %edev21.i, align 4
  %call24.i = tail call i32 @extcon_set_state_sync(ptr noundef %63, i32 noundef 5, i1 noundef zeroext false) #6
  br label %sw.epilog.i68

do.end28.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond) #9
  br label %cleanup

sw.epilog.i68:                                    ; preds = %if.then20.i, %sw.bb18.i.sw.epilog.i68_crit_edge, %sw.bb5.sw.epilog.i68_crit_edge
  %call34.i = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %info, i8 noundef zeroext 18, i1 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %sw.epilog.i68.cleanup_crit_edge, label %if.end38.i

sw.epilog.i68.cleanup_crit_edge:                  ; preds = %sw.epilog.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.i:                                       ; preds = %sw.epilog.i68
  call void @__sanitizer_cov_trace_pc() #8
  %edev39.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %66 = ptrtoint ptr %edev39.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %edev39.i, align 4
  %call41.i = tail call i32 @extcon_set_state_sync(ptr noundef %67, i32 noundef 60, i1 noundef zeroext %6) #6
  br label %cleanup

sw.bb11:                                          ; preds = %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge, %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge102, %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge103, %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge104, %max77693_muic_get_cable_type.exit.sw.bb11_crit_edge105
  %prev_button_type14 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 6
  br i1 %cmp.i, label %if.else, label %if.then13

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %prev_button_type14 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cable_type.0.i, ptr %prev_button_type14, align 4
  br label %if.end15

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %prev_button_type14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %prev_button_type14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %button_type.0 = phi i32 [ %cable_type.0.i, %if.then13 ], [ %70, %if.else ]
  %dock1.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 12
  %71 = ptrtoint ptr %dock1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dock1.i, align 4
  %switch.tableidx89 = add i32 %button_type.0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx89)
  %73 = icmp ult i32 %switch.tableidx89, 12
  br i1 %73, label %switch.hole_check90, label %if.end15.max77693_muic_dock_button_handler.exit.thread_crit_edge

if.end15.max77693_muic_dock_button_handler.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77693_muic_dock_button_handler.exit.thread

max77693_muic_dock_button_handler.exit.thread:    ; preds = %switch.hole_check90.max77693_muic_dock_button_handler.exit.thread_crit_edge, %if.end15.max77693_muic_dock_button_handler.exit.thread_crit_edge
  %74 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %info, align 4
  %cond.i71 = select i1 %cmp.i, ptr @.str.77, ptr @.str.76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.74, ptr noundef nonnull %cond.i71, i32 noundef %button_type.0) #9
  br label %cleanup

switch.hole_check90:                              ; preds = %if.end15
  %switch.maskindex92 = trunc i32 %switch.tableidx89 to i16
  %switch.shifted93 = lshr i16 4087, %switch.maskindex92
  %76 = and i16 %switch.shifted93, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %switch.lobit94.not = icmp eq i16 %76, 0
  br i1 %switch.lobit94.not, label %switch.hole_check90.max77693_muic_dock_button_handler.exit.thread_crit_edge, label %switch.lookup91

switch.hole_check90.max77693_muic_dock_button_handler.exit.thread_crit_edge: ; preds = %switch.hole_check90
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77693_muic_dock_button_handler.exit.thread

switch.lookup91:                                  ; preds = %switch.hole_check90
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep95 = getelementptr inbounds [12 x i32], ptr @switch.table.max77693_muic_adc_handler.120, i32 0, i32 %switch.tableidx89
  %77 = ptrtoint ptr %switch.gep95 to i32
  call void @__asan_load4_noabort(i32 %77)
  %switch.load96 = load i32, ptr %switch.gep95, align 4
  %conv.i73 = zext i1 %6 to i32
  tail call void @input_event(ptr noundef %72, i32 noundef 1, i32 noundef %switch.load96, i32 noundef %conv.i73) #6
  tail call void @input_event(ptr noundef %72, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

do.end24:                                         ; preds = %max77693_muic_get_cable_type.exit.do.end24_crit_edge, %max77693_muic_get_cable_type.exit.do.end24_crit_edge106, %max77693_muic_get_cable_type.exit.do.end24_crit_edge107, %max77693_muic_get_cable_type.exit.do.end24_crit_edge108, %max77693_muic_get_cable_type.exit.do.end24_crit_edge109, %max77693_muic_get_cable_type.exit.do.end24_crit_edge110, %max77693_muic_get_cable_type.exit.do.end24_crit_edge111, %max77693_muic_get_cable_type.exit.do.end24_crit_edge112, %max77693_muic_get_cable_type.exit.do.end24_crit_edge113, %max77693_muic_get_cable_type.exit.do.end24_crit_edge114, %max77693_muic_get_cable_type.exit.do.end24_crit_edge115, %max77693_muic_get_cable_type.exit.do.end24_crit_edge116, %max77693_muic_get_cable_type.exit.do.end24_crit_edge117, %max77693_muic_get_cable_type.exit.do.end24_crit_edge118, %max77693_muic_get_cable_type.exit.do.end24_crit_edge119, %max77693_muic_get_cable_type.exit.do.end24_crit_edge120, %max77693_muic_get_cable_type.exit.do.end24_crit_edge121, %max77693_muic_get_cable_type.exit.do.end24_crit_edge122
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.54, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i) #9
  br label %cleanup

do.end30:                                         ; preds = %max77693_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end24, %switch.lookup91, %max77693_muic_dock_button_handler.exit.thread, %if.end38.i, %sw.epilog.i68.cleanup_crit_edge, %do.end28.i, %if.end11.i, %if.end.i66.cleanup_crit_edge, %do.end5.i, %max77693_muic_jig_handler.exit, %switch.lookup.cleanup_crit_edge, %do.end4.i, %do.end.i, %sw.bb16.i, %if.end9.i, %sw.bb4.i.cleanup_crit_edge, %if.end.i, %sw.bb.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end30 ], [ -11, %do.end24 ], [ -22, %max77693_muic_dock_button_handler.exit.thread ], [ 0, %switch.lookup91 ], [ 0, %if.end38.i ], [ 0, %if.end11.i ], [ 0, %do.end5.i ], [ 0, %max77693_muic_jig_handler.exit ], [ 0, %do.end.i ], [ 0, %sw.bb16.i ], [ 0, %if.end9.i ], [ 0, %sw.bb4.i.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ %call.i, %switch.lookup.cleanup_crit_edge ], [ -22, %do.end4.i ], [ %call34.i, %sw.epilog.i68.cleanup_crit_edge ], [ %call8.i, %if.end.i66.cleanup_crit_edge ], [ -22, %do.end28.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_muic_chg_handler(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx38.i = getelementptr %struct.max77693_muic_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx38.i, align 1
  %2 = and i8 %1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp42.i = icmp eq i8 %2, 0
  br i1 %cmp42.i, label %4, label %max77693_muic_get_cable_type.exit

max77693_muic_get_cable_type.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and40.i = zext i8 %2 to i32
  %prev_chg_type47.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %prev_chg_type47.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and40.i, ptr %prev_chg_type47.i, align 4
  br label %7

4:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev_chg_type.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %prev_chg_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prev_chg_type.i, align 4
  store i32 0, ptr %prev_chg_type.i, align 4
  br label %7

7:                                                ; preds = %4, %max77693_muic_get_cable_type.exit
  %cable_type.0.i130 = phi i32 [ %6, %4 ], [ %and40.i, %max77693_muic_get_cable_type.exit ]
  %8 = phi ptr [ @.str.52, %4 ], [ @.str.51, %max77693_muic_get_cable_type.exit ]
  %9 = xor i1 %cmp42.i, true
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %prev_chg_type = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %prev_chg_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prev_chg_type, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.78, ptr noundef nonnull %8, i32 noundef %cable_type.0.i130, i32 noundef %13) #9
  %14 = zext i32 %cable_type.0.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %cable_type.0.i130, label %do.end67 [
    i32 1, label %.sw.bb_crit_edge
    i32 3, label %.sw.bb_crit_edge132
    i32 0, label %.sw.bb_crit_edge133
    i32 2, label %sw.bb53
    i32 4, label %sw.bb57
    i32 5, label %sw.bb61
    i32 7, label %.cleanup_crit_edge
  ]

.cleanup_crit_edge:                               ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

.sw.bb_crit_edge133:                              ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

.sw.bb_crit_edge132:                              ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

.sw.bb_crit_edge:                                 ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %.sw.bb_crit_edge, %.sw.bb_crit_edge132, %.sw.bb_crit_edge133
  %status5.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 7
  %15 = ptrtoint ptr %status5.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status5.i, align 4
  %17 = and i8 %16, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %17)
  %cmp10.i = icmp eq i8 %17, 31
  br i1 %cmp10.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %prev_cable_type_gnd.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 4
  %18 = ptrtoint ptr %prev_cable_type_gnd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prev_cable_type_gnd.i, align 4
  store i32 31, ptr %prev_cable_type_gnd.i, align 4
  br label %max77693_muic_get_cable_type.exit107

if.else14.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and8.i = zext i8 %17 to i32
  %conv17.i = zext i8 %16 to i32
  %20 = lshr i32 %conv17.i, 7
  %21 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38.i, align 1
  %23 = lshr i8 %22, 4
  %24 = and i8 %23, 4
  %shl.i = zext i8 %24 to i32
  %25 = lshr i32 %conv17.i, 4
  %shl30.i = and i32 %25, 2
  %or.i = or i32 %20, %shl30.i
  %or31.i = or i32 %or.i, %shl.i
  %or32.i = or i32 %or31.i, 256
  %prev_cable_type33.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 3
  %26 = ptrtoint ptr %prev_cable_type33.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and8.i, ptr %prev_cable_type33.i, align 4
  %prev_cable_type_gnd34.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 4
  %27 = ptrtoint ptr %prev_cable_type_gnd34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or32.i, ptr %prev_cable_type_gnd34.i, align 4
  br label %max77693_muic_get_cable_type.exit107

max77693_muic_get_cable_type.exit107:             ; preds = %if.else14.i, %if.then12.i
  %cable_type.0.i106 = phi i32 [ %19, %if.then12.i ], [ %or32.i, %if.else14.i ]
  %28 = zext i32 %cable_type.0.i106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %cable_type.0.i106, label %max77693_muic_get_cable_type.exit107.sw.epilog_crit_edge [
    i32 259, label %max77693_muic_get_cable_type.exit107.sw.bb2_crit_edge
    i32 263, label %max77693_muic_get_cable_type.exit107.sw.bb2_crit_edge134
  ]

max77693_muic_get_cable_type.exit107.sw.bb2_crit_edge134: ; preds = %max77693_muic_get_cable_type.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

max77693_muic_get_cable_type.exit107.sw.bb2_crit_edge: ; preds = %max77693_muic_get_cable_type.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

max77693_muic_get_cable_type.exit107.sw.epilog_crit_edge: ; preds = %max77693_muic_get_cable_type.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %max77693_muic_get_cable_type.exit107.sw.bb2_crit_edge, %max77693_muic_get_cable_type.exit107.sw.bb2_crit_edge134
  %29 = xor i1 %cmp10.i, true
  %edev = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edev, align 4
  %call4 = tail call i32 @extcon_set_state_sync(ptr noundef %31, i32 noundef 6, i1 noundef zeroext %9) #6
  %32 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edev, align 4
  %call7 = tail call i32 @extcon_set_state_sync(ptr noundef %33, i32 noundef 41, i1 noundef zeroext %29) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %max77693_muic_get_cable_type.exit107.sw.epilog_crit_edge
  %34 = ptrtoint ptr %status5.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %status5.i, align 4
  %36 = and i8 %35, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %36)
  %cmp.i = icmp eq i8 %36, 31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %prev_cable_type.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 3
  %37 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prev_cable_type.i, align 4
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %max77693_muic_get_cable_type.exit109

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = zext i8 %36 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 3
  %39 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  br label %max77693_muic_get_cable_type.exit109

max77693_muic_get_cable_type.exit109:             ; preds = %if.else.i, %if.then.i
  %cable_type.0.i108 = phi i32 [ %38, %if.then.i ], [ %and.i, %if.else.i ]
  %40 = zext i32 %cable_type.0.i108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %cable_type.0.i108, label %max77693_muic_get_cable_type.exit109.sw.epilog32_crit_edge [
    i32 26, label %sw.bb9
    i32 16, label %sw.bb20
  ]

max77693_muic_get_cable_type.exit109.sw.epilog32_crit_edge: ; preds = %max77693_muic_get_cable_type.exit109
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog32

sw.bb9:                                           ; preds = %max77693_muic_get_cable_type.exit109
  %edev10 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %41 = ptrtoint ptr %edev10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edev10, align 4
  %call12 = tail call i32 @extcon_set_state_sync(ptr noundef %42, i32 noundef 1, i1 noundef zeroext %9) #6
  %43 = ptrtoint ptr %edev10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edev10, align 4
  %call15 = tail call i32 @extcon_set_state_sync(ptr noundef %44, i32 noundef 5, i1 noundef zeroext %9) #6
  br i1 %cmp.i, label %if.then, label %sw.bb9.sw.epilog32_crit_edge

sw.bb9.sw.epilog32_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog32

if.then:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %edev10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edev10, align 4
  %call19 = tail call i32 @extcon_set_state_sync(ptr noundef %46, i32 noundef 60, i1 noundef zeroext false) #6
  br label %sw.epilog32

sw.bb20:                                          ; preds = %max77693_muic_get_cable_type.exit109
  %path_usb = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 13
  %47 = ptrtoint ptr %path_usb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %path_usb, align 4
  %conv = trunc i32 %48 to i8
  %call22 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv, i1 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %sw.bb20.cleanup_crit_edge, label %if.end25

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %edev26 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %49 = ptrtoint ptr %edev26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %edev26, align 4
  %call28 = tail call i32 @extcon_set_state_sync(ptr noundef %50, i32 noundef 60, i1 noundef zeroext %9) #6
  %51 = ptrtoint ptr %edev26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %edev26, align 4
  %call31 = tail call i32 @extcon_set_state_sync(ptr noundef %52, i32 noundef 41, i1 noundef zeroext %9) #6
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %if.end25, %if.then, %sw.bb9.sw.epilog32_crit_edge, %max77693_muic_get_cable_type.exit109.sw.epilog32_crit_edge
  %53 = zext i32 %cable_type.0.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %cable_type.0.i130, label %sw.epilog32.cleanup_crit_edge [
    i32 3, label %sw.bb48
    i32 1, label %sw.bb33
  ]

sw.epilog32.cleanup_crit_edge:                    ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb33:                                          ; preds = %sw.epilog32
  %path_usb34 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 13
  %54 = ptrtoint ptr %path_usb34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %path_usb34, align 4
  %conv35 = trunc i32 %55 to i8
  %call37 = tail call fastcc i32 @max77693_muic_set_path(ptr noundef %info, i8 noundef zeroext %conv35, i1 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %sw.bb33.cleanup_crit_edge, label %if.end41

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %edev42 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %56 = ptrtoint ptr %edev42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %edev42, align 4
  %call44 = tail call i32 @extcon_set_state_sync(ptr noundef %57, i32 noundef 1, i1 noundef zeroext %9) #6
  %58 = ptrtoint ptr %edev42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %edev42, align 4
  %call47 = tail call i32 @extcon_set_state_sync(ptr noundef %59, i32 noundef 5, i1 noundef zeroext %9) #6
  br label %cleanup

sw.bb48:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #8
  %edev49 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %60 = ptrtoint ptr %edev49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edev49, align 4
  %call51 = tail call i32 @extcon_set_state_sync(ptr noundef %61, i32 noundef 6, i1 noundef zeroext %9) #6
  br label %cleanup

sw.bb53:                                          ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  %edev54 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %62 = ptrtoint ptr %edev54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %edev54, align 4
  %call56 = tail call i32 @extcon_set_state_sync(ptr noundef %63, i32 noundef 7, i1 noundef zeroext %9) #6
  br label %cleanup

sw.bb57:                                          ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  %edev58 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %64 = ptrtoint ptr %edev58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %edev58, align 4
  %call60 = tail call i32 @extcon_set_state_sync(ptr noundef %65, i32 noundef 10, i1 noundef zeroext %9) #6
  br label %cleanup

sw.bb61:                                          ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  %edev62 = getelementptr inbounds %struct.max77693_muic_info, ptr %info, i32 0, i32 2
  %66 = ptrtoint ptr %edev62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %edev62, align 4
  %call64 = tail call i32 @extcon_set_state_sync(ptr noundef %67, i32 noundef 9, i1 noundef zeroext %9) #6
  br label %cleanup

do.end67:                                         ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.81, ptr noundef nonnull %8, i32 noundef %cable_type.0.i130) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %sw.bb61, %sw.bb57, %sw.bb53, %sw.bb48, %if.end41, %sw.bb33.cleanup_crit_edge, %sw.epilog32.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end67 ], [ %call22, %sw.bb20.cleanup_crit_edge ], [ %call37, %sw.bb33.cleanup_crit_edge ], [ 0, %if.end41 ], [ 0, %sw.bb48 ], [ 0, %sw.epilog32.cleanup_crit_edge ], [ 0, %.cleanup_crit_edge ], [ 0, %sw.bb61 ], [ 0, %sw.bb57 ], [ 0, %sw.bb53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__initcall__kmod_extcon_max77693__289_1268_max77693_muic_driver_init6, !1, !"__initcall__kmod_extcon_max77693__289_1268_max77693_muic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-max77693.c", i32 1268, i32 1}
!2 = !{ptr @__exitcall_max77693_muic_driver_exit, !1, !"__exitcall_max77693_muic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/extcon/extcon-max77693.c", i32 1270, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/extcon/extcon-max77693.c", i32 1271, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/extcon/extcon-max77693.c", i32 1272, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/extcon/extcon-max77693.c", i32 1273, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/extcon/extcon-max77693.c", i32 1263, i32 11}
!14 = !{ptr @max77693_muic_driver, !15, !"max77693_muic_driver", i1 false, i1 false}
!15 = !{!"../drivers/extcon/extcon-max77693.c", i32 1261, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-max77693.c", i32 1090, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @max77693_muic_probe.__UNIQUE_ID_ddebug288, !17, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!22 = !{ptr @max77693_muic_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/extcon/extcon-max77693.c", i32 1092, i32 33}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/extcon/extcon-max77693.c", i32 1097, i32 4}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max77693_muic_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @max77693_muic_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/extcon/extcon-max77693.c", i32 1106, i32 3}
!33 = !{ptr @max77693_muic_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max77693_muic_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/extcon/extcon-max77693.c", i32 1109, i32 21}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/extcon/extcon-max77693.c", i32 1110, i32 21}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/extcon/extcon-max77693.c", i32 1123, i32 3}
!41 = !{ptr @max77693_muic_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @max77693_muic_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @max77693_muic_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/extcon/extcon-max77693.c", i32 1129, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/extcon/extcon-max77693.c", i32 1152, i32 4}
!48 = !{ptr @max77693_muic_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @max77693_muic_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/extcon/extcon-max77693.c", i32 1163, i32 3}
!52 = !{ptr @max77693_muic_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @max77693_muic_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/extcon/extcon-max77693.c", i32 1169, i32 3}
!56 = !{ptr @max77693_muic_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @max77693_muic_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/extcon/extcon-max77693.c", i32 1225, i32 3}
!60 = !{ptr @max77693_muic_probe._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @max77693_muic_probe._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/extcon/extcon-max77693.c", i32 1238, i32 3}
!64 = !{ptr @max77693_muic_probe._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @max77693_muic_probe._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/extcon/extcon-max77693.c", i32 1241, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @max77693_muic_probe._entry.33, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @max77693_muic_probe._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @max77693_muic_probe.__key.37, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/extcon/extcon-max77693.c", i32 1254, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @max77693_muic_probe.__key.39, !72, !"__key", i1 false, i1 false}
!75 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @max77693_muic_regmap_config, !77, !"max77693_muic_regmap_config", i1 false, i1 false}
!77 = !{!"../drivers/extcon/extcon-max77693.c", i32 1010, i32 35}
!78 = !{ptr @devm_work_autocancel.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/devm-helpers.h", i32 75, i32 2}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/extcon/extcon-max77693.c", i32 955, i32 3}
!83 = !{ptr @max77693_muic_irq_work._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @max77693_muic_irq_work._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/extcon/extcon-max77693.c", i32 988, i32 3}
!87 = !{ptr @max77693_muic_irq_work._entry.43, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @max77693_muic_irq_work._entry_ptr.45, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/extcon/extcon-max77693.c", i32 995, i32 3}
!91 = !{ptr @max77693_muic_irq_work._entry.46, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @max77693_muic_irq_work._entry_ptr.48, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/extcon/extcon-max77693.c", i32 665, i32 2}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @max77693_muic_adc_handler._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @max77693_muic_adc_handler._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/extcon/extcon-max77693.c", i32 748, i32 3}
!102 = !{ptr @max77693_muic_adc_handler._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @max77693_muic_adc_handler._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/extcon/extcon-max77693.c", i32 753, i32 3}
!106 = !{ptr @max77693_muic_adc_handler._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @max77693_muic_adc_handler._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/extcon/extcon-max77693.c", i32 610, i32 3}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @max77693_muic_adc_ground_handler._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @max77693_muic_adc_ground_handler._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/extcon/extcon-max77693.c", i32 624, i32 2}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @max77693_muic_jig_handler._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @max77693_muic_jig_handler._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/extcon/extcon-max77693.c", i32 640, i32 3}
!120 = !{ptr @max77693_muic_jig_handler._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @max77693_muic_jig_handler._entry_ptr.65, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/extcon/extcon-max77693.c", i32 458, i32 2}
!124 = !{ptr @max77693_muic_dock_handler._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @max77693_muic_dock_handler._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/extcon/extcon-max77693.c", i32 473, i32 4}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @max77693_muic_dock_handler._entry.67, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @max77693_muic_dock_handler._entry_ptr.70, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/extcon/extcon-max77693.c", i32 516, i32 3}
!133 = !{ptr @max77693_muic_dock_handler._entry.71, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @max77693_muic_dock_handler._entry_ptr.73, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/extcon/extcon-max77693.c", i32 563, i32 3}
!137 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @max77693_muic_dock_button_handler._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @max77693_muic_dock_button_handler._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/extcon/extcon-max77693.c", i32 774, i32 2}
!144 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @max77693_muic_chg_handler._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @max77693_muic_chg_handler._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/extcon/extcon-max77693.c", i32 927, i32 3}
!149 = !{ptr @max77693_muic_chg_handler._entry.80, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @max77693_muic_chg_handler._entry_ptr.82, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/extcon/extcon-max77693.c", i32 129, i32 33}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/extcon/extcon-max77693.c", i32 130, i32 36}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/extcon/extcon-max77693.c", i32 131, i32 36}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/extcon/extcon-max77693.c", i32 132, i32 35}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/extcon/extcon-max77693.c", i32 133, i32 35}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/extcon/extcon-max77693.c", i32 134, i32 39}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/extcon/extcon-max77693.c", i32 135, i32 35}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/extcon/extcon-max77693.c", i32 136, i32 35}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/extcon/extcon-max77693.c", i32 137, i32 35}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/extcon/extcon-max77693.c", i32 138, i32 35}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/extcon/extcon-max77693.c", i32 139, i32 33}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/extcon/extcon-max77693.c", i32 140, i32 35}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/extcon/extcon-max77693.c", i32 141, i32 33}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/extcon/extcon-max77693.c", i32 142, i32 39}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/extcon/extcon-max77693.c", i32 143, i32 40}
!181 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/extcon/extcon-max77693.c", i32 144, i32 36}
!183 = !{ptr @muic_irqs, !184, !"muic_irqs", i1 false, i1 false}
!184 = !{!"../drivers/extcon/extcon-max77693.c", i32 128, i32 33}
!185 = !{ptr @max77693_extcon_cable, !186, !"max77693_extcon_cable", i1 false, i1 false}
!186 = !{!"../drivers/extcon/extcon-max77693.c", i32 197, i32 27}
!187 = !{ptr @default_init_data, !188, !"default_init_data", i1 false, i1 false}
!188 = !{!"../drivers/extcon/extcon-max77693.c", i32 33, i32 33}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/extcon/extcon-max77693.c", i32 442, i32 3}
!191 = !{ptr @.str.100, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @max77693_muic_get_cable_type._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @max77693_muic_get_cable_type._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.101, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/extcon/extcon-max77693.c", i32 271, i32 3}
!196 = !{ptr @.str.102, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @max77693_muic_set_path._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @max77693_muic_set_path._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @max77693_muic_set_path._entry.103, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/extcon/extcon-max77693.c", i32 285, i32 3}
!201 = !{ptr @max77693_muic_set_path._entry_ptr.104, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.106, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/extcon/extcon-max77693.c", i32 289, i32 2}
!204 = !{ptr @max77693_muic_set_path._entry.105, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @max77693_muic_set_path._entry_ptr.107, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/extcon/extcon-max77693.c", i32 235, i32 4}
!208 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @max77693_muic_set_debounce_time._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @max77693_muic_set_debounce_time._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.111, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/extcon/extcon-max77693.c", i32 240, i32 3}
!213 = !{ptr @max77693_muic_set_debounce_time._entry.110, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @max77693_muic_set_debounce_time._entry_ptr.112, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.113, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/extcon/extcon-max77693.c", i32 1028, i32 3}
!217 = !{ptr @max77693_muic_detect_accessory._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @max77693_muic_detect_accessory._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.115, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/extcon/extcon-max77693.c", i32 1038, i32 4}
!221 = !{ptr @max77693_muic_detect_accessory._entry.114, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @max77693_muic_detect_accessory._entry_ptr.116, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.118, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/extcon/extcon-max77693.c", i32 1049, i32 4}
!225 = !{ptr @max77693_muic_detect_accessory._entry.117, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @max77693_muic_detect_accessory._entry_ptr.119, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{!"auto-init"}
!237 = !{i64 2148315538, i64 2148315543, i64 2148315556, i64 2148315600, i64 2148315634, i64 2148315655}
