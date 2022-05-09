; ModuleID = '/llk/IR_all_yes/drivers/hwmon/gsc-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/gsc-hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
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
%struct.gsc_hwmon_platform_data = type { ptr, i32, i32, i32, i32 }
%struct.gsc_hwmon_channel = type { i32, i32, ptr, i32, [2 x i32] }
%struct.gsc_hwmon_data = type { ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr], [17 x i32], [17 x i32], [17 x i32], %struct.hwmon_channel_info, %struct.hwmon_channel_info, %struct.hwmon_channel_info, [4 x ptr], %struct.hwmon_chip_info }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.gsc_dev = type { ptr, ptr, ptr, ptr, i32, i16 }

@__initcall__kmod_gsc_hwmon__191_415_gsc_hwmon_driver_init6 = internal global ptr @gsc_hwmon_driver_init, section ".initcall6.init", align 4
@gsc_hwmon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gsc_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gsc_hwmon_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gsc_hwmon_driver_exit = internal global ptr @gsc_hwmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [52 x i8] c"gsc_hwmon.author=Tim Harvey <tharvey@gateworks.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [50 x i8] c"gsc_hwmon.description=GSC hardware monitor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [39 x i8] c"gsc_hwmon.file=drivers/hwmon/gsc-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [25 x i8] c"gsc_hwmon.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gsc-hwmon\00", [22 x i8] zeroinitializer }, align 32
@gsc_hwmon_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gw,gsc-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gsc_hwmon_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gsc_hwmon_regmap_bus = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @gsc_write, ptr null, ptr null, ptr @gsc_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@gsc_hwmon_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"gsc_hwmon:336:(&gsc_hwmon_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@gsc_hwmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"too many temp channels\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsc_hwmon_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hwmon/gsc-hwmon.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gsc_hwmon_probe._entry_ptr = internal global ptr @gsc_hwmon_probe._entry, section ".printk_index", align 4
@gsc_hwmon_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"too many fan channels\0A\00", [41 x i8] zeroinitializer }, align 32
@gsc_hwmon_probe._entry_ptr.9 = internal global ptr @gsc_hwmon_probe._entry.7, section ".printk_index", align 4
@gsc_hwmon_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 368, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"too many input channels\0A\00", [39 x i8] zeroinitializer }, align 32
@gsc_hwmon_probe._entry_ptr.12 = internal global ptr @gsc_hwmon_probe._entry.10, section ".printk_index", align 4
@gsc_hwmon_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 377, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid mode: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@gsc_hwmon_probe._entry_ptr.15 = internal global ptr @gsc_hwmon_probe._entry.13, section ".printk_index", align 4
@gsc_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @gsc_hwmon_is_visible, ptr @gsc_hwmon_read, ptr @gsc_hwmon_read_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@gsc_hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gsc_hwmon_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gsc_hwmon\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gw,gsc-fan\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fan node without base\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gsc_hwmon_get_devtree_pdata\00", [36 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry_ptr = internal global ptr @gsc_hwmon_get_devtree_pdata._entry, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"channel without label\0A\00", [41 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry_ptr.24 = internal global ptr @gsc_hwmon_get_devtree_pdata._entry.22, section ".printk_index", align 4
@gsc_hwmon_get_devtree_pdata._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.4, i32 284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"channel without reg\0A\00", [43 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry_ptr.27 = internal global ptr @gsc_hwmon_get_devtree_pdata._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gw,mode\00", [24 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"channel without mode\0A\00", [42 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry_ptr.31 = internal global ptr @gsc_hwmon_get_devtree_pdata._entry.29, section ".printk_index", align 4
@gsc_hwmon_get_devtree_pdata._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid channel mode\0A\00", [42 x i8] zeroinitializer }, align 32
@gsc_hwmon_get_devtree_pdata._entry_ptr.34 = internal global ptr @gsc_hwmon_get_devtree_pdata._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gw,voltage-offset-microvolt\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gw,voltage-divider-ohms\00", [40 x i8] zeroinitializer }, align 32
@gsc_hwmon_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gsc_hwmon_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@gsc_hwmon_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_point5_pwm, ptr @sensor_dev_attr_pwm1_auto_point5_temp, ptr @sensor_dev_attr_pwm1_auto_point6_pwm, ptr @sensor_dev_attr_pwm1_auto_point6_temp, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_pwm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_temp_show, ptr @pwm_auto_point_temp_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_pwm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_temp_show, ptr @pwm_auto_point_temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_pwm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_temp_show, ptr @pwm_auto_point_temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_pwm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_temp_show, ptr @pwm_auto_point_temp_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point5_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_pwm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point5_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_temp_show, ptr @pwm_auto_point_temp_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point6_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_pwm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point6_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_point_temp_show, ptr @pwm_auto_point_temp_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point5_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point6_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point6_temp\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 7]
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"gsc_hwmon_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 407, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 409, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"gsc_hwmon_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 402, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"gsc_hwmon_regmap_bus\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 42, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"gsc_hwmon_regmap_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 47, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 334, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 346, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 356, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 368, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 377, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"gsc_hwmon_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 241, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"gsc_hwmon_groups\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 143, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 397, i32 9 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 270, i32 60 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 271, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 272, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 278, i32 42 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 279, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 284, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 288, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 289, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 294, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 300, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 304, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"gsc_hwmon_group\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 140, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"gsc_hwmon_attributes\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 124, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point3_pwm\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point4_pwm\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point4_temp\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point5_pwm\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point5_temp\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point6_pwm\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point6_temp\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 106, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 103, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 107, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 109, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 110, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 112, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 113, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 115, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 116, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 118, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 119, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 121, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [29 x i8] c"../drivers/hwmon/gsc-hwmon.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 122, i32 8 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__exitcall_gsc_hwmon_driver_exit, ptr @__initcall__kmod_gsc_hwmon__191_415_gsc_hwmon_driver_init6, ptr @gsc_hwmon_driver_exit, ptr @gsc_hwmon_get_devtree_pdata._entry, ptr @gsc_hwmon_get_devtree_pdata._entry.22, ptr @gsc_hwmon_get_devtree_pdata._entry.25, ptr @gsc_hwmon_get_devtree_pdata._entry.29, ptr @gsc_hwmon_get_devtree_pdata._entry.32, ptr @gsc_hwmon_get_devtree_pdata._entry_ptr, ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.24, ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.27, ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.31, ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.34, ptr @gsc_hwmon_probe._entry, ptr @gsc_hwmon_probe._entry.10, ptr @gsc_hwmon_probe._entry.13, ptr @gsc_hwmon_probe._entry.7, ptr @gsc_hwmon_probe._entry_ptr, ptr @gsc_hwmon_probe._entry_ptr.12, ptr @gsc_hwmon_probe._entry_ptr.15, ptr @gsc_hwmon_probe._entry_ptr.9, ptr @gsc_hwmon_driver, ptr @.str, ptr @gsc_hwmon_of_match, ptr @gsc_hwmon_probe._key, ptr @gsc_hwmon_regmap_bus, ptr @gsc_hwmon_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @gsc_hwmon_ops, ptr @gsc_hwmon_groups, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @gsc_hwmon_group, ptr @gsc_hwmon_attributes, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_point5_pwm, ptr @sensor_dev_attr_pwm1_auto_point5_temp, ptr @sensor_dev_attr_pwm1_auto_point6_pwm, ptr @sensor_dev_attr_pwm1_auto_point6_temp, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_get_devtree_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_get_devtree_pdata._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_get_devtree_pdata._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_get_devtree_pdata._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_get_devtree_pdata._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hwmon_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point5_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point5_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point6_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point6_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hwmon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gsc_hwmon_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gsc_hwmon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @gsc_hwmon_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @device_get_child_node_count(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.then6_crit_edge, label %if.end.i

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.i:                                         ; preds = %if.then
  %mul.i = mul i32 %call.i, 24
  %add.i = add i32 %mul.i, 20
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add.i, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then6_crit_edge, label %if.end5.i

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.gsc_hwmon_platform_data, ptr %call.i.i, i32 1
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %call.i.i, align 4
  %nchannels6.i = getelementptr inbounds %struct.gsc_hwmon_platform_data, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %nchannels6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %nchannels6.i, align 4
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call7.i = tail call ptr @of_find_compatible_node(ptr noundef %11, ptr noundef null, ptr noundef nonnull @.str.17) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end5.i.if.end13.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %fan_base.i = getelementptr inbounds %struct.gsc_hwmon_platform_data, ptr %call.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.18, ptr noundef %fan_base.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %if.then6

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %call14.i = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #10
  %tobool15.not101.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not101.i, label %if.end13.i.gsc_hwmon_get_devtree_pdata.exit_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  br label %for.body.i

if.end13.i.gsc_hwmon_get_devtree_pdata.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gsc_hwmon_get_devtree_pdata.exit

for.body.i:                                       ; preds = %if.end52.i.for.body.i_crit_edge, %if.end13.i.for.body.i_crit_edge
  %child.0103.i = phi ptr [ %call54.i, %if.end52.i.for.body.i_crit_edge ], [ %call14.i, %if.end13.i.for.body.i_crit_edge ]
  %ch.0102.i = phi ptr [ %incdec.ptr.i, %if.end52.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end13.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %ch.0102.i, i32 0, i32 2
  %call16.i = tail call i32 @fwnode_property_read_string(ptr noundef nonnull %child.0103.i, ptr noundef nonnull @.str.21, ptr noundef %name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end23.i, label %do.end21.i

do.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #13
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.0103.i) #10
  br label %if.then6

if.end23.i:                                       ; preds = %for.body.i
  %call.i94.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0103.i, ptr noundef nonnull @.str.18, ptr noundef %ch.0102.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool25.not.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool25.not.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #13
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.0103.i) #10
  br label %if.then6

if.end31.i:                                       ; preds = %if.end23.i
  %mode.i = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %ch.0102.i, i32 0, i32 1
  %call.i95.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0103.i, ptr noundef nonnull @.str.28, ptr noundef %mode.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %tobool33.not.i = icmp eq i32 %call.i95.i, 0
  br i1 %tobool33.not.i, label %if.end39.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.0103.i) #10
  br label %if.then6

if.end39.i:                                       ; preds = %if.end31.i
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp41.i = icmp ugt i32 %13, 5
  br i1 %cmp41.i, label %do.end45.i, label %if.end47.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.0103.i) #10
  br label %if.then6

if.end47.i:                                       ; preds = %if.end39.i
  %mvoffset.i = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %ch.0102.i, i32 0, i32 3
  %call.i96.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0103.i, ptr noundef nonnull @.str.35, ptr noundef %mvoffset.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool49.not.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.end47.i.if.end52.i_crit_edge

if.end47.i.if.end52.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %mvoffset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mvoffset.i, align 4
  %div.i = udiv i32 %15, 1000
  store i32 %div.i, ptr %mvoffset.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end47.i.if.end52.i_crit_edge
  %vdiv.i = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %ch.0102.i, i32 0, i32 4
  %call53.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0103.i, ptr noundef nonnull @.str.36, ptr noundef %vdiv.i, i32 noundef 2) #10
  %incdec.ptr.i = getelementptr %struct.gsc_hwmon_channel, ptr %ch.0102.i, i32 1
  %call54.i = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef nonnull %child.0103.i) #10
  %tobool15.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool15.not.i, label %if.end52.i.gsc_hwmon_get_devtree_pdata.exit_crit_edge, label %if.end52.i.for.body.i_crit_edge

if.end52.i.for.body.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end52.i.gsc_hwmon_get_devtree_pdata.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gsc_hwmon_get_devtree_pdata.exit

gsc_hwmon_get_devtree_pdata.exit:                 ; preds = %if.end52.i.gsc_hwmon_get_devtree_pdata.exit_crit_edge, %if.end13.i.gsc_hwmon_get_devtree_pdata.exit_crit_edge
  %cmp.i158 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %gsc_hwmon_get_devtree_pdata.exit.if.then6_crit_edge, label %gsc_hwmon_get_devtree_pdata.exit.if.end8_crit_edge

gsc_hwmon_get_devtree_pdata.exit.if.end8_crit_edge: ; preds = %gsc_hwmon_get_devtree_pdata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

gsc_hwmon_get_devtree_pdata.exit.if.then6_crit_edge: ; preds = %gsc_hwmon_get_devtree_pdata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %gsc_hwmon_get_devtree_pdata.exit.if.then6_crit_edge, %do.end45.i, %do.end37.i, %do.end29.i, %do.end21.i, %do.end.i, %if.end.i.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %retval.0.i163 = phi ptr [ %call.i.i, %gsc_hwmon_get_devtree_pdata.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then6_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end45.i ], [ inttoptr (i32 -22 to ptr), %do.end37.i ], [ inttoptr (i32 -22 to ptr), %do.end29.i ], [ inttoptr (i32 -22 to ptr), %do.end21.i ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  %16 = ptrtoint ptr %retval.0.i163 to i32
  br label %cleanup85

if.end8:                                          ; preds = %gsc_hwmon_get_devtree_pdata.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %pdata.0 = phi ptr [ %5, %entry.if.end8_crit_edge ], [ %call.i.i, %gsc_hwmon_get_devtree_pdata.exit.if.end8_crit_edge ]
  %call.i159 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 456, i32 noundef 3520) #10
  %tobool10.not = icmp eq ptr %call.i159, null
  br i1 %tobool10.not, label %if.end8.cleanup85_crit_edge, label %if.end12

if.end8.cleanup85_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85

if.end12:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %call.i159 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %call.i159, align 4
  %pdata14 = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 1
  %18 = ptrtoint ptr %pdata14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pdata.0, ptr %pdata14, align 4
  %i2c_hwmon = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %i2c_hwmon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_hwmon, align 4
  %call15 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @gsc_hwmon_regmap_bus, ptr noundef %20, ptr noundef nonnull @gsc_hwmon_regmap_config, ptr noundef nonnull @gsc_hwmon_probe._key, ptr noundef nonnull @.str.1) #10
  %regmap = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 2
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call15, ptr %regmap, align 4
  %cmp.i160 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %22 = ptrtoint ptr %pdata14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata14, align 4
  %nchannels175 = getelementptr inbounds %struct.gsc_hwmon_platform_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %nchannels175 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nchannels175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp176 = icmp sgt i32 %25, 0
  br i1 %cmp176, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call15 to i32
  br label %cleanup85

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i_fan.0180 = phi i32 [ %i_fan.2, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i_temp.0179 = phi i32 [ %i_temp.2, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i_in.0178 = phi i32 [ %i_in.2, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0177 = phi i32 [ %inc56, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %27 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata.0, align 4
  %arrayidx = getelementptr %struct.gsc_hwmon_channel, ptr %28, i32 %i.0177
  %mode = getelementptr %struct.gsc_hwmon_channel, ptr %28, i32 %i.0177, i32 1
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %do.end53 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb29
    i32 1, label %for.body.sw.bb40_crit_edge
    i32 3, label %for.body.sw.bb40_crit_edge221
    i32 2, label %for.body.sw.bb40_crit_edge222
  ]

for.body.sw.bb40_crit_edge222:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb40

for.body.sw.bb40_crit_edge221:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb40

for.body.sw.bb40_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb40

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i_temp.0179)
  %cmp23 = icmp eq i32 %i_temp.0179, 16
  br i1 %cmp23, label %do.end, label %if.end26

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.2) #13
  br label %cleanup85

if.end26:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 3, i32 %i_temp.0179
  %34 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 6, i32 %i_temp.0179
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2097154, ptr %arrayidx28, align 4
  %inc = add i32 %i_temp.0179, 1
  br label %for.inc

sw.bb29:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i_fan.0180)
  %cmp30 = icmp eq i32 %i_fan.0180, 16
  br i1 %cmp30, label %do.end34, label %if.end36

do.end34:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.8) #13
  br label %cleanup85

if.end36:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 5, i32 %i_fan.0180
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 8, i32 %i_fan.0180
  %39 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6, ptr %arrayidx38, align 4
  %inc39 = add i32 %i_fan.0180, 1
  br label %for.inc

sw.bb40:                                          ; preds = %for.body.sw.bb40_crit_edge, %for.body.sw.bb40_crit_edge221, %for.body.sw.bb40_crit_edge222
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i_in.0178)
  %cmp41 = icmp eq i32 %i_in.0178, 16
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.11) #13
  br label %cleanup85

if.end47:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx48 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 4, i32 %i_in.0178
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 7, i32 %i_in.0178
  %43 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1026, ptr %arrayidx49, align 4
  %inc50 = add i32 %i_in.0178, 1
  br label %for.inc

do.end53:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.14, i32 noundef %30) #13
  br label %cleanup85

for.inc:                                          ; preds = %if.end47, %if.end36, %if.end26
  %i_in.2 = phi i32 [ %inc50, %if.end47 ], [ %i_in.0178, %if.end36 ], [ %i_in.0178, %if.end26 ]
  %i_temp.2 = phi i32 [ %i_temp.0179, %if.end47 ], [ %i_temp.0179, %if.end36 ], [ %inc, %if.end26 ]
  %i_fan.2 = phi i32 [ %i_fan.0180, %if.end47 ], [ %inc39, %if.end36 ], [ %i_fan.0180, %if.end26 ]
  %inc56 = add nuw nsw i32 %i.0177, 1
  %46 = ptrtoint ptr %pdata14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata14, align 4
  %nchannels = getelementptr inbounds %struct.gsc_hwmon_platform_data, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nchannels, align 4
  %cmp = icmp slt i32 %inc56, %49
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %chip = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 13
  %50 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @gsc_hwmon_ops, ptr %chip, align 4
  %info = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 12
  %info58 = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 13, i32 1
  %51 = ptrtoint ptr %info58 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %info, ptr %info58, align 4
  %temp_info = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 9
  %52 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %temp_info, ptr %info, align 4
  %in_info = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 10
  %arrayidx62 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 12, i32 1
  %53 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %in_info, ptr %arrayidx62, align 4
  %fan_info = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 11
  %arrayidx64 = getelementptr %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 12, i32 2
  %54 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %fan_info, ptr %arrayidx64, align 4
  %55 = ptrtoint ptr %temp_info to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %temp_info, align 4
  %temp_config66 = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 6
  %config = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %temp_config66, ptr %config, align 4
  %57 = ptrtoint ptr %in_info to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %in_info, align 4
  %in_config71 = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 7
  %config74 = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %config74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %in_config71, ptr %config74, align 4
  %59 = ptrtoint ptr %fan_info to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 7, ptr %fan_info, align 4
  %fan_config77 = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 8
  %config80 = getelementptr inbounds %struct.gsc_hwmon_data, ptr %call.i159, i32 0, i32 11, i32 1
  %60 = ptrtoint ptr %config80 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %fan_config77, ptr %config80, align 4
  %fan_base = getelementptr inbounds %struct.gsc_hwmon_platform_data, ptr %pdata.0, i32 0, i32 4
  %61 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fan_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool81.not = icmp eq i32 %62, 0
  %cond = select i1 %tobool81.not, ptr null, ptr @gsc_hwmon_groups
  %call83 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i159, ptr noundef %chip, ptr noundef %cond) #10
  %cmp.i.i = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  %63 = ptrtoint ptr %call83 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %63, i32 0
  br label %cleanup85

cleanup85:                                        ; preds = %for.end, %do.end53, %do.end45, %do.end34, %do.end, %if.then18, %if.end8.cleanup85_crit_edge, %if.then6
  %retval.2 = phi i32 [ %26, %if.then18 ], [ %spec.select.i, %for.end ], [ %16, %if.then6 ], [ -12, %if.end8.cleanup85_crit_edge ], [ -22, %do.end53 ], [ -22, %do.end45 ], [ -22, %do.end34 ], [ -22, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_write(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_read(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @gsc_hwmon_is_visible(ptr nocapture noundef readnone %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %ch) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !133
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !133
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !133
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 7, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.gsc_hwmon_data, ptr %1, i32 0, i32 4, i32 %channel
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2 = getelementptr %struct.gsc_hwmon_data, ptr %1, i32 0, i32 3, i32 %channel
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4 = getelementptr %struct.gsc_hwmon_data, ptr %1, i32 0, i32 5, i32 %channel
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %ch.0.in = phi ptr [ %arrayidx4, %sw.bb3 ], [ %arrayidx2, %sw.bb1 ], [ %arrayidx, %sw.bb ]
  %8 = ptrtoint ptr %ch.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %ch.0 = load ptr, ptr %ch.0.in, align 4
  %mode = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %ch.0, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  %cond = select i1 %cmp, i32 3, i32 2
  %regmap = getelementptr inbounds %struct.gsc_hwmon_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch.0, align 4
  %call5 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %buf, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %while.body, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %sw.epilog
  %dec = add nsw i32 %cond, -1
  %arrayidx7 = getelementptr [3 x i8], ptr %buf, i32 0, i32 %dec
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %16 to i32
  %mul = shl nuw nsw i32 %dec, 3
  %shl = shl i32 %conv, %mul
  %dec.1 = add nsw i32 %cond, -2
  %arrayidx7.1 = getelementptr [3 x i8], ptr %buf, i32 0, i32 %dec.1
  %17 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.1, align 1
  %conv.1 = zext i8 %18 to i32
  %mul.1 = shl nuw nsw i32 %dec.1, 3
  %shl.1 = shl i32 %conv.1, %mul.1
  %or.1 = or i32 %shl.1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp6.1 = icmp ugt i32 %dec, 1
  br i1 %cmp6.1, label %while.body.2, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.2:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %dec.2 = add nsw i32 %cond, -3
  %arrayidx7.2 = getelementptr [3 x i8], ptr %buf, i32 0, i32 %dec.2
  %19 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7.2, align 1
  %conv.2 = zext i8 %20 to i32
  %mul.2 = shl nsw i32 %dec.2, 3
  %shl.2 = shl i32 %conv.2, %mul.2
  %or.2 = or i32 %shl.2, %or.1
  br label %while.end

while.end:                                        ; preds = %while.body.2, %while.body.while.end_crit_edge
  %or.lcssa = phi i32 [ %or.1, %while.body.while.end_crit_edge ], [ %or.2, %while.body.2 ]
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %22, label %while.end.sw.epilog46_crit_edge [
    i32 0, label %sw.bb9
    i32 2, label %sw.bb15
    i32 4, label %sw.bb43
  ]

while.end.sw.epilog46_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog46

sw.bb9:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %or.lcssa)
  %cmp10 = icmp sgt i32 %or.lcssa, 32768
  %sub = add i32 %or.lcssa, -65535
  %spec.select = select i1 %cmp10, i32 %sub, i32 %or.lcssa
  %mul14 = mul i32 %spec.select, 100
  br label %sw.epilog46

sw.bb15:                                          ; preds = %while.end
  %24 = call i32 @llvm.smax.i32(i32 %or.lcssa, i32 0)
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 4096)
  %mul27 = mul nuw nsw i32 %25, 2500
  %shr85 = lshr i32 %mul27, 12
  %vdiv = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %ch.0, i32 0, i32 4
  %26 = ptrtoint ptr %vdiv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool29.not = icmp eq i32 %27, 0
  br i1 %tobool29.not, label %sw.bb15.if.end41_crit_edge, label %land.lhs.true

sw.bb15.if.end41_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true:                                    ; preds = %sw.bb15
  %arrayidx31 = getelementptr %struct.gsc_hwmon_channel, ptr %ch.0, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool32.not = icmp eq i32 %29, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end41_crit_edge, label %if.then33

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %29, %27
  %mul38 = mul i32 %add, %shr85
  %div = udiv i32 %mul38, %29
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %land.lhs.true.if.end41_crit_edge, %sw.bb15.if.end41_crit_edge
  %tmp.2 = phi i32 [ %div, %if.then33 ], [ %shr85, %land.lhs.true.if.end41_crit_edge ], [ %shr85, %sw.bb15.if.end41_crit_edge ]
  %mvoffset = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %ch.0, i32 0, i32 3
  %30 = ptrtoint ptr %mvoffset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mvoffset, align 4
  %add42 = add i32 %31, %tmp.2
  br label %sw.epilog46

sw.bb43:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul44 = mul i32 %or.lcssa, 30
  br label %sw.epilog46

sw.epilog46:                                      ; preds = %sw.bb43, %if.end41, %sw.bb9, %while.end.sw.epilog46_crit_edge
  %tmp.3 = phi i32 [ %or.lcssa, %while.end.sw.epilog46_crit_edge ], [ %mul44, %sw.bb43 ], [ %add42, %if.end41 ], [ %mul14, %sw.bb9 ]
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %tmp.3, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog46, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog46 ], [ -95, %entry.cleanup_crit_edge ], [ %call5, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gsc_hwmon_read_string(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 7, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.gsc_hwmon_data, ptr %1, i32 0, i32 4, i32 %channel
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2 = getelementptr %struct.gsc_hwmon_data, ptr %1, i32 0, i32 3, i32 %channel
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5 = getelementptr %struct.gsc_hwmon_data, ptr %1, i32 0, i32 5, i32 %channel
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %arrayidx.sink = phi ptr [ %arrayidx, %sw.bb ], [ %arrayidx2, %sw.bb1 ], [ %arrayidx5, %sw.bb4 ]
  %3 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.sink, align 4
  %name = getelementptr inbounds %struct.gsc_hwmon_channel, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_point_pwm_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = mul i32 %1, 2550
  %mul1 = add i32 %2, 12750
  %div = sdiv i32 %mul1, 100
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %div)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_point_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regs = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.gsc_hwmon_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %fan_base = getelementptr inbounds %struct.gsc_hwmon_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fan_base, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %mul = shl i32 %7, 1
  %add = add i32 %mul, %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs) #10
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %regs, align 1, !annotation !133
  %9 = getelementptr inbounds [2 x i8], ptr %regs, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !133
  %regmap = getelementptr inbounds %struct.gsc_hwmon_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %conv1 = and i32 %add, 255
  %call2 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %conv1, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regs, align 1
  %conv3 = zext i8 %14 to i32
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %9, align 1
  %conv5 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl, %conv3
  %mul6 = mul nuw nsw i32 %or, 10
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %mul6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_point_temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %regs = alloca [2 x i8], align 1
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.gsc_hwmon_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %fan_base = getelementptr inbounds %struct.gsc_hwmon_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fan_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fan_base, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %temp, align 4, !annotation !133
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds [2 x i8], ptr %regs, i32 0, i32 1
  %mul = shl i32 %7, 1
  %add = add i32 %mul, %5
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 10000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12.not = icmp eq i32 %13, 0
  %14 = trunc i32 %13 to i16
  %div2052.lhs.trunc = add nuw nsw i16 %14, 5
  %div205253 = udiv i16 %div2052.lhs.trunc, 10
  %div2052.zext = zext i16 %div205253 to i32
  %cond25 = select i1 %cmp12.not, i32 0, i32 %div2052.zext
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond25, ptr %temp, align 4
  %conv26 = trunc i32 %cond25 to i8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26, ptr %regs, align 1
  %17 = lshr i32 %cond25, 8
  %conv28 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv28, ptr %9, align 1
  %regmap = getelementptr inbounds %struct.gsc_hwmon_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %conv30 = and i32 %add, 255
  %call31 = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef %conv30, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %spec.select = select i1 %tobool32.not, i32 %count, i32 %call31
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_gsc_hwmon__191_415_gsc_hwmon_driver_init6, !1, !"__initcall__kmod_gsc_hwmon__191_415_gsc_hwmon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 415, i32 1}
!2 = !{ptr @__exitcall_gsc_hwmon_driver_exit, !1, !"__exitcall_gsc_hwmon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author192, !4, !"__UNIQUE_ID_author192", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 417, i32 1}
!5 = !{ptr @__UNIQUE_ID_description193, !6, !"__UNIQUE_ID_description193", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 418, i32 1}
!7 = !{ptr @__UNIQUE_ID_file194, !8, !"__UNIQUE_ID_file194", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 419, i32 1}
!9 = !{ptr @__UNIQUE_ID_license195, !8, !"__UNIQUE_ID_license195", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 409, i32 11}
!12 = !{ptr @gsc_hwmon_driver, !13, !"gsc_hwmon_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 407, i32 31}
!14 = !{ptr @gsc_hwmon_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 334, i32 18}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 346, i32 5}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gsc_hwmon_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @gsc_hwmon_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 356, i32 5}
!27 = !{ptr @gsc_hwmon_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gsc_hwmon_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 368, i32 5}
!31 = !{ptr @gsc_hwmon_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gsc_hwmon_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 377, i32 4}
!35 = !{ptr @gsc_hwmon_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gsc_hwmon_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 397, i32 9}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 270, i32 60}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 271, i32 39}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 272, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @gsc_hwmon_get_devtree_pdata._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @gsc_hwmon_get_devtree_pdata._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 278, i32 42}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 279, i32 4}
!52 = !{ptr @gsc_hwmon_get_devtree_pdata._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 284, i32 4}
!56 = !{ptr @gsc_hwmon_get_devtree_pdata._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 288, i32 39}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 289, i32 4}
!62 = !{ptr @gsc_hwmon_get_devtree_pdata._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 294, i32 4}
!66 = !{ptr @gsc_hwmon_get_devtree_pdata._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @gsc_hwmon_get_devtree_pdata._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 300, i32 12}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 304, i32 13}
!72 = !{ptr @gsc_hwmon_regmap_bus, !73, !"gsc_hwmon_regmap_bus", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 42, i32 26}
!74 = !{ptr @gsc_hwmon_regmap_config, !75, !"gsc_hwmon_regmap_config", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 47, i32 35}
!76 = !{ptr @gsc_hwmon_ops, !77, !"gsc_hwmon_ops", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 241, i32 31}
!78 = !{ptr @gsc_hwmon_groups, !79, !"gsc_hwmon_groups", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 143, i32 1}
!80 = !{ptr @gsc_hwmon_group, !81, !"gsc_hwmon_group", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 140, i32 37}
!82 = !{ptr @gsc_hwmon_attributes, !83, !"gsc_hwmon_attributes", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 124, i32 26}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 106, i32 8}
!86 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !85, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 103, i32 22}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 107, i32 8}
!91 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp, !90, !"sensor_dev_attr_pwm1_auto_point1_temp", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 109, i32 8}
!94 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !93, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 110, i32 8}
!97 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp, !96, !"sensor_dev_attr_pwm1_auto_point2_temp", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 112, i32 8}
!100 = !{ptr @sensor_dev_attr_pwm1_auto_point3_pwm, !99, !"sensor_dev_attr_pwm1_auto_point3_pwm", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 113, i32 8}
!103 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp, !102, !"sensor_dev_attr_pwm1_auto_point3_temp", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 115, i32 8}
!106 = !{ptr @sensor_dev_attr_pwm1_auto_point4_pwm, !105, !"sensor_dev_attr_pwm1_auto_point4_pwm", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 116, i32 8}
!109 = !{ptr @sensor_dev_attr_pwm1_auto_point4_temp, !108, !"sensor_dev_attr_pwm1_auto_point4_temp", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 118, i32 8}
!112 = !{ptr @sensor_dev_attr_pwm1_auto_point5_pwm, !111, !"sensor_dev_attr_pwm1_auto_point5_pwm", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 119, i32 8}
!115 = !{ptr @sensor_dev_attr_pwm1_auto_point5_temp, !114, !"sensor_dev_attr_pwm1_auto_point5_temp", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 121, i32 8}
!118 = !{ptr @sensor_dev_attr_pwm1_auto_point6_pwm, !117, !"sensor_dev_attr_pwm1_auto_point6_pwm", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 122, i32 8}
!121 = !{ptr @sensor_dev_attr_pwm1_auto_point6_temp, !120, !"sensor_dev_attr_pwm1_auto_point6_temp", i1 false, i1 false}
!122 = !{ptr @gsc_hwmon_of_match, !123, !"gsc_hwmon_of_match", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/gsc-hwmon.c", i32 402, i32 34}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
