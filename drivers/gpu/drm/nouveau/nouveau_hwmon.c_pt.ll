; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_hwmon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.89 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.96, %struct.anon.97, %struct.anon.99, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.101, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.113 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.96 = type { ptr, i32, i32, i8 }
%struct.anon.97 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.98] }
%struct.anon.98 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.99 = type { i64, i64 }
%struct.anon.100 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.92 }
%struct.anon.92 = type { ptr, i64 }
%struct.anon.101 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.102, i8 }
%union.anon.102 = type { %struct.anon.106 }
%struct.anon.106 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.108 = type { i32 }
%struct.anon.109 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.110 = type { i16, i16 }
%struct.anon.111 = type { i16, i16, i16, %struct.anon.112, i16 }
%struct.anon.112 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, %struct.mutex, i8 }
%struct.anon.189 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.165, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.165 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.169, %struct.anon.170, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.169 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.170 = type { ptr, ptr }
%struct.nouveau_hwmon = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.anon.192 = type { %struct.nvkm_object, ptr }
%struct.anon.193 = type { %struct.nvkm_object, ptr }
%struct.anon.194 = type { %struct.nvkm_object, ptr }
%struct.anon.195 = type { %struct.nvkm_object, ptr }
%struct.anon.196 = type { %struct.nvkm_object, ptr }
%struct.anon.197 = type { %struct.nvkm_object, ptr }
%struct.anon.198 = type { %struct.nvkm_object, ptr }
%struct.anon.199 = type { %struct.nvkm_object, ptr }
%struct.anon.200 = type { %struct.nvkm_object, ptr }
%struct.anon.201 = type { %struct.nvkm_object, ptr }
%struct.anon.202 = type { %struct.nvkm_object, ptr }
%struct.anon.203 = type { %struct.nvkm_object, ptr }
%struct.anon.204 = type { %struct.nvkm_object, ptr }
%struct.nvkm_iccsense = type { %struct.nvkm_subdev, i8, %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.205 = type { %struct.nvkm_object, ptr }
%struct.anon.206 = type { %struct.nvkm_object, ptr }
%struct.anon.207 = type { %struct.nvkm_object, ptr }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.171], i32, i32, i8, i8, i8, i32 }
%struct.anon.171 = type { i32, i8 }
%struct.anon.208 = type { %struct.nvkm_object, ptr }
%struct.anon.209 = type { %struct.nvkm_object, ptr }
%struct.anon.210 = type { %struct.nvkm_object, ptr }
%struct.anon.211 = type { %struct.nvkm_object, ptr }

@nouveau_hwmon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Skipping hwmon registration\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nouveau_hwmon_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/nouveau_hwmon.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_hwmon_init._entry_ptr = internal global ptr @nouveau_hwmon_init._entry, section ".printk_index", align 4
@temp1_auto_point_sensor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @temp1_auto_point_sensor_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pwm_fan_sensor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pwm_fan_sensor_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nouveau\00", [24 x i8] zeroinitializer }, align 32
@nouveau_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @nouveau_hwmon_ops, ptr @nouveau_info }, [24 x i8] zeroinitializer }, align 32
@nouveau_hwmon_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 750, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to register hwmon device: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nouveau_hwmon_init._entry_ptr.9 = internal global ptr @nouveau_hwmon_init._entry.6, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@temp1_auto_point_sensor_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_temp1_auto_point1_pwm, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nouveau_hwmon_show_temp1_auto_point1_pwm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nouveau_hwmon_temp1_auto_point1_temp, ptr @nouveau_hwmon_set_temp1_auto_point1_temp }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nouveau_hwmon_temp1_auto_point1_temp_hyst, ptr @nouveau_hwmon_set_temp1_auto_point1_temp_hyst }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@pwm_fan_sensor_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm1_min, ptr @sensor_dev_attr_pwm1_max, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nouveau_hwmon_get_pwm1_min, ptr @nouveau_hwmon_set_pwm1_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nouveau_hwmon_get_pwm1_max, ptr @nouveau_hwmon_set_pwm1_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_max\00", [23 x i8] zeroinitializer }, align 32
@nouveau_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @nouveau_is_visible, ptr @nouveau_read, ptr @nouveau_read_string, ptr @nouveau_write }, [16 x i8] zeroinitializer }, align 32
@nouveau_info = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @nouveau_chip, ptr @nouveau_temp, ptr @nouveau_fan, ptr @nouveau_in, ptr @nouveau_pwm, ptr @nouveau_power, ptr null], [36 x i8] zeroinitializer }, align 32
@input_label = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GPU core\00", [23 x i8] zeroinitializer }, align 32
@nouveau_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @nouveau_config_chip }, [24 x i8] zeroinitializer }, align 32
@nouveau_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @nouveau_config_temp }, [24 x i8] zeroinitializer }, align 32
@nouveau_fan = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @nouveau_config_fan }, [24 x i8] zeroinitializer }, align 32
@nouveau_in = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @nouveau_config_in }, [24 x i8] zeroinitializer }, align 32
@nouveau_pwm = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @nouveau_config_pwm }, [24 x i8] zeroinitializer }, align 32
@nouveau_power = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @nouveau_config_power }, [24 x i8] zeroinitializer }, align 32
@nouveau_config_chip = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 0], [24 x i8] zeroinitializer }, align 32
@nouveau_config_temp = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8066, i32 0], [24 x i8] zeroinitializer }, align 32
@nouveau_config_fan = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@nouveau_config_in = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1038, i32 0], [24 x i8] zeroinitializer }, align 32
@nouveau_config_pwm = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 0], [24 x i8] zeroinitializer }, align 32
@nouveau_config_power = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1114624, i32 0], [24 x i8] zeroinitializer }, align 32
@switch.table.nouveau_is_visible = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 420, i16 420, i16 420, i16 420, i16 420, i16 420], [40 x i8] zeroinitializer }, align 32
@switch.table.nouveau_is_visible.17 = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 292, i16 292, i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 19, i64 20]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 19, i64 20]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 728, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"temp1_auto_point_sensor_group\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 208, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"pwm_fan_sensor_group\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 198, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 745, i32 56 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"nouveau_chip_info\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 707, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 750, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [30 x i8] c"temp1_auto_point_sensor_attrs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 202, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_temp1_auto_point1_pwm\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point1_temp\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_temp1_auto_point1_temp_hyst\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 46, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 44, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 78, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 111, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"pwm_fan_sensor_attrs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 193, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_pwm1_min\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_pwm1_max\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 166, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 144, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 189, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"nouveau_hwmon_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 700, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"nouveau_info\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 276, i32 41 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"input_label\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 650, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"nouveau_chip\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 246, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"nouveau_temp\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 251, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"nouveau_fan\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 256, i32 40 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"nouveau_in\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 261, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"nouveau_pwm\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 266, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"nouveau_power\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 271, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"nouveau_config_chip\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 214, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"nouveau_config_temp\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 224, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"nouveau_config_fan\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 231, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"nouveau_config_in\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 219, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"nouveau_config_pwm\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 236, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"nouveau_config_power\00", align 1
@___asan_gen_.150 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/nouveau_hwmon.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 241, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant [32 x i8] c"switch.table.nouveau_is_visible\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [35 x i8] c"switch.table.nouveau_is_visible.17\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @nouveau_hwmon_init._entry, ptr @nouveau_hwmon_init._entry.6, ptr @nouveau_hwmon_init._entry_ptr, ptr @nouveau_hwmon_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @temp1_auto_point_sensor_group, ptr @pwm_fan_sensor_group, ptr @.str.5, ptr @nouveau_chip_info, ptr @.str.7, ptr @.str.8, ptr @temp1_auto_point_sensor_attrs, ptr @sensor_dev_attr_temp1_auto_point1_pwm, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pwm_fan_sensor_attrs, ptr @sensor_dev_attr_pwm1_min, ptr @sensor_dev_attr_pwm1_max, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @nouveau_hwmon_ops, ptr @nouveau_info, ptr @input_label, ptr @nouveau_chip, ptr @nouveau_temp, ptr @nouveau_fan, ptr @nouveau_in, ptr @nouveau_pwm, ptr @nouveau_power, ptr @nouveau_config_chip, ptr @nouveau_config_temp, ptr @nouveau_config_fan, ptr @nouveau_config_in, ptr @nouveau_config_pwm, ptr @nouveau_config_power, ptr @switch.table.nouveau_is_visible, ptr @switch.table.nouveau_is_visible.17], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_hwmon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp1_auto_point_sensor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_sensor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_hwmon_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp1_auto_point_sensor_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_fan_sensor_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_label to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fan to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_in to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_pwm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_power to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_config_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_config_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_config_fan to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_config_in to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_config_pwm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_config_power to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nouveau_is_visible to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nouveau_is_visible.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_hwmon_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %special_groups = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %device1 = getelementptr inbounds %struct.anon.189, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 8
  %iccsense2 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %iccsense2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iccsense2, align 8
  %therm11 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 42
  %8 = ptrtoint ptr %therm11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm11, align 4
  %volt20 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 40
  %10 = ptrtoint ptr %volt20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %volt20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %special_groups) #8
  %12 = ptrtoint ptr %special_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %special_groups, align 4, !annotation !83
  %13 = getelementptr inbounds [3 x ptr], ptr %special_groups, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %13, align 4, !annotation !83
  %15 = getelementptr inbounds [3 x ptr], ptr %special_groups, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %15, align 4, !annotation !83
  %tobool.not = icmp eq ptr %7, null
  %tobool21.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool.not, i1 %tobool21.not, i1 false
  %tobool23.not = icmp eq ptr %11, null
  %or.cond117 = select i1 %or.cond, i1 %tobool23.not, i1 false
  br i1 %or.cond117, label %do.body, label %if.end36

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %17 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.cleanup_crit_edge, label %do.body26

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %drm29 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %drm29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm29, align 8
  %dev30 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev30, align 8
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev31, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end36:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 8) #12
  %hwmon38 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 25
  %25 = ptrtoint ptr %hwmon38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %hwmon38, align 4
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %call7.i.i, align 8
  br i1 %tobool21.not, label %if.end41.if.end61_crit_edge, label %land.lhs.true44

if.end41.if.end61_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true44:                                  ; preds = %if.end41
  %attr_get = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 15
  %27 = ptrtoint ptr %attr_get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %attr_get, align 4
  %tobool45.not = icmp eq ptr %28, null
  br i1 %tobool45.not, label %land.lhs.true44.if.end61_crit_edge, label %land.lhs.true46

land.lhs.true44.if.end61_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %attr_set = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 16
  %29 = ptrtoint ptr %attr_set to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %attr_set, align 8
  %tobool47.not = icmp eq ptr %30, null
  br i1 %tobool47.not, label %land.lhs.true46.if.end61_crit_edge, label %if.then48

land.lhs.true46.if.end61_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then48:                                        ; preds = %land.lhs.true46
  %call49 = tail call i32 @nvkm_therm_temp_get(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call49)
  %cmp = icmp sgt i32 %call49, -1
  br i1 %cmp, label %if.then50, label %if.then48.if.end51_crit_edge

if.then48.if.end51_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %special_groups to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @temp1_auto_point_sensor_group, ptr %special_groups, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48.if.end51_crit_edge
  %i.0 = phi i32 [ 1, %if.then50 ], [ 0, %if.then48.if.end51_crit_edge ]
  %fan_get = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 13
  %32 = ptrtoint ptr %fan_get to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fan_get, align 4
  %tobool52.not = icmp eq ptr %33, null
  br i1 %tobool52.not, label %if.end51.if.end61_crit_edge, label %land.lhs.true53

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true53:                                  ; preds = %if.end51
  %call55 = tail call i32 %33(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call55)
  %cmp56 = icmp sgt i32 %call55, -1
  br i1 %cmp56, label %if.then57, label %land.lhs.true53.if.end61_crit_edge

land.lhs.true53.if.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then57:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  %inc58 = add nuw nsw i32 %i.0, 1
  %arrayidx59 = getelementptr [3 x ptr], ptr %special_groups, i32 0, i32 %i.0
  %34 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pwm_fan_sensor_group, ptr %arrayidx59, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true53.if.end61_crit_edge, %if.end51.if.end61_crit_edge, %land.lhs.true46.if.end61_crit_edge, %land.lhs.true44.if.end61_crit_edge, %if.end41.if.end61_crit_edge
  %i.1 = phi i32 [ %inc58, %if.then57 ], [ %i.0, %land.lhs.true53.if.end61_crit_edge ], [ %i.0, %if.end51.if.end61_crit_edge ], [ 0, %land.lhs.true46.if.end61_crit_edge ], [ 0, %land.lhs.true44.if.end61_crit_edge ], [ 0, %if.end41.if.end61_crit_edge ]
  %arrayidx62 = getelementptr [3 x ptr], ptr %special_groups, i32 0, i32 %i.1
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx62, align 4
  %dev63 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %36 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev63, align 4
  %call65 = call ptr @hwmon_device_register_with_info(ptr noundef %37, ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @nouveau_chip_info, ptr noundef nonnull %special_groups) #8
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end82

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call65 to i32
  %drm75 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %drm75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drm75, align 8
  %dev76 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev76, align 8
  %dev77 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev77, align 4
  %name78 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.7, ptr noundef %name78, i32 noundef %38) #11
  br label %cleanup

if.end82:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %hwmon83 = getelementptr inbounds %struct.nouveau_hwmon, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %hwmon83 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call65, ptr %hwmon83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then67, %if.end36.cleanup_crit_edge, %do.body26, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.then67 ], [ 0, %if.end82 ], [ 0, %do.body26 ], [ 0, %do.body.cleanup_crit_edge ], [ -12, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %special_groups) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_temp_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_hwmon_fini(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %hwmon.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %hwmon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwmon1 = getelementptr inbounds %struct.nouveau_hwmon, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hwmon1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmon1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hwmon_device_unregister(ptr noundef nonnull %5) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %hwmon7 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %hwmon7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hwmon7, align 4
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_show_temp1_auto_point1_pwm(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef 100)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_temp1_auto_point1_temp(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.192, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  %attr_get = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %attr_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr_get, align 4
  %call4 = tail call i32 %11(ptr noundef %9, i32 noundef 10) #8
  %mul = mul i32 %call4, 1000
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_temp1_auto_point1_temp(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.193, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %value, align 4, !annotation !83
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attr_set = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 16
  %11 = ptrtoint ptr %attr_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_set, align 8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %div = sdiv i32 %14, 1000
  %call5 = call i32 %12(ptr noundef %9, i32 noundef 10, i32 noundef %div) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_temp1_auto_point1_temp_hyst(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.194, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  %attr_get = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %attr_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr_get, align 4
  %call4 = tail call i32 %11(ptr noundef %9, i32 noundef 11) #8
  %mul = mul i32 %call4, 1000
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_temp1_auto_point1_temp_hyst(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.195, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %value, align 4, !annotation !83
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attr_set = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 16
  %11 = ptrtoint ptr %attr_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_set, align 8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %div = sdiv i32 %14, 1000
  %call5 = call i32 %12(ptr noundef %9, i32 noundef 11, i32 noundef %div) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_get_pwm1_min(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.196, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  %attr_get = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %attr_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr_get, align 4
  %call4 = tail call i32 %11(ptr noundef %9, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %call4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_pwm1_min(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.197, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %value, align 4, !annotation !83
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attr_set = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 16
  %11 = ptrtoint ptr %attr_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_set, align 8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call5 = call i32 %12(ptr noundef %9, i32 noundef 0, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  %call5.count = select i1 %cmp, i32 %call5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call5.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_get_pwm1_max(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.198, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  %attr_get = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %attr_get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr_get, align 4
  %call4 = tail call i32 %11(ptr noundef %9, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %call4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_pwm1_max(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.199, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 8
  %therm3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %therm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %therm3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %value, align 4, !annotation !83
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attr_set = getelementptr inbounds %struct.nvkm_therm, ptr %9, i32 0, i32 16
  %11 = ptrtoint ptr %attr_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_set, align 8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call5 = call i32 %12(ptr noundef %9, i32 noundef 1, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  %call5.count = select i1 %cmp, i32 %call5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call5.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @nouveau_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 7, label %sw.bb3
    i32 2, label %sw.bb5
    i32 8, label %sw.bb7
    i32 4, label %sw.bb9
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond.i = icmp eq i32 %attr, 5
  %..i = select i1 %cond.i, i16 292, i16 0
  br label %return

sw.bb1:                                           ; preds = %entry
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_private.i.i, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %2, i32 0, i32 2, i32 3, i32 0, i32 5
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %device1.i = getelementptr inbounds %struct.anon.200, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1.i, align 8
  %therm2.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 42
  %7 = ptrtoint ptr %therm2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %therm2.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb1.return_crit_edge, label %lor.lhs.false.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i:                                  ; preds = %sw.bb1
  %attr_get.i = getelementptr inbounds %struct.nvkm_therm, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %attr_get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr_get.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @nvkm_therm_temp_get(ptr noundef nonnull %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %lor.lhs.false4.i.return_crit_edge, label %if.end.i

lor.lhs.false4.i.return_crit_edge:                ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 12
  br i1 %11, label %switch.lookup, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %entry
  %dev_private.i.i26 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %12 = ptrtoint ptr %dev_private.i.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i.i26, align 4
  %priv.i27 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3, i32 0, i32 5
  %14 = ptrtoint ptr %priv.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i27, align 4
  %device1.i28 = getelementptr inbounds %struct.anon.201, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device1.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1.i28, align 8
  %therm2.i29 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 42
  %18 = ptrtoint ptr %therm2.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %therm2.i29, align 4
  %tobool.not.i30 = icmp eq ptr %19, null
  br i1 %tobool.not.i30, label %sw.bb3.return_crit_edge, label %lor.lhs.false.i33

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i33:                                ; preds = %sw.bb3
  %attr_get.i31 = getelementptr inbounds %struct.nvkm_therm, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %attr_get.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attr_get.i31, align 4
  %tobool3.not.i32 = icmp eq ptr %21, null
  br i1 %tobool3.not.i32, label %lor.lhs.false.i33.return_crit_edge, label %lor.lhs.false4.i36

lor.lhs.false.i33.return_crit_edge:               ; preds = %lor.lhs.false.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false4.i36:                               ; preds = %lor.lhs.false.i33
  %call5.i34 = tail call i32 @nvkm_therm_fan_sense(ptr noundef nonnull %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i34)
  %cmp.i35 = icmp slt i32 %call5.i34, 0
  br i1 %cmp.i35, label %lor.lhs.false4.i36.return_crit_edge, label %if.end.i39

lor.lhs.false4.i36.return_crit_edge:              ; preds = %lor.lhs.false4.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i39:                                       ; preds = %lor.lhs.false4.i36
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond.i37 = icmp eq i32 %attr, 1
  %..i38 = select i1 %cond.i37, i16 292, i16 0
  br label %return

sw.bb5:                                           ; preds = %entry
  %dev_private.i.i41 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %dev_private.i.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i.i41, align 4
  %priv.i42 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 2, i32 3, i32 0, i32 5
  %24 = ptrtoint ptr %priv.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i42, align 4
  %device1.i43 = getelementptr inbounds %struct.anon.202, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %device1.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device1.i43, align 8
  %volt2.i = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 40
  %28 = ptrtoint ptr %volt2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %volt2.i, align 4
  %tobool.not.i44 = icmp eq ptr %29, null
  br i1 %tobool.not.i44, label %sw.bb5.return_crit_edge, label %lor.lhs.false.i46

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i46:                                ; preds = %sw.bb5
  %call3.i = tail call i32 @nvkm_volt_get(ptr noundef nonnull %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i45 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i45, label %lor.lhs.false.i46.return_crit_edge, label %if.end.i47

lor.lhs.false.i46.return_crit_edge:               ; preds = %lor.lhs.false.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i47:                                       ; preds = %lor.lhs.false.i46
  %switch.tableidx75 = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx75)
  %30 = icmp ult i32 %switch.tableidx75, 10
  br i1 %30, label %switch.lookup74, label %if.end.i47.return_crit_edge

if.end.i47.return_crit_edge:                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7:                                           ; preds = %entry
  %dev_private.i.i50 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %31 = ptrtoint ptr %dev_private.i.i50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private.i.i50, align 4
  %priv.i51 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 5
  %33 = ptrtoint ptr %priv.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i51, align 4
  %device1.i52 = getelementptr inbounds %struct.anon.203, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %device1.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device1.i52, align 8
  %therm2.i53 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 42
  %37 = ptrtoint ptr %therm2.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %therm2.i53, align 4
  %tobool.not.i54 = icmp eq ptr %38, null
  br i1 %tobool.not.i54, label %sw.bb7.return_crit_edge, label %lor.lhs.false.i57

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i57:                                ; preds = %sw.bb7
  %attr_get.i55 = getelementptr inbounds %struct.nvkm_therm, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %attr_get.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %attr_get.i55, align 4
  %tobool3.not.i56 = icmp eq ptr %40, null
  br i1 %tobool3.not.i56, label %lor.lhs.false.i57.return_crit_edge, label %lor.lhs.false4.i58

lor.lhs.false.i57.return_crit_edge:               ; preds = %lor.lhs.false.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false4.i58:                               ; preds = %lor.lhs.false.i57
  %fan_get.i = getelementptr inbounds %struct.nvkm_therm, ptr %38, i32 0, i32 13
  %41 = ptrtoint ptr %fan_get.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fan_get.i, align 4
  %tobool5.not.i = icmp eq ptr %42, null
  br i1 %tobool5.not.i, label %lor.lhs.false4.i58.return_crit_edge, label %lor.lhs.false6.i

lor.lhs.false4.i58.return_crit_edge:              ; preds = %lor.lhs.false4.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i58
  %call8.i = tail call i32 %42(ptr noundef nonnull %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i59 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i59, label %lor.lhs.false6.i.return_crit_edge, label %if.end.i61

lor.lhs.false6.i.return_crit_edge:                ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i61:                                       ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch.i = icmp ult i32 %attr, 2
  %..i60 = select i1 %switch.i, i16 420, i16 0
  br label %return

sw.bb9:                                           ; preds = %entry
  %dev_private.i.i63 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %43 = ptrtoint ptr %dev_private.i.i63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_private.i.i63, align 4
  %priv.i64 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 3, i32 0, i32 5
  %45 = ptrtoint ptr %priv.i64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i64, align 4
  %device1.i65 = getelementptr inbounds %struct.anon.204, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %device1.i65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device1.i65, align 8
  %iccsense2.i = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 41
  %49 = ptrtoint ptr %iccsense2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iccsense2.i, align 8
  %tobool.not.i66 = icmp eq ptr %50, null
  br i1 %tobool.not.i66, label %sw.bb9.return_crit_edge, label %lor.lhs.false.i68

sw.bb9.return_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i68:                                ; preds = %sw.bb9
  %data_valid.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %data_valid.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data_valid.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool3.not.i67 = icmp eq i8 %52, 0
  br i1 %tobool3.not.i67, label %lor.lhs.false.i68.return_crit_edge, label %lor.lhs.false4.i69

lor.lhs.false.i68.return_crit_edge:               ; preds = %lor.lhs.false.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false4.i69:                               ; preds = %lor.lhs.false.i68
  %rails.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %rails.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %rails.i, align 4
  %cmp.i.not.i = icmp eq ptr %54, %rails.i
  br i1 %cmp.i.not.i, label %lor.lhs.false4.i69.return_crit_edge, label %if.end.i70

lor.lhs.false4.i69.return_crit_edge:              ; preds = %lor.lhs.false4.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i70:                                       ; preds = %lor.lhs.false4.i69
  %55 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %attr, label %sw.default.i72 [
    i32 9, label %if.end.i70.return_crit_edge
    i32 19, label %sw.bb7.i
    i32 20, label %sw.bb11.i
  ]

if.end.i70.return_crit_edge:                      ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7.i:                                         ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  %power_w_max.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %50, i32 0, i32 4
  %56 = ptrtoint ptr %power_w_max.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %power_w_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool8.not.i = icmp eq i32 %57, 0
  %..i71 = select i1 %tobool8.not.i, i16 0, i16 292
  br label %return

sw.bb11.i:                                        ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  %power_w_crit.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %50, i32 0, i32 5
  %58 = ptrtoint ptr %power_w_crit.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %power_w_crit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool12.not.i = icmp eq i32 %59, 0
  %.1.i = select i1 %tobool12.not.i, i16 0, i16 292
  br label %return

sw.default.i72:                                   ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [12 x i16], ptr @switch.table.nouveau_is_visible, i32 0, i32 %switch.tableidx
  %60 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %60)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

switch.lookup74:                                  ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep76 = getelementptr inbounds [10 x i16], ptr @switch.table.nouveau_is_visible.17, i32 0, i32 %switch.tableidx75
  %61 = ptrtoint ptr %switch.gep76 to i32
  call void @__asan_load2_noabort(i32 %61)
  %switch.load77 = load i16, ptr %switch.gep76, align 2
  br label %return

return:                                           ; preds = %switch.lookup74, %switch.lookup, %sw.default.i72, %sw.bb11.i, %sw.bb7.i, %if.end.i70.return_crit_edge, %lor.lhs.false4.i69.return_crit_edge, %lor.lhs.false.i68.return_crit_edge, %sw.bb9.return_crit_edge, %if.end.i61, %lor.lhs.false6.i.return_crit_edge, %lor.lhs.false4.i58.return_crit_edge, %lor.lhs.false.i57.return_crit_edge, %sw.bb7.return_crit_edge, %if.end.i47.return_crit_edge, %lor.lhs.false.i46.return_crit_edge, %sw.bb5.return_crit_edge, %if.end.i39, %lor.lhs.false4.i36.return_crit_edge, %lor.lhs.false.i33.return_crit_edge, %sw.bb3.return_crit_edge, %if.end.i.return_crit_edge, %lor.lhs.false4.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i16 [ %..i, %sw.bb ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false4.i.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %lor.lhs.false4.i36.return_crit_edge ], [ 0, %lor.lhs.false.i33.return_crit_edge ], [ 0, %sw.bb3.return_crit_edge ], [ %..i38, %if.end.i39 ], [ 0, %lor.lhs.false.i46.return_crit_edge ], [ 0, %sw.bb5.return_crit_edge ], [ 0, %lor.lhs.false6.i.return_crit_edge ], [ 0, %lor.lhs.false4.i58.return_crit_edge ], [ 0, %lor.lhs.false.i57.return_crit_edge ], [ 0, %sw.bb7.return_crit_edge ], [ %..i60, %if.end.i61 ], [ 0, %sw.default.i72 ], [ 0, %lor.lhs.false4.i69.return_crit_edge ], [ 0, %lor.lhs.false.i68.return_crit_edge ], [ 0, %sw.bb9.return_crit_edge ], [ 292, %if.end.i70.return_crit_edge ], [ %..i71, %sw.bb7.i ], [ %.1.i, %sw.bb11.i ], [ %switch.load, %switch.lookup ], [ 0, %if.end.i.return_crit_edge ], [ %switch.load77, %switch.lookup74 ], [ 0, %if.end.i47.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 7, label %sw.bb3
    i32 2, label %sw.bb5
    i32 8, label %sw.bb7
    i32 4, label %sw.bb9
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond.i = icmp eq i32 %attr, 5
  br i1 %cond.i, label %sw.bb.return.sink.split_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i.i, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 5
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %device2.i = getelementptr inbounds %struct.anon.205, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2.i, align 8
  %therm3.i = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 42
  %9 = ptrtoint ptr %therm3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %therm3.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %sw.bb1.return_crit_edge, label %lor.lhs.false.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i:                                  ; preds = %sw.bb1
  %attr_get.i = getelementptr inbounds %struct.nvkm_therm, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %attr_get.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_get.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %attr, label %if.end.i.return_crit_edge [
    i32 1, label %sw.bb.i31
    i32 7, label %sw.bb9.i
    i32 8, label %sw.bb13.i
    i32 9, label %sw.bb17.i
    i32 10, label %sw.bb21.i
    i32 11, label %sw.bb25.i
    i32 12, label %sw.bb29.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i31:                                        ; preds = %if.end.i
  %switch_power_state.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 35
  %14 = ptrtoint ptr %switch_power_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %switch_power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.end6.i, label %sw.bb.i31.return_crit_edge

sw.bb.i31.return_crit_edge:                       ; preds = %sw.bb.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6.i:                                        ; preds = %sw.bb.i31
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 @nvkm_therm_temp_get(ptr noundef nonnull %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  %mul.i = mul i32 %call7.i, 1000
  %cond.i32 = select i1 %cmp8.i, i32 %call7.i, i32 %mul.i
  br label %return.sink.split

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 12) #8
  %mul12.i = mul i32 %call11.i, 1000
  br label %return.sink.split

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 13) #8
  %mul16.i = mul i32 %call15.i, 1000
  br label %return.sink.split

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 14) #8
  %mul20.i = mul i32 %call19.i, 1000
  br label %return.sink.split

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 15) #8
  %mul24.i = mul i32 %call23.i, 1000
  br label %return.sink.split

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 16) #8
  %mul28.i = mul i32 %call27.i, 1000
  br label %return.sink.split

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 17) #8
  %mul32.i = mul i32 %call31.i, 1000
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i34 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i34, align 4
  %dev_private.i.i35 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev_private.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i.i35, align 4
  %priv.i36 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 0, i32 5
  %20 = ptrtoint ptr %priv.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i36, align 4
  %device2.i37 = getelementptr inbounds %struct.anon.206, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %device2.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device2.i37, align 8
  %therm3.i38 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 42
  %24 = ptrtoint ptr %therm3.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %therm3.i38, align 4
  %tobool.not.i39 = icmp ne ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond.i40 = icmp eq i32 %attr, 1
  %or.cond.i = and i1 %cond.i40, %tobool.not.i39
  br i1 %or.cond.i, label %sw.bb.i43, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i43:                                        ; preds = %sw.bb3
  %switch_power_state.i41 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 35
  %26 = ptrtoint ptr %switch_power_state.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %switch_power_state.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i42 = icmp eq i32 %27, 0
  br i1 %cmp.not.i42, label %if.end5.i, label %sw.bb.i43.return_crit_edge

sw.bb.i43.return_crit_edge:                       ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5.i:                                        ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @nvkm_therm_fan_sense(ptr noundef nonnull %25) #8
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i45 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i45, align 4
  %dev_private.i.i46 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %dev_private.i.i46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i.i46, align 4
  %priv.i47 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3, i32 0, i32 5
  %32 = ptrtoint ptr %priv.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i47, align 4
  %device2.i48 = getelementptr inbounds %struct.anon.207, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %device2.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device2.i48, align 8
  %volt3.i = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 40
  %36 = ptrtoint ptr %volt3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %volt3.i, align 4
  %tobool.not.i49 = icmp eq ptr %37, null
  br i1 %tobool.not.i49, label %sw.bb5.return_crit_edge, label %if.end.i50

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i50:                                       ; preds = %sw.bb5
  %38 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %attr, label %if.end.i50.return_crit_edge [
    i32 1, label %sw.bb.i53
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb16.i
  ]

if.end.i50.return_crit_edge:                      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i53:                                        ; preds = %if.end.i50
  %switch_power_state.i51 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 35
  %39 = ptrtoint ptr %switch_power_state.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %switch_power_state.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i52 = icmp eq i32 %40, 0
  br i1 %cmp.not.i52, label %if.end5.i56, label %sw.bb.i53.return_crit_edge

sw.bb.i53.return_crit_edge:                       ; preds = %sw.bb.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5.i56:                                      ; preds = %sw.bb.i53
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i54 = tail call i32 @nvkm_volt_get(ptr noundef nonnull %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i54)
  %cmp7.i = icmp slt i32 %call6.i54, 0
  %div.i = sdiv i32 %call6.i54, 1000
  %cond.i55 = select i1 %cmp7.i, i32 %call6.i54, i32 %div.i
  br label %return.sink.split

sw.bb8.i:                                         ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  %min_uv.i = getelementptr inbounds %struct.nvkm_volt, ptr %37, i32 0, i32 6
  %41 = ptrtoint ptr %min_uv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %min_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp9.not.i = icmp eq i32 %42, 0
  %div12.i = udiv i32 %42, 1000
  %spec.select.i = select i1 %cmp9.not.i, i32 -19, i32 %div12.i
  br label %return.sink.split

sw.bb16.i:                                        ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  %max_uv.i = getelementptr inbounds %struct.nvkm_volt, ptr %37, i32 0, i32 5
  %43 = ptrtoint ptr %max_uv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp17.not.i = icmp eq i32 %44, 0
  %div20.i = udiv i32 %44, 1000
  %spec.select1.i = select i1 %cmp17.not.i, i32 -19, i32 %div20.i
  br label %return.sink.split

sw.bb7:                                           ; preds = %entry
  %driver_data.i.i60 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %45 = ptrtoint ptr %driver_data.i.i60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i60, align 4
  %dev_private.i.i61 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %dev_private.i.i61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_private.i.i61, align 4
  %priv.i62 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 3, i32 0, i32 5
  %49 = ptrtoint ptr %priv.i62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i62, align 4
  %device2.i63 = getelementptr inbounds %struct.anon.208, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %device2.i63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device2.i63, align 8
  %therm3.i64 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 42
  %53 = ptrtoint ptr %therm3.i64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %therm3.i64, align 4
  %tobool.not.i65 = icmp eq ptr %54, null
  br i1 %tobool.not.i65, label %sw.bb7.return_crit_edge, label %lor.lhs.false.i68

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i68:                                ; preds = %sw.bb7
  %attr_get.i66 = getelementptr inbounds %struct.nvkm_therm, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %attr_get.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %attr_get.i66, align 4
  %tobool4.not.i67 = icmp eq ptr %56, null
  br i1 %tobool4.not.i67, label %lor.lhs.false.i68.return_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i68.return_crit_edge:               ; preds = %lor.lhs.false.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i68
  %fan_get.i = getelementptr inbounds %struct.nvkm_therm, ptr %54, i32 0, i32 13
  %57 = ptrtoint ptr %fan_get.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fan_get.i, align 4
  %tobool6.not.i = icmp eq ptr %58, null
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.return_crit_edge, label %if.end.i69

lor.lhs.false5.i.return_crit_edge:                ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i69:                                       ; preds = %lor.lhs.false5.i
  %59 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %attr, label %if.end.i69.return_crit_edge [
    i32 1, label %sw.bb.i70
    i32 0, label %sw.bb9.i73
  ]

if.end.i69.return_crit_edge:                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i70:                                        ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 %56(ptr noundef nonnull %54, i32 noundef 2) #8
  br label %return.sink.split

sw.bb9.i73:                                       ; preds = %if.end.i69
  %switch_power_state.i71 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 35
  %60 = ptrtoint ptr %switch_power_state.i71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %switch_power_state.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not.i72 = icmp eq i32 %61, 0
  br i1 %cmp.not.i72, label %if.end11.i, label %sw.bb9.i73.return_crit_edge

sw.bb9.i73.return_crit_edge:                      ; preds = %sw.bb9.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11.i:                                       ; preds = %sw.bb9.i73
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 %58(ptr noundef nonnull %54) #8
  br label %return.sink.split

sw.bb9:                                           ; preds = %entry
  %driver_data.i.i75 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %62 = ptrtoint ptr %driver_data.i.i75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i75, align 4
  %dev_private.i.i76 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %dev_private.i.i76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_private.i.i76, align 4
  %priv.i77 = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 2, i32 3, i32 0, i32 5
  %66 = ptrtoint ptr %priv.i77 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv.i77, align 4
  %device2.i78 = getelementptr inbounds %struct.anon.209, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %device2.i78 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device2.i78, align 8
  %iccsense3.i = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 41
  %70 = ptrtoint ptr %iccsense3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iccsense3.i, align 8
  %tobool.not.i79 = icmp eq ptr %71, null
  br i1 %tobool.not.i79, label %sw.bb9.return_crit_edge, label %if.end.i80

sw.bb9.return_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i80:                                       ; preds = %sw.bb9
  %72 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %if.end.i80.return_crit_edge [
    i32 9, label %sw.bb.i83
    i32 19, label %sw.bb7.i
    i32 20, label %sw.bb8.i86
  ]

if.end.i80.return_crit_edge:                      ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i83:                                        ; preds = %if.end.i80
  %switch_power_state.i81 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 35
  %73 = ptrtoint ptr %switch_power_state.i81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %switch_power_state.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not.i82 = icmp eq i32 %74, 0
  br i1 %cmp.not.i82, label %if.end5.i85, label %sw.bb.i83.return_crit_edge

sw.bb.i83.return_crit_edge:                       ; preds = %sw.bb.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5.i85:                                      ; preds = %sw.bb.i83
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i84 = tail call i32 @nvkm_iccsense_read_all(ptr noundef nonnull %71) #8
  br label %return.sink.split

sw.bb7.i:                                         ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  %power_w_max.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %71, i32 0, i32 4
  %75 = ptrtoint ptr %power_w_max.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %power_w_max.i, align 4
  br label %return.sink.split

sw.bb8.i86:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  %power_w_crit.i = getelementptr inbounds %struct.nvkm_iccsense, ptr %71, i32 0, i32 5
  %77 = ptrtoint ptr %power_w_crit.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %power_w_crit.i, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb8.i86, %sw.bb7.i, %if.end5.i85, %if.end11.i, %sw.bb.i70, %sw.bb16.i, %sw.bb8.i, %if.end5.i56, %if.end5.i, %sw.bb29.i, %sw.bb25.i, %sw.bb21.i, %sw.bb17.i, %sw.bb13.i, %sw.bb9.i, %if.end6.i, %sw.bb.return.sink.split_crit_edge
  %call6.sink.i.sink = phi i32 [ %call6.i, %if.end5.i ], [ 1000, %sw.bb.return.sink.split_crit_edge ], [ %cond.i32, %if.end6.i ], [ %mul12.i, %sw.bb9.i ], [ %mul16.i, %sw.bb13.i ], [ %mul20.i, %sw.bb17.i ], [ %mul24.i, %sw.bb21.i ], [ %mul28.i, %sw.bb25.i ], [ %mul32.i, %sw.bb29.i ], [ %cond.i55, %if.end5.i56 ], [ %spec.select.i, %sw.bb8.i ], [ %spec.select1.i, %sw.bb16.i ], [ %call13.i, %if.end11.i ], [ %call8.i, %sw.bb.i70 ], [ %call6.i84, %if.end5.i85 ], [ %76, %sw.bb7.i ], [ %78, %sw.bb8.i86 ]
  %79 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call6.sink.i.sink, ptr %val, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb.i83.return_crit_edge, %if.end.i80.return_crit_edge, %sw.bb9.return_crit_edge, %sw.bb9.i73.return_crit_edge, %if.end.i69.return_crit_edge, %lor.lhs.false5.i.return_crit_edge, %lor.lhs.false.i68.return_crit_edge, %sw.bb7.return_crit_edge, %sw.bb.i53.return_crit_edge, %if.end.i50.return_crit_edge, %sw.bb5.return_crit_edge, %sw.bb.i43.return_crit_edge, %sw.bb3.return_crit_edge, %sw.bb.i31.return_crit_edge, %if.end.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ -95, %lor.lhs.false.i.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ -22, %sw.bb.i31.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ -95, %sw.bb3.return_crit_edge ], [ -22, %sw.bb.i43.return_crit_edge ], [ -95, %sw.bb5.return_crit_edge ], [ -22, %sw.bb.i53.return_crit_edge ], [ -95, %if.end.i50.return_crit_edge ], [ -95, %lor.lhs.false5.i.return_crit_edge ], [ -95, %lor.lhs.false.i68.return_crit_edge ], [ -95, %sw.bb7.return_crit_edge ], [ -22, %sw.bb9.i73.return_crit_edge ], [ -95, %if.end.i69.return_crit_edge ], [ -95, %sw.bb9.return_crit_edge ], [ -22, %sw.bb.i83.return_crit_edge ], [ -95, %if.end.i80.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nouveau_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 10
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @input_label, ptr %buf, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i.i, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 5
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %device2.i = getelementptr inbounds %struct.anon.210, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2.i, align 8
  %therm3.i = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 42
  %9 = ptrtoint ptr %therm3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %therm3.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %lor.lhs.false.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i:                                  ; preds = %sw.bb
  %attr_set.i = getelementptr inbounds %struct.nvkm_therm, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %attr_set.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr_set.i, align 8
  %tobool4.not.i = icmp ne ptr %12, null
  %switch.tableidx = add i32 %attr, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 6
  %or.cond = and i1 %tobool4.not.i, %13
  br i1 %or.cond, label %switch.lookup, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.offset = add i32 %attr, 5
  %div25.i = sdiv i32 %val, 1000
  %call26.i = tail call i32 %12(ptr noundef nonnull %10, i32 noundef %switch.offset, i32 noundef %div25.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i7, align 4
  %dev_private.i.i8 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i.i8, align 4
  %priv.i9 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 0, i32 5
  %18 = ptrtoint ptr %priv.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i9, align 4
  %device2.i10 = getelementptr inbounds %struct.anon.211, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %device2.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device2.i10, align 8
  %therm3.i11 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 42
  %22 = ptrtoint ptr %therm3.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %therm3.i11, align 4
  %tobool.not.i12 = icmp eq ptr %23, null
  br i1 %tobool.not.i12, label %sw.bb1.return_crit_edge, label %lor.lhs.false.i15

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i15:                                ; preds = %sw.bb1
  %attr_set.i13 = getelementptr inbounds %struct.nvkm_therm, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %attr_set.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %attr_set.i13, align 8
  %tobool4.not.i14 = icmp eq ptr %25, null
  br i1 %tobool4.not.i14, label %lor.lhs.false.i15.return_crit_edge, label %if.end.i16

lor.lhs.false.i15.return_crit_edge:               ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i16:                                       ; preds = %lor.lhs.false.i15
  %26 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %attr, label %if.end.i16.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
  ]

if.end.i16.return_crit_edge:                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i:                                          ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  %fan_set.i = getelementptr inbounds %struct.nvkm_therm, ptr %23, i32 0, i32 14
  %27 = ptrtoint ptr %fan_set.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fan_set.i, align 8
  %call5.i = tail call i32 %28(ptr noundef nonnull %23, i32 noundef %val) #8
  br label %return

sw.bb6.i:                                         ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 %25(ptr noundef nonnull %23, i32 noundef 2, i32 noundef %val) #8
  br label %return

return:                                           ; preds = %sw.bb6.i, %sw.bb.i, %if.end.i16.return_crit_edge, %lor.lhs.false.i15.return_crit_edge, %sw.bb1.return_crit_edge, %switch.lookup, %lor.lhs.false.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %lor.lhs.false.i.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ %call26.i, %switch.lookup ], [ %call8.i, %sw.bb6.i ], [ %call5.i, %sw.bb.i ], [ -95, %lor.lhs.false.i15.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ -95, %if.end.i16.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_sense(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_iccsense_read_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !22, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 728, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nouveau_hwmon_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nouveau_hwmon_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 745, i32 56}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 750, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nouveau_hwmon_init._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nouveau_hwmon_init._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @temp1_auto_point_sensor_group, !16, !"temp1_auto_point_sensor_group", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 208, i32 37}
!17 = !{ptr @temp1_auto_point_sensor_attrs, !18, !"temp1_auto_point_sensor_attrs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 202, i32 26}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 46, i32 8}
!21 = !{ptr @sensor_dev_attr_temp1_auto_point1_pwm, !20, !"sensor_dev_attr_temp1_auto_point1_pwm", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 44, i32 34}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 78, i32 8}
!26 = !{ptr @sensor_dev_attr_temp1_auto_point1_temp, !25, !"sensor_dev_attr_temp1_auto_point1_temp", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 111, i32 8}
!29 = !{ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst, !28, !"sensor_dev_attr_temp1_auto_point1_temp_hyst", i1 false, i1 false}
!30 = !{ptr @pwm_fan_sensor_group, !31, !"pwm_fan_sensor_group", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 198, i32 37}
!32 = !{ptr @pwm_fan_sensor_attrs, !33, !"pwm_fan_sensor_attrs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 193, i32 26}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 166, i32 8}
!36 = !{ptr @sensor_dev_attr_pwm1_min, !35, !"sensor_dev_attr_pwm1_min", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 144, i32 22}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 189, i32 8}
!41 = !{ptr @sensor_dev_attr_pwm1_max, !40, !"sensor_dev_attr_pwm1_max", i1 false, i1 false}
!42 = !{ptr @nouveau_chip_info, !43, !"nouveau_chip_info", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 707, i32 37}
!44 = !{ptr @nouveau_hwmon_ops, !45, !"nouveau_hwmon_ops", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 700, i32 31}
!46 = !{ptr @input_label, !47, !"input_label", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 650, i32 19}
!48 = !{ptr @nouveau_info, !49, !"nouveau_info", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 276, i32 41}
!50 = !{ptr @nouveau_chip, !51, !"nouveau_chip", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 246, i32 40}
!52 = !{ptr @nouveau_config_chip, !53, !"nouveau_config_chip", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 214, i32 18}
!54 = !{ptr @nouveau_temp, !55, !"nouveau_temp", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 251, i32 40}
!56 = !{ptr @nouveau_config_temp, !57, !"nouveau_config_temp", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 224, i32 18}
!58 = !{ptr @nouveau_fan, !59, !"nouveau_fan", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 256, i32 40}
!60 = !{ptr @nouveau_config_fan, !61, !"nouveau_config_fan", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 231, i32 18}
!62 = !{ptr @nouveau_in, !63, !"nouveau_in", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 261, i32 40}
!64 = !{ptr @nouveau_config_in, !65, !"nouveau_config_in", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 219, i32 18}
!66 = !{ptr @nouveau_pwm, !67, !"nouveau_pwm", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 266, i32 40}
!68 = !{ptr @nouveau_config_pwm, !69, !"nouveau_config_pwm", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 236, i32 18}
!70 = !{ptr @nouveau_power, !71, !"nouveau_power", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 271, i32 40}
!72 = !{ptr @nouveau_config_power, !73, !"nouveau_config_power", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nouveau_hwmon.c", i32 241, i32 18}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
