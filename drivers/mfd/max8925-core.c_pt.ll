; ModuleID = '/llk/IR_all_yes/drivers/mfd/max8925-core.c_pt.bc'
source_filename = "../drivers/mfd/max8925-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.max8925_irq_data = type { i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.max8925_chip = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.max8925_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@rtc_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.34, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@max8925_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 860, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add rtc subdev\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max8925_device_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/max8925-core.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8925_device_init._entry_ptr = internal global ptr @max8925_device_init._entry, section ".printk_index", align 4
@onkey_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.35, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @onkey_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@max8925_device_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add onkey subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@max8925_device_init._entry_ptr.7 = internal global ptr @max8925_device_init._entry.5, section ".printk_index", align 4
@bk_devs = internal global { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.41, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @bk_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@max8925_device_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 881, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add backlight subdev\0A\00", [32 x i8] zeroinitializer }, align 32
@max8925_device_init._entry_ptr.10 = internal global ptr @max8925_device_init._entry.8, section ".printk_index", align 4
@power_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.44, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @power_supply_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@max8925_device_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 890, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to add power supply subdev, err = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@max8925_device_init._entry_ptr.13 = internal global ptr @max8925_device_init._entry.11, section ".printk_index", align 4
@touch_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.45, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @touch_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@max8925_device_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 899, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add touch subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@max8925_device_init._entry_ptr.16 = internal global ptr @max8925_device_init._entry.14, section ".printk_index", align 4
@max8925_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@max8925_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 688, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate interrupts, ret:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max8925_irq_init\00", [47 x i8] zeroinitializer }, align 32
@max8925_irq_init._entry_ptr = internal global ptr @max8925_irq_init._entry, section ".printk_index", align 4
@max8925_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @max8925_irq_domain_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8925\00", [24 x i8] zeroinitializer }, align 32
@max8925_irq_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 702, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request core IRQ: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max8925_irq_init._entry_ptr.23 = internal global ptr @max8925_irq_init._entry.21, section ".printk_index", align 4
@max8925_irq_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 713, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No interrupt support on TSC IRQ\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max8925_irq_init._entry_ptr.27 = internal global ptr @max8925_irq_init._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8925-tsc\00", [20 x i8] zeroinitializer }, align 32
@max8925_irq_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 720, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request TSC IRQ: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max8925_irq_init._entry_ptr.31 = internal global ptr @max8925_irq_init._entry.29, section ".printk_index", align 4
@max8925_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr @max8925_irq_enable, ptr @max8925_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8925_irq_lock, ptr @max8925_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@max8925_irqs = internal global { [25 x %struct.max8925_irq_data], [136 x i8] } { [25 x %struct.max8925_irq_data] [%struct.max8925_irq_data { i32 126, i32 128, i32 0, i32 1, i32 0, i32 0 }, %struct.max8925_irq_data { i32 126, i32 128, i32 0, i32 2, i32 0, i32 0 }, %struct.max8925_irq_data { i32 126, i32 128, i32 0, i32 4, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 1, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 2, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 4, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 8, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 16, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 32, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 64, i32 0, i32 0 }, %struct.max8925_irq_data { i32 127, i32 129, i32 0, i32 128, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 1, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 2, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 4, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 8, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 16, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 32, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 64, i32 0, i32 0 }, %struct.max8925_irq_data { i32 1, i32 2, i32 0, i32 128, i32 0, i32 0 }, %struct.max8925_irq_data { i32 13, i32 14, i32 0, i32 1, i32 0, i32 0 }, %struct.max8925_irq_data { i32 13, i32 14, i32 0, i32 2, i32 0, i32 0 }, %struct.max8925_irq_data { i32 28, i32 29, i32 0, i32 4, i32 2, i32 0 }, %struct.max8925_irq_data { i32 28, i32 29, i32 0, i32 8, i32 2, i32 0 }, %struct.max8925_irq_data { i32 0, i32 1, i32 0, i32 1, i32 1, i32 1 }, %struct.max8925_irq_data { i32 0, i32 1, i32 0, i32 2, i32 1, i32 1 }], [136 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock.cache_chg.0 = internal global { i8, [31 x i8] } { i8 -1, [31 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock.cache_chg.1 = internal global { i8, [31 x i8] } { i8 -1, [31 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock.cache_on.0 = internal global { i8, [31 x i8] } { i8 -1, [31 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock.cache_on.1 = internal global { i8, [31 x i8] } { i8 -1, [31 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock.cache_rtc = internal global { i8, [31 x i8] } { i8 -1, [31 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock.cache_tsc = internal global { i8, [31 x i8] } { i8 -1, [31 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wrong IRQ\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8925_irq_sync_unlock\00", [40 x i8] zeroinitializer }, align 32
@max8925_irq_sync_unlock._entry_ptr = internal global ptr @max8925_irq_sync_unlock._entry, section ".printk_index", align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8925-rtc\00", [20 x i8] zeroinitializer }, align 32
@rtc_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 22, i32 22, ptr @.str.34, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8925-onkey\00", [18 x i8] zeroinitializer }, align 32
@onkey_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 18, i32 18, ptr @.str.35, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 17, i32 17, ptr @.str.35, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@reg_devs = internal global { [23 x %struct.mfd_cell], [504 x i8] } { [23 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @sd1_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @sd2_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @sd3_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo1_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 4, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo2_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 5, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo3_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 6, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo4_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 7, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo5_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 8, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo6_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 9, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo7_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 10, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo8_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 11, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo9_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 12, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo10_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 13, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo11_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 14, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo12_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 15, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo13_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 16, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo14_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 17, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo15_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 18, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo16_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 19, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo17_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 20, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo18_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 21, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo19_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 22, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo20_resources, i8 0, i8 0, ptr null, i32 0 }], [504 x i8] zeroinitializer }, align 32
@init_regulator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 828, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add regulator subdev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_regulator\00", [17 x i8] zeroinitializer }, align 32
@init_regulator._entry_ptr = internal global ptr @init_regulator._entry, section ".printk_index", align 4
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8925-regulator\00", [46 x i8] zeroinitializer }, align 32
@sd1_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@sd2_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 9, i32 9, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@sd3_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 12, i32 12, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo1_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo2_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 30, i32 30, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo3_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 34, i32 34, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo4_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 38, i32 38, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo5_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 42, i32 42, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo6_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 46, i32 46, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo7_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 50, i32 50, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo8_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 54, i32 54, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo9_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 58, i32 58, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo10_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 62, i32 62, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo11_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 66, i32 66, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo12_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 70, i32 70, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo13_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 74, i32 74, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo14_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 78, i32 78, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo15_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 82, i32 82, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo16_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 18, i32 18, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo17_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 22, i32 22, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo18_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 116, i32 116, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo19_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 94, i32 94, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo20_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 158, i32 158, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdv\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldov\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8925-backlight\00", [46 x i8] zeroinitializer }, align 32
@bk_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 132, i32 132, ptr @.str.42, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 133, i32 133, ptr @.str.43, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mode control\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8925-power\00", [18 x i8] zeroinitializer }, align 32
@power_supply_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 126, i32 128, ptr @.str.44, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8925-touch\00", [18 x i8] zeroinitializer }, align 32
@touch_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 111, ptr @.str.28, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 14, i64 29, i64 128, i64 129]
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"rtc_devs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 81, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 860, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"onkey_devs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 104, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 868, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"bk_devs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 27, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 881, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"power_devs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 63, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 889, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"touch_devs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 45, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 899, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 684, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 687, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"max8925_irq_domain_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 655, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 700, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 702, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 713, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 718, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 720, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"max8925_irq_chip\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 636, i32 24 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"max8925_irqs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 338, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [36 x i8] c"max8925_irq_sync_unlock.cache_chg.0\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [36 x i8] c"max8925_irq_sync_unlock.cache_chg.1\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [35 x i8] c"max8925_irq_sync_unlock.cache_on.0\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [35 x i8] c"max8925_irq_sync_unlock.cache_on.1\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"cache_rtc\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 549, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant [10 x i8] c"cache_tsc\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 549, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 584, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 83, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"rtc_resources\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 72, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 106, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"onkey_resources\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 90, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"reg_devs\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 205, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 828, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 207, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"sd1_resources\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 113, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"sd2_resources\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 117, i32 30 }
@___asan_gen_.208 = private unnamed_addr constant [14 x i8] c"sd3_resources\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 121, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"ldo1_resources\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 125, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"ldo2_resources\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 129, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"ldo3_resources\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 133, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"ldo4_resources\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 137, i32 30 }
@___asan_gen_.223 = private unnamed_addr constant [15 x i8] c"ldo5_resources\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 141, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"ldo6_resources\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 145, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant [15 x i8] c"ldo7_resources\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 149, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant [15 x i8] c"ldo8_resources\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 153, i32 30 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"ldo9_resources\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 157, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"ldo10_resources\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 161, i32 30 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"ldo11_resources\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 165, i32 30 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"ldo12_resources\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 169, i32 30 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"ldo13_resources\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 173, i32 30 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"ldo14_resources\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 177, i32 30 }
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"ldo15_resources\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 181, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"ldo16_resources\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 185, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"ldo17_resources\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 189, i32 30 }
@___asan_gen_.262 = private unnamed_addr constant [16 x i8] c"ldo18_resources\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 193, i32 30 }
@___asan_gen_.265 = private unnamed_addr constant [16 x i8] c"ldo19_resources\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 197, i32 30 }
@___asan_gen_.268 = private unnamed_addr constant [16 x i8] c"ldo20_resources\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 201, i32 30 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 114, i32 15 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 126, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 29, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant [13 x i8] c"bk_resources\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 22, i32 30 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 23, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 24, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 65, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant [23 x i8] c"power_supply_resources\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 54, i32 30 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 47, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant [16 x i8] c"touch_resources\00", align 1
@___asan_gen_.299 = private constant [30 x i8] c"../drivers/mfd/max8925-core.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 36, i32 30 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @init_regulator._entry, ptr @init_regulator._entry_ptr, ptr @max8925_device_init._entry, ptr @max8925_device_init._entry.11, ptr @max8925_device_init._entry.14, ptr @max8925_device_init._entry.5, ptr @max8925_device_init._entry.8, ptr @max8925_device_init._entry_ptr, ptr @max8925_device_init._entry_ptr.10, ptr @max8925_device_init._entry_ptr.13, ptr @max8925_device_init._entry_ptr.16, ptr @max8925_device_init._entry_ptr.7, ptr @max8925_irq_init._entry, ptr @max8925_irq_init._entry.21, ptr @max8925_irq_init._entry.24, ptr @max8925_irq_init._entry.29, ptr @max8925_irq_init._entry_ptr, ptr @max8925_irq_init._entry_ptr.23, ptr @max8925_irq_init._entry_ptr.27, ptr @max8925_irq_init._entry_ptr.31, ptr @max8925_irq_sync_unlock._entry, ptr @max8925_irq_sync_unlock._entry_ptr, ptr @rtc_devs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @onkey_devs, ptr @.str.6, ptr @bk_devs, ptr @.str.9, ptr @power_devs, ptr @.str.12, ptr @touch_devs, ptr @.str.15, ptr @max8925_irq_init.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @max8925_irq_domain_ops, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @max8925_irq_chip, ptr @max8925_irqs, ptr @max8925_irq_sync_unlock.cache_chg.0, ptr @max8925_irq_sync_unlock.cache_chg.1, ptr @max8925_irq_sync_unlock.cache_on.0, ptr @max8925_irq_sync_unlock.cache_on.1, ptr @max8925_irq_sync_unlock.cache_rtc, ptr @max8925_irq_sync_unlock.cache_tsc, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @rtc_resources, ptr @.str.35, ptr @onkey_resources, ptr @reg_devs, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @sd1_resources, ptr @sd2_resources, ptr @sd3_resources, ptr @ldo1_resources, ptr @ldo2_resources, ptr @ldo3_resources, ptr @ldo4_resources, ptr @ldo5_resources, ptr @ldo6_resources, ptr @ldo7_resources, ptr @ldo8_resources, ptr @ldo9_resources, ptr @ldo10_resources, ptr @ldo11_resources, ptr @ldo12_resources, ptr @ldo13_resources, ptr @ldo14_resources, ptr @ldo15_resources, ptr @ldo16_resources, ptr @ldo17_resources, ptr @ldo18_resources, ptr @ldo19_resources, ptr @ldo20_resources, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @bk_resources, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @power_supply_resources, ptr @.str.45, ptr @touch_resources], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onkey_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_device_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bk_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_device_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_device_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_device_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irqs to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_sync_unlock.cache_chg.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_sync_unlock.cache_chg.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_sync_unlock.cache_on.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_sync_unlock.cache_on.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_sync_unlock.cache_rtc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_sync_unlock.cache_tsc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_irq_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onkey_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_devs to i32), i32 2024, i32 2528, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_regulator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd1_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd2_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd3_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo2_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo3_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo4_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo5_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo6_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo7_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo8_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo9_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo10_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo11_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo12_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo13_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo14_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo15_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo16_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo17_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo18_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo19_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo20_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bk_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8925_device_init(ptr noundef %chip, ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @max8925_reg_read(ptr noundef %1, i32 noundef 126) #4
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %call2.i = tail call i32 @max8925_reg_read(ptr noundef %9, i32 noundef 127) #4
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %call4.i = tail call i32 @max8925_reg_read(ptr noundef %11, i32 noundef 1) #4
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  %call6.i = tail call i32 @max8925_reg_read(ptr noundef %13, i32 noundef 13) #4
  %rtc.i = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 3
  %14 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc.i, align 4
  %call7.i = tail call i32 @max8925_reg_read(ptr noundef %15, i32 noundef 28) #4
  %adc.i = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 2
  %16 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adc.i, align 4
  %call8.i = tail call i32 @max8925_reg_read(ptr noundef %17, i32 noundef 0) #4
  %18 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtc.i, align 4
  %call10.i = tail call i32 @max8925_reg_write(ptr noundef %19, i32 noundef 24, i8 noundef zeroext 0) #4
  %20 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtc.i, align 4
  %call12.i = tail call i32 @max8925_reg_write(ptr noundef %21, i32 noundef 25, i8 noundef zeroext 0) #4
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call14.i = tail call i32 @max8925_reg_write(ptr noundef %23, i32 noundef 128, i8 noundef zeroext -1) #4
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %call16.i = tail call i32 @max8925_reg_write(ptr noundef %25, i32 noundef 129, i8 noundef zeroext -1) #4
  %26 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c, align 4
  %call18.i = tail call i32 @max8925_reg_write(ptr noundef %27, i32 noundef 2, i8 noundef zeroext -1) #4
  %28 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c, align 4
  %call20.i = tail call i32 @max8925_reg_write(ptr noundef %29, i32 noundef 14, i8 noundef zeroext -1) #4
  %30 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtc.i, align 4
  %call22.i = tail call i32 @max8925_reg_write(ptr noundef %31, i32 noundef 29, i8 noundef zeroext -1) #4
  %irq_lock.i = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @max8925_irq_init.__key) #4
  %call23.i = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 25, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  %irq_base.i = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 6
  %32 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call23.i, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp.i = icmp slt i32 %call23.i, 0
  br i1 %cmp.i, label %do.end27.i, label %if.end.i

do.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.18, i32 noundef %call23.i) #7
  br label %max8925_irq_init.exit

if.end.i:                                         ; preds = %entry
  %call31.i = tail call ptr @irq_domain_add_legacy(ptr noundef %7, i32 noundef 25, i32 noundef %call23.i, i32 noundef 0, ptr noundef nonnull @max8925_irq_domain_ops, ptr noundef %chip) #4
  %core_irq.i = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 7
  %35 = ptrtoint ptr %core_irq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %3, ptr %core_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i.max8925_irq_init.exit_crit_edge, label %if.end34.i

if.end.i.max8925_irq_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max8925_irq_init.exit

if.end34.i:                                       ; preds = %if.end.i
  %call35.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef null, ptr noundef nonnull @max8925_irq, i32 noundef 8194, ptr noundef nonnull @.str.20, ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end43.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.22, i32 noundef %call35.i) #7
  %38 = ptrtoint ptr %core_irq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %core_irq.i, align 4
  br label %max8925_irq_init.exit

if.end43.i:                                       ; preds = %if.end34.i
  %39 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adc.i, align 4
  %call45.i = tail call i32 @max8925_reg_write(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 15) #4
  %tsc_irq.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 27
  %41 = ptrtoint ptr %tsc_irq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tsc_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool46.not.i = icmp eq i32 %42, 0
  br i1 %tobool46.not.i, label %do.end50.i, label %if.end52.i

do.end50.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.25) #7
  br label %max8925_irq_init.exit

if.end52.i:                                       ; preds = %if.end43.i
  %tsc_irq54.i = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 8
  %45 = ptrtoint ptr %tsc_irq54.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %tsc_irq54.i, align 4
  %call57.i = tail call i32 @request_threaded_irq(i32 noundef %42, ptr noundef null, ptr noundef nonnull @max8925_tsc_irq, i32 noundef 8194, ptr noundef nonnull @.str.28, ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end52.i.max8925_irq_init.exit_crit_edge, label %do.end62.i

if.end52.i.max8925_irq_init.exit_crit_edge:       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %max8925_irq_init.exit

do.end62.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.30, i32 noundef %call57.i) #7
  %48 = ptrtoint ptr %tsc_irq54.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tsc_irq54.i, align 4
  br label %max8925_irq_init.exit

max8925_irq_init.exit:                            ; preds = %do.end62.i, %if.end52.i.max8925_irq_init.exit_crit_edge, %do.end50.i, %do.end40.i, %if.end.i.max8925_irq_init.exit_crit_edge, %do.end27.i
  %tobool.not = icmp eq ptr %pdata, null
  br i1 %tobool.not, label %max8925_irq_init.exit.if.end_crit_edge, label %land.lhs.true

max8925_irq_init.exit.if.end_crit_edge:           ; preds = %max8925_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %max8925_irq_init.exit
  %power = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 2
  %49 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %power, align 4
  %tobool1.not = icmp eq ptr %50, null
  br i1 %tobool1.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %touch = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 1
  %51 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %touch, align 4
  %tobool2.not = icmp eq ptr %52, null
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %53 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c, align 4
  %call4 = tail call i32 @max8925_set_bits(ptr noundef %54, i32 noundef 15, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %55 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adc.i, align 4
  %call5 = tail call i32 @max8925_set_bits(ptr noundef %56, i32 noundef 2, i8 noundef zeroext 3, i8 noundef zeroext 2) #4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %57 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adc.i, align 4
  %call7 = tail call i32 @max8925_reg_read(ptr noundef %58, i32 noundef 0) #4
  %and = and i32 %call7, 16
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adc.i, align 4
  %call10 = tail call i32 @max8925_set_bits(ptr noundef %60, i32 noundef 16, i8 noundef zeroext 3, i8 noundef zeroext 2) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge, %max8925_irq_init.exit.if.end_crit_edge
  %61 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rtc.i, align 4
  %call11 = tail call i32 @max8925_set_bits(ptr noundef %62, i32 noundef 30, i8 noundef zeroext 16, i8 noundef zeroext 16) #4
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %65 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq_base.i, align 4
  %call12 = tail call i32 @mfd_add_devices(ptr noundef %64, i32 noundef 0, ptr noundef nonnull @rtc_devs, i32 noundef 1, ptr noundef null, i32 noundef %66, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  %67 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip, align 4
  br i1 %cmp, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %69 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq_base.i, align 4
  %call21 = tail call i32 @mfd_add_devices(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @onkey_devs, i32 noundef 1, ptr noundef null, i32 noundef %70, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.6) #7
  br label %out_dev

if.end28:                                         ; preds = %if.end18
  br i1 %tobool.not, label %if.end28.if.end34_crit_edge, label %if.end.i107

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end.i107:                                      ; preds = %if.end28
  %sd1.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 3
  %73 = ptrtoint ptr %sd1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sd1.i, align 4
  %tobool1.not.i = icmp eq ptr %74, null
  br i1 %tobool1.not.i, label %if.end.i107.if.end4.i_crit_edge, label %if.then2.i

if.end.i107.if.end4.i_crit_edge:                  ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %74, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 0, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 0, i32 8), align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i107.if.end4.i_crit_edge
  %sd2.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 4
  %75 = ptrtoint ptr %sd2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sd2.i, align 4
  %tobool5.not.i = icmp eq ptr %76, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %76, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 1, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 1, i32 8), align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %sd3.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 5
  %77 = ptrtoint ptr %sd3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sd3.i, align 4
  %tobool9.not.i = icmp eq ptr %78, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then10.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %78, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 2, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 2, i32 8), align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end12.i_crit_edge
  %ldo1.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 6
  %79 = ptrtoint ptr %ldo1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ldo1.i, align 4
  %tobool13.not.i = icmp eq ptr %80, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then14.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %80, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 3, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 3, i32 8), align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %ldo2.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 7
  %81 = ptrtoint ptr %ldo2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ldo2.i, align 4
  %tobool17.not.i = icmp eq ptr %82, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then18.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %82, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 4, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 4, i32 8), align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %ldo3.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 8
  %83 = ptrtoint ptr %ldo3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ldo3.i, align 4
  %tobool21.not.i = icmp eq ptr %84, null
  br i1 %tobool21.not.i, label %if.end20.i.if.end24.i_crit_edge, label %if.then22.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %84, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 5, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 5, i32 8), align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end24.i_crit_edge
  %ldo4.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 9
  %85 = ptrtoint ptr %ldo4.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ldo4.i, align 4
  %tobool25.not.i = icmp eq ptr %86, null
  br i1 %tobool25.not.i, label %if.end24.i.if.end28.i_crit_edge, label %if.then26.i

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %86, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 6, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 6, i32 8), align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end28.i_crit_edge
  %ldo5.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 10
  %87 = ptrtoint ptr %ldo5.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ldo5.i, align 4
  %tobool29.not.i = icmp eq ptr %88, null
  br i1 %tobool29.not.i, label %if.end28.i.if.end32.i_crit_edge, label %if.then30.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %88, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 7, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 7, i32 8), align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end28.i.if.end32.i_crit_edge
  %ldo6.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 11
  %89 = ptrtoint ptr %ldo6.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ldo6.i, align 4
  %tobool33.not.i = icmp eq ptr %90, null
  br i1 %tobool33.not.i, label %if.end32.i.if.end36.i_crit_edge, label %if.then34.i

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %90, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 8, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 8, i32 8), align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end36.i_crit_edge
  %ldo7.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 12
  %91 = ptrtoint ptr %ldo7.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ldo7.i, align 4
  %tobool37.not.i = icmp eq ptr %92, null
  br i1 %tobool37.not.i, label %if.end36.i.if.end40.i_crit_edge, label %if.then38.i

if.end36.i.if.end40.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %92, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 9, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 9, i32 8), align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.end36.i.if.end40.i_crit_edge
  %ldo8.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 13
  %93 = ptrtoint ptr %ldo8.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ldo8.i, align 4
  %tobool41.not.i = icmp eq ptr %94, null
  br i1 %tobool41.not.i, label %if.end40.i.if.end44.i_crit_edge, label %if.then42.i

if.end40.i.if.end44.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %94, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 10, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 10, i32 8), align 8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.end40.i.if.end44.i_crit_edge
  %ldo9.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 14
  %95 = ptrtoint ptr %ldo9.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ldo9.i, align 4
  %tobool45.not.i = icmp eq ptr %96, null
  br i1 %tobool45.not.i, label %if.end44.i.if.end48.i_crit_edge, label %if.then46.i

if.end44.i.if.end48.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %96, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 11, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 11, i32 8), align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.end44.i.if.end48.i_crit_edge
  %ldo10.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 15
  %97 = ptrtoint ptr %ldo10.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ldo10.i, align 4
  %tobool49.not.i = icmp eq ptr %98, null
  br i1 %tobool49.not.i, label %if.end48.i.if.end52.i108_crit_edge, label %if.then50.i

if.end48.i.if.end52.i108_crit_edge:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i108

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %98, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 12, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 12, i32 8), align 8
  br label %if.end52.i108

if.end52.i108:                                    ; preds = %if.then50.i, %if.end48.i.if.end52.i108_crit_edge
  %ldo11.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 16
  %99 = ptrtoint ptr %ldo11.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ldo11.i, align 4
  %tobool53.not.i = icmp eq ptr %100, null
  br i1 %tobool53.not.i, label %if.end52.i108.if.end56.i_crit_edge, label %if.then54.i

if.end52.i108.if.end56.i_crit_edge:               ; preds = %if.end52.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end52.i108
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %100, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 13, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 13, i32 8), align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end52.i108.if.end56.i_crit_edge
  %ldo12.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 17
  %101 = ptrtoint ptr %ldo12.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ldo12.i, align 4
  %tobool57.not.i = icmp eq ptr %102, null
  br i1 %tobool57.not.i, label %if.end56.i.if.end60.i_crit_edge, label %if.then58.i

if.end56.i.if.end60.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.i

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %102, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 14, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 14, i32 8), align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %if.end56.i.if.end60.i_crit_edge
  %ldo13.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 18
  %103 = ptrtoint ptr %ldo13.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ldo13.i, align 4
  %tobool61.not.i = icmp eq ptr %104, null
  br i1 %tobool61.not.i, label %if.end60.i.if.end64.i_crit_edge, label %if.then62.i

if.end60.i.if.end64.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64.i

if.then62.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %104, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 15, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 15, i32 8), align 8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %if.end60.i.if.end64.i_crit_edge
  %ldo14.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 19
  %105 = ptrtoint ptr %ldo14.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ldo14.i, align 4
  %tobool65.not.i = icmp eq ptr %106, null
  br i1 %tobool65.not.i, label %if.end64.i.if.end68.i_crit_edge, label %if.then66.i

if.end64.i.if.end68.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %106, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 16, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 16, i32 8), align 8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.end64.i.if.end68.i_crit_edge
  %ldo15.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 20
  %107 = ptrtoint ptr %ldo15.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ldo15.i, align 4
  %tobool69.not.i = icmp eq ptr %108, null
  br i1 %tobool69.not.i, label %if.end68.i.if.end72.i_crit_edge, label %if.then70.i

if.end68.i.if.end72.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %108, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 17, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 17, i32 8), align 8
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then70.i, %if.end68.i.if.end72.i_crit_edge
  %ldo16.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 21
  %109 = ptrtoint ptr %ldo16.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ldo16.i, align 4
  %tobool73.not.i = icmp eq ptr %110, null
  br i1 %tobool73.not.i, label %if.end72.i.if.end76.i_crit_edge, label %if.then74.i

if.end72.i.if.end76.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76.i

if.then74.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %110, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 18, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 18, i32 8), align 8
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then74.i, %if.end72.i.if.end76.i_crit_edge
  %ldo17.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 22
  %111 = ptrtoint ptr %ldo17.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ldo17.i, align 4
  %tobool77.not.i = icmp eq ptr %112, null
  br i1 %tobool77.not.i, label %if.end76.i.if.end80.i_crit_edge, label %if.then78.i

if.end76.i.if.end80.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80.i

if.then78.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %112, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 19, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 19, i32 8), align 8
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then78.i, %if.end76.i.if.end80.i_crit_edge
  %ldo18.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 23
  %113 = ptrtoint ptr %ldo18.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ldo18.i, align 4
  %tobool81.not.i = icmp eq ptr %114, null
  br i1 %tobool81.not.i, label %if.end80.i.if.end84.i_crit_edge, label %if.then82.i

if.end80.i.if.end84.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84.i

if.then82.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %114, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 20, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 20, i32 8), align 8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then82.i, %if.end80.i.if.end84.i_crit_edge
  %ldo19.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 24
  %115 = ptrtoint ptr %ldo19.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ldo19.i, align 4
  %tobool85.not.i = icmp eq ptr %116, null
  br i1 %tobool85.not.i, label %if.end84.i.if.end88.i_crit_edge, label %if.then86.i

if.end84.i.if.end88.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88.i

if.then86.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %116, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 21, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 21, i32 8), align 8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then86.i, %if.end84.i.if.end88.i_crit_edge
  %ldo20.i = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 25
  %117 = ptrtoint ptr %ldo20.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ldo20.i, align 4
  %tobool89.not.i = icmp eq ptr %118, null
  br i1 %tobool89.not.i, label %if.end88.i.if.end92.i_crit_edge, label %if.then90.i

if.end88.i.if.end92.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92.i

if.then90.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %118, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 22, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([23 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 22, i32 8), align 8
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then90.i, %if.end88.i.if.end92.i_crit_edge
  %119 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chip, align 4
  %call.i109 = tail call i32 @mfd_add_devices(ptr noundef %120, i32 noundef 0, ptr noundef nonnull @reg_devs, i32 noundef 23, ptr noundef null, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp.i110 = icmp slt i32 %call.i109, 0
  br i1 %cmp.i110, label %do.end.i, label %if.end92.i.land.lhs.true30_crit_edge

if.end92.i.land.lhs.true30_crit_edge:             ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true30

do.end.i:                                         ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #6
  %121 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.36) #7
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %do.end.i, %if.end92.i.land.lhs.true30_crit_edge
  %123 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdata, align 4
  %tobool31.not = icmp eq ptr %124, null
  br i1 %tobool31.not, label %land.lhs.true30.if.end34_crit_edge, label %if.then32

land.lhs.true30.if.end34_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %pdata, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @bk_devs, i32 0, i32 0, i32 7), align 4
  store i32 12, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @bk_devs, i32 0, i32 0, i32 8), align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true30.if.end34_crit_edge, %if.end28.if.end34_crit_edge
  %125 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chip, align 4
  %call36 = tail call i32 @mfd_add_devices(ptr noundef %126, i32 noundef 0, ptr noundef nonnull @bk_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  %127 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %chip, align 4
  br i1 %cmp37, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.9) #7
  br label %out_dev

if.end43:                                         ; preds = %if.end34
  %call45 = tail call i32 @mfd_add_devices(ptr noundef %128, i32 noundef 0, ptr noundef nonnull @power_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %129 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.12, i32 noundef %call45) #7
  br label %out_dev

if.end52:                                         ; preds = %if.end43
  br i1 %tobool.not, label %if.end52.cleanup_crit_edge, label %land.lhs.true54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true54:                                  ; preds = %if.end52
  %touch55 = getelementptr inbounds %struct.max8925_platform_data, ptr %pdata, i32 0, i32 1
  %131 = ptrtoint ptr %touch55 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %touch55, align 4
  %tobool56.not = icmp eq ptr %132, null
  br i1 %tobool56.not, label %land.lhs.true54.cleanup_crit_edge, label %if.then57

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then57:                                        ; preds = %land.lhs.true54
  %133 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chip, align 4
  %tsc_irq = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 8
  %135 = ptrtoint ptr %tsc_irq to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tsc_irq, align 4
  %call59 = tail call i32 @mfd_add_devices(ptr noundef %134, i32 noundef 0, ptr noundef nonnull @touch_devs, i32 noundef 1, ptr noundef null, i32 noundef %136, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  %137 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.15) #7
  br label %out_dev

out_dev:                                          ; preds = %do.end64, %do.end50, %do.end41, %do.end26
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ %call36, %do.end41 ], [ %call45, %do.end50 ], [ %call59, %do.end64 ]
  %139 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %chip, align 4
  tail call void @mfd_remove_devices(ptr noundef %140) #4
  br label %cleanup

cleanup:                                          ; preds = %out_dev, %if.then57.cleanup_crit_edge, %land.lhs.true54.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end16
  %retval.0 = phi i32 [ 0, %if.then57.cleanup_crit_edge ], [ 0, %land.lhs.true54.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ %call12, %do.end16 ], [ %ret.0, %out_dev ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @max8925_device_exit(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %core_irq = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %core_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %chip) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tsc_irq = getelementptr inbounds %struct.max8925_chip, ptr %chip, i32 0, i32 8
  %2 = ptrtoint ptr %tsc_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tsc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %chip) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void @mfd_remove_devices(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adc = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 2
  %rtc = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 3
  %i2c7 = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 1
  %irq_base = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %value.032 = phi i32 [ 0, %entry ], [ %value.2, %for.inc.for.body_crit_edge ]
  %read_reg.031 = phi i32 [ -1, %entry ], [ %read_reg.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033
  %tsc_irq = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033, i32 5
  %0 = ptrtoint ptr %tsc_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tsc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %flags = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else6 [
    i32 2, label %if.end.if.end9_crit_edge
    i32 1, label %if.then5
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.else6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then5, %if.end.if.end9_crit_edge
  %i2c.0.in = phi ptr [ %adc, %if.then5 ], [ %i2c7, %if.else6 ], [ %rtc, %if.end.if.end9_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %read_reg.031, i32 %6)
  %cmp10.not = icmp eq i32 %read_reg.031, %6
  br i1 %cmp10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %i2c.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %i2c.0 = load ptr, ptr %i2c.0.in, align 4
  %call = tail call i32 @max8925_reg_read(ptr noundef %i2c.0, i32 noundef %6) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %read_reg.1 = phi i32 [ %6, %if.then11 ], [ %read_reg.031, %if.end9.if.end14_crit_edge ]
  %value.1 = phi i32 [ %call, %if.then11 ], [ %value.032, %if.end9.if.end14_crit_edge ]
  %enable = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033, i32 2
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable, align 4
  %and = and i32 %9, %value.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.for.inc_crit_edge, label %if.then16

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base, align 4
  %add = add i32 %11, %i.033
  tail call void @handle_nested_irq(i32 noundef %add) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %read_reg.2 = phi i32 [ %read_reg.031, %for.body.for.inc_crit_edge ], [ %read_reg.1, %if.then16 ], [ %read_reg.1, %if.end14.for.inc_crit_edge ]
  %value.2 = phi i32 [ %value.032, %for.body.for.inc_crit_edge ], [ %value.1, %if.then16 ], [ %value.1, %if.end14.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_tsc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adc = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 2
  %rtc = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 3
  %i2c7 = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 1
  %irq_base = getelementptr inbounds %struct.max8925_chip, ptr %data, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %value.032 = phi i32 [ 0, %entry ], [ %value.2, %for.inc.for.body_crit_edge ]
  %read_reg.031 = phi i32 [ -1, %entry ], [ %read_reg.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033
  %tsc_irq = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033, i32 5
  %0 = ptrtoint ptr %tsc_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tsc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %flags = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %3, label %if.else6 [
    i32 2, label %if.end.if.end9_crit_edge
    i32 1, label %if.then5
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.else6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then5, %if.end.if.end9_crit_edge
  %i2c.0.in = phi ptr [ %adc, %if.then5 ], [ %i2c7, %if.else6 ], [ %rtc, %if.end.if.end9_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %read_reg.031, i32 %6)
  %cmp10.not = icmp eq i32 %read_reg.031, %6
  br i1 %cmp10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %i2c.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %i2c.0 = load ptr, ptr %i2c.0.in, align 4
  %call = tail call i32 @max8925_reg_read(ptr noundef %i2c.0, i32 noundef %6) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %read_reg.1 = phi i32 [ %6, %if.then11 ], [ %read_reg.031, %if.end9.if.end14_crit_edge ]
  %value.1 = phi i32 [ %call, %if.then11 ], [ %value.032, %if.end9.if.end14_crit_edge ]
  %enable = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.033, i32 2
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable, align 4
  %and = and i32 %9, %value.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.for.inc_crit_edge, label %if.then16

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base, align 4
  %add = add i32 %11, %i.033
  tail call void @handle_nested_irq(i32 noundef %add) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %read_reg.2 = phi i32 [ %read_reg.1, %if.then16 ], [ %read_reg.1, %if.end14.for.inc_crit_edge ], [ %read_reg.031, %for.body.for.inc_crit_edge ]
  %value.2 = phi i32 [ %value.1, %if.then16 ], [ %value.1, %if.end14.for.inc_crit_edge ], [ %value.032, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @max8925_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #4
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #4
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max8925_irq_enable(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  %offs = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %sub, i32 3
  %6 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs, align 4
  %enable = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %sub, i32 2
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %enable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max8925_irq_disable(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  %enable = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %sub, i32 2
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8925_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8925_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = load i8, ptr @max8925_irq_sync_unlock.cache_chg.0, align 1
  %3 = load i8, ptr @max8925_irq_sync_unlock.cache_chg.1, align 1
  %4 = load i8, ptr @max8925_irq_sync_unlock.cache_on.0, align 1
  %5 = load i8, ptr @max8925_irq_sync_unlock.cache_on.1, align 1
  %6 = load i8, ptr @max8925_irq_sync_unlock.cache_rtc, align 1
  %7 = load i8, ptr @max8925_irq_sync_unlock.cache_tsc, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0134 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %irq_tsc.0133 = phi i8 [ %7, %entry ], [ %irq_tsc.1, %for.inc.for.body_crit_edge ]
  %irq_rtc.0132 = phi i8 [ %6, %entry ], [ %irq_rtc.1, %for.inc.for.body_crit_edge ]
  %irq_on.sroa.0.0131 = phi i8 [ %4, %entry ], [ %irq_on.sroa.0.1, %for.inc.for.body_crit_edge ]
  %irq_on.sroa.9.0130 = phi i8 [ %5, %entry ], [ %irq_on.sroa.9.1, %for.inc.for.body_crit_edge ]
  %irq_chg.sroa.0.0129 = phi i8 [ %2, %entry ], [ %irq_chg.sroa.0.1, %for.inc.for.body_crit_edge ]
  %irq_chg.sroa.9.0128 = phi i8 [ %3, %entry ], [ %irq_chg.sroa.9.1, %for.inc.for.body_crit_edge ]
  %mask_reg = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.0134, i32 1
  %8 = ptrtoint ptr %mask_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_reg, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %9, label %do.end [
    i32 128, label %sw.bb
    i32 129, label %sw.bb7
    i32 2, label %sw.bb14
    i32 14, label %sw.bb21
    i32 29, label %sw.bb28
    i32 1, label %sw.bb34
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %enable = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.0134, i32 2
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enable, align 4
  %13 = trunc i32 %12 to i8
  %14 = xor i8 %13, -1
  %conv6 = and i8 %irq_chg.sroa.0.0129, %14
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %enable8 = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.0134, i32 2
  %15 = ptrtoint ptr %enable8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable8, align 4
  %17 = trunc i32 %16 to i8
  %18 = xor i8 %17, -1
  %conv13 = and i8 %irq_chg.sroa.9.0128, %18
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %enable15 = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.0134, i32 2
  %19 = ptrtoint ptr %enable15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable15, align 4
  %21 = trunc i32 %20 to i8
  %22 = xor i8 %21, -1
  %conv20 = and i8 %irq_on.sroa.0.0131, %22
  br label %for.inc

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %enable22 = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.0134, i32 2
  %23 = ptrtoint ptr %enable22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enable22, align 4
  %25 = trunc i32 %24 to i8
  %26 = xor i8 %25, -1
  %conv27 = and i8 %irq_on.sroa.9.0130, %26
  br label %for.inc

sw.bb28:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %enable29 = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.0134, i32 2
  %27 = ptrtoint ptr %enable29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enable29, align 4
  %29 = trunc i32 %28 to i8
  %30 = xor i8 %29, -1
  %conv33 = and i8 %irq_rtc.0132, %30
  br label %for.inc

sw.bb34:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %enable35 = getelementptr [25 x %struct.max8925_irq_data], ptr @max8925_irqs, i32 0, i32 %i.0134, i32 2
  %31 = ptrtoint ptr %enable35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enable35, align 4
  %33 = trunc i32 %32 to i8
  %34 = xor i8 %33, -1
  %conv39 = and i8 %irq_tsc.0133, %34
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.32) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %sw.bb34, %sw.bb28, %sw.bb21, %sw.bb14, %sw.bb7, %sw.bb
  %irq_chg.sroa.9.1 = phi i8 [ %irq_chg.sroa.9.0128, %do.end ], [ %irq_chg.sroa.9.0128, %sw.bb34 ], [ %irq_chg.sroa.9.0128, %sw.bb28 ], [ %irq_chg.sroa.9.0128, %sw.bb21 ], [ %irq_chg.sroa.9.0128, %sw.bb14 ], [ %conv13, %sw.bb7 ], [ %irq_chg.sroa.9.0128, %sw.bb ]
  %irq_chg.sroa.0.1 = phi i8 [ %irq_chg.sroa.0.0129, %do.end ], [ %irq_chg.sroa.0.0129, %sw.bb34 ], [ %irq_chg.sroa.0.0129, %sw.bb28 ], [ %irq_chg.sroa.0.0129, %sw.bb21 ], [ %irq_chg.sroa.0.0129, %sw.bb14 ], [ %irq_chg.sroa.0.0129, %sw.bb7 ], [ %conv6, %sw.bb ]
  %irq_on.sroa.9.1 = phi i8 [ %irq_on.sroa.9.0130, %do.end ], [ %irq_on.sroa.9.0130, %sw.bb34 ], [ %irq_on.sroa.9.0130, %sw.bb28 ], [ %conv27, %sw.bb21 ], [ %irq_on.sroa.9.0130, %sw.bb14 ], [ %irq_on.sroa.9.0130, %sw.bb7 ], [ %irq_on.sroa.9.0130, %sw.bb ]
  %irq_on.sroa.0.1 = phi i8 [ %irq_on.sroa.0.0131, %do.end ], [ %irq_on.sroa.0.0131, %sw.bb34 ], [ %irq_on.sroa.0.0131, %sw.bb28 ], [ %irq_on.sroa.0.0131, %sw.bb21 ], [ %conv20, %sw.bb14 ], [ %irq_on.sroa.0.0131, %sw.bb7 ], [ %irq_on.sroa.0.0131, %sw.bb ]
  %irq_rtc.1 = phi i8 [ %irq_rtc.0132, %do.end ], [ %irq_rtc.0132, %sw.bb34 ], [ %conv33, %sw.bb28 ], [ %irq_rtc.0132, %sw.bb21 ], [ %irq_rtc.0132, %sw.bb14 ], [ %irq_rtc.0132, %sw.bb7 ], [ %irq_rtc.0132, %sw.bb ]
  %irq_tsc.1 = phi i8 [ %irq_tsc.0133, %do.end ], [ %conv39, %sw.bb34 ], [ %irq_tsc.0133, %sw.bb28 ], [ %irq_tsc.0133, %sw.bb21 ], [ %irq_tsc.0133, %sw.bb14 ], [ %irq_tsc.0133, %sw.bb7 ], [ %irq_tsc.0133, %sw.bb ]
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %37 = load i8, ptr @max8925_irq_sync_unlock.cache_chg.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %irq_chg.sroa.0.1)
  %cmp43.not = icmp eq i8 %37, %irq_chg.sroa.0.1
  br i1 %cmp43.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %irq_chg.sroa.0.1, ptr @max8925_irq_sync_unlock.cache_chg.0, align 1
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c, align 4
  %call47 = tail call i32 @max8925_reg_write(ptr noundef %39, i32 noundef 128, i8 noundef zeroext %irq_chg.sroa.0.1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %40 = load i8, ptr @max8925_irq_sync_unlock.cache_chg.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %irq_chg.sroa.9.1)
  %cmp51.not = icmp eq i8 %40, %irq_chg.sroa.9.1
  br i1 %cmp51.not, label %if.end.if.end58_crit_edge, label %if.then53

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %irq_chg.sroa.9.1, ptr @max8925_irq_sync_unlock.cache_chg.1, align 1
  %i2c55 = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %i2c55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c55, align 4
  %call57 = tail call i32 @max8925_reg_write(ptr noundef %42, i32 noundef 129, i8 noundef zeroext %irq_chg.sroa.9.1) #4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end.if.end58_crit_edge
  %43 = load i8, ptr @max8925_irq_sync_unlock.cache_on.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %irq_on.sroa.0.1)
  %cmp62.not = icmp eq i8 %43, %irq_on.sroa.0.1
  br i1 %cmp62.not, label %if.end58.if.end69_crit_edge, label %if.then64

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %irq_on.sroa.0.1, ptr @max8925_irq_sync_unlock.cache_on.0, align 1
  %i2c66 = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %i2c66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c66, align 4
  %call68 = tail call i32 @max8925_reg_write(ptr noundef %45, i32 noundef 2, i8 noundef zeroext %irq_on.sroa.0.1) #4
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end58.if.end69_crit_edge
  %46 = load i8, ptr @max8925_irq_sync_unlock.cache_on.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %irq_on.sroa.9.1)
  %cmp73.not = icmp eq i8 %46, %irq_on.sroa.9.1
  br i1 %cmp73.not, label %if.end69.if.end80_crit_edge, label %if.then75

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %irq_on.sroa.9.1, ptr @max8925_irq_sync_unlock.cache_on.1, align 1
  %i2c77 = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %i2c77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c77, align 4
  %call79 = tail call i32 @max8925_reg_write(ptr noundef %48, i32 noundef 14, i8 noundef zeroext %irq_on.sroa.9.1) #4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end69.if.end80_crit_edge
  %49 = load i8, ptr @max8925_irq_sync_unlock.cache_rtc, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %irq_rtc.1)
  %cmp83.not = icmp eq i8 %49, %irq_rtc.1
  br i1 %cmp83.not, label %if.end80.if.end87_crit_edge, label %if.then85

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %irq_rtc.1, ptr @max8925_irq_sync_unlock.cache_rtc, align 1
  %rtc = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rtc, align 4
  %call86 = tail call i32 @max8925_reg_write(ptr noundef %51, i32 noundef 29, i8 noundef zeroext %irq_rtc.1) #4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end80.if.end87_crit_edge
  %52 = load i8, ptr @max8925_irq_sync_unlock.cache_tsc, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %irq_tsc.1)
  %cmp90.not = icmp eq i8 %52, %irq_tsc.1
  br i1 %cmp90.not, label %if.end87.if.end94_crit_edge, label %if.then92

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  store i8 %irq_tsc.1, ptr @max8925_irq_sync_unlock.cache_tsc, align 1
  %adc = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adc, align 4
  %call93 = tail call i32 @max8925_reg_write(ptr noundef %54, i32 noundef 1, i8 noundef zeroext %irq_tsc.1) #4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end87.if.end94_crit_edge
  %irq_lock = getelementptr inbounds %struct.max8925_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %irq_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max8925-core.c", i32 860, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @max8925_device_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @max8925_device_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max8925-core.c", i32 868, i32 3}
!10 = !{ptr @max8925_device_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @max8925_device_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/max8925-core.c", i32 881, i32 3}
!14 = !{ptr @max8925_device_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @max8925_device_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/max8925-core.c", i32 889, i32 3}
!18 = !{ptr @max8925_device_init._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @max8925_device_init._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/max8925-core.c", i32 899, i32 4}
!22 = !{ptr @max8925_device_init._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @max8925_device_init._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @max8925_irq_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/mfd/max8925-core.c", i32 684, i32 2}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/max8925-core.c", i32 687, i32 3}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @max8925_irq_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @max8925_irq_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/max8925-core.c", i32 700, i32 8}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/max8925-core.c", i32 702, i32 3}
!36 = !{ptr @max8925_irq_init._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max8925_irq_init._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/max8925-core.c", i32 713, i32 3}
!40 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @max8925_irq_init._entry.24, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @max8925_irq_init._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/max8925-core.c", i32 718, i32 30}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/max8925-core.c", i32 720, i32 3}
!47 = !{ptr @max8925_irq_init._entry.29, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @max8925_irq_init._entry_ptr.31, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @max8925_irq_domain_ops, !50, !"max8925_irq_domain_ops", i1 false, i1 false}
!50 = !{!"../drivers/mfd/max8925-core.c", i32 655, i32 36}
!51 = !{ptr @max8925_irq_chip, !52, !"max8925_irq_chip", i1 false, i1 false}
!52 = !{!"../drivers/mfd/max8925-core.c", i32 636, i32 24}
!53 = !{ptr @max8925_irqs, !54, !"max8925_irqs", i1 false, i1 false}
!54 = !{!"../drivers/mfd/max8925-core.c", i32 338, i32 32}
!55 = distinct !{null, !56, !"cache_chg", i1 false, i1 false}
!56 = !{!"../drivers/mfd/max8925-core.c", i32 547, i32 23}
!57 = distinct !{null, !58, !"cache_on", i1 false, i1 false}
!58 = !{!"../drivers/mfd/max8925-core.c", i32 548, i32 23}
!59 = !{ptr @max8925_irq_sync_unlock.cache_rtc, !60, !"cache_rtc", i1 false, i1 false}
!60 = !{!"../drivers/mfd/max8925-core.c", i32 549, i32 23}
!61 = !{ptr @max8925_irq_sync_unlock.cache_tsc, !62, !"cache_tsc", i1 false, i1 false}
!62 = !{!"../drivers/mfd/max8925-core.c", i32 549, i32 41}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/max8925-core.c", i32 584, i32 4}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @max8925_irq_sync_unlock._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @max8925_irq_sync_unlock._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/max8925-core.c", i32 83, i32 12}
!70 = !{ptr @rtc_devs, !71, !"rtc_devs", i1 false, i1 false}
!71 = !{!"../drivers/mfd/max8925-core.c", i32 81, i32 30}
!72 = !{ptr @rtc_resources, !73, !"rtc_resources", i1 false, i1 false}
!73 = !{!"../drivers/mfd/max8925-core.c", i32 72, i32 30}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mfd/max8925-core.c", i32 106, i32 12}
!76 = !{ptr @onkey_devs, !77, !"onkey_devs", i1 false, i1 false}
!77 = !{!"../drivers/mfd/max8925-core.c", i32 104, i32 30}
!78 = !{ptr @onkey_resources, !79, !"onkey_resources", i1 false, i1 false}
!79 = !{!"../drivers/mfd/max8925-core.c", i32 90, i32 30}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/max8925-core.c", i32 828, i32 3}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @init_regulator._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @init_regulator._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/max8925-core.c", i32 207, i32 11}
!87 = !{ptr @reg_devs, !88, !"reg_devs", i1 false, i1 false}
!88 = !{!"../drivers/mfd/max8925-core.c", i32 205, i32 24}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mfd/max8925-core.c", i32 114, i32 15}
!91 = !{ptr @sd1_resources, !92, !"sd1_resources", i1 false, i1 false}
!92 = !{!"../drivers/mfd/max8925-core.c", i32 113, i32 30}
!93 = !{ptr @sd2_resources, !94, !"sd2_resources", i1 false, i1 false}
!94 = !{!"../drivers/mfd/max8925-core.c", i32 117, i32 30}
!95 = !{ptr @sd3_resources, !96, !"sd3_resources", i1 false, i1 false}
!96 = !{!"../drivers/mfd/max8925-core.c", i32 121, i32 30}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/max8925-core.c", i32 126, i32 15}
!99 = !{ptr @ldo1_resources, !100, !"ldo1_resources", i1 false, i1 false}
!100 = !{!"../drivers/mfd/max8925-core.c", i32 125, i32 30}
!101 = !{ptr @ldo2_resources, !102, !"ldo2_resources", i1 false, i1 false}
!102 = !{!"../drivers/mfd/max8925-core.c", i32 129, i32 30}
!103 = !{ptr @ldo3_resources, !104, !"ldo3_resources", i1 false, i1 false}
!104 = !{!"../drivers/mfd/max8925-core.c", i32 133, i32 30}
!105 = !{ptr @ldo4_resources, !106, !"ldo4_resources", i1 false, i1 false}
!106 = !{!"../drivers/mfd/max8925-core.c", i32 137, i32 30}
!107 = !{ptr @ldo5_resources, !108, !"ldo5_resources", i1 false, i1 false}
!108 = !{!"../drivers/mfd/max8925-core.c", i32 141, i32 30}
!109 = !{ptr @ldo6_resources, !110, !"ldo6_resources", i1 false, i1 false}
!110 = !{!"../drivers/mfd/max8925-core.c", i32 145, i32 30}
!111 = !{ptr @ldo7_resources, !112, !"ldo7_resources", i1 false, i1 false}
!112 = !{!"../drivers/mfd/max8925-core.c", i32 149, i32 30}
!113 = !{ptr @ldo8_resources, !114, !"ldo8_resources", i1 false, i1 false}
!114 = !{!"../drivers/mfd/max8925-core.c", i32 153, i32 30}
!115 = !{ptr @ldo9_resources, !116, !"ldo9_resources", i1 false, i1 false}
!116 = !{!"../drivers/mfd/max8925-core.c", i32 157, i32 30}
!117 = !{ptr @ldo10_resources, !118, !"ldo10_resources", i1 false, i1 false}
!118 = !{!"../drivers/mfd/max8925-core.c", i32 161, i32 30}
!119 = !{ptr @ldo11_resources, !120, !"ldo11_resources", i1 false, i1 false}
!120 = !{!"../drivers/mfd/max8925-core.c", i32 165, i32 30}
!121 = !{ptr @ldo12_resources, !122, !"ldo12_resources", i1 false, i1 false}
!122 = !{!"../drivers/mfd/max8925-core.c", i32 169, i32 30}
!123 = !{ptr @ldo13_resources, !124, !"ldo13_resources", i1 false, i1 false}
!124 = !{!"../drivers/mfd/max8925-core.c", i32 173, i32 30}
!125 = !{ptr @ldo14_resources, !126, !"ldo14_resources", i1 false, i1 false}
!126 = !{!"../drivers/mfd/max8925-core.c", i32 177, i32 30}
!127 = !{ptr @ldo15_resources, !128, !"ldo15_resources", i1 false, i1 false}
!128 = !{!"../drivers/mfd/max8925-core.c", i32 181, i32 30}
!129 = !{ptr @ldo16_resources, !130, !"ldo16_resources", i1 false, i1 false}
!130 = !{!"../drivers/mfd/max8925-core.c", i32 185, i32 30}
!131 = !{ptr @ldo17_resources, !132, !"ldo17_resources", i1 false, i1 false}
!132 = !{!"../drivers/mfd/max8925-core.c", i32 189, i32 30}
!133 = !{ptr @ldo18_resources, !134, !"ldo18_resources", i1 false, i1 false}
!134 = !{!"../drivers/mfd/max8925-core.c", i32 193, i32 30}
!135 = !{ptr @ldo19_resources, !136, !"ldo19_resources", i1 false, i1 false}
!136 = !{!"../drivers/mfd/max8925-core.c", i32 197, i32 30}
!137 = !{ptr @ldo20_resources, !138, !"ldo20_resources", i1 false, i1 false}
!138 = !{!"../drivers/mfd/max8925-core.c", i32 201, i32 30}
!139 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/max8925-core.c", i32 29, i32 12}
!141 = !{ptr @bk_devs, !142, !"bk_devs", i1 false, i1 false}
!142 = !{!"../drivers/mfd/max8925-core.c", i32 27, i32 24}
!143 = !{ptr @.str.42, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mfd/max8925-core.c", i32 23, i32 16}
!145 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mfd/max8925-core.c", i32 24, i32 16}
!147 = !{ptr @bk_resources, !148, !"bk_resources", i1 false, i1 false}
!148 = !{!"../drivers/mfd/max8925-core.c", i32 22, i32 30}
!149 = !{ptr @.str.44, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mfd/max8925-core.c", i32 65, i32 12}
!151 = !{ptr @power_devs, !152, !"power_devs", i1 false, i1 false}
!152 = !{!"../drivers/mfd/max8925-core.c", i32 63, i32 30}
!153 = !{ptr @power_supply_resources, !154, !"power_supply_resources", i1 false, i1 false}
!154 = !{!"../drivers/mfd/max8925-core.c", i32 54, i32 30}
!155 = !{ptr @.str.45, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mfd/max8925-core.c", i32 47, i32 12}
!157 = !{ptr @touch_devs, !158, !"touch_devs", i1 false, i1 false}
!158 = !{!"../drivers/mfd/max8925-core.c", i32 45, i32 30}
!159 = !{ptr @touch_resources, !160, !"touch_resources", i1 false, i1 false}
!160 = !{!"../drivers/mfd/max8925-core.c", i32 36, i32 30}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
