; ModuleID = '/llk/IR_all_yes/drivers/hwmon/da9052-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/da9052-hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.da9052_hwmon = type { ptr, %struct.mutex, i8, i32, ptr, %struct.completion }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }

@__initcall__kmod_da9052_hwmon__288_502_da9052_hwmon_driver_init6 = internal global ptr @da9052_hwmon_driver_init, section ".initcall6.init", align 4
@da9052_hwmon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_hwmon_probe, ptr @da9052_hwmon_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_hwmon_driver_exit = internal global ptr @da9052_hwmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [57 x i8] c"da9052_hwmon.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [45 x i8] c"da9052_hwmon.description=DA9052 HWMON driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"da9052_hwmon.file=drivers/hwmon/da9052-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"da9052_hwmon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [41 x i8] c"da9052_hwmon.alias=platform:da9052-hwmon\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9052-hwmon\00", [19 x i8] zeroinitializer }, align 32
@da9052_hwmon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hwmon->hwmon_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlg,tsi-as-adc\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tsiref\00", [25 x i8] zeroinitializer }, align 32
@da9052_hwmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get tsiref: %d\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9052_hwmon_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hwmon/da9052-hwmon.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_hwmon_probe._entry_ptr = internal global ptr @da9052_hwmon_probe._entry, section ".printk_index", align 4
@da9052_hwmon_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid TSIREF voltage: %d\00", [37 x i8] zeroinitializer }, align 32
@da9052_hwmon_probe._entry_ptr.11 = internal global ptr @da9052_hwmon_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsiready-irq\00", [19 x i8] zeroinitializer }, align 32
@da9052_hwmon_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 458, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register TSIRDY IRQ: %d\00", [62 x i8] zeroinitializer }, align 32
@da9052_hwmon_probe._entry_ptr.15 = internal global ptr @da9052_hwmon_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da9052\00", [25 x i8] zeroinitializer }, align 32
@da9052_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @da9052_group, ptr null], [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@da9052_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @da9052_channel_is_visible, ptr null, ptr @da9052_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@da9052_attrs = internal global { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in70_input, ptr @sensor_dev_attr_in70_label, ptr @sensor_dev_attr_in71_input, ptr @sensor_dev_attr_in71_label, ptr @sensor_dev_attr_in72_input, ptr @sensor_dev_attr_in72_label, ptr @sensor_dev_attr_in73_input, ptr @sensor_dev_attr_in73_label, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_label, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_label, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_label, ptr @sensor_dev_attr_temp8_input, ptr @sensor_dev_attr_temp8_label, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_vddout_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_vbat_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_misc_channel_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_misc_channel_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_misc_channel_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in70_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_tsi_show, ptr null }, i32 70 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in70_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 70 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in71_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_tsi_show, ptr null }, i32 71 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in71_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 71 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in72_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_tsi_show, ptr null }, i32 72 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in72_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 72 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in73_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_tsi_show, ptr null }, i32 73 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in73_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 73 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_vbbat_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_ich_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_tbat_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @da9052_tjunc_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_label\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@input_names = internal constant { [74 x ptr], [88 x i8] } { [74 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr null, ptr @.str.29, ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [88 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CHARGING CURRENT\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BATTERY TEMP\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BATTERY VOLTAGE\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC IN4\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC IN5\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC IN6\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BATTERY JUNCTION TEMP\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BACK-UP BATTERY VOLTAGE\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC TS X+\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC TS X-\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC TS Y+\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC TS Y-\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_label\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_label\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_label\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_label\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in70_input\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in70_label\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in71_input\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in71_label\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in72_input\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in72_label\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in73_input\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in73_label\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_label\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_label\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_label\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_input\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_label\00", [20 x i8] zeroinitializer }, align 32
@switch.table.da9052_tsi_show = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 96, i32 80, i32 112], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 70, i64 71, i64 72, i64 73]
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"da9052_hwmon_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 494, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 498, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 408, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 414, i32 47 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 417, i32 56 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 420, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 439, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 454, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 457, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 463, i32 58 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"da9052_groups\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 385, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 87, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"da9052_group\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 381, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"da9052_attrs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 351, i32 26 }
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_label\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_label\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_label\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_label\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_label\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in70_input\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in70_label\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in71_input\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in71_label\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in72_input\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in72_label\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in73_input\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in73_label\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_label\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_label\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_label\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp8_input\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp8_label\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 321, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 108, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 322, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 295, i32 22 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"input_names\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 33, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 34, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 35, i32 21 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 36, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 37, i32 22 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 38, i32 21 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 39, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 40, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 45, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 46, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 41, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 43, i32 24 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 42, i32 24 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 44, i32 24 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 323, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 324, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 325, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 326, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 327, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 328, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 329, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 330, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 334, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 335, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 336, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 337, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 338, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 339, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 340, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 341, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 331, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 332, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 343, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 344, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 346, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 347, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 348, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [32 x i8] c"../drivers/hwmon/da9052-hwmon.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 349, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant [29 x i8] c"switch.table.da9052_tsi_show\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9052_hwmon_driver_exit, ptr @__initcall__kmod_da9052_hwmon__288_502_da9052_hwmon_driver_init6, ptr @da9052_hwmon_driver_exit, ptr @da9052_hwmon_probe._entry, ptr @da9052_hwmon_probe._entry.13, ptr @da9052_hwmon_probe._entry.9, ptr @da9052_hwmon_probe._entry_ptr, ptr @da9052_hwmon_probe._entry_ptr.11, ptr @da9052_hwmon_probe._entry_ptr.15, ptr @da9052_hwmon_driver, ptr @.str, ptr @da9052_hwmon_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @da9052_groups, ptr @init_completion.__key, ptr @.str.17, ptr @da9052_group, ptr @da9052_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in70_input, ptr @sensor_dev_attr_in70_label, ptr @sensor_dev_attr_in71_input, ptr @sensor_dev_attr_in71_label, ptr @sensor_dev_attr_in72_input, ptr @sensor_dev_attr_in72_label, ptr @sensor_dev_attr_in73_input, ptr @sensor_dev_attr_in73_label, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_label, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_label, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_label, ptr @sensor_dev_attr_temp8_input, ptr @sensor_dev_attr_temp8_label, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @input_names, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.da9052_tsi_show], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_hwmon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_hwmon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_hwmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_hwmon_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_hwmon_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_attrs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in70_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in70_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in71_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in71_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in72_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in72_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in73_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in73_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_names to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9052_tsi_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_hwmon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_hwmon_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_hwmon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_hwmon_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 164, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %hwmon_lock = getelementptr inbounds %struct.da9052_hwmon, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %hwmon_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @da9052_hwmon_probe.__key) #8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call.i, align 4
  %tsidone = getelementptr inbounds %struct.da9052_hwmon, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %tsidone to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tsidone, align 4
  %wait.i = getelementptr inbounds %struct.da9052_hwmon, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call.i123 = tail call zeroext i1 @device_property_present(ptr noundef %8, ptr noundef nonnull @.str.2) #8
  %tsi_as_adc = getelementptr inbounds %struct.da9052_hwmon, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %call.i123 to i8
  %9 = ptrtoint ptr %tsi_as_adc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %tsi_as_adc, align 4
  br i1 %call.i123, label %if.then9, label %if.end.if.end60_crit_edge

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then9:                                         ; preds = %if.end
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call12 = tail call ptr @devm_regulator_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %tsiref = getelementptr inbounds %struct.da9052_hwmon, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %tsiref to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %tsiref, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %13) #11
  br label %cleanup

if.end22:                                         ; preds = %if.then9
  %call24 = tail call i32 @regulator_enable(ptr noundef %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %tsiref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tsiref, align 4
  %call29 = tail call i32 @regulator_get_voltage(ptr noundef %15) #8
  %tsiref_mv = getelementptr inbounds %struct.da9052_hwmon, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %tsiref_mv to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call29, ptr %tsiref_mv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end27.exit_regulator_crit_edge, label %if.end33

if.end27.exit_regulator_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_regulator

if.end33:                                         ; preds = %if.end27
  %div132 = udiv i32 %call29, 1000
  %17 = ptrtoint ptr %tsiref_mv to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div132, ptr %tsiref_mv, align 4
  %18 = add nsw i32 %call29, -2601000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -801000, i32 %18)
  %19 = icmp ult i32 %18, -801000
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  br i1 %19, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %div132) #11
  br label %exit_regulator

if.end46:                                         ; preds = %if.end33
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i124 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 105, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %if.end46.da9052_reg_write.exit_crit_edge, label %if.end.i

if.end46.da9052_reg_write.exit_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_write.exit

if.end.i:                                         ; preds = %if.end46
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %21, i32 0, i32 8
  %26 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_write.exit_crit_edge, label %if.then3.i

if.end.i.da9052_reg_write.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_write.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 %27(ptr noundef %21, i8 noundef zeroext 105) #8
  br label %da9052_reg_write.exit

da9052_reg_write.exit:                            ; preds = %if.then3.i, %if.end.i.da9052_reg_write.exit_crit_edge, %if.end46.da9052_reg_write.exit_crit_edge
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %regmap.i126 = getelementptr inbounds %struct.da9052, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i126 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i126, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 82, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i127 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i127, label %da9052_reg_write.exit.da9052_reg_update.exit_crit_edge, label %if.end.i130

da9052_reg_write.exit.da9052_reg_update.exit_crit_edge: ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_update.exit

if.end.i130:                                      ; preds = %da9052_reg_write.exit
  %fix_io.i128 = getelementptr inbounds %struct.da9052, ptr %29, i32 0, i32 8
  %32 = ptrtoint ptr %fix_io.i128 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fix_io.i128, align 4
  %tobool.not.i129 = icmp eq ptr %33, null
  br i1 %tobool.not.i129, label %if.end.i130.da9052_reg_update.exit_crit_edge, label %if.then4.i

if.end.i130.da9052_reg_update.exit_crit_edge:     ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_update.exit

if.then4.i:                                       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 %33(ptr noundef %29, i8 noundef zeroext 82) #8
  br label %da9052_reg_update.exit

da9052_reg_update.exit:                           ; preds = %if.then4.i, %if.end.i130.da9052_reg_update.exit_crit_edge, %da9052_reg_write.exit.da9052_reg_update.exit_crit_edge
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call52 = tail call i32 @da9052_request_irq(ptr noundef %35, i32 noundef 15, ptr noundef nonnull @.str.12, ptr noundef nonnull @da9052_tsi_datardy_irq, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %da9052_reg_update.exit.if.end60_crit_edge, label %do.end57

da9052_reg_update.exit.if.end60_crit_edge:        ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end57:                                         ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call52) #11
  br label %exit_regulator

if.end60:                                         ; preds = %da9052_reg_update.exit.if.end60_crit_edge, %if.end.if.end60_crit_edge
  %call61 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i, ptr noundef nonnull @da9052_groups) #8
  %cmp.i.i.not = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call61 to i32
  br i1 %cmp.i.i.not, label %exit_irq, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exit_irq:                                         ; preds = %if.end60
  %37 = ptrtoint ptr %tsi_as_adc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tsi_as_adc, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool67.not = icmp eq i8 %38, 0
  br i1 %tobool67.not, label %exit_irq.exit_regulator_crit_edge, label %if.then68

exit_irq.exit_regulator_crit_edge:                ; preds = %exit_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_regulator

if.then68:                                        ; preds = %exit_irq
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  tail call void @da9052_free_irq(ptr noundef %40, i32 noundef 15, ptr noundef nonnull %call.i) #8
  br label %exit_regulator

exit_regulator:                                   ; preds = %if.then68, %exit_irq.exit_regulator_crit_edge, %do.end57, %do.end42, %if.end27.exit_regulator_crit_edge
  %err.0 = phi i32 [ -6, %do.end42 ], [ %call52, %do.end57 ], [ %36, %if.then68 ], [ %36, %exit_irq.exit_regulator_crit_edge ], [ %call29, %if.end27.exit_regulator_crit_edge ]
  %tsiref71 = getelementptr inbounds %struct.da9052_hwmon, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %tsiref71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tsiref71, align 4
  %tobool72.not = icmp eq ptr %42, null
  br i1 %tobool72.not, label %exit_regulator.cleanup_crit_edge, label %if.then73

exit_regulator.cleanup_crit_edge:                 ; preds = %exit_regulator
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then73:                                        ; preds = %exit_regulator
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call i32 @regulator_disable(ptr noundef nonnull %42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %exit_regulator.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then15 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ %err.0, %if.then73 ], [ %err.0, %exit_regulator.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_hwmon_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tsi_as_adc = getelementptr inbounds %struct.da9052_hwmon, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tsi_as_adc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tsi_as_adc, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @da9052_free_irq(ptr noundef %5, i32 noundef 15, ptr noundef %1) #8
  %tsiref = getelementptr inbounds %struct.da9052_hwmon, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %tsiref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsiref, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_tsi_datardy_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tsidone = getelementptr inbounds %struct.da9052_hwmon, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %tsidone) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da9052_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @da9052_channel_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tsi_as_adc = getelementptr inbounds %struct.da9052_hwmon, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tsi_as_adc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tsi_as_adc, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %index5 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index5, align 4
  %.off = add i32 %5, -70
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then.cleanup_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end ], [ 0, %if.then.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_vddout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hwmon_lock = getelementptr inbounds %struct.da9052_hwmon, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %hwmon_lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 82, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.hwmon_err_crit_edge, label %if.end.i.i

entry.hwmon_err_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hwmon_err

if.end.i.i:                                       ; preds = %entry
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end_crit_edge, label %da9052_enable_vddout_channel.exit

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

da9052_enable_vddout_channel.exit:                ; preds = %if.end.i.i
  %call6.i.i = tail call i32 %7(ptr noundef %3, i8 noundef zeroext 82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp = icmp slt i32 %call6.i.i, 0
  br i1 %cmp, label %da9052_enable_vddout_channel.exit.hwmon_err_crit_edge, label %da9052_enable_vddout_channel.exit.if.end_crit_edge

da9052_enable_vddout_channel.exit.if.end_crit_edge: ; preds = %da9052_enable_vddout_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

da9052_enable_vddout_channel.exit.hwmon_err_crit_edge: ; preds = %da9052_enable_vddout_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hwmon_err

if.end:                                           ; preds = %da9052_enable_vddout_channel.exit.if.end_crit_edge, %if.end.i.i.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !172
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 85, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

if.end.da9052_reg_read.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %if.end
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %9, i32 0, i32 8
  %13 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %14(ptr noundef %9, i8 noundef zeroext 85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %if.end.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i, %if.end.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.then5

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %da9052_reg_read.exit.if.then5_crit_edge, label %if.end6

da9052_reg_read.exit.if.then5_crit_edge:          ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %da9052_reg_read.exit.if.then5_crit_edge, %da9052_reg_read.exit.thread
  %retval.0.i57 = phi i32 [ %retval.0.i.ph, %da9052_reg_read.exit.thread ], [ %16, %da9052_reg_read.exit.if.then5_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %regmap.i.i30 = getelementptr inbounds %struct.da9052, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i30, align 4
  %call.i.i.i31 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 82, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i31)
  %cmp.i.i32 = icmp slt i32 %call.i.i.i31, 0
  br i1 %cmp.i.i32, label %if.then5.hwmon_err_crit_edge, label %if.end.i.i35

if.then5.hwmon_err_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %hwmon_err

if.end.i.i35:                                     ; preds = %if.then5
  %fix_io.i.i33 = getelementptr inbounds %struct.da9052, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %fix_io.i.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fix_io.i.i33, align 4
  %tobool.not.i.i34 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i34, label %if.end.i.i35.hwmon_err_crit_edge, label %if.then4.i.i37

if.end.i.i35.hwmon_err_crit_edge:                 ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %hwmon_err

if.then4.i.i37:                                   ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i36 = call i32 %22(ptr noundef %18, i8 noundef zeroext 82) #8
  br label %hwmon_err

if.end6:                                          ; preds = %da9052_reg_read.exit
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %regmap.i.i39 = getelementptr inbounds %struct.da9052, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i39, align 4
  %call.i.i.i40 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 82, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i40)
  %cmp.i.i41 = icmp slt i32 %call.i.i.i40, 0
  br i1 %cmp.i.i41, label %if.end6.hwmon_err_crit_edge, label %if.end.i.i44

if.end6.hwmon_err_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %hwmon_err

if.end.i.i44:                                     ; preds = %if.end6
  %fix_io.i.i42 = getelementptr inbounds %struct.da9052, ptr %24, i32 0, i32 8
  %27 = ptrtoint ptr %fix_io.i.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fix_io.i.i42, align 4
  %tobool.not.i.i43 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i43, label %if.end.i.i44.if.end11_crit_edge, label %da9052_disable_vddout_channel.exit48

if.end.i.i44.if.end11_crit_edge:                  ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

da9052_disable_vddout_channel.exit48:             ; preds = %if.end.i.i44
  %call6.i.i45 = call i32 %28(ptr noundef %24, i8 noundef zeroext 82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i45)
  %cmp9 = icmp slt i32 %call6.i.i45, 0
  br i1 %cmp9, label %da9052_disable_vddout_channel.exit48.hwmon_err_crit_edge, label %da9052_disable_vddout_channel.exit48.if.end11_crit_edge

da9052_disable_vddout_channel.exit48.if.end11_crit_edge: ; preds = %da9052_disable_vddout_channel.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

da9052_disable_vddout_channel.exit48.hwmon_err_crit_edge: ; preds = %da9052_disable_vddout_channel.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %hwmon_err

if.end11:                                         ; preds = %da9052_disable_vddout_channel.exit48.if.end11_crit_edge, %if.end.i.i44.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %hwmon_lock) #8
  %mul.i = mul i32 %16, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i49 = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i49, i32 511, i32 -511
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 1023
  %add8.i = add nsw i32 %cond.i, 2500
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %add8.i)
  br label %cleanup

hwmon_err:                                        ; preds = %da9052_disable_vddout_channel.exit48.hwmon_err_crit_edge, %if.end6.hwmon_err_crit_edge, %if.then4.i.i37, %if.end.i.i35.hwmon_err_crit_edge, %if.then5.hwmon_err_crit_edge, %da9052_enable_vddout_channel.exit.hwmon_err_crit_edge, %entry.hwmon_err_crit_edge
  %ret.0 = phi i32 [ %call6.i.i, %da9052_enable_vddout_channel.exit.hwmon_err_crit_edge ], [ %call6.i.i45, %da9052_disable_vddout_channel.exit48.hwmon_err_crit_edge ], [ %retval.0.i57, %if.then5.hwmon_err_crit_edge ], [ %retval.0.i57, %if.end.i.i35.hwmon_err_crit_edge ], [ %retval.0.i57, %if.then4.i.i37 ], [ %call.i.i.i, %entry.hwmon_err_crit_edge ], [ %call.i.i.i40, %if.end6.hwmon_err_crit_edge ]
  call void @mutex_unlock(ptr noundef %hwmon_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %hwmon_err, %if.end11
  %retval.0 = phi i32 [ %ret.0, %hwmon_err ], [ %call14, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @label_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [74 x ptr], ptr @input_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_vbat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @da9052_adc_manual_read(ptr noundef %3, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %call1, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 511, i32 -511
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 1023
  %add8.i = add nsw i32 %cond.i, 2500
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %add8.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_adc_manual_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_misc_channel_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv = trunc i32 %3 to i8
  %call1 = tail call i32 @da9052_adc_manual_read(ptr noundef %5, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %call1, 2500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 511, i32 -511
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 1023
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %cond.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_tsi_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %auxadc_lock = getelementptr inbounds %struct.da9052, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %auxadc_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %tsidone.i = getelementptr inbounds %struct.da9052_hwmon, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %tsidone.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tsidone.i, align 4
  %switch.tableidx = add i32 %3, -71
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %entry.sw.epilog.i.i_crit_edge

entry.sw.epilog.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9052_tsi_show, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %entry.sw.epilog.i.i_crit_edge
  %val.0.i.i = phi i32 [ 64, %entry.sw.epilog.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %regmap.i.i.i = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 106, i32 noundef %val.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %sw.epilog.i.i.__da9052_read_tsi.exit_crit_edge, label %if.end.i.i.i

sw.epilog.i.i.__da9052_read_tsi.exit_crit_edge:   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__da9052_read_tsi.exit

if.end.i.i.i:                                     ; preds = %sw.epilog.i.i
  %fix_io.i.i.i = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %fix_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fix_io.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge, label %da9052_request_tsi_read.exit.i

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

da9052_request_tsi_read.exit.i:                   ; preds = %if.end.i.i.i
  %call5.i.i.i = tail call i32 %16(ptr noundef %12, i8 noundef zeroext 106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp.i, label %da9052_request_tsi_read.exit.i.__da9052_read_tsi.exit_crit_edge, label %da9052_request_tsi_read.exit.i.if.end.i_crit_edge

da9052_request_tsi_read.exit.i.if.end.i_crit_edge: ; preds = %da9052_request_tsi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

da9052_request_tsi_read.exit.i.__da9052_read_tsi.exit_crit_edge: ; preds = %da9052_request_tsi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__da9052_read_tsi.exit

if.end.i:                                         ; preds = %da9052_request_tsi_read.exit.i.if.end.i_crit_edge, %if.end.i.i.i.if.end.i_crit_edge
  %call4.i = tail call i32 @wait_for_completion_timeout(ptr noundef %tsidone.i, i32 noundef 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i.__da9052_read_tsi.exit_crit_edge, label %if.end6.i

if.end.i.__da9052_read_tsi.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__da9052_read_tsi.exit

if.end6.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %19 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !172
  %regmap.i.i14.i = getelementptr inbounds %struct.da9052, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i14.i, align 4
  %call.i.i15.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 107, ptr noundef nonnull %tmp.i.i.i) #8
  %22 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %cmp2.i.i.i = icmp slt i32 %call.i.i15.i, 0
  br i1 %cmp2.i.i.i, label %if.end6.i.da9052_group_read.exit.thread.i.i_crit_edge, label %for.cond.i.i.i

if.end6.i.da9052_group_read.exit.thread.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_group_read.exit.thread.i.i

for.cond.i.i.i:                                   ; preds = %if.end6.i
  %24 = ptrtoint ptr %regmap.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i14.i, align 4
  %call.1.i.i.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 108, ptr noundef nonnull %tmp.i.i.i) #8
  %26 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i.i)
  %cmp2.1.i.i.i = icmp slt i32 %call.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_group_read.exit.thread.i.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %28 = ptrtoint ptr %regmap.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i14.i, align 4
  %call.2.i.i.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 109, ptr noundef nonnull %tmp.i.i.i) #8
  %30 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp.i.i.i, align 4
  %conv1.2.i.i.i = trunc i32 %31 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i.i)
  %cmp2.2.i.i.i = icmp slt i32 %call.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_group_read.exit.thread.i.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  %fix_io.i.i16.i = getelementptr inbounds %struct.da9052, ptr %18, i32 0, i32 8
  %32 = ptrtoint ptr %fix_io.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fix_io.i.i16.i, align 4
  %tobool.not.i.i17.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i17.i, label %for.cond.2.i.i.i.da9052_group_read.exit.i.i_crit_edge, label %if.then4.i.i.i

for.cond.2.i.i.i.da9052_group_read.exit.i.i_crit_edge: ; preds = %for.cond.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_group_read.exit.i.i

if.then4.i.i.i:                                   ; preds = %for.cond.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.i = call i32 %33(ptr noundef %18, i8 noundef zeroext 107) #8
  br label %da9052_group_read.exit.i.i

da9052_group_read.exit.thread.i.i:                ; preds = %for.cond.1.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge, %for.cond.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge, %if.end6.i.da9052_group_read.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call.2.i.i.i, %for.cond.1.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge ], [ %call.1.i.i.i, %for.cond.i.i.i.da9052_group_read.exit.thread.i.i_crit_edge ], [ %call.i.i15.i, %if.end6.i.da9052_group_read.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  br label %__da9052_read_tsi.exit

da9052_group_read.exit.i.i:                       ; preds = %if.then4.i.i.i, %for.cond.2.i.i.i.da9052_group_read.exit.i.i_crit_edge
  %retval.0.i.i18.i = phi i32 [ %call6.i.i.i, %if.then4.i.i.i ], [ %call.2.i.i.i, %for.cond.2.i.i.i.da9052_group_read.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i18.i)
  %tobool.not.i.i = icmp eq i32 %retval.0.i.i18.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %da9052_group_read.exit.i.i.__da9052_read_tsi.exit_crit_edge

da9052_group_read.exit.i.i.__da9052_read_tsi.exit_crit_edge: ; preds = %da9052_group_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__da9052_read_tsi.exit

if.end.i.i:                                       ; preds = %da9052_group_read.exit.i.i
  %34 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.i.i.__da9052_read_tsi.exit_crit_edge [
    i32 70, label %if.end.i.i.sw.epilog.i19.i_crit_edge
    i32 71, label %if.end.i.i.sw.epilog.i19.i_crit_edge14
    i32 72, label %if.end.i.i.sw.bb3.i.i_crit_edge
    i32 73, label %if.end.i.i.sw.bb3.i.i_crit_edge15
  ]

if.end.i.i.sw.bb3.i.i_crit_edge15:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

if.end.i.i.sw.bb3.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

if.end.i.i.sw.epilog.i19.i_crit_edge14:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i19.i

if.end.i.i.sw.epilog.i19.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i19.i

if.end.i.i.__da9052_read_tsi.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__da9052_read_tsi.exit

sw.bb3.i.i:                                       ; preds = %if.end.i.i.sw.bb3.i.i_crit_edge, %if.end.i.i.sw.bb3.i.i_crit_edge15
  %35 = lshr i8 %conv1.2.i.i.i, 2
  br label %sw.epilog.i19.i

sw.epilog.i19.i:                                  ; preds = %sw.bb3.i.i, %if.end.i.i.sw.epilog.i19.i_crit_edge, %if.end.i.i.sw.epilog.i19.i_crit_edge14
  %msb.0.in.in.in.i.i = phi i32 [ %27, %sw.bb3.i.i ], [ %23, %if.end.i.i.sw.epilog.i19.i_crit_edge ], [ %23, %if.end.i.i.sw.epilog.i19.i_crit_edge14 ]
  %lsb.0.in.in.i.i = phi i8 [ %35, %sw.bb3.i.i ], [ %conv1.2.i.i.i, %if.end.i.i.sw.epilog.i19.i_crit_edge ], [ %conv1.2.i.i.i, %if.end.i.i.sw.epilog.i19.i_crit_edge14 ]
  %lsb.0.in.i.i = and i8 %lsb.0.in.in.i.i, 3
  %lsb.0.i.i = zext i8 %lsb.0.in.i.i to i32
  %msb.0.in.i.i = shl i32 %msb.0.in.in.in.i.i, 2
  %msb.0.i.i = and i32 %msb.0.in.i.i, 1020
  %or.i.i = or i32 %msb.0.i.i, %lsb.0.i.i
  br label %__da9052_read_tsi.exit

__da9052_read_tsi.exit:                           ; preds = %sw.epilog.i19.i, %if.end.i.i.__da9052_read_tsi.exit_crit_edge, %da9052_group_read.exit.i.i.__da9052_read_tsi.exit_crit_edge, %da9052_group_read.exit.thread.i.i, %if.end.i.__da9052_read_tsi.exit_crit_edge, %da9052_request_tsi_read.exit.i.__da9052_read_tsi.exit_crit_edge, %sw.epilog.i.i.__da9052_read_tsi.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i.i.i, %da9052_request_tsi_read.exit.i.__da9052_read_tsi.exit_crit_edge ], [ -110, %if.end.i.__da9052_read_tsi.exit_crit_edge ], [ %or.i.i, %sw.epilog.i19.i ], [ %retval.0.i.i18.i, %da9052_group_read.exit.i.i.__da9052_read_tsi.exit_crit_edge ], [ -22, %if.end.i.i.__da9052_read_tsi.exit_crit_edge ], [ %retval.0.i.ph.i.i, %da9052_group_read.exit.thread.i.i ], [ %call.i.i.i, %sw.epilog.i.i.__da9052_read_tsi.exit_crit_edge ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %auxadc_lock3 = getelementptr inbounds %struct.da9052, ptr %37, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %auxadc_lock3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %__da9052_read_tsi.exit.cleanup_crit_edge, label %if.else

__da9052_read_tsi.exit.cleanup_crit_edge:         ; preds = %__da9052_read_tsi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %__da9052_read_tsi.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tsiref_mv.i = getelementptr inbounds %struct.da9052_hwmon, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %tsiref_mv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tsiref_mv.i, align 4
  %mul.i = mul i32 %39, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i13 = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i13, i32 511, i32 -511
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 1023
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %cond.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %__da9052_read_tsi.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.else ], [ %retval.0.i, %__da9052_read_tsi.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_vbbat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @da9052_adc_manual_read(ptr noundef %3, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %call1, 5000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 511, i32 -511
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 1023
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %cond.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_ich_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !172
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 87, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

entry.da9052_reg_read.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %8(ptr noundef %3, i8 noundef zeroext 87) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %entry.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i, %entry.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %da9052_reg_read.exit.cleanup_crit_edge, label %if.end

da9052_reg_read.exit.cleanup_crit_edge:           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %10, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp2 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp2, i32 5, i32 -5
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 10
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %da9052_reg_read.exit.cleanup_crit_edge, %da9052_reg_read.exit.thread
  %retval.0 = phi i32 [ %call10, %if.end ], [ %10, %da9052_reg_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %da9052_reg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_tbat_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @da9052_adc_read_temp(ptr noundef %3) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9052_adc_read_temp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_tjunc_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i16 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !172
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

entry.da9052_reg_read.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %8(ptr noundef %3, i8 noundef zeroext 104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %entry.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i, %entry.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %da9052_reg_read.exit.cleanup_crit_edge, label %if.end

da9052_reg_read.exit.cleanup_crit_edge:           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_read.exit
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i16) #8
  %13 = ptrtoint ptr %val.i16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i16, align 4, !annotation !172
  %regmap.i17 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i17, align 4
  %call.i18 = call i32 @regmap_read(ptr noundef %15, i32 noundef 94, ptr noundef nonnull %val.i16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp.i19 = icmp slt i32 %call.i18, 0
  br i1 %cmp.i19, label %if.end.da9052_reg_read.exit28.thread_crit_edge, label %if.end.i22

if.end.da9052_reg_read.exit28.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit28.thread

if.end.i22:                                       ; preds = %if.end
  %fix_io.i20 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 8
  %16 = ptrtoint ptr %fix_io.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fix_io.i20, align 4
  %tobool.not.i21 = icmp eq ptr %17, null
  br i1 %tobool.not.i21, label %if.end.i22.da9052_reg_read.exit28_crit_edge, label %if.then2.i25

if.end.i22.da9052_reg_read.exit28_crit_edge:      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit28

if.then2.i25:                                     ; preds = %if.end.i22
  %call4.i23 = call i32 %17(ptr noundef %12, i8 noundef zeroext 94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i23)
  %cmp5.i24 = icmp slt i32 %call4.i23, 0
  br i1 %cmp5.i24, label %if.then2.i25.da9052_reg_read.exit28.thread_crit_edge, label %if.then2.i25.da9052_reg_read.exit28_crit_edge

if.then2.i25.da9052_reg_read.exit28_crit_edge:    ; preds = %if.then2.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit28

if.then2.i25.da9052_reg_read.exit28.thread_crit_edge: ; preds = %if.then2.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %da9052_reg_read.exit28.thread

da9052_reg_read.exit28.thread:                    ; preds = %if.then2.i25.da9052_reg_read.exit28.thread_crit_edge, %if.end.da9052_reg_read.exit28.thread_crit_edge
  %retval.0.i27.ph = phi i32 [ %call4.i23, %if.then2.i25.da9052_reg_read.exit28.thread_crit_edge ], [ %call.i18, %if.end.da9052_reg_read.exit28.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i16) #8
  br label %cleanup

da9052_reg_read.exit28:                           ; preds = %if.then2.i25.da9052_reg_read.exit28_crit_edge, %if.end.i22.da9052_reg_read.exit28_crit_edge
  %18 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4 = icmp slt i32 %19, 0
  br i1 %cmp4, label %da9052_reg_read.exit28.cleanup_crit_edge, label %if.end6

da9052_reg_read.exit28.cleanup_crit_edge:         ; preds = %da9052_reg_read.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %da9052_reg_read.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub nsw i32 %10, %19
  %mul = mul i32 %sub, 1708
  %sub7 = add i32 %mul, -108800
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %sub7)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %da9052_reg_read.exit28.cleanup_crit_edge, %da9052_reg_read.exit28.thread, %da9052_reg_read.exit.cleanup_crit_edge, %da9052_reg_read.exit.thread
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ %10, %da9052_reg_read.exit.cleanup_crit_edge ], [ %19, %da9052_reg_read.exit28.cleanup_crit_edge ], [ %retval.0.i.ph, %da9052_reg_read.exit.thread ], [ %retval.0.i27.ph, %da9052_reg_read.exit28.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__initcall__kmod_da9052_hwmon__288_502_da9052_hwmon_driver_init6, !1, !"__initcall__kmod_da9052_hwmon__288_502_da9052_hwmon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 502, i32 1}
!2 = !{ptr @__exitcall_da9052_hwmon_driver_exit, !1, !"__exitcall_da9052_hwmon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 504, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 505, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 506, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 507, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 498, i32 11}
!14 = !{ptr @da9052_hwmon_driver, !15, !"da9052_hwmon_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 494, i32 31}
!16 = !{ptr @da9052_hwmon_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 408, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 414, i32 47}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 417, i32 56}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 420, i32 4}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @da9052_hwmon_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @da9052_hwmon_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 439, i32 4}
!33 = !{ptr @da9052_hwmon_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @da9052_hwmon_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 454, i32 7}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 457, i32 4}
!39 = !{ptr @da9052_hwmon_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @da9052_hwmon_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 463, i32 58}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @da9052_groups, !47, !"da9052_groups", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 385, i32 1}
!48 = !{ptr @da9052_group, !49, !"da9052_group", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 381, i32 37}
!50 = !{ptr @da9052_attrs, !51, !"da9052_attrs", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 351, i32 26}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 321, i32 8}
!54 = !{ptr @sensor_dev_attr_in0_input, !53, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 108, i32 22}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 322, i32 8}
!59 = !{ptr @sensor_dev_attr_in0_label, !58, !"sensor_dev_attr_in0_label", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 295, i32 22}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 34, i32 24}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 35, i32 21}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 36, i32 22}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 37, i32 22}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 38, i32 21}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 39, i32 21}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 40, i32 21}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 45, i32 23}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 46, i32 23}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 41, i32 24}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 43, i32 24}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 42, i32 24}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 44, i32 24}
!88 = !{ptr @input_names, !89, !"input_names", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 33, i32 27}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 323, i32 8}
!92 = !{ptr @sensor_dev_attr_in3_input, !91, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 324, i32 8}
!95 = !{ptr @sensor_dev_attr_in3_label, !94, !"sensor_dev_attr_in3_label", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 325, i32 8}
!98 = !{ptr @sensor_dev_attr_in4_input, !97, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 326, i32 8}
!101 = !{ptr @sensor_dev_attr_in4_label, !100, !"sensor_dev_attr_in4_label", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 327, i32 8}
!104 = !{ptr @sensor_dev_attr_in5_input, !103, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 328, i32 8}
!107 = !{ptr @sensor_dev_attr_in5_label, !106, !"sensor_dev_attr_in5_label", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 329, i32 8}
!110 = !{ptr @sensor_dev_attr_in6_input, !109, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 330, i32 8}
!113 = !{ptr @sensor_dev_attr_in6_label, !112, !"sensor_dev_attr_in6_label", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 334, i32 8}
!116 = !{ptr @sensor_dev_attr_in70_input, !115, !"sensor_dev_attr_in70_input", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 335, i32 8}
!119 = !{ptr @sensor_dev_attr_in70_label, !118, !"sensor_dev_attr_in70_label", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 336, i32 8}
!122 = !{ptr @sensor_dev_attr_in71_input, !121, !"sensor_dev_attr_in71_input", i1 false, i1 false}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 337, i32 8}
!125 = !{ptr @sensor_dev_attr_in71_label, !124, !"sensor_dev_attr_in71_label", i1 false, i1 false}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 338, i32 8}
!128 = !{ptr @sensor_dev_attr_in72_input, !127, !"sensor_dev_attr_in72_input", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 339, i32 8}
!131 = !{ptr @sensor_dev_attr_in72_label, !130, !"sensor_dev_attr_in72_label", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 340, i32 8}
!134 = !{ptr @sensor_dev_attr_in73_input, !133, !"sensor_dev_attr_in73_input", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 341, i32 8}
!137 = !{ptr @sensor_dev_attr_in73_label, !136, !"sensor_dev_attr_in73_label", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 331, i32 8}
!140 = !{ptr @sensor_dev_attr_in9_input, !139, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 332, i32 8}
!143 = !{ptr @sensor_dev_attr_in9_label, !142, !"sensor_dev_attr_in9_label", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 343, i32 8}
!146 = !{ptr @sensor_dev_attr_curr1_input, !145, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 344, i32 8}
!149 = !{ptr @sensor_dev_attr_curr1_label, !148, !"sensor_dev_attr_curr1_label", i1 false, i1 false}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 346, i32 8}
!152 = !{ptr @sensor_dev_attr_temp2_input, !151, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 347, i32 8}
!155 = !{ptr @sensor_dev_attr_temp2_label, !154, !"sensor_dev_attr_temp2_label", i1 false, i1 false}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 348, i32 8}
!158 = !{ptr @sensor_dev_attr_temp8_input, !157, !"sensor_dev_attr_temp8_input", i1 false, i1 false}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/da9052-hwmon.c", i32 349, i32 8}
!161 = !{ptr @sensor_dev_attr_temp8_label, !160, !"sensor_dev_attr_temp8_label", i1 false, i1 false}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i8 0, i8 2}
!172 = !{!"auto-init"}
