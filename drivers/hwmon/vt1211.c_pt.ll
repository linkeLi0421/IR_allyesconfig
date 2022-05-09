; ModuleID = '/llk/IR_all_yes/drivers/hwmon/vt1211.c_pt.bc'
source_filename = "../drivers/hwmon/vt1211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
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
%struct.vt1211_data = type { i16, ptr, ptr, %struct.mutex, i8, i32, [6 x i8], [6 x i8], [6 x i8], [7 x i8], [7 x i8], [7 x i8], [2 x i8], [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, [4 x i8], [2 x [4 x i8]], i8, i8, i8, i16 }

@__param_str_uch_config = internal constant [18 x i8] c"vt1211.uch_config\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@uch_config = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_uch_config = internal constant %struct.kernel_param { ptr @__param_str_uch_config, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @uch_config } }, section "__param", align 4
@__UNIQUE_ID_uch_configtype183 = internal constant [31 x i8] c"vt1211.parmtype=uch_config:int\00", section ".modinfo", align 1
@__UNIQUE_ID_uch_config184 = internal constant [70 x i8] c"vt1211.parm=uch_config:Initialize the universal channel configuration\00", section ".modinfo", align 1
@__param_str_int_mode = internal constant [16 x i8] c"vt1211.int_mode\00", align 1
@int_mode = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_int_mode = internal constant %struct.kernel_param { ptr @__param_str_int_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @int_mode } }, section "__param", align 4
@__UNIQUE_ID_int_modetype185 = internal constant [29 x i8] c"vt1211.parmtype=int_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_int_mode186 = internal constant [58 x i8] c"vt1211.parm=int_mode:Force the temperature interrupt mode\00", section ".modinfo", align 1
@__param_str_force_id = internal constant [16 x i8] c"vt1211.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype187 = internal constant [32 x i8] c"vt1211.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id188 = internal constant [53 x i8] c"vt1211.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vt1211_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vt1211_probe, ptr @vt1211_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author229 = internal constant [49 x i8] c"vt1211.author=Juerg Haefliger <juergh@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [34 x i8] c"vt1211.description=VT1211 sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [33 x i8] c"vt1211.file=drivers/hwmon/vt1211\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [19 x i8] c"vt1211.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_vt1211__233_1366_vt1211_init6 = internal global ptr @vt1211_init, section ".initcall6.init", align 4
@__exitcall_vt1211_exit = internal global ptr @vt1211_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt1211\00", [25 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@vt1211_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt1211_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/vt1211.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt1211_probe._entry_ptr = internal global ptr @vt1211_probe._entry, section ".printk_index", align 4
@vt1211_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@vt1211_in_attr_group = internal constant { [6 x %struct.attribute_group], [40 x i8] } { [6 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @vt1211_in_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_in_attr, i64 20), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_in_attr, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_in_attr, i64 60), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_in_attr, i64 80), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_in_attr, i64 100), ptr null }], [40 x i8] zeroinitializer }, align 32
@vt1211_temp_attr_group = internal constant { [7 x %struct.attribute_group], [52 x i8] } { [7 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @vt1211_temp_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_temp_attr, i64 20), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_temp_attr, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_temp_attr, i64 60), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_temp_attr, i64 80), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_temp_attr, i64 100), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt1211_temp_attr, i64 120), ptr null }], [52 x i8] zeroinitializer }, align 32
@vt1211_sysfs_fan_pwm = internal global { [32 x %struct.sensor_device_attribute_2], [256 x i8] } { [32 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr null }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr null }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr null }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr null }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @set_pwm_auto_point_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @set_pwm_auto_point_pwm }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr null }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @set_pwm_auto_point_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr @set_pwm_auto_point_pwm }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_pwm, ptr null }, i8 1, i8 3 }], [256 x i8] zeroinitializer }, align 32
@vt1211_sysfs_misc = internal global { [4 x %struct.device_attribute], [48 x i8] } { [4 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vrm, ptr @set_vrm }, %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vid, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_name, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarms, ptr null }], [48 x i8] zeroinitializer }, align 32
@vt1211_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Class registration failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@vt1211_probe._entry_ptr.9 = internal global ptr @vt1211_probe._entry.7, section ".printk_index", align 4
@vt1211_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Sysfs interface creation failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@vt1211_probe._entry_ptr.12 = internal global ptr @vt1211_probe._entry.10, section ".printk_index", align 4
@vt1211_in_attr = internal global { [6 x [5 x ptr]], [40 x i8] } { [6 x [5 x ptr]] [[5 x ptr] [ptr @vt1211_sysfs_in, ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 32), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 64), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 96), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 128), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 160), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 192), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 224), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 256), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 288), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 320), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 352), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 384), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 416), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 448), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 480), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 512), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 544), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 576), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 608), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 640), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 672), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 704), ptr getelementptr (i8, ptr @vt1211_sysfs_in, i64 736), ptr null]], [40 x i8] zeroinitializer }, align 32
@vt1211_sysfs_in = internal global { [6 x [4 x %struct.sensor_device_attribute_2]], [192 x i8] } { [6 x [4 x %struct.sensor_device_attribute_2]] [[4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 1, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 2, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 3, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 4, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @set_in }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 5, i8 3 }]], [192 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@bitalarmin = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0B\00\01\03\08\02\09", [25 x i8] zeroinitializer }, align 32
@show_in.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"show_in\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown attr fetch (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@regtemp = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\1F !\22#$%", [25 x i8] zeroinitializer }, align 32
@regtempmax = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9\1D=+-/1", [25 x i8] zeroinitializer }, align 32
@regtemphyst = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c":\1E>,.02", [25 x i8] zeroinitializer }, align 32
@set_in.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.38, i8 0, i8 99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"set_in\00", [25 x i8] zeroinitializer }, align 32
@vt1211_temp_attr = internal global { [7 x [5 x ptr]], [52 x i8] } { [7 x [5 x ptr]] [[5 x ptr] [ptr @vt1211_sysfs_temp, ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 32), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 64), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 96), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 128), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 160), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 192), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 224), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 256), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 288), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 320), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 352), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 384), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 416), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 448), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 480), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 512), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 544), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 576), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 608), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 640), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 672), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 704), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 736), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 768), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 800), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 832), ptr getelementptr (i8, ptr @vt1211_sysfs_temp, i64 864), ptr null]], [52 x i8] zeroinitializer }, align 32
@vt1211_sysfs_temp = internal global { [7 x [4 x %struct.sensor_device_attribute_2]], [224 x i8] } { [7 x [4 x %struct.sensor_device_attribute_2]] [[4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 3, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 4, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 5, i8 3 }], [4 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 6, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @set_temp }, i8 6, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 6, i8 3 }]], [224 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp4_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp5_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_max\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp6_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_input\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp7_max\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp7_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_alarm\00", [20 x i8] zeroinitializer }, align 32
@bitalarmtemp = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\04\0F\0B\00\01\03\08", [25 x i8] zeroinitializer }, align 32
@show_temp.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.38, i8 0, i8 109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_temp\00", [22 x i8] zeroinitializer }, align 32
@set_temp.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.38, i8 0, i8 118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_temp\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@bitalarmfan = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\07", [30 x i8] zeroinitializer }, align 32
@show_fan.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.3, ptr @.str.38, i8 0, i8 -128, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_fan\00", [23 x i8] zeroinitializer }, align 32
@set_fan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 569, ptr @.str.106, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"fan div value %ld not supported. Choose one of 1, 2, 4, or 8.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_fan\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@set_fan._entry_ptr = internal global ptr @set_fan._entry, section ".printk_index", align 4
@set_fan.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.3, ptr @.str.38, i8 0, i8 -112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@show_pwm.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.38, i8 0, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_pwm\00", [23 x i8] zeroinitializer }, align 32
@set_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 673, ptr @.str.106, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pwm mode %ld not supported. Choose one of 0 or 2.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_pwm\00", [24 x i8] zeroinitializer }, align 32
@set_pwm._entry_ptr = internal global ptr @set_pwm._entry, section ".printk_index", align 4
@set_pwm._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 700, ptr @.str.106, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"temp channel %ld not supported. Choose a value between 1 and 7.\0A\00", [63 x i8] zeroinitializer }, align 32
@set_pwm._entry_ptr.112 = internal global ptr @set_pwm._entry.110, section ".printk_index", align 4
@set_pwm._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.3, i32 706, ptr @.str.106, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"temp channel %ld is not available.\0A\00", [60 x i8] zeroinitializer }, align 32
@set_pwm._entry_ptr.115 = internal global ptr @set_pwm._entry.113, section ".printk_index", align 4
@set_pwm.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.3, ptr @.str.38, i8 0, i8 -77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@vt1211_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014vt1211: Invalid UCH configuration %d. Choose a value between 0 and 31.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vt1211_init\00", [20 x i8] zeroinitializer }, align 32
@vt1211_init._entry_ptr = internal global ptr @vt1211_init._entry, section ".printk_index", align 4
@vt1211_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014vt1211: Invalid interrupt mode %d. Only mode 0 is supported.\0A\00", [32 x i8] zeroinitializer }, align 32
@vt1211_init._entry_ptr.125 = internal global ptr @vt1211_init._entry.123, section ".printk_index", align 4
@vt1211_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014vt1211: HW monitor is disabled, skipping\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vt1211_find\00", [20 x i8] zeroinitializer }, align 32
@vt1211_find._entry_ptr = internal global ptr @vt1211_find._entry, section ".printk_index", align 4
@vt1211_find._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014vt1211: Base address is not set, skipping\0A\00", [51 x i8] zeroinitializer }, align 32
@vt1211_find._entry_ptr.130 = internal global ptr @vt1211_find._entry.128, section ".printk_index", align 4
@vt1211_find._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.3, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016vt1211: Found VT1211 chip at 0x%04x, revision %u\0A\00", [44 x i8] zeroinitializer }, align 32
@vt1211_find._entry_ptr.133 = internal global ptr @vt1211_find._entry.131, section ".printk_index", align 4
@vt1211_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013vt1211: Device allocation failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt1211_device_add\00", [46 x i8] zeroinitializer }, align 32
@vt1211_device_add._entry_ptr = internal global ptr @vt1211_device_add._entry, section ".printk_index", align 4
@vt1211_device_add._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.3, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013vt1211: Device resource addition failed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@vt1211_device_add._entry_ptr.138 = internal global ptr @vt1211_device_add._entry.136, section ".printk_index", align 4
@vt1211_device_add._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013vt1211: Device addition failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@vt1211_device_add._entry_ptr.141 = internal global ptr @vt1211_device_add._entry.139, section ".printk_index", align 4
@switch.table.set_fan = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"uch_config\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 27, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [9 x i8] c"int_mode\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 31, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 35, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 39, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"vt1211_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1227, i32 31 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1229, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1157, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1163, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"vt1211_in_attr_group\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 948, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant [23 x i8] c"vt1211_temp_attr_group\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 996, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant [21 x i8] c"vt1211_sysfs_fan_pwm\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1052, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"vt1211_sysfs_misc\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1077, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1204, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1211, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"vt1211_in_attr\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 939, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [16 x i8] c"vt1211_sysfs_in\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 922, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 923, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 924, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 925, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 926, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 927, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 928, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [11 x i8] c"bitalarmin\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 94, i32 17 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 365, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 368, i32 22 }
@___asan_gen_.315 = private unnamed_addr constant [8 x i8] c"regtemp\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 67, i32 11 }
@___asan_gen_.318 = private unnamed_addr constant [11 x i8] c"regtempmax\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 68, i32 11 }
@___asan_gen_.321 = private unnamed_addr constant [12 x i8] c"regtemphyst\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 69, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 397, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"vt1211_temp_attr\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 986, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant [18 x i8] c"vt1211_sysfs_temp\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 968, i32 41 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 969, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 970, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 971, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 972, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 973, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 974, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 975, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [13 x i8] c"bitalarmtemp\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 95, i32 17 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 439, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 473, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1053, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1054, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1055, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1056, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1057, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1058, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1059, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1060, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1061, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1062, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1063, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1064, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1065, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1066, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1067, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1068, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1069, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1070, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1071, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1072, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1073, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1074, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [12 x i8] c"bitalarmfan\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 96, i32 17 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 515, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 567, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 621, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 671, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 698, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 705, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1078, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1079, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1080, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1081, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 896, i32 22 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1327, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1334, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1293, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1300, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1305, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1247, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1258, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.634 = private constant [26 x i8] c"../drivers/hwmon/vt1211.c\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.634, i32 1264, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c"switch.table.set_fan\00", align 1
@llvm.compiler.used = appending global [191 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_force_id188, ptr @__UNIQUE_ID_force_idtype187, ptr @__UNIQUE_ID_int_mode186, ptr @__UNIQUE_ID_int_modetype185, ptr @__UNIQUE_ID_license232, ptr @__UNIQUE_ID_uch_config184, ptr @__UNIQUE_ID_uch_configtype183, ptr @__exitcall_vt1211_exit, ptr @__initcall__kmod_vt1211__233_1366_vt1211_init6, ptr @__param_force_id, ptr @__param_int_mode, ptr @__param_uch_config, ptr @set_fan._entry, ptr @set_fan._entry_ptr, ptr @set_pwm._entry, ptr @set_pwm._entry.110, ptr @set_pwm._entry.113, ptr @set_pwm._entry_ptr, ptr @set_pwm._entry_ptr.112, ptr @set_pwm._entry_ptr.115, ptr @vt1211_device_add._entry, ptr @vt1211_device_add._entry.136, ptr @vt1211_device_add._entry.139, ptr @vt1211_device_add._entry_ptr, ptr @vt1211_device_add._entry_ptr.138, ptr @vt1211_device_add._entry_ptr.141, ptr @vt1211_exit, ptr @vt1211_find._entry, ptr @vt1211_find._entry.128, ptr @vt1211_find._entry.131, ptr @vt1211_find._entry_ptr, ptr @vt1211_find._entry_ptr.130, ptr @vt1211_find._entry_ptr.133, ptr @vt1211_init._entry, ptr @vt1211_init._entry.123, ptr @vt1211_init._entry_ptr, ptr @vt1211_init._entry_ptr.125, ptr @vt1211_probe._entry, ptr @vt1211_probe._entry.10, ptr @vt1211_probe._entry.7, ptr @vt1211_probe._entry_ptr, ptr @vt1211_probe._entry_ptr.12, ptr @vt1211_probe._entry_ptr.9, ptr @uch_config, ptr @int_mode, ptr @force_id, ptr @pdev, ptr @vt1211_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vt1211_probe.__key, ptr @.str.6, ptr @vt1211_in_attr_group, ptr @vt1211_temp_attr_group, ptr @vt1211_sysfs_fan_pwm, ptr @vt1211_sysfs_misc, ptr @.str.8, ptr @.str.11, ptr @vt1211_in_attr, ptr @vt1211_sysfs_in, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @bitalarmin, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @regtemp, ptr @regtempmax, ptr @regtemphyst, ptr @.str.40, ptr @vt1211_temp_attr, ptr @vt1211_sysfs_temp, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @bitalarmtemp, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @bitalarmfan, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @switch.table.set_fan], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uch_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_in_attr_group to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_temp_attr_group to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_sysfs_fan_pwm to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_sysfs_misc to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_in_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_sysfs_in to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitalarmin to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regtemp to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regtempmax to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regtemphyst to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_temp_attr to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_sysfs_temp to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitalarmtemp to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitalarmfan to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_fan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pwm._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pwm._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_find._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_find._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_device_add._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1211_device_add._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.set_fan to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt1211_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @vt1211_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1211_init() #0 section ".init.text" align 64 {
entry:
  %address = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %address) #9
  %0 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %address, align 2
  %call = call fastcc i32 @vt1211_find(i32 noundef 46, ptr noundef nonnull %address) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @vt1211_find(i32 noundef 78, ptr noundef nonnull %address) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %1 = load i32, ptr @uch_config, align 4
  %2 = add i32 %1, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %2)
  %3 = icmp ult i32 %2, -33
  br i1 %3, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %1) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %4 = load i32, ptr @int_mode, align 4
  %5 = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %4) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %call19 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vt1211_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %address, align 2
  %call23 = tail call fastcc i32 @vt1211_device_add(i16 noundef zeroext %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %EXIT_DRV_UNREGISTER

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

EXIT_DRV_UNREGISTER:                              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @vt1211_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %EXIT_DRV_UNREGISTER, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then12, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22.cleanup_crit_edge ], [ %call1, %if.then.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %if.then12 ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call23, %EXIT_DRV_UNREGISTER ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %address) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1211_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 180, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #9
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call4 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef %add.i, ptr noundef nonnull @.str) #9
  %tobool5.not = icmp eq ptr %call4, null
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %7) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %conv = trunc i32 %5 to i16
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.vt1211_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %name, align 4
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @vt1211_probe.__key) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i136 = tail call zeroext i8 @vid_which_vrm() #9
  %vrm.i = getelementptr inbounds %struct.vt1211_data, ptr %call.i, i32 0, i32 22
  %11 = ptrtoint ptr %vrm.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call.i136, ptr %vrm.i, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add2.i.i = add nuw nsw i32 %conv.i.i, -18874294
  %14 = inttoptr i32 %add2.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %uch_config.i = getelementptr inbounds %struct.vt1211_data, ptr %call.i, i32 0, i32 23
  %16 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %uch_config.i, align 1
  %17 = load i32, ptr @uch_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp sgt i32 %17, -1
  br i1 %cmp.i, label %if.then.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %18 = and i8 %15, -125
  %.tr.i = trunc i32 %17 to i8
  %19 = shl i8 %.tr.i, 2
  %conv3.i = or i8 %19, %18
  %20 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %uch_config.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %call.i, align 4
  %conv.i24.i = zext i16 %22 to i32
  %add2.i26.i = add nuw nsw i32 %conv.i24.i, -18874294
  %23 = inttoptr i32 %add2.i26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv3.i) #9, !srcloc !308
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge
  %24 = load i32, ptr @int_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.i = icmp eq i32 %24, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.cond.false_crit_edge

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call.i, align 4
  %conv.i27.i = zext i16 %26 to i32
  %add2.i29.i = add nuw nsw i32 %conv.i27.i, -18874293
  %27 = inttoptr i32 %add2.i29.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #9, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call.i, align 4
  %conv.i30.i = zext i16 %29 to i32
  %add2.i32.i = add nuw nsw i32 %conv.i30.i, -18874292
  %30 = inttoptr i32 %add2.i32.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #9, !srcloc !308
  br label %cond.false

cond.false:                                       ; preds = %if.then8.i, %if.end.i.cond.false_crit_edge
  %arrayidx10.i = getelementptr %struct.vt1211_data, ptr %call.i, i32 0, i32 20, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %arrayidx10.i, align 1
  %arrayidx13.i = getelementptr %struct.vt1211_data, ptr %call.i, i32 0, i32 20, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %arrayidx13.i, align 1
  %33 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %uch_config.i, align 1
  %35 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool17.not = icmp eq i8 %35, 0
  br i1 %tobool17.not, label %if.then18, label %cond.false.cond.false.1_crit_edge

cond.false.cond.false.1_crit_edge:                ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.1

if.then18:                                        ; preds = %cond.false
  %call19 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @vt1211_in_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cond.false.1_crit_edge, label %if.then18.do.end84_crit_edge

if.then18.do.end84_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then18.cond.false.1_crit_edge:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.1

cond.false.1:                                     ; preds = %if.then18.cond.false.1_crit_edge, %cond.false.cond.false.1_crit_edge
  %36 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %uch_config.i, align 1
  %38 = and i8 %37, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool17.not.1 = icmp eq i8 %38, 0
  br i1 %tobool17.not.1, label %if.then18.1, label %cond.false.1.cond.false.2_crit_edge

cond.false.1.cond.false.2_crit_edge:              ; preds = %cond.false.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.2

if.then18.1:                                      ; preds = %cond.false.1
  %call19.1 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool20.not.1 = icmp eq i32 %call19.1, 0
  br i1 %tobool20.not.1, label %if.then18.1.cond.false.2_crit_edge, label %if.then18.1.do.end84_crit_edge

if.then18.1.do.end84_crit_edge:                   ; preds = %if.then18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then18.1.cond.false.2_crit_edge:               ; preds = %if.then18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.2

cond.false.2:                                     ; preds = %if.then18.1.cond.false.2_crit_edge, %cond.false.1.cond.false.2_crit_edge
  %39 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %uch_config.i, align 1
  %41 = and i8 %40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool17.not.2 = icmp eq i8 %41, 0
  br i1 %tobool17.not.2, label %if.then18.2, label %cond.false.2.cond.false.3_crit_edge

cond.false.2.cond.false.3_crit_edge:              ; preds = %cond.false.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.3

if.then18.2:                                      ; preds = %cond.false.2
  %call19.2 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %tobool20.not.2 = icmp eq i32 %call19.2, 0
  br i1 %tobool20.not.2, label %if.then18.2.cond.false.3_crit_edge, label %if.then18.2.do.end84_crit_edge

if.then18.2.do.end84_crit_edge:                   ; preds = %if.then18.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then18.2.cond.false.3_crit_edge:               ; preds = %if.then18.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.3

cond.false.3:                                     ; preds = %if.then18.2.cond.false.3_crit_edge, %cond.false.2.cond.false.3_crit_edge
  %42 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %uch_config.i, align 1
  %44 = and i8 %43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool17.not.3 = icmp eq i8 %44, 0
  br i1 %tobool17.not.3, label %if.then18.3, label %cond.false.3.cond.false.4_crit_edge

cond.false.3.cond.false.4_crit_edge:              ; preds = %cond.false.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.4

if.then18.3:                                      ; preds = %cond.false.3
  %call19.3 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3)
  %tobool20.not.3 = icmp eq i32 %call19.3, 0
  br i1 %tobool20.not.3, label %if.then18.3.cond.false.4_crit_edge, label %if.then18.3.do.end84_crit_edge

if.then18.3.do.end84_crit_edge:                   ; preds = %if.then18.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then18.3.cond.false.4_crit_edge:               ; preds = %if.then18.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.4

cond.false.4:                                     ; preds = %if.then18.3.cond.false.4_crit_edge, %cond.false.3.cond.false.4_crit_edge
  %45 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %uch_config.i, align 1
  %47 = and i8 %46, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool17.not.4 = icmp eq i8 %47, 0
  br i1 %tobool17.not.4, label %if.then18.4, label %cond.false.4.if.then18.5_crit_edge

cond.false.4.if.then18.5_crit_edge:               ; preds = %cond.false.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.5

if.then18.4:                                      ; preds = %cond.false.4
  %call19.4 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.4)
  %tobool20.not.4 = icmp eq i32 %call19.4, 0
  br i1 %tobool20.not.4, label %if.then18.4.if.then18.5_crit_edge, label %if.then18.4.do.end84_crit_edge

if.then18.4.do.end84_crit_edge:                   ; preds = %if.then18.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then18.4.if.then18.5_crit_edge:                ; preds = %if.then18.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.5

if.then18.5:                                      ; preds = %if.then18.4.if.then18.5_crit_edge, %cond.false.4.if.then18.5_crit_edge
  %call19.5 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.5)
  %tobool20.not.5 = icmp eq i32 %call19.5, 0
  br i1 %tobool20.not.5, label %if.then37, label %if.then18.5.do.end84_crit_edge

if.then18.5.do.end84_crit_edge:                   ; preds = %if.then18.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then37:                                        ; preds = %if.then18.5
  %call40 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @vt1211_temp_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then37.1, label %if.then37.do.end84_crit_edge

if.then37.do.end84_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then37.1:                                      ; preds = %if.then37
  %call40.1 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.1)
  %tobool41.not.1 = icmp eq i32 %call40.1, 0
  br i1 %tobool41.not.1, label %cond.false31.2, label %if.then37.1.do.end84_crit_edge

if.then37.1.do.end84_crit_edge:                   ; preds = %if.then37.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

cond.false31.2:                                   ; preds = %if.then37.1
  %48 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %uch_config.i, align 1
  %50 = and i8 %49, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool36.not.2 = icmp eq i8 %50, 0
  br i1 %tobool36.not.2, label %cond.false31.2.cond.false31.3_crit_edge, label %if.then37.2

cond.false31.2.cond.false31.3_crit_edge:          ; preds = %cond.false31.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.3

if.then37.2:                                      ; preds = %cond.false31.2
  %call40.2 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.2)
  %tobool41.not.2 = icmp eq i32 %call40.2, 0
  br i1 %tobool41.not.2, label %if.then37.2.cond.false31.3_crit_edge, label %if.then37.2.do.end84_crit_edge

if.then37.2.do.end84_crit_edge:                   ; preds = %if.then37.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then37.2.cond.false31.3_crit_edge:             ; preds = %if.then37.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.3

cond.false31.3:                                   ; preds = %if.then37.2.cond.false31.3_crit_edge, %cond.false31.2.cond.false31.3_crit_edge
  %51 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %uch_config.i, align 1
  %53 = and i8 %52, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool36.not.3 = icmp eq i8 %53, 0
  br i1 %tobool36.not.3, label %cond.false31.3.cond.false31.4_crit_edge, label %if.then37.3

cond.false31.3.cond.false31.4_crit_edge:          ; preds = %cond.false31.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.4

if.then37.3:                                      ; preds = %cond.false31.3
  %call40.3 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.3)
  %tobool41.not.3 = icmp eq i32 %call40.3, 0
  br i1 %tobool41.not.3, label %if.then37.3.cond.false31.4_crit_edge, label %if.then37.3.do.end84_crit_edge

if.then37.3.do.end84_crit_edge:                   ; preds = %if.then37.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then37.3.cond.false31.4_crit_edge:             ; preds = %if.then37.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.4

cond.false31.4:                                   ; preds = %if.then37.3.cond.false31.4_crit_edge, %cond.false31.3.cond.false31.4_crit_edge
  %54 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %uch_config.i, align 1
  %56 = and i8 %55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool36.not.4 = icmp eq i8 %56, 0
  br i1 %tobool36.not.4, label %cond.false31.4.cond.false31.5_crit_edge, label %if.then37.4

cond.false31.4.cond.false31.5_crit_edge:          ; preds = %cond.false31.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.5

if.then37.4:                                      ; preds = %cond.false31.4
  %call40.4 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.4)
  %tobool41.not.4 = icmp eq i32 %call40.4, 0
  br i1 %tobool41.not.4, label %if.then37.4.cond.false31.5_crit_edge, label %if.then37.4.do.end84_crit_edge

if.then37.4.do.end84_crit_edge:                   ; preds = %if.then37.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then37.4.cond.false31.5_crit_edge:             ; preds = %if.then37.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.5

cond.false31.5:                                   ; preds = %if.then37.4.cond.false31.5_crit_edge, %cond.false31.4.cond.false31.5_crit_edge
  %57 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %uch_config.i, align 1
  %59 = and i8 %58, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool36.not.5 = icmp eq i8 %59, 0
  br i1 %tobool36.not.5, label %cond.false31.5.cond.false31.6_crit_edge, label %if.then37.5

cond.false31.5.cond.false31.6_crit_edge:          ; preds = %cond.false31.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.6

if.then37.5:                                      ; preds = %cond.false31.5
  %call40.5 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.5)
  %tobool41.not.5 = icmp eq i32 %call40.5, 0
  br i1 %tobool41.not.5, label %if.then37.5.cond.false31.6_crit_edge, label %if.then37.5.do.end84_crit_edge

if.then37.5.do.end84_crit_edge:                   ; preds = %if.then37.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then37.5.cond.false31.6_crit_edge:             ; preds = %if.then37.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false31.6

cond.false31.6:                                   ; preds = %if.then37.5.cond.false31.6_crit_edge, %cond.false31.5.cond.false31.6_crit_edge
  %60 = ptrtoint ptr %uch_config.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %uch_config.i, align 1
  %62 = and i8 %61, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool36.not.6 = icmp eq i8 %62, 0
  br i1 %tobool36.not.6, label %cond.false31.6.for.body51.preheader_crit_edge, label %if.then37.6

cond.false31.6.for.body51.preheader_crit_edge:    ; preds = %cond.false31.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51.preheader

if.then37.6:                                      ; preds = %cond.false31.6
  %call40.6 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 6)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.6)
  %tobool41.not.6 = icmp eq i32 %call40.6, 0
  br i1 %tobool41.not.6, label %if.then37.6.for.body51.preheader_crit_edge, label %if.then37.6.do.end84_crit_edge

if.then37.6.do.end84_crit_edge:                   ; preds = %if.then37.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.then37.6.for.body51.preheader_crit_edge:       ; preds = %if.then37.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51.preheader

for.body51.preheader:                             ; preds = %if.then37.6.for.body51.preheader_crit_edge, %cond.false31.6.for.body51.preheader_crit_edge
  br label %for.body51

for.cond48:                                       ; preds = %for.body51
  %inc58 = add nuw nsw i32 %i.2147, 1
  %exitcond.not = icmp eq i32 %inc58, 32
  br i1 %exitcond.not, label %for.body63.preheader, label %for.cond48.for.body51_crit_edge

for.cond48.for.body51_crit_edge:                  ; preds = %for.cond48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.body63.preheader:                             ; preds = %for.cond48
  %call65 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @vt1211_sysfs_misc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %for.cond60, label %for.body63.preheader.do.end84_crit_edge

for.body63.preheader.do.end84_crit_edge:          ; preds = %for.body63.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

for.body51:                                       ; preds = %for.cond48.for.body51_crit_edge, %for.body51.preheader
  %i.2147 = phi i32 [ %inc58, %for.cond48.for.body51_crit_edge ], [ 0, %for.body51.preheader ]
  %arrayidx52 = getelementptr [32 x %struct.sensor_device_attribute_2], ptr @vt1211_sysfs_fan_pwm, i32 0, i32 %i.2147
  %call53 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %for.cond48, label %for.body51.do.end84_crit_edge

for.body51.do.end84_crit_edge:                    ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

for.cond60:                                       ; preds = %for.body63.preheader
  %call65.1 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @vt1211_sysfs_misc, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.1)
  %tobool66.not.1 = icmp eq i32 %call65.1, 0
  br i1 %tobool66.not.1, label %for.cond60.1, label %for.cond60.do.end84_crit_edge

for.cond60.do.end84_crit_edge:                    ; preds = %for.cond60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

for.cond60.1:                                     ; preds = %for.cond60
  %call65.2 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @vt1211_sysfs_misc, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.2)
  %tobool66.not.2 = icmp eq i32 %call65.2, 0
  br i1 %tobool66.not.2, label %for.cond60.2, label %for.cond60.1.do.end84_crit_edge

for.cond60.1.do.end84_crit_edge:                  ; preds = %for.cond60.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

for.cond60.2:                                     ; preds = %for.cond60.1
  %call65.3 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @vt1211_sysfs_misc, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.3)
  %tobool66.not.3 = icmp eq i32 %call65.3, 0
  br i1 %tobool66.not.3, label %for.cond60.3, label %for.cond60.2.do.end84_crit_edge

for.cond60.2.do.end84_crit_edge:                  ; preds = %for.cond60.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

for.cond60.3:                                     ; preds = %for.cond60.2
  %call72 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %hwmon_dev = getelementptr inbounds %struct.vt1211_data, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call72, ptr %hwmon_dev, align 4
  %cmp.i137 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then75, label %for.cond60.3.cleanup_crit_edge

for.cond60.3.cleanup_crit_edge:                   ; preds = %for.cond60.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then75:                                        ; preds = %for.cond60.3
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %call72 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %64) #13
  br label %EXIT_DEV_REMOVE_SILENT

do.end84:                                         ; preds = %for.cond60.2.do.end84_crit_edge, %for.cond60.1.do.end84_crit_edge, %for.cond60.do.end84_crit_edge, %for.body51.do.end84_crit_edge, %for.body63.preheader.do.end84_crit_edge, %if.then37.6.do.end84_crit_edge, %if.then37.5.do.end84_crit_edge, %if.then37.4.do.end84_crit_edge, %if.then37.3.do.end84_crit_edge, %if.then37.2.do.end84_crit_edge, %if.then37.1.do.end84_crit_edge, %if.then37.do.end84_crit_edge, %if.then18.5.do.end84_crit_edge, %if.then18.4.do.end84_crit_edge, %if.then18.3.do.end84_crit_edge, %if.then18.2.do.end84_crit_edge, %if.then18.1.do.end84_crit_edge, %if.then18.do.end84_crit_edge
  %err.0 = phi i32 [ %call65, %for.body63.preheader.do.end84_crit_edge ], [ %call65.1, %for.cond60.do.end84_crit_edge ], [ %call65.2, %for.cond60.1.do.end84_crit_edge ], [ %call65.3, %for.cond60.2.do.end84_crit_edge ], [ %call40, %if.then37.do.end84_crit_edge ], [ %call40.1, %if.then37.1.do.end84_crit_edge ], [ %call40.2, %if.then37.2.do.end84_crit_edge ], [ %call40.3, %if.then37.3.do.end84_crit_edge ], [ %call40.4, %if.then37.4.do.end84_crit_edge ], [ %call40.5, %if.then37.5.do.end84_crit_edge ], [ %call40.6, %if.then37.6.do.end84_crit_edge ], [ %call19, %if.then18.do.end84_crit_edge ], [ %call19.1, %if.then18.1.do.end84_crit_edge ], [ %call19.2, %if.then18.2.do.end84_crit_edge ], [ %call19.3, %if.then18.3.do.end84_crit_edge ], [ %call19.4, %if.then18.4.do.end84_crit_edge ], [ %call19.5, %if.then18.5.do.end84_crit_edge ], [ %call53, %for.body51.do.end84_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %err.0) #13
  br label %EXIT_DEV_REMOVE_SILENT

EXIT_DEV_REMOVE_SILENT:                           ; preds = %do.end84, %if.then75
  %err.1 = phi i32 [ %err.0, %do.end84 ], [ %64, %if.then75 ]
  tail call fastcc void @vt1211_remove_sysfs(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %EXIT_DEV_REMOVE_SILENT, %for.cond60.3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %EXIT_DEV_REMOVE_SILENT ], [ -16, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond60.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1211_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  tail call fastcc void @vt1211_remove_sysfs(ptr noundef %pdev)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt1211_remove_sysfs(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @vt1211_in_attr_group) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 1)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 2)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 3)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 4)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt1211_in_attr_group, i32 0, i32 5)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @vt1211_temp_attr_group) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 1)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 2)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 3)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 4)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 5)) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.attribute_group], ptr @vt1211_temp_attr_group, i32 0, i32 6)) #9
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %entry
  %i.240 = phi i32 [ %inc15, %for.body12.for.body12_crit_edge ], [ 0, %entry ]
  %arrayidx13 = getelementptr [32 x %struct.sensor_device_attribute_2], ptr @vt1211_sysfs_fan_pwm, i32 0, i32 %i.240
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef %arrayidx13) #9
  %inc15 = add nuw nsw i32 %i.240, 1
  %exitcond.not = icmp eq i32 %inc15, 32
  br i1 %exitcond.not, label %for.body19.preheader, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.body19.preheader:                             ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @vt1211_sysfs_misc) #9
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @vt1211_sysfs_misc, i32 0, i32 1)) #9
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @vt1211_sysfs_misc, i32 0, i32 2)) #9
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @vt1211_sysfs_misc, i32 0, i32 3)) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt1211_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb20
    i8 2, label %sw.bb49
    i8 3, label %sw.bb78
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 6, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp4 = icmp eq i8 %1, 5
  br i1 %cmp4, label %cond.true6, label %cond.false10

cond.true6:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %7 = mul nuw nsw i32 %conv2, 15882
  %add = add nsw i32 %7, -47167
  %div = sdiv i32 %add, 958
  br label %sw.epilog

cond.false10:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %8 = mul nuw nsw i32 %conv2, 10000
  %add16 = add nsw i32 %8, -29521
  %div17 = sdiv i32 %add16, 958
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %arrayidx21 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 8, i32 %conv
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp23 = icmp ult i8 %10, 3
  br i1 %cmp23, label %sw.bb20.sw.epilog_crit_edge, label %cond.false26

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false26:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp27 = icmp eq i8 %1, 5
  br i1 %cmp27, label %cond.true29, label %cond.false37

cond.true29:                                      ; preds = %cond.false26
  call void @__sanitizer_cov_trace_pc() #11
  %11 = mul nuw nsw i32 %conv22, 15882
  %add35 = add nsw i32 %11, -47167
  %div36 = sdiv i32 %add35, 958
  br label %sw.epilog

cond.false37:                                     ; preds = %cond.false26
  call void @__sanitizer_cov_trace_pc() #11
  %12 = mul nuw nsw i32 %conv22, 10000
  %add43 = add nsw i32 %12, -29521
  %div44 = sdiv i32 %add43, 958
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %arrayidx50 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 7, i32 %conv
  %13 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp52 = icmp ult i8 %14, 3
  br i1 %cmp52, label %sw.bb49.sw.epilog_crit_edge, label %cond.false55

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false55:                                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp56 = icmp eq i8 %1, 5
  br i1 %cmp56, label %cond.true58, label %cond.false66

cond.true58:                                      ; preds = %cond.false55
  call void @__sanitizer_cov_trace_pc() #11
  %15 = mul nuw nsw i32 %conv51, 15882
  %add64 = add nsw i32 %15, -47167
  %div65 = sdiv i32 %add64, 958
  br label %sw.epilog

cond.false66:                                     ; preds = %cond.false55
  call void @__sanitizer_cov_trace_pc() #11
  %16 = mul nuw nsw i32 %conv51, 10000
  %add72 = add nsw i32 %16, -29521
  %div73 = sdiv i32 %add72, 958
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 24
  %17 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %alarms, align 2
  %conv79 = zext i16 %18 to i32
  %arrayidx80 = getelementptr [7 x i8], ptr @bitalarmin, i32 0, i32 %conv
  %19 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %20 to i32
  %shr = lshr i32 %conv79, %conv81
  %and = and i32 %shr, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_in.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_in, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !309

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_in.__UNIQUE_ID_ddebug189, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb78, %cond.false66, %cond.true58, %sw.bb49.sw.epilog_crit_edge, %cond.false37, %cond.true29, %sw.bb20.sw.epilog_crit_edge, %cond.false10, %cond.true6, %sw.bb.sw.epilog_crit_edge
  %res.0 = phi i32 [ 0, %if.then ], [ %and, %sw.bb78 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %div, %cond.true6 ], [ %div17, %cond.false10 ], [ 0, %sw.bb20.sw.epilog_crit_edge ], [ %div36, %cond.true29 ], [ %div44, %cond.false37 ], [ 0, %sw.bb49.sw.epilog_crit_edge ], [ %div65, %cond.true58 ], [ %div73, %cond.false66 ], [ 0, %sw.default ]
  %call87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %res.0)
  ret i32 %call87
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !310
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %5, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp eq i8 %3, 5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %mul = mul i32 %9, 958
  %. = select i1 %cmp, i32 7941, i32 5000
  %.127 = select i1 %cmp, i32 15882, i32 10000
  %add6 = add i32 %mul, %.
  %div7 = sdiv i32 %add6, %.127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %div7)
  %cmp10 = icmp sgt i32 %div7, -3
  %cond = add nsw i32 %div7, 3
  %10 = call i32 @llvm.umin.i32(i32 %cond, i32 255)
  %11 = trunc i32 %10 to i8
  %conv23 = select i1 %cmp10, i8 %11, i8 0
  %arrayidx = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 8, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp24 = icmp eq i8 %3, 0
  %mul28 = shl i8 %3, 1
  %add29 = add i8 %mul28, 42
  %cond31 = select i1 %cmp24, i8 62, i8 %add29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv.i = zext i16 %14 to i32
  %conv1.i = zext i8 %cond31 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %add2.i = or i32 %add.i, -18874368
  %15 = inttoptr i32 %add2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv23) #9, !srcloc !308
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp36 = icmp eq i8 %3, 5
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %mul39 = mul i32 %17, 958
  %.128 = select i1 %cmp36, i32 7941, i32 5000
  %.129 = select i1 %cmp36, i32 15882, i32 10000
  %add45 = add i32 %mul39, %.128
  %div46 = sdiv i32 %add45, %.129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %div46)
  %cmp51 = icmp sgt i32 %div46, -3
  %cond49 = add nsw i32 %div46, 3
  %18 = call i32 @llvm.umin.i32(i32 %cond49, i32 255)
  %19 = trunc i32 %18 to i8
  %conv64 = select i1 %cmp51, i8 %19, i8 0
  %arrayidx65 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 7, i32 %conv
  %20 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv64, ptr %arrayidx65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp66 = icmp eq i8 %3, 0
  %mul70 = shl i8 %3, 1
  %add71 = add i8 %mul70, 41
  %cond73 = select i1 %cmp66, i8 61, i8 %add71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %1, align 4
  %conv.i119 = zext i16 %22 to i32
  %conv1.i120 = zext i8 %cond73 to i32
  %add.i121 = add nuw nsw i32 %conv.i119, %conv1.i120
  %add2.i122 = or i32 %add.i121, -18874368
  %23 = inttoptr i32 %add2.i122 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv64) #9, !srcloc !308
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_in.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_in, %sw.epilog)) #9
          to label %if.then83 [label %sw.epilog], !srcloc !309

if.then83:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_in.__UNIQUE_ID_ddebug198, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then83, %do.body, %sw.bb35, %sw.bb
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vt1211_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add = add i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end137_crit_edge

lor.lhs.false.if.end137_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874299
  %9 = inttoptr i32 %add2.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %11 = and i8 %10, 31
  %vid = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %vid, align 1
  %uch_config = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 23
  br label %for.body

for.body37.peel.next299:                          ; preds = %for.inc
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv.i237.peel = zext i16 %14 to i32
  %add.i239.peel = add nuw nsw i32 %conv.i237.peel, 31
  %add2.i240.peel = or i32 %add.i239.peel, -18874368
  %15 = inttoptr i32 %add2.i240.peel to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx50.peel = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 9, i32 0
  %17 = ptrtoint ptr %arrayidx50.peel to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx50.peel, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv.i241.peel = zext i16 %19 to i32
  %add.i243.peel = add nuw nsw i32 %conv.i241.peel, 57
  %add2.i244.peel = or i32 %add.i243.peel, -18874368
  %20 = inttoptr i32 %add2.i244.peel to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx53.peel = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 10, i32 0
  %22 = ptrtoint ptr %arrayidx53.peel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx53.peel, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %conv.i245.peel = zext i16 %24 to i32
  %add.i247.peel = add nuw nsw i32 %conv.i245.peel, 58
  %add2.i248.peel = or i32 %add.i247.peel, -18874368
  %25 = inttoptr i32 %add2.i248.peel to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx56.peel = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 11, i32 0
  %27 = ptrtoint ptr %arrayidx56.peel to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx56.peel, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 4
  %conv.i237.peel307 = zext i16 %29 to i32
  %add.i239.peel309 = add nuw nsw i32 %conv.i237.peel307, 32
  %add2.i240.peel310 = or i32 %add.i239.peel309, -18874368
  %30 = inttoptr i32 %add2.i240.peel310 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx50.peel311 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %arrayidx50.peel311 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx50.peel311, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %1, align 4
  %conv.i241.peel313 = zext i16 %34 to i32
  %add.i243.peel315 = add nuw nsw i32 %conv.i241.peel313, 29
  %add2.i244.peel316 = or i32 %add.i243.peel315, -18874368
  %35 = inttoptr i32 %add2.i244.peel316 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx53.peel317 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %arrayidx53.peel317 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx53.peel317, align 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 4
  %conv.i245.peel319 = zext i16 %39 to i32
  %add.i247.peel321 = add nuw nsw i32 %conv.i245.peel319, 30
  %add2.i248.peel322 = or i32 %add.i247.peel321, -18874368
  %40 = inttoptr i32 %add2.i248.peel322 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx56.peel323 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %arrayidx56.peel323 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx56.peel323, align 1
  br label %cond.false41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %ix.0292 = phi i32 [ 0, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ix.0292)
  %cmp5 = icmp eq i32 %ix.0292, 5
  br i1 %cmp5, label %for.body.if.then11_crit_edge, label %cond.false

for.body.if.then11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

cond.false:                                       ; preds = %for.body
  %43 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %uch_config, align 1
  %conv7 = zext i8 %44 to i32
  %45 = shl i32 4, %ix.0292
  %46 = and i32 %45, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool10.not = icmp eq i32 %46, 0
  br i1 %tobool10.not, label %cond.false.if.then11_crit_edge, label %cond.false.for.inc_crit_edge

cond.false.for.inc_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cond.false.if.then11_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %cond.false.if.then11_crit_edge, %for.body.if.then11_crit_edge
  %conv13 = add nuw nsw i32 %ix.0292, 33
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %1, align 4
  %conv.i226 = zext i16 %48 to i32
  %add.i227 = add nuw nsw i32 %conv13, %conv.i226
  %add2.i228 = or i32 %add.i227, -18874368
  %49 = inttoptr i32 %add2.i228 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 6, i32 %ix.0292
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ix.0292)
  %cmp15 = icmp eq i32 %ix.0292, 0
  %mul = shl nuw nsw i32 %ix.0292, 1
  %52 = add nuw nsw i32 %mul, 42
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %1, align 4
  %conv.i229 = zext i16 %54 to i32
  %conv1.i230 = select i1 %cmp15, i32 62, i32 %52
  %add.i231 = add nuw nsw i32 %conv1.i230, %conv.i229
  %add2.i232 = or i32 %add.i231, -18874368
  %55 = inttoptr i32 %add2.i232 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx22 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 8, i32 %ix.0292
  %57 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx22, align 1
  %58 = add nuw nsw i32 %mul, 41
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %1, align 4
  %conv.i233 = zext i16 %60 to i32
  %conv1.i234 = select i1 %cmp15, i32 61, i32 %58
  %add.i235 = add nuw nsw i32 %conv1.i234, %conv.i233
  %add2.i236 = or i32 %add.i235, -18874368
  %61 = inttoptr i32 %add2.i236 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx33 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 7, i32 %ix.0292
  %63 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %cond.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %ix.0292, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.body37.peel.next299, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cond.false41:                                     ; preds = %for.inc58.cond.false41_crit_edge, %for.body37.peel.next299
  %ix.1294 = phi i32 [ 2, %for.body37.peel.next299 ], [ %inc59, %for.inc58.cond.false41_crit_edge ]
  %64 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %uch_config, align 1
  %conv43 = zext i8 %65 to i32
  %66 = shl nuw nsw i32 1, %ix.1294
  %67 = and i32 %66, %conv43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool46.not = icmp eq i32 %67, 0
  br i1 %tobool46.not, label %cond.false41.for.inc58_crit_edge, label %if.then47

cond.false41.for.inc58_crit_edge:                 ; preds = %cond.false41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc58

if.then47:                                        ; preds = %cond.false41
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx48 = getelementptr [7 x i8], ptr @regtemp, i32 0, i32 %ix.1294
  %68 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx48, align 1
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %1, align 4
  %conv.i237 = zext i16 %71 to i32
  %conv1.i238 = zext i8 %69 to i32
  %add.i239 = add nuw nsw i32 %conv.i237, %conv1.i238
  %add2.i240 = or i32 %add.i239, -18874368
  %72 = inttoptr i32 %add2.i240 to ptr
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx50 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 9, i32 %ix.1294
  %74 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx50, align 1
  %arrayidx51 = getelementptr [7 x i8], ptr @regtempmax, i32 0, i32 %ix.1294
  %75 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx51, align 1
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %1, align 4
  %conv.i241 = zext i16 %78 to i32
  %conv1.i242 = zext i8 %76 to i32
  %add.i243 = add nuw nsw i32 %conv.i241, %conv1.i242
  %add2.i244 = or i32 %add.i243, -18874368
  %79 = inttoptr i32 %add2.i244 to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx53 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 10, i32 %ix.1294
  %81 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx53, align 1
  %arrayidx54 = getelementptr [7 x i8], ptr @regtemphyst, i32 0, i32 %ix.1294
  %82 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx54, align 1
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %1, align 4
  %conv.i245 = zext i16 %85 to i32
  %conv1.i246 = zext i8 %83 to i32
  %add.i247 = add nuw nsw i32 %conv.i245, %conv1.i246
  %add2.i248 = or i32 %add.i247, -18874368
  %86 = inttoptr i32 %add2.i248 to ptr
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %86) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx56 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 11, i32 %ix.1294
  %88 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx56, align 1
  br label %for.inc58

for.inc58:                                        ; preds = %if.then47, %cond.false41.for.inc58_crit_edge
  %inc59 = add nuw nsw i32 %ix.1294, 1
  %exitcond298.not = icmp eq i32 %inc59, 7
  br i1 %exitcond298.not, label %for.body64.preheader, label %for.inc58.cond.false41_crit_edge, !llvm.loop !312

for.inc58.cond.false41_crit_edge:                 ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false41

for.body64.preheader:                             ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %1, align 4
  %conv.i249 = zext i16 %90 to i32
  %add.i251 = add nuw nsw i32 %conv.i249, 41
  %add2.i252 = or i32 %add.i251, -18874368
  %91 = inttoptr i32 %add2.i252 to ptr
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %91) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx68 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 12, i32 0
  %93 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx68, align 1
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %1, align 4
  %conv.i253 = zext i16 %95 to i32
  %add.i255 = add nuw nsw i32 %conv.i253, 59
  %add2.i256 = or i32 %add.i255, -18874368
  %96 = inttoptr i32 %add2.i256 to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx72 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 13, i32 0
  %98 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx72, align 1
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %1, align 4
  %conv.i257 = zext i16 %100 to i32
  %add.i259 = add nuw nsw i32 %conv.i257, 96
  %add2.i260 = or i32 %add.i259, -18874368
  %101 = inttoptr i32 %add2.i260 to ptr
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %101) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx76 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 16, i32 0
  %103 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx76, align 1
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %1, align 4
  %conv.i249.1 = zext i16 %105 to i32
  %add.i251.1 = add nuw nsw i32 %conv.i249.1, 42
  %add2.i252.1 = or i32 %add.i251.1, -18874368
  %106 = inttoptr i32 %add2.i252.1 to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx68.1 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 12, i32 1
  %108 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx68.1, align 1
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %1, align 4
  %conv.i253.1 = zext i16 %110 to i32
  %add.i255.1 = add nuw nsw i32 %conv.i253.1, 60
  %add2.i256.1 = or i32 %add.i255.1, -18874368
  %111 = inttoptr i32 %add2.i256.1 to ptr
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %111) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx72.1 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 13, i32 1
  %113 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx72.1, align 1
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %1, align 4
  %conv.i257.1 = zext i16 %115 to i32
  %add.i259.1 = add nuw nsw i32 %conv.i257.1, 97
  %add2.i260.1 = or i32 %add.i259.1, -18874368
  %116 = inttoptr i32 %add2.i260.1 to ptr
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %116) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx76.1 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 16, i32 1
  %118 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %arrayidx76.1, align 1
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %1, align 4
  %conv.i261 = zext i16 %120 to i32
  %add2.i263 = add nuw nsw i32 %conv.i261, -18874297
  %121 = inttoptr i32 %add2.i263 to ptr
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %121) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %123 = lshr i8 %122, 4
  %and83 = and i8 %123, 3
  %fan_div = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 14
  %124 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %and83, ptr %fan_div, align 1
  %125 = lshr i8 %122, 6
  %arrayidx90 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 14, i32 1
  %126 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx90, align 1
  %127 = and i8 %122, 15
  %fan_ctl = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 15
  %128 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %fan_ctl, align 1
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %1, align 4
  %conv.i264 = zext i16 %130 to i32
  %add2.i266 = add nuw nsw i32 %conv.i264, -18874287
  %131 = inttoptr i32 %add2.i266 to ptr
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %131) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %and95 = and i8 %132, 15
  %pwm_ctl = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 17
  %133 = ptrtoint ptr %pwm_ctl to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %and95, ptr %pwm_ctl, align 4
  %134 = lshr i8 %132, 4
  %arrayidx102 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 1
  %135 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx102, align 1
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %1, align 4
  %conv.i267 = zext i16 %137 to i32
  %add2.i269 = add nuw nsw i32 %conv.i267, -18874288
  %138 = inttoptr i32 %add2.i269 to ptr
  %139 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %138) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %pwm_clk = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 18
  %140 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %pwm_clk, align 2
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %1, align 4
  %conv.i270 = zext i16 %142 to i32
  %add2.i272 = add nuw nsw i32 %conv.i270, -18874281
  %143 = inttoptr i32 %add2.i272 to ptr
  %144 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %143) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx106 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 20, i32 0, i32 1
  %145 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx106, align 1
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %1, align 4
  %conv.i273 = zext i16 %147 to i32
  %add2.i275 = add nuw nsw i32 %conv.i273, -18874282
  %148 = inttoptr i32 %add2.i275 to ptr
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %148) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx110 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 20, i32 0, i32 2
  %150 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx110, align 1
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %1, align 4
  %conv.i276 = zext i16 %152 to i32
  %add2.i278 = add nuw nsw i32 %conv.i276, -18874279
  %153 = inttoptr i32 %add2.i278 to ptr
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %153) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx114 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 20, i32 1, i32 1
  %155 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx114, align 1
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %1, align 4
  %conv.i279 = zext i16 %157 to i32
  %add2.i281 = add nuw nsw i32 %conv.i279, -18874280
  %158 = inttoptr i32 %add2.i281 to ptr
  %159 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %158) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx118 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 20, i32 1, i32 2
  %160 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx118, align 1
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %1, align 4
  %conv.i282 = zext i16 %162 to i32
  %add.i284 = add nuw nsw i32 %conv.i282, 85
  %add2.i285 = or i32 %add.i284, -18874368
  %163 = inttoptr i32 %add2.i285 to ptr
  %164 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %163) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx126 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 19, i32 0
  %165 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %arrayidx126, align 1
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %1, align 4
  %conv.i282.1 = zext i16 %167 to i32
  %add.i284.1 = add nuw nsw i32 %conv.i282.1, 84
  %add2.i285.1 = or i32 %add.i284.1, -18874368
  %168 = inttoptr i32 %add2.i285.1 to ptr
  %169 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %168) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx126.1 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 19, i32 1
  %170 = ptrtoint ptr %arrayidx126.1 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %arrayidx126.1, align 1
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %1, align 4
  %conv.i282.2 = zext i16 %172 to i32
  %add.i284.2 = add nuw nsw i32 %conv.i282.2, 83
  %add2.i285.2 = or i32 %add.i284.2, -18874368
  %173 = inttoptr i32 %add2.i285.2 to ptr
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %173) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx126.2 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 19, i32 2
  %175 = ptrtoint ptr %arrayidx126.2 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %arrayidx126.2, align 1
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %1, align 4
  %conv.i282.3 = zext i16 %177 to i32
  %add.i284.3 = add nuw nsw i32 %conv.i282.3, 82
  %add2.i285.3 = or i32 %add.i284.3, -18874368
  %178 = inttoptr i32 %add2.i285.3 to ptr
  %179 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %178) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %arrayidx126.3 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 19, i32 3
  %180 = ptrtoint ptr %arrayidx126.3 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx126.3, align 1
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %1, align 4
  %conv.i286 = zext i16 %182 to i32
  %add2.i288 = add nuw nsw i32 %conv.i286, -18874302
  %183 = inttoptr i32 %add2.i288 to ptr
  %184 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %183) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %conv131 = zext i8 %184 to i16
  %shl = shl nuw i16 %conv131, 8
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %1, align 4
  %conv.i289 = zext i16 %186 to i32
  %add2.i291 = add nuw nsw i32 %conv.i289, -18874303
  %187 = inttoptr i32 %add2.i291 to ptr
  %188 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %187) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %conv133 = zext i8 %188 to i16
  %or = or i16 %shl, %conv133
  %alarms = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 24
  %189 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %or, ptr %alarms, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %190 = load volatile i32, ptr @jiffies, align 128
  %191 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %last_updated, align 4
  %valid136 = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 4
  %192 = ptrtoint ptr %valid136 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %valid136, align 4
  br label %if.end137

if.end137:                                        ; preds = %for.body64.preheader, %lor.lhs.false.if.end137_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt1211_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb28
    i8 2, label %sw.bb65
    i8 3, label %sw.bb102
  ]

sw.bb:                                            ; preds = %entry
  %5 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %1, label %cond.false18 [
    i8 0, label %cond.true
    i8 1, label %cond.true6
  ]

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %temp = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp, align 1
  %conv3 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv3, 1000
  br label %sw.epilog

cond.true6:                                       ; preds = %sw.bb
  %arrayidx8 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %9)
  %cmp10 = icmp ult i8 %9, 51
  br i1 %cmp10, label %cond.true6.sw.epilog_crit_edge, label %cond.false13

cond.true6.sw.epilog_crit_edge:                   ; preds = %cond.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false13:                                     ; preds = %cond.true6
  call void @__sanitizer_cov_trace_pc() #11
  %conv9 = zext i8 %9 to i32
  %10 = mul nuw nsw i32 %conv9, 1000
  %mul17 = add nsw i32 %10, -51000
  br label %sw.epilog

cond.false18:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 9, i32 %conv
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %sub22 = sub nsw i32 253, %conv21
  %mul23 = mul nsw i32 %sub22, 2200
  %add = add nsw i32 %mul23, 105
  %div = sdiv i32 %add, 210
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %13 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %1, label %cond.false53 [
    i8 0, label %cond.true31
    i8 1, label %cond.true38
  ]

cond.true31:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %temp_max = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 10
  %14 = ptrtoint ptr %temp_max to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %temp_max, align 1
  %conv33 = zext i8 %15 to i32
  %mul34 = mul nuw nsw i32 %conv33, 1000
  br label %sw.epilog

cond.true38:                                      ; preds = %sw.bb28
  %arrayidx40 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %17)
  %cmp42 = icmp ult i8 %17, 51
  br i1 %cmp42, label %cond.true38.sw.epilog_crit_edge, label %cond.false45

cond.true38.sw.epilog_crit_edge:                  ; preds = %cond.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false45:                                     ; preds = %cond.true38
  call void @__sanitizer_cov_trace_pc() #11
  %conv41 = zext i8 %17 to i32
  %18 = mul nuw nsw i32 %conv41, 1000
  %mul50 = add nsw i32 %18, -51000
  br label %sw.epilog

cond.false53:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx55 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 10, i32 %conv
  %19 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %20 to i32
  %sub57 = sub nsw i32 253, %conv56
  %mul58 = mul nsw i32 %sub57, 2200
  %add59 = add nsw i32 %mul58, 105
  %div60 = sdiv i32 %add59, 210
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  %21 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %1, label %cond.false90 [
    i8 0, label %cond.true68
    i8 1, label %cond.true75
  ]

cond.true68:                                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  %temp_hyst = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 11
  %22 = ptrtoint ptr %temp_hyst to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %temp_hyst, align 1
  %conv70 = zext i8 %23 to i32
  %mul71 = mul nuw nsw i32 %conv70, 1000
  br label %sw.epilog

cond.true75:                                      ; preds = %sw.bb65
  %arrayidx77 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %25)
  %cmp79 = icmp ult i8 %25, 51
  br i1 %cmp79, label %cond.true75.sw.epilog_crit_edge, label %cond.false82

cond.true75.sw.epilog_crit_edge:                  ; preds = %cond.true75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false82:                                     ; preds = %cond.true75
  call void @__sanitizer_cov_trace_pc() #11
  %conv78 = zext i8 %25 to i32
  %26 = mul nuw nsw i32 %conv78, 1000
  %mul87 = add nsw i32 %26, -51000
  br label %sw.epilog

cond.false90:                                     ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx92 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 11, i32 %conv
  %27 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %28 to i32
  %sub94 = sub nsw i32 253, %conv93
  %mul95 = mul nsw i32 %sub94, 2200
  %add96 = add nsw i32 %mul95, 105
  %div97 = sdiv i32 %add96, 210
  br label %sw.epilog

sw.bb102:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 24
  %29 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %alarms, align 2
  %conv103 = zext i16 %30 to i32
  %arrayidx104 = getelementptr [7 x i8], ptr @bitalarmtemp, i32 0, i32 %conv
  %31 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %32 to i32
  %shr = lshr i32 %conv103, %conv105
  %and = and i32 %shr, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_temp.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_temp, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !309

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_temp.__UNIQUE_ID_ddebug199, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb102, %cond.false90, %cond.false82, %cond.true75.sw.epilog_crit_edge, %cond.true68, %cond.false53, %cond.false45, %cond.true38.sw.epilog_crit_edge, %cond.true31, %cond.false18, %cond.false13, %cond.true6.sw.epilog_crit_edge, %cond.true
  %res.0 = phi i32 [ 0, %if.then ], [ %and, %sw.bb102 ], [ %mul, %cond.true ], [ %div, %cond.false18 ], [ %mul17, %cond.false13 ], [ 0, %cond.true6.sw.epilog_crit_edge ], [ %mul34, %cond.true31 ], [ %div60, %cond.false53 ], [ %mul50, %cond.false45 ], [ 0, %cond.true38.sw.epilog_crit_edge ], [ %mul71, %cond.true68 ], [ %div97, %cond.false90 ], [ %mul87, %cond.false82 ], [ 0, %cond.true75.sw.epilog_crit_edge ], [ 0, %sw.default ]
  %call111 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %res.0)
  ret i32 %call111
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !310
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %5, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end
  %8 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %3, label %cond.false10 [
    i8 0, label %cond.true
    i8 1, label %cond.true6
  ]

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %add = add i32 %10, 500
  %div = sdiv i32 %add, 1000
  br label %cond.end13

cond.true6:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %add7 = add i32 %12, 500
  %div8 = sdiv i32 %add7, 1000
  %add9 = add nsw i32 %div8, 51
  br label %cond.end13

cond.false10:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %mul = mul i32 %14, 210
  %add11 = add i32 %mul, 1100
  %div12.neg = sdiv i32 %add11, -2200
  %sub = add nsw i32 %div12.neg, 253
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false10, %cond.true6, %cond.true
  %cond14 = phi i32 [ %div, %cond.true ], [ %add9, %cond.true6 ], [ %sub, %cond.false10 ]
  %15 = call i32 @llvm.smax.i32(i32 %cond14, i32 0)
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 255)
  %conv29 = trunc i32 %16 to i8
  %arrayidx = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 10, i32 %conv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv29, ptr %arrayidx, align 1
  %arrayidx30 = getelementptr [7 x i8], ptr @regtempmax, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx30, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv.i = zext i16 %21 to i32
  %conv1.i = zext i8 %19 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %add2.i = or i32 %add.i, -18874368
  %22 = inttoptr i32 %add2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv29) #9, !srcloc !308
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %23 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %3, label %cond.false46 [
    i8 0, label %cond.true36
    i8 1, label %cond.true42
  ]

cond.true36:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %add37 = add i32 %25, 500
  %div38 = sdiv i32 %add37, 1000
  br label %cond.end53

cond.true42:                                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %add43 = add i32 %27, 500
  %div44 = sdiv i32 %add43, 1000
  %add45 = add nsw i32 %div44, 51
  br label %cond.end53

cond.false46:                                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %mul47 = mul i32 %29, 210
  %add48 = add i32 %mul47, 1100
  %div49.neg = sdiv i32 %add48, -2200
  %sub50 = add nsw i32 %div49.neg, 253
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false46, %cond.true42, %cond.true36
  %cond54 = phi i32 [ %div38, %cond.true36 ], [ %add45, %cond.true42 ], [ %sub50, %cond.false46 ]
  %30 = call i32 @llvm.smax.i32(i32 %cond54, i32 0)
  %31 = call i32 @llvm.umin.i32(i32 %30, i32 255)
  %conv69 = trunc i32 %31 to i8
  %arrayidx70 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 11, i32 %conv
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv69, ptr %arrayidx70, align 1
  %arrayidx71 = getelementptr [7 x i8], ptr @regtemphyst, i32 0, i32 %conv
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx71, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 4
  %conv.i116 = zext i16 %36 to i32
  %conv1.i117 = zext i8 %34 to i32
  %add.i118 = add nuw nsw i32 %conv.i116, %conv1.i117
  %add2.i119 = or i32 %add.i118, -18874368
  %37 = inttoptr i32 %add2.i119 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv69) #9, !srcloc !308
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_temp.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_temp, %sw.epilog)) #9
          to label %if.then80 [label %sw.epilog], !srcloc !309

if.then80:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_temp.__UNIQUE_ID_ddebug208, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then80, %do.body, %cond.end53, %cond.end13
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt1211_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb15
    i8 2, label %sw.bb39
    i8 3, label %sw.bb44
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 12, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %6, label %cond.false [
    i8 0, label %sw.bb.sw.epilog_crit_edge
    i8 -1, label %sw.bb.sw.epilog_crit_edge78
  ]

sw.bb.sw.epilog_crit_edge78:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv2 = zext i8 %6 to i32
  %div = udiv i32 1310720, %conv2
  %arrayidx12 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 14, i32 %conv
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %div1476 = lshr i32 %div, %conv13
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %arrayidx16 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 13, i32 %conv
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %11, label %cond.false27 [
    i8 0, label %sw.bb15.sw.epilog_crit_edge
    i8 -1, label %sw.bb15.sw.epilog_crit_edge79
  ]

sw.bb15.sw.epilog_crit_edge79:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.false27:                                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %conv17 = zext i8 %11 to i32
  %div31 = udiv i32 1310720, %conv17
  %arrayidx33 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 14, i32 %conv
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %14 to i32
  %div3675 = lshr i32 %div31, %conv34
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx41 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 14, i32 %conv
  %15 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %16 to i32
  %shl43 = shl nuw i32 1, %conv42
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 24
  %17 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %alarms, align 2
  %conv45 = zext i16 %18 to i32
  %arrayidx46 = getelementptr [2 x i8], ptr @bitalarmfan, i32 0, i32 %conv
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %20 to i32
  %shr = lshr i32 %conv45, %conv47
  %and = and i32 %shr, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_fan.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_fan, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !309

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_fan.__UNIQUE_ID_ddebug209, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb44, %sw.bb39, %cond.false27, %sw.bb15.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge79, %cond.false, %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge78
  %res.0 = phi i32 [ 0, %if.then ], [ %and, %sw.bb44 ], [ %shl43, %sw.bb39 ], [ %div1476, %cond.false ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge78 ], [ %div3675, %cond.false27 ], [ 0, %sw.bb15.sw.epilog_crit_edge ], [ 0, %sw.bb15.sw.epilog_crit_edge79 ], [ 0, %sw.default ]
  %call53 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %res.0)
  ret i32 %call53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !310
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874297
  %9 = inttoptr i32 %add2.i to ptr
  %10 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %11 = lshr i8 %10, 4
  %and = and i8 %11, 3
  %fan_div = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %and, ptr %fan_div, align 1
  %13 = lshr i8 %10, 6
  %arrayidx10 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx10, align 1
  %15 = and i8 %10, 15
  %fan_ctl = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %fan_ctl, align 1
  %17 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %5, label %do.body63 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %sw.bb.cond.end30_crit_edge, label %cond.false

sw.bb.cond.end30_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end30

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 1310720, %19
  %arrayidx15 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 14, i32 %conv
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %div17117 = lshr i32 %div, %conv16
  %22 = call i32 @llvm.umax.i32(i32 %div17117, i32 1)
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 254)
  %phi.cast = trunc i32 %23 to i8
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false, %sw.bb.cond.end30_crit_edge
  %cond31 = phi i8 [ %phi.cast, %cond.false ], [ -1, %sw.bb.cond.end30_crit_edge ]
  %arrayidx33 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 13, i32 %conv
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %cond31, ptr %arrayidx33, align 1
  %add = add i8 %3, 59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 4
  %conv.i118 = zext i16 %26 to i32
  %conv1.i = zext i8 %add to i32
  %add.i119 = add nuw nsw i32 %conv.i118, %conv1.i
  %add2.i120 = or i32 %add.i119, -18874368
  %27 = inttoptr i32 %add2.i120 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %cond31) #9, !srcloc !308
  br label %EXIT

sw.bb37:                                          ; preds = %if.end
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 8
  br i1 %30, label %switch.hole_check, label %sw.bb37.sw.default_crit_edge

sw.bb37.sw.default_crit_edge:                     ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %sw.bb37.sw.default_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.104, i32 noundef %29) #13
  br label %EXIT

switch.hole_check:                                ; preds = %sw.bb37
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %31 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %switch.lobit.not = icmp eq i8 %31, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.set_fan, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %32)
  %switch.load = load i8, ptr %switch.gep, align 1
  %arrayidx49 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 14, i32 %conv
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %switch.load, ptr %arrayidx49, align 1
  %34 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx10, align 1
  %shl53 = shl i8 %35, 6
  %36 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fan_div, align 1
  %shl57 = shl i8 %37, 4
  %or = or i8 %shl57, %shl53
  %38 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fan_ctl, align 1
  %or60 = or i8 %or, %39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 4
  %conv.i121 = zext i16 %41 to i32
  %add2.i123 = add nuw nsw i32 %conv.i121, -18874297
  %42 = inttoptr i32 %add2.i123 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %or60) #9, !srcloc !308
  br label %EXIT

do.body63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_fan.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_fan, %EXIT)) #9
          to label %if.then70 [label %EXIT], !srcloc !309

if.then70:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_fan.__UNIQUE_ID_ddebug214, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %EXIT

EXIT:                                             ; preds = %if.then70, %do.body63, %switch.lookup, %sw.default, %cond.end30
  %count.addr.0 = phi i32 [ %count, %if.then70 ], [ -22, %sw.default ], [ %count, %switch.lookup ], [ %count, %cond.end30 ], [ %count, %do.body63 ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %EXIT, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %EXIT ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt1211_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb6
    i8 3, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 16, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 17, i32 %conv
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 2
  %11 = zext i8 %10 to i32
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pwm_clk = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 18
  %12 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pwm_clk, align 2
  %14 = and i8 %13, 7
  %and8 = zext i8 %14 to i32
  %shr9 = lshr i32 90000, %and8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 17, i32 %conv
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 1
  %17 = and i8 %16, 7
  %narrow = add nuw nsw i8 %17, 1
  %add = zext i8 %narrow to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @show_pwm.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@show_pwm, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !309

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @show_pwm.__UNIQUE_ID_ddebug215, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb10, %sw.bb6, %sw.bb3, %sw.bb
  %res.0 = phi i32 [ 0, %if.then ], [ %add, %sw.bb10 ], [ %shr9, %sw.bb6 ], [ %11, %sw.bb3 ], [ %conv2, %sw.bb ], [ 0, %sw.default ]
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %res.0)
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !310
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %5, label %do.body146 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb71
    i8 3, label %sw.bb92
  ]

sw.bb:                                            ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv.i = zext i16 %9 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874297
  %10 = inttoptr i32 %add2.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %12 = lshr i8 %11, 4
  %and = and i8 %12, 3
  %fan_div = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and, ptr %fan_div, align 1
  %14 = lshr i8 %11, 6
  %arrayidx11 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx11, align 1
  %16 = and i8 %11, 15
  %fan_ctl = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %fan_ctl, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv.i224 = zext i16 %19 to i32
  %add2.i226 = add nuw nsw i32 %conv.i224, -18874287
  %20 = inttoptr i32 %add2.i226 to ptr
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %and16 = and i8 %21, 15
  %pwm_ctl = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %pwm_ctl to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %and16, ptr %pwm_ctl, align 4
  %23 = lshr i8 %21, 4
  %arrayidx23 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx23, align 1
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %26, label %sw.default [
    i32 0, label %sw.bb24
    i32 2, label %sw.bb41
  ]

sw.bb24:                                          ; preds = %sw.bb
  %arrayidx26 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 %conv
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx26, align 1
  %30 = and i8 %29, 7
  store i8 %30, ptr %arrayidx26, align 1
  %xor = xor i32 %conv, 1
  %arrayidx31 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 %xor
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp = icmp eq i8 %33, 0
  br i1 %cmp, label %if.then35, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then35:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fan_ctl, align 1
  %36 = and i8 %35, 14
  br label %sw.epilog.sink.split

sw.bb41:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx43 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 %conv
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx43, align 1
  %39 = or i8 %38, 8
  store i8 %39, ptr %arrayidx43, align 1
  %40 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fan_ctl, align 1
  %42 = or i8 %41, 1
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, i32 noundef %26) #13
  br label %EXIT

sw.epilog.sink.split:                             ; preds = %sw.bb41, %if.then35
  %.sink = phi i8 [ %36, %if.then35 ], [ %42, %sw.bb41 ]
  %43 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %fan_ctl, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb24.sw.epilog_crit_edge
  %44 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx23, align 1
  %shl = shl i8 %45, 4
  %46 = ptrtoint ptr %pwm_ctl to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pwm_ctl, align 4
  %or56 = or i8 %shl, %47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 4
  %conv.i227 = zext i16 %49 to i32
  %add2.i229 = add nuw nsw i32 %conv.i227, -18874287
  %50 = inttoptr i32 %add2.i229 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %or56) #9, !srcloc !308
  %51 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx11, align 1
  %shl61 = shl i8 %52, 6
  %53 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fan_div, align 1
  %shl65 = shl i8 %54, 4
  %or66 = or i8 %shl65, %shl61
  %55 = ptrtoint ptr %fan_ctl to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fan_ctl, align 1
  %or69 = or i8 %or66, %56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 4
  %conv.i230 = zext i16 %58 to i32
  %add2.i232 = add nuw nsw i32 %conv.i230, -18874297
  %59 = inttoptr i32 %add2.i232 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %or69) #9, !srcloc !308
  br label %EXIT

sw.bb71:                                          ; preds = %if.end
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  %62 = call i32 @llvm.umax.i32(i32 %61, i32 1054)
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 135000)
  %div = udiv i32 135000, %63
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %sw.bb71
  %storemerge.in = phi i32 [ %div, %sw.bb71 ], [ %storemerge, %for.cond.for.cond_crit_edge ]
  %tmp2.0 = phi i32 [ 0, %sw.bb71 ], [ %inc, %for.cond.for.cond_crit_edge ]
  %storemerge = lshr i32 %storemerge.in, 1
  %cmp83.not = icmp ult i32 %storemerge.in, 2
  %inc = add nuw nsw i32 %tmp2.0, 1
  br i1 %cmp83.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge, ptr %val, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %1, align 4
  %conv.i233 = zext i16 %66 to i32
  %add2.i235 = add nuw nsw i32 %conv.i233, -18874288
  %67 = inttoptr i32 %add2.i235 to ptr
  %68 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #9, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %69 = and i8 %68, -8
  %70 = trunc i32 %tmp2.0 to i8
  %conv90 = or i8 %69, %70
  %pwm_clk = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 18
  %71 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv90, ptr %pwm_clk, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %1, align 4
  %conv.i236 = zext i16 %73 to i32
  %add2.i238 = add nuw nsw i32 %conv.i236, -18874288
  %74 = inttoptr i32 %add2.i238 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 %conv90) #9, !srcloc !308
  br label %EXIT

sw.bb92:                                          ; preds = %if.end
  %75 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val, align 4
  %77 = add i32 %76, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %77)
  %78 = icmp ult i32 %77, -7
  br i1 %78, label %if.then97, label %if.end101

if.then97:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.111, i32 noundef %76) #13
  br label %EXIT

if.end101:                                        ; preds = %sw.bb92
  %sub = add nsw i32 %76, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp102 = icmp ult i32 %sub, 2
  br i1 %cmp102, label %if.end101.if.end115_crit_edge, label %cond.false105

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

cond.false105:                                    ; preds = %if.end101
  %uch_config = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 23
  %79 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %uch_config, align 1
  %conv106 = zext i8 %80 to i32
  %81 = shl nuw nsw i32 1, %sub
  %82 = and i32 %81, %conv106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool110.not = icmp eq i32 %82, 0
  br i1 %tobool110.not, label %if.then111, label %cond.false105.if.end115_crit_edge

cond.false105.if.end115_crit_edge:                ; preds = %cond.false105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then111:                                       ; preds = %cond.false105
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.114, i32 noundef %76) #13
  br label %EXIT

if.end115:                                        ; preds = %cond.false105.if.end115_crit_edge, %if.end101.if.end115_crit_edge
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %1, align 4
  %conv.i239 = zext i16 %84 to i32
  %add2.i241 = add nuw nsw i32 %conv.i239, -18874287
  %85 = inttoptr i32 %add2.i241 to ptr
  %86 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #9, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %and118 = and i8 %86, 15
  %pwm_ctl120 = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 17
  %87 = ptrtoint ptr %pwm_ctl120 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %and118, ptr %pwm_ctl120, align 4
  %88 = lshr i8 %86, 4
  %arrayidx126 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 1
  %89 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx126, align 1
  %arrayidx128 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 %conv
  %90 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx128, align 1
  %92 = and i8 %91, 8
  %93 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val, align 4
  %95 = trunc i32 %94 to i8
  %96 = add i8 %95, -1
  %conv133 = or i8 %96, %92
  store i8 %conv133, ptr %arrayidx128, align 1
  %97 = load i8, ptr %arrayidx126, align 1
  %shl139 = shl i8 %97, 4
  %98 = load i8, ptr %pwm_ctl120, align 4
  %or143 = or i8 %shl139, %98
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %1, align 4
  %conv.i242 = zext i16 %100 to i32
  %add2.i244 = add nuw nsw i32 %conv.i242, -18874287
  %101 = inttoptr i32 %add2.i244 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %or143) #9, !srcloc !308
  br label %EXIT

do.body146:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_pwm.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_pwm, %EXIT)) #9
          to label %if.then153 [label %EXIT], !srcloc !309

if.then153:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_pwm.__UNIQUE_ID_ddebug220, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv1) #9
  br label %EXIT

EXIT:                                             ; preds = %if.then153, %do.body146, %if.end115, %if.then111, %if.then97, %for.end, %sw.epilog, %sw.default
  %count.addr.0 = phi i32 [ %count, %if.then153 ], [ -22, %if.then97 ], [ %count, %if.end115 ], [ -22, %if.then111 ], [ %count, %for.end ], [ -22, %sw.default ], [ %count, %sw.epilog ], [ %count, %do.body146 ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %EXIT, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %EXIT ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt1211_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 17, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %trunc = trunc i8 %5 to i3
  %6 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.157)
  switch i3 %trunc, label %cond.false24 [
    i3 0, label %cond.true
    i3 1, label %cond.true12
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 19, i32 %conv1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %mul = mul nuw nsw i32 %conv5, 1000
  br label %cond.end32

cond.true12:                                      ; preds = %entry
  %arrayidx14 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 19, i32 %conv1
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %10)
  %cmp16 = icmp ult i8 %10, 51
  br i1 %cmp16, label %cond.true12.cond.end32_crit_edge, label %cond.false19

cond.true12.cond.end32_crit_edge:                 ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end32

cond.false19:                                     ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #11
  %conv15 = zext i8 %10 to i32
  %11 = mul nuw nsw i32 %conv15, 1000
  %mul23 = add nsw i32 %11, -51000
  br label %cond.end32

cond.false24:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx26 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 19, i32 %conv1
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %sub28 = sub nsw i32 253, %conv27
  %mul29 = mul nsw i32 %sub28, 2200
  %add = add nsw i32 %mul29, 105
  %div = sdiv i32 %add, 210
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false24, %cond.false19, %cond.true12.cond.end32_crit_edge, %cond.true
  %cond33 = phi i32 [ %mul, %cond.true ], [ %div, %cond.false24 ], [ %mul23, %cond.false19 ], [ 0, %cond.true12.cond.end32_crit_edge ]
  %call34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %cond33)
  ret i32 %call34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_auto_point_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !310
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874287
  %9 = inttoptr i32 %add2.i to ptr
  %10 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  %and = and i8 %10, 15
  %pwm_ctl = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %pwm_ctl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and, ptr %pwm_ctl, align 4
  %12 = lshr i8 %10, 4
  %arrayidx9 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 17, i32 %conv
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  %trunc = trunc i8 %15 to i3
  %16 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.158)
  switch i3 %trunc, label %cond.false25 [
    i3 0, label %cond.true
    i3 1, label %cond.true21
  ]

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %add = add i32 %18, 500
  %div = sdiv i32 %add, 1000
  br label %cond.end28

cond.true21:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %add22 = add i32 %20, 500
  %div23 = sdiv i32 %add22, 1000
  %add24 = add nsw i32 %div23, 51
  br label %cond.end28

cond.false25:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %mul = mul i32 %22, 210
  %add26 = add i32 %mul, 1100
  %div27.neg = sdiv i32 %add26, -2200
  %sub = add nsw i32 %div27.neg, 253
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false25, %cond.true21, %cond.true
  %cond29 = phi i32 [ %div, %cond.true ], [ %add24, %cond.true21 ], [ %sub, %cond.false25 ]
  %23 = call i32 @llvm.smax.i32(i32 %cond29, i32 0)
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 255)
  %conv44 = trunc i32 %24 to i8
  %arrayidx45 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 19, i32 %conv1
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv44, ptr %arrayidx45, align 1
  %sub46 = sub i8 85, %5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv.i76 = zext i16 %27 to i32
  %conv1.i = zext i8 %sub46 to i32
  %add.i77 = add nuw nsw i32 %conv.i76, %conv1.i
  %add2.i78 = or i32 %add.i77, -18874368
  %28 = inttoptr i32 %add2.i78 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv44) #9, !srcloc !308
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end28 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt1211_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %3 to i32
  %arrayidx2 = getelementptr %struct.vt1211_data, ptr %call, i32 0, i32 20, i32 %conv, i32 %conv1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %conv3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_auto_point_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !310
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %conv12 = trunc i32 %9 to i8
  %arrayidx13 = getelementptr %struct.vt1211_data, ptr %1, i32 0, i32 20, i32 %conv, i32 %conv1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv12, ptr %arrayidx13, align 1
  %mul = shl i8 %3, 1
  %add = add i8 %mul, 88
  %sub = sub i8 %add, %5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i = zext i16 %12 to i32
  %conv1.i = zext i8 %sub to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %add2.i = or i32 %add.i, -18874368
  %13 = inttoptr i32 %add2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv12) #9, !srcloc !308
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vrm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_vrm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !310
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vid = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vid, align 1
  %conv = zext i8 %3 to i32
  %vrm = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vrm, align 4
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %5) #9
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.vt1211_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.120, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarms(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt1211_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.vt1211_data, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alarms, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt1211_find(i32 noundef %sio_cip, ptr nocapture noundef writeonly %address) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sio_cip, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %sio_cip, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #9, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !315
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #9, !srcloc !308
  %1 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %1 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #9, !srcloc !308
  %add1.i = add i32 %sio_cip, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %2 = inttoptr i32 %add3.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %conv6.i = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv6.i, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %cond)
  %cmp.not = icmp eq i32 %cond, 60
  br i1 %cmp.not, label %if.end6, label %cond.end.EXIT_crit_edge

cond.end.EXIT_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %EXIT

if.end6:                                          ; preds = %cond.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #9, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  tail call void @arm_heavy_mb() #9
  %add3.i50 = add i32 %sio_cip, 1
  %and4.i = and i32 %add3.i50, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %4 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 11) #9, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 48) #9, !srcloc !308
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp8 = icmp eq i8 %6, 0
  br i1 %cmp8, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #13
  br label %EXIT

if.end12:                                         ; preds = %if.end6
  %call13 = tail call fastcc i32 @superio_inb(i32 noundef %sio_cip, i32 noundef 96)
  %shl = shl i32 %call13, 8
  %call14 = tail call fastcc i32 @superio_inb(i32 noundef %sio_cip, i32 noundef 97)
  %or = or i32 %shl, %call14
  %7 = trunc i32 %or to i16
  %conv16 = and i16 %7, -256
  %8 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv16, ptr %address, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16)
  %cmp18 = icmp eq i16 %conv16, 0
  br i1 %cmp18, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #13
  br label %EXIT

if.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %conv17 = zext i16 %conv16 to i32
  %call32 = tail call fastcc i32 @superio_inb(i32 noundef %sio_cip, i32 noundef 33), !range !320
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %conv17, i32 noundef %call32) #13
  br label %EXIT

EXIT:                                             ; preds = %if.end26, %do.end23, %do.end, %cond.end.EXIT_crit_edge
  %err.0 = phi i32 [ -19, %cond.end.EXIT_crit_edge ], [ -19, %do.end ], [ -19, %do.end23 ], [ 0, %if.end26 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !321
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #9, !srcloc !308
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sio_cip, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %EXIT, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %EXIT ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vt1211_device_add(i16 noundef zeroext %address) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %conv = zext i16 %address to i32
  %3 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %res, align 4
  %add = add nuw nsw i32 %conv, 127
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %1, align 4
  %6 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv) #9
  store ptr %call, ptr @pdev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef -12) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %7, align 4
  %call10 = call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef nonnull %res, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %call10) #13
  br label %EXIT_DEV_PUT

if.end18:                                         ; preds = %if.end
  %11 = load ptr, ptr @pdev, align 4
  %call19 = call i32 @platform_device_add(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %call19) #13
  br label %EXIT_DEV_PUT

EXIT_DEV_PUT:                                     ; preds = %do.end24, %do.end15
  %err.0 = phi i32 [ %call10, %do.end15 ], [ %call19, %do.end24 ]
  %12 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %EXIT_DEV_PUT, %if.end18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end18.cleanup_crit_edge ], [ %err.0, %EXIT_DEV_PUT ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inb(i32 noundef %sio_cip, i32 noundef %reg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %reg to i8
  %and = and i32 %sio_cip, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #9, !srcloc !308
  %add1 = add i32 %sio_cip, 1
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %1 = inttoptr i32 %add3 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %conv6 = zext i8 %2 to i32
  ret i32 %conv6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !157, !159, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !221, !223, !225, !226, !227, !228, !229, !231, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295}
!llvm.module.flags = !{!296, !297, !298, !299, !300, !301, !302, !303}
!llvm.ident = !{!304}

!0 = !{ptr @__param_uch_config, !1, !"__param_uch_config", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/vt1211.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_uch_configtype183, !1, !"__UNIQUE_ID_uch_configtype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_uch_config184, !4, !"__UNIQUE_ID_uch_config184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/vt1211.c", i32 29, i32 1}
!5 = !{ptr @__param_int_mode, !6, !"__param_int_mode", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/vt1211.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_int_modetype185, !6, !"__UNIQUE_ID_int_modetype185", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_int_mode186, !9, !"__UNIQUE_ID_int_mode186", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/vt1211.c", i32 33, i32 1}
!10 = !{ptr @__param_force_id, !11, !"__param_force_id", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/vt1211.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_force_idtype187, !11, !"__UNIQUE_ID_force_idtype187", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_force_id188, !14, !"__UNIQUE_ID_force_id188", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/vt1211.c", i32 37, i32 1}
!15 = !{ptr @__UNIQUE_ID_author229, !16, !"__UNIQUE_ID_author229", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/vt1211.c", i32 1362, i32 1}
!17 = !{ptr @__UNIQUE_ID_description230, !18, !"__UNIQUE_ID_description230", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/vt1211.c", i32 1363, i32 1}
!19 = !{ptr @__UNIQUE_ID_file231, !20, !"__UNIQUE_ID_file231", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/vt1211.c", i32 1364, i32 1}
!21 = !{ptr @__UNIQUE_ID_license232, !20, !"__UNIQUE_ID_license232", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_vt1211__233_1366_vt1211_init6, !23, !"__initcall__kmod_vt1211__233_1366_vt1211_init6", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/vt1211.c", i32 1366, i32 1}
!24 = !{ptr @__exitcall_vt1211_exit, !25, !"__exitcall_vt1211_exit", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/vt1211.c", i32 1367, i32 1}
!26 = !{ptr @force_id, !27, !"force_id", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/vt1211.c", i32 35, i32 23}
!28 = !{ptr @pdev, !29, !"pdev", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/vt1211.c", i32 39, i32 32}
!30 = !{ptr @__param_str_uch_config, !1, !"__param_str_uch_config", i1 false, i1 false}
!31 = !{ptr @uch_config, !32, !"uch_config", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/vt1211.c", i32 27, i32 12}
!33 = !{ptr @__param_str_int_mode, !6, !"__param_str_int_mode", i1 false, i1 false}
!34 = !{ptr @int_mode, !35, !"int_mode", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/vt1211.c", i32 31, i32 12}
!36 = !{ptr @__param_str_force_id, !11, !"__param_str_force_id", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/vt1211.c", i32 1229, i32 12}
!39 = !{ptr @vt1211_driver, !40, !"vt1211_driver", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/vt1211.c", i32 1227, i32 31}
!41 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/vt1211.c", i32 1157, i32 3}
!43 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vt1211_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @vt1211_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @vt1211_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/vt1211.c", i32 1163, i32 2}
!51 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/vt1211.c", i32 1204, i32 3}
!54 = !{ptr @vt1211_probe._entry.7, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @vt1211_probe._entry_ptr.9, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/vt1211.c", i32 1211, i32 2}
!58 = !{ptr @vt1211_probe._entry.10, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vt1211_probe._entry_ptr.12, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @vt1211_in_attr_group, !61, !"vt1211_in_attr_group", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/vt1211.c", i32 948, i32 37}
!62 = !{ptr @vt1211_in_attr, !63, !"vt1211_in_attr", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/vt1211.c", i32 939, i32 26}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/vt1211.c", i32 923, i32 2}
!66 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/vt1211.c", i32 924, i32 2}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/vt1211.c", i32 925, i32 2}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/vt1211.c", i32 926, i32 2}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/vt1211.c", i32 927, i32 2}
!86 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/vt1211.c", i32 928, i32 2}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @vt1211_sysfs_in, !95, !"vt1211_sysfs_in", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/vt1211.c", i32 922, i32 41}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/vt1211.c", i32 365, i32 3}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @show_in.__UNIQUE_ID_ddebug189, !97, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/vt1211.c", i32 368, i32 22}
!102 = !{ptr @regtemp, !103, !"regtemp", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/vt1211.c", i32 67, i32 11}
!104 = !{ptr @regtempmax, !105, !"regtempmax", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/vt1211.c", i32 68, i32 11}
!106 = !{ptr @regtemphyst, !107, !"regtemphyst", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/vt1211.c", i32 69, i32 11}
!108 = !{ptr @bitalarmin, !109, !"bitalarmin", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/vt1211.c", i32 94, i32 17}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/vt1211.c", i32 397, i32 3}
!112 = !{ptr @set_in.__UNIQUE_ID_ddebug198, !111, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!113 = !{ptr @vt1211_temp_attr_group, !114, !"vt1211_temp_attr_group", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/vt1211.c", i32 996, i32 37}
!115 = !{ptr @vt1211_temp_attr, !116, !"vt1211_temp_attr", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/vt1211.c", i32 986, i32 26}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/vt1211.c", i32 969, i32 2}
!119 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/vt1211.c", i32 970, i32 2}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/vt1211.c", i32 971, i32 2}
!129 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/vt1211.c", i32 972, i32 2}
!134 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/vt1211.c", i32 973, i32 2}
!139 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/vt1211.c", i32 974, i32 2}
!144 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/vt1211.c", i32 975, i32 2}
!149 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @vt1211_sysfs_temp, !153, !"vt1211_sysfs_temp", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/vt1211.c", i32 968, i32 41}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/vt1211.c", i32 439, i32 3}
!156 = !{ptr @show_temp.__UNIQUE_ID_ddebug199, !155, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!157 = !{ptr @bitalarmtemp, !158, !"bitalarmtemp", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/vt1211.c", i32 95, i32 17}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/vt1211.c", i32 473, i32 3}
!161 = !{ptr @set_temp.__UNIQUE_ID_ddebug208, !160, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/vt1211.c", i32 1053, i32 2}
!164 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/vt1211.c", i32 1054, i32 2}
!169 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/vt1211.c", i32 1055, i32 2}
!174 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/vt1211.c", i32 1056, i32 2}
!178 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/vt1211.c", i32 1057, i32 2}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/vt1211.c", i32 1058, i32 2}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/vt1211.c", i32 1059, i32 2}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/vt1211.c", i32 1060, i32 2}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/vt1211.c", i32 1061, i32 2}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/vt1211.c", i32 1062, i32 2}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/vt1211.c", i32 1063, i32 2}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/vt1211.c", i32 1064, i32 2}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/vt1211.c", i32 1065, i32 2}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/vt1211.c", i32 1066, i32 2}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/vt1211.c", i32 1067, i32 2}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/vt1211.c", i32 1068, i32 2}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/vt1211.c", i32 1069, i32 2}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/vt1211.c", i32 1070, i32 2}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/vt1211.c", i32 1071, i32 2}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/vt1211.c", i32 1072, i32 2}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/vt1211.c", i32 1073, i32 2}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/vt1211.c", i32 1074, i32 2}
!216 = !{ptr @vt1211_sysfs_fan_pwm, !217, !"vt1211_sysfs_fan_pwm", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/vt1211.c", i32 1052, i32 41}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/vt1211.c", i32 515, i32 3}
!220 = !{ptr @show_fan.__UNIQUE_ID_ddebug209, !219, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!221 = !{ptr @bitalarmfan, !222, !"bitalarmfan", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/vt1211.c", i32 96, i32 17}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/hwmon/vt1211.c", i32 567, i32 4}
!225 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @set_fan._entry, !224, !"_entry", i1 false, i1 false}
!228 = !{ptr @set_fan._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @set_fan.__UNIQUE_ID_ddebug214, !230, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!230 = !{!"../drivers/hwmon/vt1211.c", i32 578, i32 3}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/vt1211.c", i32 621, i32 3}
!233 = !{ptr @show_pwm.__UNIQUE_ID_ddebug215, !232, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/vt1211.c", i32 671, i32 4}
!236 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @set_pwm._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @set_pwm._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/vt1211.c", i32 698, i32 4}
!241 = !{ptr @set_pwm._entry.110, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @set_pwm._entry_ptr.112, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/vt1211.c", i32 705, i32 4}
!245 = !{ptr @set_pwm._entry.113, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @set_pwm._entry_ptr.115, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @set_pwm.__UNIQUE_ID_ddebug220, !248, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/vt1211.c", i32 718, i32 3}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/vt1211.c", i32 1078, i32 2}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/vt1211.c", i32 1079, i32 2}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/vt1211.c", i32 1080, i32 2}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/vt1211.c", i32 1081, i32 2}
!257 = !{ptr @vt1211_sysfs_misc, !258, !"vt1211_sysfs_misc", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/vt1211.c", i32 1077, i32 32}
!259 = !{ptr @.str.120, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/vt1211.c", i32 896, i32 22}
!261 = !{ptr @.str.121, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/vt1211.c", i32 1327, i32 3}
!263 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @vt1211_init._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @vt1211_init._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/vt1211.c", i32 1334, i32 3}
!268 = !{ptr @vt1211_init._entry.123, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @vt1211_init._entry_ptr.125, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/vt1211.c", i32 1293, i32 3}
!272 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @vt1211_find._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @vt1211_find._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.129, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hwmon/vt1211.c", i32 1300, i32 3}
!277 = !{ptr @vt1211_find._entry.128, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @vt1211_find._entry_ptr.130, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/vt1211.c", i32 1305, i32 2}
!281 = !{ptr @vt1211_find._entry.131, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @vt1211_find._entry_ptr.133, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.134, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/hwmon/vt1211.c", i32 1247, i32 3}
!285 = !{ptr @.str.135, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @vt1211_device_add._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @vt1211_device_add._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/vt1211.c", i32 1258, i32 3}
!290 = !{ptr @vt1211_device_add._entry.136, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @vt1211_device_add._entry_ptr.138, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hwmon/vt1211.c", i32 1264, i32 3}
!294 = !{ptr @vt1211_device_add._entry.139, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @vt1211_device_add._entry_ptr.141, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{i32 1, !"wchar_size", i32 2}
!297 = !{i32 1, !"min_enum_size", i32 4}
!298 = !{i32 8, !"branch-target-enforcement", i32 0}
!299 = !{i32 8, !"sign-return-address", i32 0}
!300 = !{i32 8, !"sign-return-address-all", i32 0}
!301 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!302 = !{i32 7, !"uwtable", i32 1}
!303 = !{i32 7, !"frame-pointer", i32 2}
!304 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!305 = !{i64 5850061}
!306 = !{i64 2153420345}
!307 = !{i64 2153420731}
!308 = !{i64 5849666}
!309 = !{i64 2148989173, i64 2148989178, i64 2148989191, i64 2148989235, i64 2148989269, i64 2148989290}
!310 = !{!"auto-init"}
!311 = !{i8 0, i8 2}
!312 = distinct !{!312, !313}
!313 = !{!"llvm.loop.peeled.count", i32 2}
!314 = !{i64 2153418889}
!315 = !{i64 2153419214}
!316 = !{i64 2153417164}
!317 = !{i64 2153417563}
!318 = !{i64 2153417946}
!319 = !{i64 2153418274}
!320 = !{i32 0, i32 256}
!321 = !{i64 2153419708}
