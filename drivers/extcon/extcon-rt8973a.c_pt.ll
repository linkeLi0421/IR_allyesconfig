; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-rt8973a.c_pt.bc'
source_filename = "../drivers/extcon/extcon-rt8973a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.muic_irq = type { i32, ptr, i32 }
%struct.reg_data = type { i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.rt8973a_muic_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, %struct.work_struct, ptr, i32, i8, %struct.mutex, %struct.delayed_work }

@__initcall__kmod_extcon_rt8973a__289_711_rt8973a_muic_i2c_init4 = internal global ptr @rt8973a_muic_i2c_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"extcon_rt8973a.description=Richtek RT8973A Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [59 x i8] c"extcon_rt8973a.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [50 x i8] c"extcon_rt8973a.file=drivers/extcon/extcon-rt8973a\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"extcon_rt8973a.license=GPL\00", section ".modinfo", align 1
@rt8973a_muic_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt8973a_muic_i2c_probe, ptr @rt8973a_muic_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt8973a_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt8973a_muic_pm_ops, ptr null, ptr null }, ptr @rt8973a_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt8973a\00", [24 x i8] zeroinitializer }, align 32
@rt8973a_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt8973a-muic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt8973a_muic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rt8973a_muic_suspend, ptr @rt8973a_muic_resume, ptr @rt8973a_muic_suspend, ptr @rt8973a_muic_resume, ptr @rt8973a_muic_suspend, ptr @rt8973a_muic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rt8973a_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt8973a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt8973a_muic_irqs = internal global { [15 x %struct.muic_irq], [44 x i8] } { [15 x %struct.muic_irq] [%struct.muic_irq { i32 0, ptr @.str.26, i32 0 }, %struct.muic_irq { i32 1, ptr @.str.27, i32 0 }, %struct.muic_irq { i32 2, ptr @.str.28, i32 0 }, %struct.muic_irq { i32 3, ptr @.str.29, i32 0 }, %struct.muic_irq { i32 4, ptr @.str.30, i32 0 }, %struct.muic_irq { i32 5, ptr @.str.31, i32 0 }, %struct.muic_irq { i32 6, ptr @.str.32, i32 0 }, %struct.muic_irq { i32 7, ptr @.str.33, i32 0 }, %struct.muic_irq { i32 8, ptr @.str.34, i32 0 }, %struct.muic_irq { i32 9, ptr @.str.35, i32 0 }, %struct.muic_irq { i32 10, ptr @.str.36, i32 0 }, %struct.muic_irq { i32 11, ptr @.str.37, i32 0 }, %struct.muic_irq { i32 12, ptr @.str.38, i32 0 }, %struct.muic_irq { i32 13, ptr @.str.39, i32 0 }, %struct.muic_irq { i32 14, ptr @.str.40, i32 0 }], [44 x i8] zeroinitializer }, align 32
@rt8973a_reg_data = internal global { [2 x %struct.reg_data], [24 x i8] } { [2 x %struct.reg_data] [%struct.reg_data { i8 2, i8 -11, i8 -32, i8 0 }, %struct.reg_data zeroinitializer], [24 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&info->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt8973a_muic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rt8973a_muic_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"extcon_rt8973a:579:(&rt8973a_muic_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 583, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt8973a_muic_i2c_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/extcon/extcon-rt8973a.c\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._entry_ptr = internal global ptr @rt8973a_muic_i2c_probe._entry, section ".printk_index", align 4
@rt8973a_muic_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 593, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to add irq_chip (irq:%d, err:%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._entry_ptr.12 = internal global ptr @rt8973a_muic_i2c_probe._entry.10, section ".printk_index", align 4
@rt8973a_muic_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 613, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._entry_ptr.15 = internal global ptr @rt8973a_muic_i2c_probe._entry.13, section ".printk_index", align 4
@rt8973a_extcon_cable = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 5, i32 6, i32 61, i32 0], [40 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 621, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._entry_ptr.18 = internal global ptr @rt8973a_muic_i2c_probe._entry.16, section ".printk_index", align 4
@rt8973a_muic_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 628, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe._entry_ptr.21 = internal global ptr @rt8973a_muic_i2c_probe._entry.19, section ".printk_index", align 4
@rt8973a_muic_i2c_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->wq_detcable)->work)\00", [49 x i8] zeroinitializer }, align 32
@rt8973a_muic_i2c_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->wq_detcable)->timer\00", [35 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-attach\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-detach\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"muic-chgdet\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"muic-dcd-t\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-ovp\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-connect\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-adc-chg\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-otp\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"muic-uvlo\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-por\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-otp-fet\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-ovp-fet\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"muic-ocp-latch\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"muic-ocp\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"muic-ovp-ocp\00", [19 x i8] zeroinitializer }, align 32
@rt8973a_muic_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 440, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to handle MUIC interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt8973a_muic_irq_work\00", [42 x i8] zeroinitializer }, align 32
@rt8973a_muic_irq_work._entry_ptr = internal global ptr @rt8973a_muic_irq_work._entry, section ".printk_index", align 4
@rt8973a_muic_cable_handler.prev_cable_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rt8973a_muic_cable_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 318, ptr @.str.45, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"happen Over %s issue. Need to disconnect all cables\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rt8973a_muic_cable_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt8973a_muic_cable_handler._entry_ptr = internal global ptr @rt8973a_muic_cable_handler._entry, section ".printk_index", align 4
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voltage\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Temperature\00", [20 x i8] zeroinitializer }, align 32
@rt8973a_muic_cable_handler._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.7, i32 324, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot handle this event (event:%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@rt8973a_muic_cable_handler._entry_ptr.50 = internal global ptr @rt8973a_muic_cable_handler._entry.48, section ".printk_index", align 4
@rt8973a_muic_cable_handler._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.7, i32 360, ptr @.str.45, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown accessory type (adc:0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@rt8973a_muic_cable_handler._entry_ptr.53 = internal global ptr @rt8973a_muic_cable_handler._entry.51, section ".printk_index", align 4
@rt8973a_muic_cable_handler._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.7, i32 377, ptr @.str.45, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Audio device/button type (adc:0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@rt8973a_muic_cable_handler._entry_ptr.56 = internal global ptr @rt8973a_muic_cable_handler._entry.54, section ".printk_index", align 4
@rt8973a_muic_cable_handler._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.7, i32 389, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot handle this cable_type (adc:0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@rt8973a_muic_cable_handler._entry_ptr.59 = internal global ptr @rt8973a_muic_cable_handler._entry.57, section ".printk_index", align 4
@rt8973a_muic_get_cable_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.7, i32 268, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read ADC register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt8973a_muic_get_cable_type\00", [36 x i8] zeroinitializer }, align 32
@rt8973a_muic_get_cable_type._entry_ptr = internal global ptr @rt8973a_muic_get_cable_type._entry, section ".printk_index", align 4
@rt8973a_muic_get_cable_type._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.7, i32 276, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read DEV1 register\0A\00", [34 x i8] zeroinitializer }, align 32
@rt8973a_muic_get_cable_type._entry_ptr.64 = internal global ptr @rt8973a_muic_get_cable_type._entry.62, section ".printk_index", align 4
@rt8973a_muic_set_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.7, i32 247, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot update DM_CON/DP_CON switch\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt8973a_muic_set_path\00", [42 x i8] zeroinitializer }, align 32
@rt8973a_muic_set_path._entry_ptr = internal global ptr @rt8973a_muic_set_path._entry, section ".printk_index", align 4
@rt8973a_muic_set_path._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.7, i32 253, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown DM_CON/DP_CON switch type (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@rt8973a_muic_set_path._entry_ptr.69 = internal global ptr @rt8973a_muic_set_path._entry.67, section ".printk_index", align 4
@rt8973a_irqs = internal constant { [15 x %struct.regmap_irq], [132 x i8] } { [15 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }], [132 x i8] zeroinitializer }, align 32
@rt8973a_muic_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 3, i32 5, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 2, ptr @rt8973a_irqs, i32 15, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rt8973a_muic_irq_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.71, ptr @.str.72, ptr @.str.7, ptr @.str.73, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"extcon_rt8973a\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt8973a_muic_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot handle this interrupt (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt8973a_muic_detect_cable_wq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.7, i32 498, ptr @.str.45, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to detect cable state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rt8973a_muic_detect_cable_wq\00", [35 x i8] zeroinitializer }, align 32
@rt8973a_muic_detect_cable_wq._entry_ptr = internal global ptr @rt8973a_muic_detect_cable_wq._entry, section ".printk_index", align 4
@rt8973a_init_dev_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.7, i32 510, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read DEVICE_ID register: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt8973a_init_dev_type\00", [42 x i8] zeroinitializer }, align 32
@rt8973a_init_dev_type._entry_ptr = internal global ptr @rt8973a_init_dev_type._entry, section ".printk_index", align 4
@rt8973a_init_dev_type._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.7, i32 520, ptr @.str.80, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device type: version: 0x%x, vendor: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt8973a_init_dev_type._entry_ptr.81 = internal global ptr @rt8973a_init_dev_type._entry.78, section ".printk_index", align 4
@rt8973a_init_dev_type._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.77, ptr @.str.7, i32 540, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read CONTROL1 register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rt8973a_init_dev_type._entry_ptr.84 = internal global ptr @rt8973a_init_dev_type._entry.82, section ".printk_index", align 4
@rt8973a_init_dev_type._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.77, ptr @.str.7, i32 548, ptr @.str.80, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Enable Auto-configuration for internal path\0A\00", [51 x i8] zeroinitializer }, align 32
@rt8973a_init_dev_type._entry_ptr.87 = internal global ptr @rt8973a_init_dev_type._entry.85, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 7]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [35 x i64] [i64 33, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 63]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 36, i64 108]
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"rt8973a_muic_i2c_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 696, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 698, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"rt8973a_dt_match\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 659, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"rt8973a_muic_pm_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 687, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"rt8973a_i2c_id\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 690, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"rt8973a_muic_irqs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 151, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"rt8973a_reg_data\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 71, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 575, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 577, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"rt8973a_muic_regmap_config\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 214, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 579, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 582, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 592, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 611, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"rt8973a_extcon_cable\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 89, i32 27 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 621, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 628, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 640, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 152, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 154, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 155, i32 25 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 156, i32 23 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 157, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 158, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 159, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 160, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 161, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 162, i32 27 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 163, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 164, i32 28 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 165, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 166, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 440, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"prev_cable_type\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 299, i32 22 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 316, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 323, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 359, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 376, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 387, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 268, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 276, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 246, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 252, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [13 x i8] c"rt8973a_irqs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 170, i32 32 }
@___asan_gen_.322 = private unnamed_addr constant [22 x i8] c"rt8973a_muic_irq_chip\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 191, i32 37 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 479, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 498, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 509, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 519, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 539, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.371 = private constant [35 x i8] c"../drivers/extcon/extcon-rt8973a.c\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 547, i32 3 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__initcall__kmod_extcon_rt8973a__289_711_rt8973a_muic_i2c_init4, ptr @rt8973a_init_dev_type._entry, ptr @rt8973a_init_dev_type._entry.78, ptr @rt8973a_init_dev_type._entry.82, ptr @rt8973a_init_dev_type._entry.85, ptr @rt8973a_init_dev_type._entry_ptr, ptr @rt8973a_init_dev_type._entry_ptr.81, ptr @rt8973a_init_dev_type._entry_ptr.84, ptr @rt8973a_init_dev_type._entry_ptr.87, ptr @rt8973a_muic_cable_handler._entry, ptr @rt8973a_muic_cable_handler._entry.48, ptr @rt8973a_muic_cable_handler._entry.51, ptr @rt8973a_muic_cable_handler._entry.54, ptr @rt8973a_muic_cable_handler._entry.57, ptr @rt8973a_muic_cable_handler._entry_ptr, ptr @rt8973a_muic_cable_handler._entry_ptr.50, ptr @rt8973a_muic_cable_handler._entry_ptr.53, ptr @rt8973a_muic_cable_handler._entry_ptr.56, ptr @rt8973a_muic_cable_handler._entry_ptr.59, ptr @rt8973a_muic_detect_cable_wq._entry, ptr @rt8973a_muic_detect_cable_wq._entry_ptr, ptr @rt8973a_muic_get_cable_type._entry, ptr @rt8973a_muic_get_cable_type._entry.62, ptr @rt8973a_muic_get_cable_type._entry_ptr, ptr @rt8973a_muic_get_cable_type._entry_ptr.64, ptr @rt8973a_muic_i2c_probe._entry, ptr @rt8973a_muic_i2c_probe._entry.10, ptr @rt8973a_muic_i2c_probe._entry.13, ptr @rt8973a_muic_i2c_probe._entry.16, ptr @rt8973a_muic_i2c_probe._entry.19, ptr @rt8973a_muic_i2c_probe._entry_ptr, ptr @rt8973a_muic_i2c_probe._entry_ptr.12, ptr @rt8973a_muic_i2c_probe._entry_ptr.15, ptr @rt8973a_muic_i2c_probe._entry_ptr.18, ptr @rt8973a_muic_i2c_probe._entry_ptr.21, ptr @rt8973a_muic_irq_work._entry, ptr @rt8973a_muic_irq_work._entry_ptr, ptr @rt8973a_muic_set_path._entry, ptr @rt8973a_muic_set_path._entry.67, ptr @rt8973a_muic_set_path._entry_ptr, ptr @rt8973a_muic_set_path._entry_ptr.69, ptr @rt8973a_muic_i2c_driver, ptr @.str, ptr @rt8973a_dt_match, ptr @rt8973a_muic_pm_ops, ptr @rt8973a_i2c_id, ptr @rt8973a_muic_irqs, ptr @rt8973a_reg_data, ptr @rt8973a_muic_i2c_probe.__key, ptr @.str.1, ptr @rt8973a_muic_i2c_probe.__key.2, ptr @.str.3, ptr @rt8973a_muic_i2c_probe._key, ptr @rt8973a_muic_regmap_config, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @rt8973a_extcon_cable, ptr @.str.17, ptr @.str.20, ptr @rt8973a_muic_i2c_probe.__key.22, ptr @.str.23, ptr @rt8973a_muic_i2c_probe.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rt8973a_muic_cable_handler.prev_cable_type, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @rt8973a_irqs, ptr @rt8973a_muic_irq_chip, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.86], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_irqs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_reg_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_extcon_cable to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_i2c_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_cable_handler.prev_cable_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_cable_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_cable_handler._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_cable_handler._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_cable_handler._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_cable_handler._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_get_cable_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_get_cable_type._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_set_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_set_path._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_irqs to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_muic_detect_cable_wq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_init_dev_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_init_dev_type._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_init_dev_type._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8973a_init_dev_type._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8973a_muic_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt8973a_muic_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8973a_muic_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup106_crit_edge, label %if.end

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup106_crit_edge, label %if.end4

if.end.cleanup106_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %i2c7 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %i2c7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c, ptr %i2c7, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq8 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %irq8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq8, align 4
  %muic_irqs = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %muic_irqs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rt8973a_muic_irqs, ptr %muic_irqs, align 4
  %num_muic_irqs = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %num_muic_irqs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 15, ptr %num_muic_irqs, align 4
  %reg_data = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rt8973a_reg_data, ptr %reg_data, align 4
  %num_reg_data = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %num_reg_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %num_reg_data, align 4
  %mutex = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @rt8973a_muic_i2c_probe.__key) #6
  %irq_work = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #6
  %12 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @rt8973a_muic_i2c_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry13 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 12, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rt8973a_muic_irq_work, ptr %func, align 4
  %call17 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt8973a_muic_regmap_config, ptr noundef nonnull @rt8973a_muic_i2c_probe._key, ptr noundef nonnull @.str.4) #6
  %regmap = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call17 to i32
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef %17) #9
  br label %cleanup106

if.end27:                                         ; preds = %if.end4
  %20 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq8, align 4
  %irq_data = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 4
  %call30 = tail call i32 @regmap_add_irq_chip(ptr noundef %call17, i32 noundef %21, i32 noundef 8322, i32 noundef 0, ptr noundef nonnull @rt8973a_muic_irq_chip, ptr noundef %irq_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp.not = icmp eq i32 %call30, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end34

for.cond.preheader:                               ; preds = %if.end27
  %22 = ptrtoint ptr %num_muic_irqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_muic_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp39185.not = icmp eq i32 %23, 0
  br i1 %cmp39185.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %26 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef %27, i32 noundef %call30) #9
  br label %cleanup106

for.cond:                                         ; preds = %if.end46
  %inc = add nuw i32 %i.0186, 1
  %28 = ptrtoint ptr %num_muic_irqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_muic_irqs, align 4
  %cmp39 = icmp ult i32 %inc, %29
  br i1 %cmp39, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0186 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %30 = ptrtoint ptr %muic_irqs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %muic_irqs, align 4
  %arrayidx = getelementptr %struct.muic_irq, ptr %31, i32 %i.0186
  %32 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_data, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %call43 = tail call i32 @regmap_irq_get_virq(ptr noundef %33, i32 noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %for.body.cleanup106_crit_edge, label %if.end46

for.body.cleanup106_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

if.end46:                                         ; preds = %for.body
  %virq47 = getelementptr %struct.muic_irq, ptr %31, i32 %i.0186, i32 2
  %36 = ptrtoint ptr %virq47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call43, ptr %virq47, align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %name = getelementptr %struct.muic_irq, ptr %31, i32 %i.0186, i32 1
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 4
  %call49 = tail call i32 @devm_request_threaded_irq(ptr noundef %38, i32 noundef %call43, ptr noundef null, ptr noundef nonnull @rt8973a_muic_irq_handler, i32 noundef 24576, ptr noundef %40, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %for.cond, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.14, i32 noundef %44, i32 noundef %call49) #9
  br label %cleanup106

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %call60 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %46, ptr noundef nonnull @rt8973a_extcon_cable) #6
  %edev = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call60, ptr %edev, align 4
  %cmp.i177 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i177, label %do.end66, label %if.end68

do.end66:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.17) #9
  br label %cleanup106

if.end68:                                         ; preds = %for.end
  %call71 = tail call i32 @devm_extcon_dev_register(ptr noundef %49, ptr noundef %call60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body80, label %do.end76

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.20) #9
  br label %cleanup106

do.body80:                                        ; preds = %if.end68
  %wq_detcable = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %wq_detcable, i32 noundef 0) #6
  %52 = ptrtoint ptr %wq_detcable to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %wq_detcable, align 4
  %lockdep_map88 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map88, ptr noundef nonnull @.str.23, ptr noundef nonnull @rt8973a_muic_i2c_probe.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry91 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 17, i32 0, i32 1
  %53 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry91, ptr %entry91, align 4
  %prev.i178 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 17, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry91, ptr %prev.i178, align 4
  %func94 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 17, i32 0, i32 2
  %55 = ptrtoint ptr %func94 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @rt8973a_muic_detect_cable_wq, ptr %func94, align 4
  %timer = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.25, ptr noundef nonnull @rt8973a_muic_i2c_probe.__key.24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %56 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i179 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %wq_detcable, i32 noundef 2000) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %data.i, align 4, !annotation !185
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.i180 = call i32 @regmap_read(ptr noundef %59, i32 noundef 1, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool.not.i = icmp eq i32 %call.i180, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.76, i32 noundef %call.i180) #9
  br label %rt8973a_init_dev_type.exit

if.end.i:                                         ; preds = %do.body80
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data.i, align 4
  %and.i = and i32 %63, 7
  %and1.i = lshr i32 %63, 3
  %shr2.i = and i32 %and1.i, 31
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.79, i32 noundef %shr2.i, i32 noundef %and.i) #9
  %66 = ptrtoint ptr %num_reg_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_reg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp71.not.i = icmp eq i32 %67, 0
  br i1 %cmp71.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.072.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_data, align 4
  %arrayidx.i = getelementptr %struct.reg_data, ptr %69, i32 %i.072.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i, align 1
  %mask10.i = getelementptr %struct.reg_data, ptr %69, i32 %i.072.i, i32 1
  %72 = ptrtoint ptr %mask10.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mask10.i, align 1
  %invert.i = getelementptr %struct.reg_data, ptr %69, i32 %i.072.i, i32 3
  %74 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %invert.i, align 1, !range !186
  %val21.i = getelementptr %struct.reg_data, ptr %69, i32 %i.072.i, i32 2
  %76 = ptrtoint ptr %val21.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %val21.i, align 1
  %sext.i = sub nsw i8 0, %75
  %val.0.i = xor i8 %77, %sext.i
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %conv24.i = zext i8 %71 to i32
  %conv25.i = zext i8 %73 to i32
  %conv26.i = zext i8 %val.0.i to i32
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef %conv24.i, i32 noundef %conv25.i, i32 noundef %conv26.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc.i = add nuw i32 %i.072.i, 1
  %80 = ptrtoint ptr %num_reg_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_reg_data, align 4
  %cmp.i181 = icmp ult i32 %inc.i, %81
  br i1 %cmp.i181, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call29.i = call i32 @regmap_read(ptr noundef %83, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %do.end34.i

do.end34.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.83, i32 noundef %call29.i) #9
  br label %rt8973a_init_dev_type.exit

if.end36.i:                                       ; preds = %for.end.i
  %86 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data.i, align 4
  %and37.i = and i32 %87, 4
  store i32 %and37.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.rt8973a_init_dev_type.exit_crit_edge, label %if.then39.i

if.end36.i.rt8973a_init_dev_type.exit_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rt8973a_init_dev_type.exit

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %auto_config.i = getelementptr inbounds %struct.rt8973a_muic_info, ptr %call.i, i32 0, i32 15
  %88 = ptrtoint ptr %auto_config.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %auto_config.i, align 4
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.86) #9
  br label %rt8973a_init_dev_type.exit

rt8973a_init_dev_type.exit:                       ; preds = %if.then39.i, %if.end36.i.rt8973a_init_dev_type.exit_crit_edge, %do.end34.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  br label %cleanup106

cleanup106:                                       ; preds = %rt8973a_init_dev_type.exit, %do.end76, %do.end66, %do.end54, %for.body.cleanup106_crit_edge, %do.end34, %if.then20, %if.end.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.2 = phi i32 [ %17, %if.then20 ], [ %call30, %do.end34 ], [ -12, %do.end66 ], [ %call71, %do.end76 ], [ 0, %rt8973a_init_dev_type.exit ], [ -22, %entry.cleanup106_crit_edge ], [ -12, %if.end.cleanup106_crit_edge ], [ %call49, %do.end54 ], [ -22, %for.body.cleanup106_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8973a_muic_i2c_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.rt8973a_muic_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.rt8973a_muic_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %3, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt8973a_muic_irq_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %edev = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 56
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %irq_attach = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %irq_attach to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_attach, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @rt8973a_muic_cable_handler(ptr noundef %add.ptr, i32 noundef 1)
  %4 = ptrtoint ptr %irq_attach to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %irq_attach, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ]
  %irq_detach = getelementptr i8, ptr %work, i32 -3
  %5 = ptrtoint ptr %irq_detach to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %irq_detach, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call fastcc i32 @rt8973a_muic_cable_handler(ptr noundef %add.ptr, i32 noundef 2)
  %7 = ptrtoint ptr %irq_detach to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %irq_detach, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %ret.1 = phi i32 [ %call7, %if.then6 ], [ %ret.0, %if.end4.if.end9_crit_edge ]
  %irq_ovp = getelementptr i8, ptr %work, i32 -2
  %8 = ptrtoint ptr %irq_ovp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_ovp, align 2, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @rt8973a_muic_cable_handler(ptr noundef %add.ptr, i32 noundef 3)
  %10 = ptrtoint ptr %irq_ovp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %irq_ovp, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %ret.2 = phi i32 [ %call12, %if.then11 ], [ %ret.1, %if.end9.if.end14_crit_edge ]
  %irq_otp = getelementptr i8, ptr %work, i32 -1
  %11 = ptrtoint ptr %irq_otp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq_otp, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @rt8973a_muic_cable_handler(ptr noundef %add.ptr, i32 noundef 4)
  %13 = ptrtoint ptr %irq_otp to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %irq_otp, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %ret.3 = phi i32 [ %call17, %if.then16 ], [ %ret.2, %if.end14.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp = icmp slt i32 %ret.3, 0
  br i1 %cmp, label %do.end, label %if.end19.if.end21_crit_edge

if.end19.if.end21_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.41) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end19.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8973a_muic_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_muic_irqs = getelementptr inbounds %struct.rt8973a_muic_info, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %num_muic_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_muic_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27.not = icmp eq i32 %1, 0
  br i1 %cmp27.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %muic_irqs = getelementptr inbounds %struct.rt8973a_muic_info, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %muic_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muic_irqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %irq_type.028 = phi i32 [ -1, %for.body.lr.ph ], [ %irq_type.1, %for.inc.for.body_crit_edge ]
  %virq = getelementptr %struct.muic_irq, ptr %3, i32 %i.029, i32 2
  %4 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp1 = icmp eq i32 %5, %irq
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.muic_irq, ptr %3, i32 %i.029
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %irq_type.1 = phi i32 [ %7, %if.then ], [ %irq_type.028, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %8 = zext i32 %irq_type.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_type.1, label %for.end.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 4, label %sw.bb6
    i32 7, label %sw.bb7
  ]

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_attach = getelementptr inbounds %struct.rt8973a_muic_info, ptr %data, i32 0, i32 8
  %9 = ptrtoint ptr %irq_attach to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %irq_attach, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_detach = getelementptr inbounds %struct.rt8973a_muic_info, ptr %data, i32 0, i32 9
  %10 = ptrtoint ptr %irq_detach to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %irq_detach, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_ovp = getelementptr inbounds %struct.rt8973a_muic_info, ptr %data, i32 0, i32 10
  %11 = ptrtoint ptr %irq_ovp to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %irq_ovp, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_otp = getelementptr inbounds %struct.rt8973a_muic_info, ptr %data, i32 0, i32 11
  %12 = ptrtoint ptr %irq_otp to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %irq_otp, align 1
  br label %sw.epilog

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry.do.body_crit_edge
  %irq_type.0.lcssa32 = phi i32 [ %irq_type.1, %for.end.do.body_crit_edge ], [ -1, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt8973a_muic_irq_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt8973a_muic_irq_handler, %if.then11)) #6
          to label %sw.epilog [label %if.then11], !srcloc !187

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt8973a_muic_irq_handler.__UNIQUE_ID_ddebug288, ptr noundef %14, ptr noundef nonnull @.str.73, i32 noundef %irq_type.0.lcssa32) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %do.body, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  %irq_work = getelementptr inbounds %struct.rt8973a_muic_info, ptr %data, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %irq_work) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt8973a_muic_detect_cable_wq(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -184
  %call1 = tail call fastcc i32 @rt8973a_muic_cable_handler(ptr noundef %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.74) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt8973a_muic_cable_handler(ptr nocapture noundef readonly %info, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  %adc.i = alloca i32, align 4
  %dev1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %event, label %do.end5 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %entry.do.end_crit_edge
    i32 4, label %entry.do.end_crit_edge70
  ]

entry.do.end_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc.i) #6
  %1 = ptrtoint ptr %adc.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %adc.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev1.i) #6
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dev1.i, align 4, !annotation !185
  %regmap.i = getelementptr inbounds %struct.rt8973a_muic_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 7, ptr noundef nonnull %adc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.60) #9
  br label %rt8973a_muic_get_cable_type.exit

if.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %adc.i, align 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 10, ptr noundef nonnull %dev1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.63) #9
  br label %rt8973a_muic_get_cable_type.exit

if.end9.i:                                        ; preds = %if.end.i
  %and.i = and i32 %8, 31
  %13 = ptrtoint ptr %adc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cond.i = icmp eq i32 %14, 31
  br i1 %cond.i, label %sw.bb.i, label %if.end9.i.rt8973a_muic_get_cable_type.exit_crit_edge

if.end9.i.rt8973a_muic_get_cable_type.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rt8973a_muic_get_cable_type.exit

sw.bb.i:                                          ; preds = %if.end9.i
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev1.i, align 4
  %and10.i = and i32 %16, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %sw.bb.i.rt8973a_muic_get_cable_type.exit_crit_edge

sw.bb.i.rt8973a_muic_get_cable_type.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rt8973a_muic_get_cable_type.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %and13.i = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %..i = select i1 %tobool14.not.i, i32 31, i32 23
  br label %rt8973a_muic_get_cable_type.exit

rt8973a_muic_get_cable_type.exit:                 ; preds = %if.else.i, %sw.bb.i.rt8973a_muic_get_cable_type.exit_crit_edge, %if.end9.i.rt8973a_muic_get_cable_type.exit_crit_edge, %do.end7.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call2.i, %do.end7.i ], [ %and.i, %if.end9.i.rt8973a_muic_get_cable_type.exit_crit_edge ], [ 63, %sw.bb.i.rt8973a_muic_get_cable_type.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev1.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = load i32, ptr @rt8973a_muic_cable_handler.prev_cable_type, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge70
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp = icmp eq i32 %event, 3
  %cond = select i1 %cmp, ptr @.str.46, ptr @.str.47
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond) #9
  %20 = load i32, ptr @rt8973a_muic_cable_handler.prev_cable_type, align 4
  br label %sw.epilog

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.49, i32 noundef %event) #9
  br label %cleanup

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %rt8973a_muic_get_cable_type.exit
  %cable_type.0 = phi i32 [ %20, %do.end ], [ %17, %sw.bb1 ], [ %retval.0.i, %rt8973a_muic_get_cable_type.exit ]
  %attached.0.off0 = phi i1 [ false, %do.end ], [ false, %sw.bb1 ], [ true, %rt8973a_muic_get_cable_type.exit ]
  store i32 %cable_type.0, ptr @rt8973a_muic_cable_handler.prev_cable_type, align 4
  %23 = zext i32 %cable_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %cable_type.0, label %do.end27 [
    i32 0, label %sw.epilog.sw.epilog29_crit_edge
    i32 23, label %sw.bb8
    i32 24, label %sw.epilog.sw.bb9_crit_edge
    i32 25, label %sw.epilog.sw.bb9_crit_edge71
    i32 28, label %sw.epilog.sw.bb10_crit_edge
    i32 29, label %sw.epilog.sw.bb10_crit_edge72
    i32 63, label %sw.bb11
    i32 31, label %sw.epilog.cleanup_crit_edge
    i32 21, label %sw.epilog.do.end16_crit_edge
    i32 22, label %sw.epilog.do.end16_crit_edge73
    i32 26, label %sw.epilog.do.end16_crit_edge74
    i32 27, label %sw.epilog.do.end16_crit_edge75
    i32 30, label %sw.epilog.do.end16_crit_edge76
    i32 1, label %sw.epilog.do.end21_crit_edge
    i32 2, label %sw.epilog.do.end21_crit_edge77
    i32 3, label %sw.epilog.do.end21_crit_edge78
    i32 4, label %sw.epilog.do.end21_crit_edge79
    i32 5, label %sw.epilog.do.end21_crit_edge80
    i32 6, label %sw.epilog.do.end21_crit_edge81
    i32 7, label %sw.epilog.do.end21_crit_edge82
    i32 8, label %sw.epilog.do.end21_crit_edge83
    i32 9, label %sw.epilog.do.end21_crit_edge84
    i32 10, label %sw.epilog.do.end21_crit_edge85
    i32 11, label %sw.epilog.do.end21_crit_edge86
    i32 12, label %sw.epilog.do.end21_crit_edge87
    i32 13, label %sw.epilog.do.end21_crit_edge88
    i32 19, label %sw.epilog.do.end21_crit_edge89
    i32 14, label %sw.epilog.cleanup_crit_edge90
    i32 15, label %sw.epilog.cleanup_crit_edge91
    i32 16, label %sw.epilog.cleanup_crit_edge92
    i32 17, label %sw.epilog.cleanup_crit_edge93
    i32 18, label %sw.epilog.cleanup_crit_edge94
    i32 20, label %sw.epilog.cleanup_crit_edge95
  ]

sw.epilog.cleanup_crit_edge95:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge94:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge93:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge92:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge91:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.cleanup_crit_edge90:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.do.end21_crit_edge89:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge88:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge87:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge86:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge85:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge84:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge83:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge82:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge81:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge80:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge79:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge78:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge77:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

sw.epilog.do.end16_crit_edge76:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

sw.epilog.do.end16_crit_edge75:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

sw.epilog.do.end16_crit_edge74:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

sw.epilog.do.end16_crit_edge73:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

sw.epilog.do.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.sw.bb10_crit_edge72:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.epilog.sw.bb10_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.epilog.sw.bb9_crit_edge71:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

sw.epilog.sw.epilog29_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

sw.bb9:                                           ; preds = %sw.epilog.sw.bb9_crit_edge, %sw.epilog.sw.bb9_crit_edge71
  br label %sw.epilog29

sw.bb10:                                          ; preds = %sw.epilog.sw.bb10_crit_edge, %sw.epilog.sw.bb10_crit_edge72
  br label %sw.epilog29

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.end16:                                         ; preds = %sw.epilog.do.end16_crit_edge, %sw.epilog.do.end16_crit_edge73, %sw.epilog.do.end16_crit_edge74, %sw.epilog.do.end16_crit_edge75, %sw.epilog.do.end16_crit_edge76
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.52, i32 noundef %cable_type.0) #9
  br label %cleanup

do.end21:                                         ; preds = %sw.epilog.do.end21_crit_edge, %sw.epilog.do.end21_crit_edge77, %sw.epilog.do.end21_crit_edge78, %sw.epilog.do.end21_crit_edge79, %sw.epilog.do.end21_crit_edge80, %sw.epilog.do.end21_crit_edge81, %sw.epilog.do.end21_crit_edge82, %sw.epilog.do.end21_crit_edge83, %sw.epilog.do.end21_crit_edge84, %sw.epilog.do.end21_crit_edge85, %sw.epilog.do.end21_crit_edge86, %sw.epilog.do.end21_crit_edge87, %sw.epilog.do.end21_crit_edge88, %sw.epilog.do.end21_crit_edge89
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.55, i32 noundef %cable_type.0) #9
  br label %cleanup

do.end27:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.58, i32 noundef %cable_type.0) #9
  br label %cleanup

sw.epilog29:                                      ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.epilog.sw.epilog29_crit_edge
  %con_sw.0 = phi i32 [ 36, %sw.bb11 ], [ 108, %sw.bb10 ], [ 36, %sw.bb9 ], [ 0, %sw.bb8 ], [ 36, %sw.epilog.sw.epilog29_crit_edge ]
  %cmp34 = phi i1 [ true, %sw.bb11 ], [ false, %sw.bb10 ], [ false, %sw.bb9 ], [ false, %sw.bb8 ], [ false, %sw.epilog.sw.epilog29_crit_edge ]
  %id.0 = phi i32 [ 1, %sw.bb11 ], [ 61, %sw.bb10 ], [ 61, %sw.bb9 ], [ 6, %sw.bb8 ], [ 2, %sw.epilog.sw.epilog29_crit_edge ]
  %auto_config.i = getelementptr inbounds %struct.rt8973a_muic_info, ptr %info, i32 0, i32 15
  %30 = ptrtoint ptr %auto_config.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %auto_config.i, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i62 = icmp eq i8 %31, 0
  br i1 %tobool.not.i62, label %if.end.i63, label %sw.epilog29.if.end_crit_edge

sw.epilog29.if.end_crit_edge:                     ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i63:                                       ; preds = %sw.epilog29
  %spec.select.i = select i1 %attached.0.off0, i32 %con_sw.0, i32 108
  %32 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %spec.select.i, label %do.end8.i [
    i32 0, label %if.end.i63.sw.bb.i65_crit_edge
    i32 36, label %if.end.i63.sw.bb.i65_crit_edge96
    i32 108, label %if.end.i63.sw.bb.i65_crit_edge97
  ]

if.end.i63.sw.bb.i65_crit_edge97:                 ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i65

if.end.i63.sw.bb.i65_crit_edge96:                 ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i65

if.end.i63.sw.bb.i65_crit_edge:                   ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i65

sw.bb.i65:                                        ; preds = %if.end.i63.sw.bb.i65_crit_edge, %if.end.i63.sw.bb.i65_crit_edge96, %if.end.i63.sw.bb.i65_crit_edge97
  %regmap.i64 = getelementptr inbounds %struct.rt8973a_muic_info, ptr %info, i32 0, i32 3
  %33 = ptrtoint ptr %regmap.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i64, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 19, i32 noundef 252, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i66, label %sw.bb.i65.if.end_crit_edge

sw.bb.i65.if.end_crit_edge:                       ; preds = %sw.bb.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i66:                                       ; preds = %sw.bb.i65
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.65) #9
  br label %cleanup

do.end8.i:                                        ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.68, i32 noundef %spec.select.i) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i65.if.end_crit_edge, %sw.epilog29.if.end_crit_edge
  %edev = getelementptr inbounds %struct.rt8973a_muic_info, ptr %info, i32 0, i32 1
  %39 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %edev, align 4
  %call33 = call i32 @extcon_set_state_sync(ptr noundef %40, i32 noundef %id.0, i1 noundef zeroext %attached.0.off0) #6
  br i1 %cmp34, label %if.then35, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edev, align 4
  %call38 = call i32 @extcon_set_state_sync(ptr noundef %42, i32 noundef 5, i1 noundef zeroext %attached.0.off0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end.cleanup_crit_edge, %do.end8.i, %do.end.i66, %do.end27, %do.end21, %do.end16, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge90, %sw.epilog.cleanup_crit_edge91, %sw.epilog.cleanup_crit_edge92, %sw.epilog.cleanup_crit_edge93, %sw.epilog.cleanup_crit_edge94, %sw.epilog.cleanup_crit_edge95, %do.end5
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -22, %do.end27 ], [ 0, %do.end21 ], [ 0, %do.end16 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge90 ], [ 0, %sw.epilog.cleanup_crit_edge91 ], [ 0, %sw.epilog.cleanup_crit_edge92 ], [ 0, %sw.epilog.cleanup_crit_edge93 ], [ 0, %sw.epilog.cleanup_crit_edge94 ], [ 0, %sw.epilog.cleanup_crit_edge95 ], [ 0, %if.then35 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %do.end.i66 ], [ -22, %do.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt8973a_muic_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 2
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8973a_muic_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.rt8973a_muic_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8973a_muic_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.rt8973a_muic_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !138, !140, !142, !143, !144, !145, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__initcall__kmod_extcon_rt8973a__289_711_rt8973a_muic_i2c_init4, !1, !"__initcall__kmod_extcon_rt8973a__289_711_rt8973a_muic_i2c_init4", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 711, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 713, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 714, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 715, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 698, i32 11}
!11 = !{ptr @rt8973a_muic_i2c_driver, !12, !"rt8973a_muic_i2c_driver", i1 false, i1 false}
!12 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 696, i32 26}
!13 = !{ptr @rt8973a_muic_i2c_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 575, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rt8973a_muic_i2c_probe.__key.2, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 577, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rt8973a_muic_i2c_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 579, i32 17}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 582, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rt8973a_muic_i2c_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rt8973a_muic_i2c_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 592, i32 3}
!32 = !{ptr @rt8973a_muic_i2c_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt8973a_muic_i2c_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 611, i32 4}
!36 = !{ptr @rt8973a_muic_i2c_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rt8973a_muic_i2c_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 621, i32 3}
!40 = !{ptr @rt8973a_muic_i2c_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rt8973a_muic_i2c_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 628, i32 3}
!44 = !{ptr @rt8973a_muic_i2c_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rt8973a_muic_i2c_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @rt8973a_muic_i2c_probe.__key.22, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 640, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rt8973a_muic_i2c_probe.__key.24, !47, !"__key", i1 false, i1 false}
!50 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 152, i32 26}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 153, i32 26}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 154, i32 26}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 155, i32 25}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 156, i32 23}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 157, i32 27}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 158, i32 27}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 159, i32 23}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 160, i32 24}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 161, i32 23}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 162, i32 27}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 163, i32 27}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 164, i32 28}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 165, i32 23}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 166, i32 27}
!81 = !{ptr @rt8973a_muic_irqs, !82, !"rt8973a_muic_irqs", i1 false, i1 false}
!82 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 151, i32 24}
!83 = !{ptr @rt8973a_reg_data, !84, !"rt8973a_reg_data", i1 false, i1 false}
!84 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 71, i32 24}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 440, i32 3}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rt8973a_muic_irq_work._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @rt8973a_muic_irq_work._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @rt8973a_muic_cable_handler.prev_cable_type, !91, !"prev_cable_type", i1 false, i1 false}
!91 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 299, i32 22}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 316, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rt8973a_muic_cable_handler._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @rt8973a_muic_cable_handler._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 323, i32 3}
!102 = !{ptr @rt8973a_muic_cable_handler._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rt8973a_muic_cable_handler._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 359, i32 3}
!106 = !{ptr @rt8973a_muic_cable_handler._entry.51, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rt8973a_muic_cable_handler._entry_ptr.53, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 376, i32 3}
!110 = !{ptr @rt8973a_muic_cable_handler._entry.54, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rt8973a_muic_cable_handler._entry_ptr.56, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 387, i32 3}
!114 = !{ptr @rt8973a_muic_cable_handler._entry.57, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @rt8973a_muic_cable_handler._entry_ptr.59, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 268, i32 3}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rt8973a_muic_get_cable_type._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rt8973a_muic_get_cable_type._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 276, i32 3}
!123 = !{ptr @rt8973a_muic_get_cable_type._entry.62, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rt8973a_muic_get_cable_type._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 246, i32 4}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @rt8973a_muic_set_path._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @rt8973a_muic_set_path._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 252, i32 3}
!132 = !{ptr @rt8973a_muic_set_path._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @rt8973a_muic_set_path._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @rt8973a_muic_regmap_config, !135, !"rt8973a_muic_regmap_config", i1 false, i1 false}
!135 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 214, i32 35}
!136 = !{ptr @rt8973a_muic_irq_chip, !137, !"rt8973a_muic_irq_chip", i1 false, i1 false}
!137 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 191, i32 37}
!138 = !{ptr @rt8973a_irqs, !139, !"rt8973a_irqs", i1 false, i1 false}
!139 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 170, i32 32}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 479, i32 3}
!142 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rt8973a_muic_irq_handler.__UNIQUE_ID_ddebug288, !141, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!145 = !{ptr @rt8973a_extcon_cable, !146, !"rt8973a_extcon_cable", i1 false, i1 false}
!146 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 89, i32 27}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 498, i32 3}
!149 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @rt8973a_muic_detect_cable_wq._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @rt8973a_muic_detect_cable_wq._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 509, i32 3}
!154 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @rt8973a_init_dev_type._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @rt8973a_init_dev_type._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 519, i32 2}
!159 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @rt8973a_init_dev_type._entry.78, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @rt8973a_init_dev_type._entry_ptr.81, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 539, i32 3}
!164 = !{ptr @rt8973a_init_dev_type._entry.82, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @rt8973a_init_dev_type._entry_ptr.84, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 547, i32 3}
!168 = !{ptr @rt8973a_init_dev_type._entry.85, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @rt8973a_init_dev_type._entry_ptr.87, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @rt8973a_dt_match, !171, !"rt8973a_dt_match", i1 false, i1 false}
!171 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 659, i32 34}
!172 = !{ptr @rt8973a_muic_pm_ops, !173, !"rt8973a_muic_pm_ops", i1 false, i1 false}
!173 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 687, i32 8}
!174 = !{ptr @rt8973a_i2c_id, !175, !"rt8973a_i2c_id", i1 false, i1 false}
!175 = !{!"../drivers/extcon/extcon-rt8973a.c", i32 690, i32 35}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{!"auto-init"}
!186 = !{i8 0, i8 2}
!187 = !{i64 2149004453, i64 2149004458, i64 2149004471, i64 2149004515, i64 2149004549, i64 2149004570}
