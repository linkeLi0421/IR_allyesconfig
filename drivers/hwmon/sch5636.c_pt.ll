; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sch5636.c_pt.bc'
source_filename = "../drivers/hwmon/sch5636.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sch5636_data = type { i16, ptr, %struct.mutex, i8, i32, [5 x i8], [16 x i8], [16 x i8], [8 x i16], [8 x i8] }

@__initcall__kmod_sch5636__183_512_sch5636_driver_init6 = internal global ptr @sch5636_driver_init, section ".initcall6.init", align 4
@sch5636_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sch5636_probe, ptr @sch5636_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sch5636_driver_exit = internal global ptr @sch5636_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [60 x i8] c"sch5636.description=SMSC SCH5636 Hardware Monitoring Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [51 x i8] c"sch5636.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [35 x i8] c"sch5636.file=drivers/hwmon/sch5636\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [20 x i8] c"sch5636.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch5636\00", [24 x i8] zeroinitializer }, align 32
@sch5636_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@sch5636_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sch5636: Could not read Fujitsu id byte at %#x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sch5636_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/sch5636.c\00", [40 x i8] zeroinitializer }, align 32
@sch5636_probe._entry_ptr = internal global ptr @sch5636_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"THS\00", [28 x i8] zeroinitializer }, align 32
@sch5636_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013sch5636: Unknown Fujitsu id: %02x%02x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@sch5636_probe._entry_ptr.8 = internal global ptr @sch5636_probe._entry.6, section ".printk_index", align 4
@sch5636_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016sch5636: Found %s chip at %#hx, revision: %d.%02d\0A\00", [43 x i8] zeroinitializer }, align 32
@sch5636_probe._entry_ptr.11 = internal global ptr @sch5636_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"theseus\00", [24 x i8] zeroinitializer }, align 32
@sch5636_attr = internal global { [11 x %struct.sensor_device_attribute], [64 x i8] } { [11 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_label_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_label_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_label_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_label_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_label_show, ptr null }, i32 4 }], [64 x i8] zeroinitializer }, align 32
@sch5636_temp_attr = internal global { [48 x %struct.sensor_device_attribute], [384 x i8] } { [48 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 10 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 10 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 10 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 13 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 13 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 13 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 14 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 14 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 14 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 15 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 15 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 15 }], [384 x i8] zeroinitializer }, align 32
@sch5636_fan_attr = internal global { [24 x %struct.sensor_device_attribute], [192 x i8] } { [24 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 7 }], [192 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_label\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_label\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_label\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_label\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_label\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@SCH5636_REG_IN_FACTORS = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 4400, i16 1500, i16 4000, i16 4400, i16 16000], [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@SCH5636_REG_TEMP_VAL = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 43, i16 38, i16 39, i16 40, i16 41, i16 42, i16 384, i16 385, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140], [32 x i8] zeroinitializer }, align 32
@SCH5636_REG_FAN_VAL = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 44, i16 46, i16 48, i16 50, i16 98, i16 100, i16 102, i16 104], [16 x i8] zeroinitializer }, align 32
@SCH5636_IN_LABELS = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.3V\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VREF\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.3AUX\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12V\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_input\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_input\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp9_input\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp9_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp9_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp10_input\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp10_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp10_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp11_input\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp11_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp11_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp12_input\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp12_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp12_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp13_input\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp13_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp13_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp14_input\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp14_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp14_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp15_input\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp15_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp15_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp16_input\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp16_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp16_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_input\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_alarm\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"sch5636_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 504, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 506, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 403, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 410, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 419, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 420, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 435, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"sch5636_attr\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 277, i32 39 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"sch5636_temp_attr\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 291, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"sch5636_fan_attr\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 342, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 278, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 279, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 280, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 281, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 282, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 283, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 284, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 285, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 286, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 287, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 288, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 162, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant [23 x i8] c"SCH5636_REG_IN_FACTORS\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 32, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 178, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"SCH5636_REG_TEMP_VAL\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 37, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"SCH5636_REG_FAN_VAL\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 45, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"SCH5636_IN_LABELS\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 34, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 35, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 35, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 35, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 35, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 35, i32 36 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 292, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 293, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 294, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 295, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 296, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 297, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 298, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 299, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 300, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 301, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 302, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 303, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 304, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 305, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 306, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 307, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 308, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 309, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 310, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 311, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 312, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 313, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 314, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 315, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 316, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 317, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 318, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 319, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 320, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 321, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 322, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 323, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 324, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 325, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 326, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 327, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 328, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 329, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 330, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 331, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 332, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 333, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 334, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 335, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 336, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 337, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 338, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 339, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 343, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 344, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 345, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 346, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 347, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 348, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 349, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 350, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 351, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 352, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 353, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 354, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 355, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 356, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 357, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 358, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 359, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 360, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 361, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 362, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 363, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 364, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 365, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private constant [27 x i8] c"../drivers/hwmon/sch5636.c\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 366, i32 2 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_sch5636_driver_exit, ptr @__initcall__kmod_sch5636__183_512_sch5636_driver_init6, ptr @sch5636_driver_exit, ptr @sch5636_probe._entry, ptr @sch5636_probe._entry.6, ptr @sch5636_probe._entry.9, ptr @sch5636_probe._entry_ptr, ptr @sch5636_probe._entry_ptr.11, ptr @sch5636_probe._entry_ptr.8, ptr @sch5636_driver, ptr @.str, ptr @sch5636_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @sch5636_attr, ptr @sch5636_temp_attr, ptr @sch5636_fan_attr, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @SCH5636_REG_IN_FACTORS, ptr @.str.25, ptr @SCH5636_REG_TEMP_VAL, ptr @SCH5636_REG_FAN_VAL, ptr @SCH5636_IN_LABELS, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_attr to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_temp_attr to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5636_fan_attr to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5636_REG_IN_FACTORS to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5636_REG_TEMP_VAL to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5636_REG_FAN_VAL to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5636_IN_LABELS to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sch5636_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sch5636_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sch5636_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sch5636_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sch5636_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %id = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %0 = getelementptr inbounds [4 x i8], ptr %id, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %id, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %id, i32 0, i32 3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 172, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #6
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call1, align 4
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.sch5636_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sch5636_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call.i, align 4
  %call5 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %8, i16 noundef zeroext 1920) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.do.end11_crit_edge, label %if.end14

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end11:                                         ; preds = %if.end14.1.do.end11_crit_edge, %if.end14.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %add.lcssa = phi i32 [ 1920, %if.end.do.end11_crit_edge ], [ 1921, %if.end14.do.end11_crit_edge ], [ 1922, %if.end14.1.do.end11_crit_edge ]
  %call5.lcssa = phi i32 [ %call5, %if.end.do.end11_crit_edge ], [ %call5.1, %if.end14.do.end11_crit_edge ], [ %call5.2, %if.end14.1.do.end11_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %add.lcssa) #9
  br label %error

if.end14:                                         ; preds = %if.end
  %conv15 = trunc i32 %call5 to i8
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %id, align 1
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call.i, align 4
  %call5.1 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %11, i16 noundef zeroext 1921) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %cmp6.1 = icmp slt i32 %call5.1, 0
  br i1 %cmp6.1, label %if.end14.do.end11_crit_edge, label %if.end14.1

if.end14.do.end11_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.end14.1:                                       ; preds = %if.end14
  %conv15.1 = trunc i32 %call5.1 to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv15.1, ptr %0, align 1
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %call.i, align 4
  %call5.2 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %14, i16 noundef zeroext 1922) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %cmp6.2 = icmp slt i32 %call5.2, 0
  br i1 %cmp6.2, label %if.end14.1.do.end11_crit_edge, label %if.end14.2

if.end14.1.do.end11_crit_edge:                    ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.end14.2:                                       ; preds = %if.end14.1
  %conv15.2 = trunc i32 %call5.2 to i8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15.2, ptr %1, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %2, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %id, ptr noundef nonnull dereferenceable(4) @.str.5, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool18.not = icmp eq i32 %bcmp, 0
  br i1 %tobool18.not, label %for.body35.preheader, label %do.end22

for.body35.preheader:                             ; preds = %if.end14.2
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call.i, align 4
  %call39 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %18, i16 noundef zeroext 1923) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %for.body35.preheader.error_crit_edge, label %if.end43

for.body35.preheader.error_crit_edge:             ; preds = %for.body35.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end22:                                         ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id, align 1
  %conv25 = zext i8 %20 to i32
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  %conv27 = zext i8 %22 to i32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %conv29 = zext i8 %24 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29) #9
  br label %error

if.end43:                                         ; preds = %for.body35.preheader
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call.i, align 4
  %call39.1 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %26, i16 noundef zeroext 1924) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %cmp40.1 = icmp slt i32 %call39.1, 0
  br i1 %cmp40.1, label %if.end43.error_crit_edge, label %if.end43.1

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end43.1:                                       ; preds = %if.end43
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call.i, align 4
  %conv53 = zext i16 %28 to i32
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %conv53, i32 noundef %call39, i32 noundef %call39.1) #9
  br label %for.body60

for.body60:                                       ; preds = %if.end70.for.body60_crit_edge, %if.end43.1
  %i.2250 = phi i32 [ 0, %if.end43.1 ], [ %inc74, %if.end70.for.body60_crit_edge ]
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %call.i, align 4
  %31 = trunc i32 %i.2250 to i16
  %conv63 = add i16 %31, 1936
  %call64 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %30, i16 noundef zeroext %conv63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %for.body60.error_crit_edge, label %if.end70, !prof !239

for.body60.error_crit_edge:                       ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end70:                                         ; preds = %for.body60
  %conv71 = trunc i32 %call64 to i8
  %arrayidx72 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 7, i32 %i.2250
  %32 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv71, ptr %arrayidx72, align 1
  %inc74 = add nuw nsw i32 %i.2250, 1
  %exitcond.not = icmp eq i32 %inc74, 16
  br i1 %exitcond.not, label %for.body79.preheader, label %if.end70.for.body60_crit_edge

if.end70.for.body60_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60

for.body79.preheader:                             ; preds = %if.end70
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call.i, align 4
  %call83 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %34, i16 noundef zeroext 2176) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %for.body79.preheader.error_crit_edge, label %if.end93, !prof !239

for.body79.preheader.error_crit_edge:             ; preds = %for.body79.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93:                                         ; preds = %for.body79.preheader
  %conv94 = trunc i32 %call83 to i8
  %arrayidx95 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 0
  %35 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv94, ptr %arrayidx95, align 1
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %call.i, align 4
  %call83.1 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %37, i16 noundef zeroext 2177) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.1)
  %cmp84.1 = icmp slt i32 %call83.1, 0
  br i1 %cmp84.1, label %if.end93.error_crit_edge, label %if.end93.1, !prof !239

if.end93.error_crit_edge:                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93.1:                                       ; preds = %if.end93
  %conv94.1 = trunc i32 %call83.1 to i8
  %arrayidx95.1 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv94.1, ptr %arrayidx95.1, align 1
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %call.i, align 4
  %call83.2 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %40, i16 noundef zeroext 2178) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.2)
  %cmp84.2 = icmp slt i32 %call83.2, 0
  br i1 %cmp84.2, label %if.end93.1.error_crit_edge, label %if.end93.2, !prof !239

if.end93.1.error_crit_edge:                       ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93.2:                                       ; preds = %if.end93.1
  %conv94.2 = trunc i32 %call83.2 to i8
  %arrayidx95.2 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 2
  %41 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv94.2, ptr %arrayidx95.2, align 1
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %call.i, align 4
  %call83.3 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %43, i16 noundef zeroext 2179) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.3)
  %cmp84.3 = icmp slt i32 %call83.3, 0
  br i1 %cmp84.3, label %if.end93.2.error_crit_edge, label %if.end93.3, !prof !239

if.end93.2.error_crit_edge:                       ; preds = %if.end93.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93.3:                                       ; preds = %if.end93.2
  %conv94.3 = trunc i32 %call83.3 to i8
  %arrayidx95.3 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 3
  %44 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv94.3, ptr %arrayidx95.3, align 1
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %call.i, align 4
  %call83.4 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %46, i16 noundef zeroext 2180) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.4)
  %cmp84.4 = icmp slt i32 %call83.4, 0
  br i1 %cmp84.4, label %if.end93.3.error_crit_edge, label %if.end93.4, !prof !239

if.end93.3.error_crit_edge:                       ; preds = %if.end93.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93.4:                                       ; preds = %if.end93.3
  %conv94.4 = trunc i32 %call83.4 to i8
  %arrayidx95.4 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 4
  %47 = ptrtoint ptr %arrayidx95.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv94.4, ptr %arrayidx95.4, align 1
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %call.i, align 4
  %call83.5 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %49, i16 noundef zeroext 2181) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.5)
  %cmp84.5 = icmp slt i32 %call83.5, 0
  br i1 %cmp84.5, label %if.end93.4.error_crit_edge, label %if.end93.5, !prof !239

if.end93.4.error_crit_edge:                       ; preds = %if.end93.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93.5:                                       ; preds = %if.end93.4
  %conv94.5 = trunc i32 %call83.5 to i8
  %arrayidx95.5 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 5
  %50 = ptrtoint ptr %arrayidx95.5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv94.5, ptr %arrayidx95.5, align 1
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %call.i, align 4
  %call83.6 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %52, i16 noundef zeroext 2182) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.6)
  %cmp84.6 = icmp slt i32 %call83.6, 0
  br i1 %cmp84.6, label %if.end93.5.error_crit_edge, label %if.end93.6, !prof !239

if.end93.5.error_crit_edge:                       ; preds = %if.end93.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93.6:                                       ; preds = %if.end93.5
  %conv94.6 = trunc i32 %call83.6 to i8
  %arrayidx95.6 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 6
  %53 = ptrtoint ptr %arrayidx95.6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv94.6, ptr %arrayidx95.6, align 1
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %call.i, align 4
  %call83.7 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %55, i16 noundef zeroext 2183) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.7)
  %cmp84.7 = icmp slt i32 %call83.7, 0
  br i1 %cmp84.7, label %if.end93.6.error_crit_edge, label %if.end93.7, !prof !239

if.end93.6.error_crit_edge:                       ; preds = %if.end93.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end93.7:                                       ; preds = %if.end93.6
  %conv94.7 = trunc i32 %call83.7 to i8
  %arrayidx95.7 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 7
  %56 = ptrtoint ptr %arrayidx95.7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv94.7, ptr %arrayidx95.7, align 1
  %call105 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @sch5636_attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %for.cond99, label %if.end93.7.error_crit_edge

if.end93.7.error_crit_edge:                       ; preds = %if.end93.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99:                                       ; preds = %if.end93.7
  %call105.1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 1)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.1)
  %tobool106.not.1 = icmp eq i32 %call105.1, 0
  br i1 %tobool106.not.1, label %for.cond99.1, label %for.cond99.error_crit_edge

for.cond99.error_crit_edge:                       ; preds = %for.cond99
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.1:                                     ; preds = %for.cond99
  %call105.2 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 2)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.2)
  %tobool106.not.2 = icmp eq i32 %call105.2, 0
  br i1 %tobool106.not.2, label %for.cond99.2, label %for.cond99.1.error_crit_edge

for.cond99.1.error_crit_edge:                     ; preds = %for.cond99.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.2:                                     ; preds = %for.cond99.1
  %call105.3 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 3)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.3)
  %tobool106.not.3 = icmp eq i32 %call105.3, 0
  br i1 %tobool106.not.3, label %for.cond99.3, label %for.cond99.2.error_crit_edge

for.cond99.2.error_crit_edge:                     ; preds = %for.cond99.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.3:                                     ; preds = %for.cond99.2
  %call105.4 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 4)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.4)
  %tobool106.not.4 = icmp eq i32 %call105.4, 0
  br i1 %tobool106.not.4, label %for.cond99.4, label %for.cond99.3.error_crit_edge

for.cond99.3.error_crit_edge:                     ; preds = %for.cond99.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.4:                                     ; preds = %for.cond99.3
  %call105.5 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 5)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.5)
  %tobool106.not.5 = icmp eq i32 %call105.5, 0
  br i1 %tobool106.not.5, label %for.cond99.5, label %for.cond99.4.error_crit_edge

for.cond99.4.error_crit_edge:                     ; preds = %for.cond99.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.5:                                     ; preds = %for.cond99.4
  %call105.6 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 6)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.6)
  %tobool106.not.6 = icmp eq i32 %call105.6, 0
  br i1 %tobool106.not.6, label %for.cond99.6, label %for.cond99.5.error_crit_edge

for.cond99.5.error_crit_edge:                     ; preds = %for.cond99.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.6:                                     ; preds = %for.cond99.5
  %call105.7 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 7)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.7)
  %tobool106.not.7 = icmp eq i32 %call105.7, 0
  br i1 %tobool106.not.7, label %for.cond99.7, label %for.cond99.6.error_crit_edge

for.cond99.6.error_crit_edge:                     ; preds = %for.cond99.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.7:                                     ; preds = %for.cond99.6
  %call105.8 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 8)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.8)
  %tobool106.not.8 = icmp eq i32 %call105.8, 0
  br i1 %tobool106.not.8, label %for.cond99.8, label %for.cond99.7.error_crit_edge

for.cond99.7.error_crit_edge:                     ; preds = %for.cond99.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.8:                                     ; preds = %for.cond99.7
  %call105.9 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 9)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.9)
  %tobool106.not.9 = icmp eq i32 %call105.9, 0
  br i1 %tobool106.not.9, label %for.cond99.9, label %for.cond99.8.error_crit_edge

for.cond99.8.error_crit_edge:                     ; preds = %for.cond99.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.9:                                     ; preds = %for.cond99.8
  %call105.10 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 10)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.10)
  %tobool106.not.10 = icmp eq i32 %call105.10, 0
  br i1 %tobool106.not.10, label %for.cond99.9.for.body115_crit_edge, label %for.cond99.9.error_crit_edge

for.cond99.9.error_crit_edge:                     ; preds = %for.cond99.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond99.9.for.body115_crit_edge:               ; preds = %for.cond99.9
  br label %for.body115

for.body115:                                      ; preds = %for.inc129.for.body115_crit_edge, %for.cond99.9.for.body115_crit_edge
  %i.5253 = phi i32 [ %inc130, %for.inc129.for.body115_crit_edge ], [ 0, %for.cond99.9.for.body115_crit_edge ]
  %div = udiv i32 %i.5253, 3
  %arrayidx117 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 7, i32 %div
  %57 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %tobool119.not = icmp sgt i8 %58, -1
  br i1 %tobool119.not, label %if.end121, label %for.body115.for.inc129_crit_edge

for.body115.for.inc129_crit_edge:                 ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc129

if.end121:                                        ; preds = %for.body115
  %arrayidx123 = getelementptr [48 x %struct.sensor_device_attribute], ptr @sch5636_temp_attr, i32 0, i32 %i.5253
  %call125 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end121.for.inc129_crit_edge, label %if.end121.error_crit_edge

if.end121.error_crit_edge:                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end121.for.inc129_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc129

for.inc129:                                       ; preds = %if.end121.for.inc129_crit_edge, %for.body115.for.inc129_crit_edge
  %inc130 = add nuw nsw i32 %i.5253, 1
  %exitcond268.not = icmp eq i32 %inc130, 48
  br i1 %exitcond268.not, label %for.inc129.for.body135_crit_edge, label %for.inc129.for.body115_crit_edge

for.inc129.for.body115_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body115

for.inc129.for.body135_crit_edge:                 ; preds = %for.inc129
  br label %for.body135

for.body135:                                      ; preds = %for.inc151.for.body135_crit_edge, %for.inc129.for.body135_crit_edge
  %i.6254 = phi i32 [ %inc152, %for.inc151.for.body135_crit_edge ], [ 0, %for.inc129.for.body135_crit_edge ]
  %div137 = udiv i32 %i.6254, 3
  %arrayidx138 = getelementptr %struct.sch5636_data, ptr %call.i, i32 0, i32 9, i32 %div137
  %59 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %tobool141.not = icmp sgt i8 %60, -1
  br i1 %tobool141.not, label %if.end143, label %for.body135.for.inc151_crit_edge

for.body135.for.inc151_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc151

if.end143:                                        ; preds = %for.body135
  %arrayidx145 = getelementptr [24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 %i.6254
  %call147 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx145) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end143.for.inc151_crit_edge, label %if.end143.error_crit_edge

if.end143.error_crit_edge:                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end143.for.inc151_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc151

for.inc151:                                       ; preds = %if.end143.for.inc151_crit_edge, %for.body135.for.inc151_crit_edge
  %inc152 = add nuw nsw i32 %i.6254, 1
  %exitcond269.not = icmp eq i32 %inc152, 24
  br i1 %exitcond269.not, label %for.end153, label %for.inc151.for.body135_crit_edge

for.inc151.for.body135_crit_edge:                 ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body135

for.end153:                                       ; preds = %for.inc151
  %call155 = tail call ptr @hwmon_device_register(ptr noundef %dev) #6
  %hwmon_dev = getelementptr inbounds %struct.sch5636_data, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call155, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call155, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then158, label %if.end162

if.then158:                                       ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %call155 to i32
  %63 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %hwmon_dev, align 4
  br label %error

if.end162:                                        ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %call.i, align 4
  %shl = shl i32 %call39, 8
  %or = or i32 %shl, %call39.1
  tail call void @sch56xx_watchdog_register(ptr noundef %dev, i16 noundef zeroext %65, i32 noundef %or, ptr noundef %update_lock, i32 noundef 0) #6
  br label %cleanup

error:                                            ; preds = %if.then158, %if.end143.error_crit_edge, %if.end121.error_crit_edge, %for.cond99.9.error_crit_edge, %for.cond99.8.error_crit_edge, %for.cond99.7.error_crit_edge, %for.cond99.6.error_crit_edge, %for.cond99.5.error_crit_edge, %for.cond99.4.error_crit_edge, %for.cond99.3.error_crit_edge, %for.cond99.2.error_crit_edge, %for.cond99.1.error_crit_edge, %for.cond99.error_crit_edge, %if.end93.7.error_crit_edge, %if.end93.6.error_crit_edge, %if.end93.5.error_crit_edge, %if.end93.4.error_crit_edge, %if.end93.3.error_crit_edge, %if.end93.2.error_crit_edge, %if.end93.1.error_crit_edge, %if.end93.error_crit_edge, %for.body79.preheader.error_crit_edge, %for.body60.error_crit_edge, %if.end43.error_crit_edge, %do.end22, %for.body35.preheader.error_crit_edge, %do.end11
  %err.0 = phi i32 [ %call5.lcssa, %do.end11 ], [ -19, %do.end22 ], [ %62, %if.then158 ], [ %call105, %if.end93.7.error_crit_edge ], [ %call105.1, %for.cond99.error_crit_edge ], [ %call105.2, %for.cond99.1.error_crit_edge ], [ %call105.3, %for.cond99.2.error_crit_edge ], [ %call105.4, %for.cond99.3.error_crit_edge ], [ %call105.5, %for.cond99.4.error_crit_edge ], [ %call105.6, %for.cond99.5.error_crit_edge ], [ %call105.7, %for.cond99.6.error_crit_edge ], [ %call105.8, %for.cond99.7.error_crit_edge ], [ %call105.9, %for.cond99.8.error_crit_edge ], [ %call105.10, %for.cond99.9.error_crit_edge ], [ %call83, %for.body79.preheader.error_crit_edge ], [ %call83.1, %if.end93.error_crit_edge ], [ %call83.2, %if.end93.1.error_crit_edge ], [ %call83.3, %if.end93.2.error_crit_edge ], [ %call83.4, %if.end93.3.error_crit_edge ], [ %call83.5, %if.end93.4.error_crit_edge ], [ %call83.6, %if.end93.5.error_crit_edge ], [ %call83.7, %if.end93.6.error_crit_edge ], [ %call39, %for.body35.preheader.error_crit_edge ], [ %call39.1, %if.end43.error_crit_edge ], [ %call147, %if.end143.error_crit_edge ], [ %call125, %if.end121.error_crit_edge ], [ %call64, %for.body60.error_crit_edge ]
  %call168 = tail call i32 @sch5636_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end162, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end162 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sch5636_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.sch5636_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hwmon_device_unregister(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @sch5636_attr) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 1)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 2)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 3)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 4)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 5)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 6)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 7)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 8)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 9)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([11 x %struct.sensor_device_attribute], ptr @sch5636_attr, i32 0, i32 10)) #6
  br label %for.body4

for.cond11.preheader:                             ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @sch5636_fan_attr) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 1)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 2)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 3)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 4)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 5)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 6)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 7)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 8)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 9)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 10)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 11)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 12)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 13)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 14)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 15)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 16)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 17)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 18)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 19)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 20)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 21)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 22)) #6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([24 x %struct.sensor_device_attribute], ptr @sch5636_fan_attr, i32 0, i32 23)) #6
  ret i32 0

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %if.end
  %i.133 = phi i32 [ 0, %if.end ], [ %inc9, %for.body4.for.body4_crit_edge ]
  %arrayidx6 = getelementptr [48 x %struct.sensor_device_attribute], ptr @sch5636_temp_attr, i32 0, i32 %i.133
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx6) #6
  %inc9 = add nuw nsw i32 %i.133, 1
  %exitcond.not = icmp eq i32 %inc9, 48
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sch56xx_read_virtual_reg(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sch56xx_watchdog_register(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.12) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sch5636_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sch5636_data, ptr %call, i32 0, i32 5, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %arrayidx4 = getelementptr [5 x i16], ptr @SCH5636_REG_IN_FACTORS, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx4, align 2
  %conv5 = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not = icmp eq i32 %mul, 0
  %add = add nuw nsw i32 %mul, 127
  %div12 = udiv i32 %add, 255
  %cond = select i1 %cmp.not, i32 0, i32 %div12
  %call15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call15, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_label_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @SCH5636_IN_LABELS, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.24, ptr noundef %3) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sch5636_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.sch5636_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %valid = getelementptr inbounds %struct.sch5636_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 4, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_updated = getelementptr inbounds %struct.sch5636_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.abort_crit_edge

land.lhs.true.abort_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %call2 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %8, i16 noundef zeroext 34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.if.then6_crit_edge, label %if.end8, !prof !239

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %if.end8.3.if.then6_crit_edge, %if.end8.2.if.then6_crit_edge, %if.end8.1.if.then6_crit_edge, %if.end8.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %call2.lcssa = phi i32 [ %call2, %if.end.if.then6_crit_edge ], [ %call2.1, %if.end8.if.then6_crit_edge ], [ %call2.2, %if.end8.1.if.then6_crit_edge ], [ %call2.3, %if.end8.2.if.then6_crit_edge ], [ %call2.4, %if.end8.3.if.then6_crit_edge ]
  %9 = inttoptr i32 %call2.lcssa to ptr
  br label %abort

if.end8:                                          ; preds = %if.end
  %conv = trunc i32 %call2 to i8
  %arrayidx9 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx9, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %call2.1 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %12, i16 noundef zeroext 35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 0
  br i1 %cmp3.1, label %if.end8.if.then6_crit_edge, label %if.end8.1, !prof !239

if.end8.if.then6_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end8.1:                                        ; preds = %if.end8
  %conv.1 = trunc i32 %call2.1 to i8
  %arrayidx9.1 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.1, ptr %arrayidx9.1, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %call2.2 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %15, i16 noundef zeroext 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %cmp3.2 = icmp slt i32 %call2.2, 0
  br i1 %cmp3.2, label %if.end8.1.if.then6_crit_edge, label %if.end8.2, !prof !239

if.end8.1.if.then6_crit_edge:                     ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end8.2:                                        ; preds = %if.end8.1
  %conv.2 = trunc i32 %call2.2 to i8
  %arrayidx9.2 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.2, ptr %arrayidx9.2, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %call2.3 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %18, i16 noundef zeroext 37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %cmp3.3 = icmp slt i32 %call2.3, 0
  br i1 %cmp3.3, label %if.end8.2.if.then6_crit_edge, label %if.end8.3, !prof !239

if.end8.2.if.then6_crit_edge:                     ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end8.3:                                        ; preds = %if.end8.2
  %conv.3 = trunc i32 %call2.3 to i8
  %arrayidx9.3 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.3, ptr %arrayidx9.3, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %call2.4 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %21, i16 noundef zeroext 393) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4)
  %cmp3.4 = icmp slt i32 %call2.4, 0
  br i1 %cmp3.4, label %if.end8.3.if.then6_crit_edge, label %if.end8.4, !prof !239

if.end8.3.if.then6_crit_edge:                     ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end8.4:                                        ; preds = %if.end8.3
  %conv.4 = trunc i32 %call2.4 to i8
  %arrayidx9.4 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.4, ptr %arrayidx9.4, align 1
  br label %for.body13

for.body13:                                       ; preds = %for.inc62.for.body13_crit_edge, %if.end8.4
  %i.1184 = phi i32 [ %inc63, %for.inc62.for.body13_crit_edge ], [ 0, %if.end8.4 ]
  %arrayidx14 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 7, i32 %i.1184
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool16.not = icmp sgt i8 %24, -1
  br i1 %tobool16.not, label %if.end18, label %for.body13.for.inc62_crit_edge

for.body13.for.inc62_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.end18:                                         ; preds = %for.body13
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 4
  %arrayidx20 = getelementptr [16 x i16], ptr @SCH5636_REG_TEMP_VAL, i32 0, i32 %i.1184
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx20, align 2
  %call21 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %26, i16 noundef zeroext %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then30, label %if.end32, !prof !239

if.then30:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %29 = inttoptr i32 %call21 to ptr
  br label %abort

if.end32:                                         ; preds = %if.end18
  %conv33 = trunc i32 %call21 to i8
  %arrayidx34 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 6, i32 %i.1184
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv33, ptr %arrayidx34, align 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %1, align 4
  %33 = trunc i32 %i.1184 to i16
  %conv37 = add i16 %33, 1936
  %call38 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %32, i16 noundef zeroext %conv37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then47, label %if.end49, !prof !239

if.then47:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %34 = inttoptr i32 %call38 to ptr
  br label %abort

if.end49:                                         ; preds = %if.end32
  %conv50 = trunc i32 %call38 to i8
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv50, ptr %arrayidx14, align 1
  %and53 = and i32 %call38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end49.for.inc62_crit_edge, label %if.then55

if.end49.for.inc62_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 4
  %call60 = tail call i32 @sch56xx_write_virtual_reg(i16 noundef zeroext %37, i16 noundef zeroext %conv37, i8 noundef zeroext %conv50) #6
  br label %for.inc62

for.inc62:                                        ; preds = %if.then55, %if.end49.for.inc62_crit_edge, %for.body13.for.inc62_crit_edge
  %inc63 = add nuw nsw i32 %i.1184, 1
  %exitcond.not = icmp eq i32 %inc63, 16
  br i1 %exitcond.not, label %for.inc62.for.body68_crit_edge, label %for.inc62.for.body13_crit_edge

for.inc62.for.body13_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.inc62.for.body68_crit_edge:                   ; preds = %for.inc62
  br label %for.body68

for.body68:                                       ; preds = %for.inc118.for.body68_crit_edge, %for.inc62.for.body68_crit_edge
  %i.2186 = phi i32 [ %inc119, %for.inc118.for.body68_crit_edge ], [ 0, %for.inc62.for.body68_crit_edge ]
  %arrayidx69 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 9, i32 %i.2186
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %tobool72.not = icmp sgt i8 %39, -1
  br i1 %tobool72.not, label %if.end74, label %for.body68.for.inc118_crit_edge

for.body68.for.inc118_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc118

if.end74:                                         ; preds = %for.body68
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 4
  %arrayidx76 = getelementptr [8 x i16], ptr @SCH5636_REG_FAN_VAL, i32 0, i32 %i.2186
  %42 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx76, align 2
  %call77 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %41, i16 noundef zeroext %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then86, label %if.end88, !prof !239

if.then86:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %44 = inttoptr i32 %call77 to ptr
  br label %abort

if.end88:                                         ; preds = %if.end74
  %conv89 = trunc i32 %call77 to i16
  %arrayidx90 = getelementptr %struct.sch5636_data, ptr %1, i32 0, i32 8, i32 %i.2186
  %45 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv89, ptr %arrayidx90, align 2
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %1, align 4
  %48 = trunc i32 %i.2186 to i16
  %conv93 = add i16 %48, 2176
  %call94 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %47, i16 noundef zeroext %conv93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then103, label %if.end105, !prof !239

if.then103:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %49 = inttoptr i32 %call94 to ptr
  br label %abort

if.end105:                                        ; preds = %if.end88
  %conv106 = trunc i32 %call94 to i8
  %50 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv106, ptr %arrayidx69, align 1
  %and109 = and i32 %call94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end105.for.inc118_crit_edge, label %if.then111

if.end105.for.inc118_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc118

if.then111:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %1, align 4
  %call116 = tail call i32 @sch56xx_write_virtual_reg(i16 noundef zeroext %52, i16 noundef zeroext %conv93, i8 noundef zeroext %conv106) #6
  br label %for.inc118

for.inc118:                                       ; preds = %if.then111, %if.end105.for.inc118_crit_edge, %for.body68.for.inc118_crit_edge
  %inc119 = add nuw nsw i32 %i.2186, 1
  %exitcond191.not = icmp eq i32 %inc119, 8
  br i1 %exitcond191.not, label %for.end120, label %for.inc118.for.body68_crit_edge

for.inc118.for.body68_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body68

for.end120:                                       ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %last_updated121 = getelementptr inbounds %struct.sch5636_data, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %last_updated121 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %last_updated121, align 4
  %55 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %valid, align 4
  br label %abort

abort:                                            ; preds = %for.end120, %if.then103, %if.then86, %if.then47, %if.then30, %if.then6, %land.lhs.true.abort_crit_edge
  %ret.0 = phi ptr [ %9, %if.then6 ], [ %29, %if.then30 ], [ %34, %if.then47 ], [ %44, %if.then86 ], [ %49, %if.then103 ], [ %1, %for.end120 ], [ %1, %land.lhs.true.abort_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sch56xx_write_virtual_reg(i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sch5636_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sch5636_data, ptr %call, i32 0, i32 6, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = mul nuw nsw i32 %conv, 1000
  %mul = add nsw i32 %5, -64000
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %mul) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sch5636_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sch5636_data, ptr %call, i32 0, i32 7, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sch5636_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sch5636_data, ptr %call, i32 0, i32 7, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = lshr i8 %4, 1
  %.lobit = and i8 %5, 1
  %6 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sch5636_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sch5636_data, ptr %call, i32 0, i32 8, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %if.end6.i [
    i16 0, label %if.end.cleanup_crit_edge
    i16 -1, label %if.end.if.end5_crit_edge
  ]

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %4 to i32
  %div.i = udiv i32 5400540, %conv.i
  br label %if.end5

if.end5:                                          ; preds = %if.end6.i, %if.end.if.end5_crit_edge
  %retval.0.i.ph = phi i32 [ %div.i, %if.end6.i ], [ 0, %if.end.if.end5_crit_edge ]
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call6, %if.end5 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sch5636_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sch5636_data, ptr %call, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = lshr i8 %4, 3
  %.lobit = and i8 %5, 1
  %6 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sch5636_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sch5636_data, ptr %call, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = lshr i8 %4, 2
  %.lobit = and i8 %5, 1
  %6 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @__initcall__kmod_sch5636__183_512_sch5636_driver_init6, !1, !"__initcall__kmod_sch5636__183_512_sch5636_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sch5636.c", i32 512, i32 1}
!2 = !{ptr @__exitcall_sch5636_driver_exit, !1, !"__exitcall_sch5636_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sch5636.c", i32 514, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sch5636.c", i32 515, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sch5636.c", i32 516, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/sch5636.c", i32 506, i32 11}
!12 = !{ptr @sch5636_driver, !13, !"sch5636_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sch5636.c", i32 504, i32 31}
!14 = !{ptr @sch5636_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/sch5636.c", i32 403, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/sch5636.c", i32 410, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sch5636_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sch5636_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/sch5636.c", i32 419, i32 17}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/sch5636.c", i32 420, i32 3}
!27 = !{ptr @sch5636_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sch5636_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/sch5636.c", i32 435, i32 2}
!31 = !{ptr @sch5636_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sch5636_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/sch5636.c", i32 278, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/sch5636.c", i32 279, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/sch5636.c", i32 280, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/sch5636.c", i32 281, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/sch5636.c", i32 282, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/sch5636.c", i32 283, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/sch5636.c", i32 284, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/sch5636.c", i32 285, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/sch5636.c", i32 286, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/sch5636.c", i32 287, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/sch5636.c", i32 288, i32 2}
!56 = !{ptr @sch5636_attr, !57, !"sch5636_attr", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/sch5636.c", i32 277, i32 39}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/sch5636.c", i32 162, i32 25}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/sch5636.c", i32 178, i32 25}
!62 = distinct !{null, !63, !"SCH5636_REG_IN_VAL", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/sch5636.c", i32 30, i32 18}
!64 = !{ptr @SCH5636_REG_TEMP_VAL, !65, !"SCH5636_REG_TEMP_VAL", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/sch5636.c", i32 37, i32 18}
!66 = !{ptr @SCH5636_REG_FAN_VAL, !67, !"SCH5636_REG_FAN_VAL", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/sch5636.c", i32 45, i32 18}
!68 = !{ptr @SCH5636_REG_IN_FACTORS, !69, !"SCH5636_REG_IN_FACTORS", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/sch5636.c", i32 32, i32 18}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/sch5636.c", i32 35, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/sch5636.c", i32 35, i32 10}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/sch5636.c", i32 35, i32 18}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/sch5636.c", i32 35, i32 26}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/sch5636.c", i32 35, i32 36}
!80 = !{ptr @SCH5636_IN_LABELS, !81, !"SCH5636_IN_LABELS", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/sch5636.c", i32 34, i32 27}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/sch5636.c", i32 292, i32 2}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/sch5636.c", i32 293, i32 2}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/sch5636.c", i32 294, i32 2}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/sch5636.c", i32 295, i32 2}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/sch5636.c", i32 296, i32 2}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/sch5636.c", i32 297, i32 2}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/sch5636.c", i32 298, i32 2}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/sch5636.c", i32 299, i32 2}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/sch5636.c", i32 300, i32 2}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/sch5636.c", i32 301, i32 2}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/sch5636.c", i32 302, i32 2}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/sch5636.c", i32 303, i32 2}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/sch5636.c", i32 304, i32 2}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/sch5636.c", i32 305, i32 2}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/sch5636.c", i32 306, i32 2}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/sch5636.c", i32 307, i32 2}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/sch5636.c", i32 308, i32 2}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/sch5636.c", i32 309, i32 2}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/sch5636.c", i32 310, i32 2}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/sch5636.c", i32 311, i32 2}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/sch5636.c", i32 312, i32 2}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/sch5636.c", i32 313, i32 2}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/sch5636.c", i32 314, i32 2}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/sch5636.c", i32 315, i32 2}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/sch5636.c", i32 316, i32 2}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/sch5636.c", i32 317, i32 2}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/sch5636.c", i32 318, i32 2}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/sch5636.c", i32 319, i32 2}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/sch5636.c", i32 320, i32 2}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/sch5636.c", i32 321, i32 2}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/sch5636.c", i32 322, i32 2}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/sch5636.c", i32 323, i32 2}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/sch5636.c", i32 324, i32 2}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/sch5636.c", i32 325, i32 2}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/sch5636.c", i32 326, i32 2}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/sch5636.c", i32 327, i32 2}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/sch5636.c", i32 328, i32 2}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/sch5636.c", i32 329, i32 2}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/sch5636.c", i32 330, i32 2}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/sch5636.c", i32 331, i32 2}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/sch5636.c", i32 332, i32 2}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/sch5636.c", i32 333, i32 2}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/sch5636.c", i32 334, i32 2}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/sch5636.c", i32 335, i32 2}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/sch5636.c", i32 336, i32 2}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/sch5636.c", i32 337, i32 2}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/sch5636.c", i32 338, i32 2}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/sch5636.c", i32 339, i32 2}
!178 = !{ptr @sch5636_temp_attr, !179, !"sch5636_temp_attr", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/sch5636.c", i32 291, i32 39}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/sch5636.c", i32 343, i32 2}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/sch5636.c", i32 344, i32 2}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/sch5636.c", i32 345, i32 2}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/sch5636.c", i32 346, i32 2}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/sch5636.c", i32 347, i32 2}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/sch5636.c", i32 348, i32 2}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/sch5636.c", i32 349, i32 2}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/sch5636.c", i32 350, i32 2}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/sch5636.c", i32 351, i32 2}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/sch5636.c", i32 352, i32 2}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/sch5636.c", i32 353, i32 2}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/sch5636.c", i32 354, i32 2}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/sch5636.c", i32 355, i32 2}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/sch5636.c", i32 356, i32 2}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/sch5636.c", i32 357, i32 2}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/sch5636.c", i32 358, i32 2}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/sch5636.c", i32 359, i32 2}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/sch5636.c", i32 360, i32 2}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/sch5636.c", i32 361, i32 2}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/sch5636.c", i32 362, i32 2}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/sch5636.c", i32 363, i32 2}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/sch5636.c", i32 364, i32 2}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/sch5636.c", i32 365, i32 2}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hwmon/sch5636.c", i32 366, i32 2}
!228 = !{ptr @sch5636_fan_attr, !229, !"sch5636_fan_attr", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/sch5636.c", i32 342, i32 39}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{!"branch_weights", i32 1, i32 2000}
!240 = !{i8 0, i8 2}
