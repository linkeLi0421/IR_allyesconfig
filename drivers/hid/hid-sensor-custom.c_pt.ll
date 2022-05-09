; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-sensor-custom.c_pt.bc'
source_filename = "../drivers/hid/hid-sensor-custom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.hid_custom_usage_desc = type { i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.hid_sensor_custom = type { %struct.mutex, ptr, ptr, %struct.hid_sensor_hub_callbacks, i32, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.miscdevice, %struct.kfifo, i32, %struct.wait_queue_head, ptr }
%struct.hid_sensor_hub_callbacks = type { ptr, ptr, ptr, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.kfifo = type { %union.anon.72, [0 x i8] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hid_sensor_hub_device = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.sensor_hub_pending }
%struct.sensor_hub_pending = type { i8, %struct.completion, i32, i32, i32, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_sensor_custom_field = type { i32, [64 x i8], %struct.hid_sensor_hub_attribute_info, [10 x %struct.device_attribute], [11 x [64 x i8]], [11 x ptr], %struct.attribute_group }
%struct.hid_sensor_sample = type <{ i32, i64, i32 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_hid_sensor_custom__229_977_hid_sensor_custom_platform_driver_init6 = internal global ptr @hid_sensor_custom_platform_driver_init, section ".initcall6.init", align 4
@hid_sensor_custom_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hid_sensor_custom_probe, ptr @hid_sensor_custom_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hid_sensor_custom_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hid_sensor_custom_platform_driver_exit = internal global ptr @hid_sensor_custom_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [74 x i8] c"hid_sensor_custom.description=HID Sensor Custom and Generic sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [83 x i8] c"hid_sensor_custom.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [53 x i8] c"hid_sensor_custom.file=drivers/hid/hid-sensor-custom\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [30 x i8] c"hid_sensor_custom.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid_sensor_custom\00", [46 x i8] zeroinitializer }, align 32
@hid_sensor_custom_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"HID-SENSOR-2000e1\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"HID-SENSOR-2000e2\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@hid_sensor_custom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sensor_inst->mutex\00", [44 x i8] zeroinitializer }, align 32
@hid_sensor_custom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register_platform_device failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hid_sensor_custom_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hid/hid-sensor-custom.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_sensor_custom_probe._entry_ptr = internal global ptr @hid_sensor_custom_probe._entry, section ".printk_index", align 4
@hid_sensor_custom_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 909, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback reg failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hid_sensor_custom_probe._entry_ptr.9 = internal global ptr @hid_sensor_custom_probe._entry.7, section ".printk_index", align 4
@enable_sensor_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @enable_sensor_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hid_sensor_capture_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Skipped remaining data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hid_sensor_capture_sample\00", [38 x i8] zeroinitializer }, align 32
@hid_sensor_capture_sample._entry_ptr = internal global ptr @hid_sensor_capture_sample._entry, section ".printk_index", align 4
@hid_sensor_capture_sample.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s received %d of %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_known_custom_sensor_index.w_buf = internal global { [64 x i16], [32 x i8] } zeroinitializer, align 32
@get_known_custom_sensor_index.buf = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@get_known_custom_sensor_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 796, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to get sensor manufacturer info %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"get_known_custom_sensor_index\00", [34 x i8] zeroinitializer }, align 32
@get_known_custom_sensor_index._entry_ptr = internal global ptr @get_known_custom_sensor_index._entry, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INTEL\00", [26 x i8] zeroinitializer }, align 32
@get_known_custom_sensor_index._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.4, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get real usage info %d\0A\00", [62 x i8] zeroinitializer }, align 32
@get_known_custom_sensor_index._entry_ptr.18 = internal global ptr @get_known_custom_sensor_index._entry.16, section ".printk_index", align 4
@get_known_custom_sensor_index._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.4, i32 834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s luid length not match %zu != (%zu + 5)\0A\00", [53 x i8] zeroinitializer }, align 32
@get_known_custom_sensor_index._entry_ptr.21 = internal global ptr @get_known_custom_sensor_index._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"020B000000000000\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HID-SENSOR-INT-%s\00", [46 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@enable_sensor_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_enable_sensor, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_enable_sensor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enable_sensor_show, ptr @enable_sensor_store }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enable_sensor\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@set_power_report_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set power state failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_power_report_state\00", [41 x i8] zeroinitializer }, align 32
@set_power_report_state._entry_ptr = internal global ptr @set_power_report_state._entry, section ".printk_index", align 4
@set_power_report_state._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set report state failed\0A\00", [39 x i8] zeroinitializer }, align 32
@set_power_report_state._entry_ptr.30 = internal global ptr @set_power_report_state._entry.28, section ".printk_index", align 4
@hid_custom_attrs = internal constant { [8 x %struct.attribute], [32 x i8] } { [8 x %struct.attribute] [%struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, %struct.attribute zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@hid_sensor_custom_add_attributes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"feature-%x-%x\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"input-%x-%x\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"units\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unit-expo\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"minimum\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maximum\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"feature-%x-%x-%s\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"input-%x-%x-%s\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld \00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hid_custom_usage_desc_table = internal constant { [59 x %struct.hid_custom_usage_desc], [104 x i8] } { [59 x %struct.hid_custom_usage_desc] [%struct.hid_custom_usage_desc { i32 2097665, ptr @.str.48 }, %struct.hid_custom_usage_desc { i32 2097666, ptr @.str.49 }, %struct.hid_custom_usage_desc { i32 2097921, ptr @.str.50 }, %struct.hid_custom_usage_desc { i32 2097922, ptr @.str.51 }, %struct.hid_custom_usage_desc { i32 2097923, ptr @.str.52 }, %struct.hid_custom_usage_desc { i32 2097924, ptr @.str.53 }, %struct.hid_custom_usage_desc { i32 2097925, ptr @.str.54 }, %struct.hid_custom_usage_desc { i32 2097926, ptr @.str.55 }, %struct.hid_custom_usage_desc { i32 2097927, ptr @.str.56 }, %struct.hid_custom_usage_desc { i32 2097928, ptr @.str.57 }, %struct.hid_custom_usage_desc { i32 2097929, ptr @.str.58 }, %struct.hid_custom_usage_desc { i32 2097930, ptr @.str.59 }, %struct.hid_custom_usage_desc { i32 2097931, ptr @.str.60 }, %struct.hid_custom_usage_desc { i32 2097932, ptr @.str.61 }, %struct.hid_custom_usage_desc { i32 2097933, ptr @.str.62 }, %struct.hid_custom_usage_desc { i32 2097934, ptr @.str.63 }, %struct.hid_custom_usage_desc { i32 2097935, ptr @.str.64 }, %struct.hid_custom_usage_desc { i32 2097936, ptr @.str.65 }, %struct.hid_custom_usage_desc { i32 2097937, ptr @.str.66 }, %struct.hid_custom_usage_desc { i32 2097938, ptr @.str.67 }, %struct.hid_custom_usage_desc { i32 2097939, ptr @.str.68 }, %struct.hid_custom_usage_desc { i32 2097940, ptr @.str.69 }, %struct.hid_custom_usage_desc { i32 2097941, ptr @.str.70 }, %struct.hid_custom_usage_desc { i32 2097942, ptr @.str.71 }, %struct.hid_custom_usage_desc { i32 2097943, ptr @.str.72 }, %struct.hid_custom_usage_desc { i32 2097944, ptr @.str.73 }, %struct.hid_custom_usage_desc { i32 2097945, ptr @.str.74 }, %struct.hid_custom_usage_desc { i32 2098496, ptr @.str.75 }, %struct.hid_custom_usage_desc { i32 2098497, ptr @.str.76 }, %struct.hid_custom_usage_desc { i32 2098498, ptr @.str.77 }, %struct.hid_custom_usage_desc { i32 2098499, ptr @.str.78 }, %struct.hid_custom_usage_desc { i32 2098500, ptr @.str.79 }, %struct.hid_custom_usage_desc { i32 2098501, ptr @.str.80 }, %struct.hid_custom_usage_desc { i32 2098502, ptr @.str.81 }, %struct.hid_custom_usage_desc { i32 2098503, ptr @.str.82 }, %struct.hid_custom_usage_desc { i32 2098504, ptr @.str.83 }, %struct.hid_custom_usage_desc { i32 2098505, ptr @.str.84 }, %struct.hid_custom_usage_desc { i32 2098506, ptr @.str.85 }, %struct.hid_custom_usage_desc { i32 2098507, ptr @.str.86 }, %struct.hid_custom_usage_desc { i32 2098508, ptr @.str.87 }, %struct.hid_custom_usage_desc { i32 2098509, ptr @.str.88 }, %struct.hid_custom_usage_desc { i32 2098510, ptr @.str.89 }, %struct.hid_custom_usage_desc { i32 2098511, ptr @.str.90 }, %struct.hid_custom_usage_desc { i32 2098512, ptr @.str.91 }, %struct.hid_custom_usage_desc { i32 2098513, ptr @.str.92 }, %struct.hid_custom_usage_desc { i32 2098514, ptr @.str.93 }, %struct.hid_custom_usage_desc { i32 2098515, ptr @.str.94 }, %struct.hid_custom_usage_desc { i32 2098516, ptr @.str.95 }, %struct.hid_custom_usage_desc { i32 2098517, ptr @.str.96 }, %struct.hid_custom_usage_desc { i32 2098518, ptr @.str.97 }, %struct.hid_custom_usage_desc { i32 2098519, ptr @.str.98 }, %struct.hid_custom_usage_desc { i32 2098520, ptr @.str.99 }, %struct.hid_custom_usage_desc { i32 2098521, ptr @.str.100 }, %struct.hid_custom_usage_desc { i32 2098522, ptr @.str.101 }, %struct.hid_custom_usage_desc { i32 2098523, ptr @.str.102 }, %struct.hid_custom_usage_desc { i32 2098524, ptr @.str.103 }, %struct.hid_custom_usage_desc { i32 2098525, ptr @.str.104 }, %struct.hid_custom_usage_desc { i32 2098526, ptr @.str.105 }, %struct.hid_custom_usage_desc { i32 2098527, ptr @.str.106 }], [104 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"not-specified\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event-sensor-state\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event-sensor-event\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"property-friendly-name\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"property-persistent-unique-id\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"property-sensor-status\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"property-min-report-interval\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"property-sensor-manufacturer\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"property-sensor-model\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"property-sensor-serial-number\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"property-sensor-description\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"property-sensor-connection-type\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"property-sensor-device-path\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"property-hardware-revision\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"property-firmware-version\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"property-release-date\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"property-report-interval\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"property-change-sensitivity-absolute\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"property-change-sensitivity-percent-range\00", [54 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"property-change-sensitivity-percent-relative\00", [51 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"property-accuracy\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"property-resolution\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"property-maximum\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"property-minimum\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"property-reporting-state\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"property-sampling-rate\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"property-response-curve\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"property-power-state\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data-field-custom\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data-field-custom-usage\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"data-field-custom-boolean-array\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data-field-custom-value\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_1\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_2\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_3\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_4\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_5\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_6\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_7\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_8\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"data-field-custom-value_9\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_10\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_11\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_12\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_13\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_14\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_15\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_16\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_17\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_18\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_19\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_20\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_21\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_22\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_23\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_24\00", [37 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_25\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_26\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_27\00", [37 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data-field-custom-value_28\00", [37 x i8] zeroinitializer }, align 32
@hid_sensor_custom_dev_if_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sensor_inst->wait\00", [45 x i8] zeroinitializer }, align 32
@hid_sensor_custom_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @hid_sensor_custom_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hid_sensor_custom_poll, ptr null, ptr null, ptr null, i32 0, ptr @hid_sensor_custom_open, ptr null, ptr @hid_sensor_custom_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 2097942, i64 2097945]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@___asan_gen_.110 = private unnamed_addr constant [34 x i8] c"hid_sensor_custom_platform_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 969, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 972, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"hid_sensor_custom_ids\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 958, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 888, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 898, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 909, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [25 x i8] c"enable_sensor_attr_group\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 272, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 425, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 429, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"w_buf\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 775, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 776, i32 14 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 794, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 805, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 822, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 832, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 754, i32 50 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 860, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c"enable_sensor_attrs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 267, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant [23 x i8] c"dev_attr_enable_sensor\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 265, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 157, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 206, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 221, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"hid_custom_attrs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 65, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 590, i32 30 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 593, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 507, i32 39 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 513, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 66, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 67, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 68, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 69, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 70, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 71, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 72, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 287, i32 30 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 291, i32 37 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 321, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 343, i32 7 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 345, i32 49 }
@___asan_gen_.278 = private unnamed_addr constant [28 x i8] c"hid_custom_usage_desc_table\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 79, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 374, i32 36 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 377, i32 24 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 80, i32 13 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 81, i32 13 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 82, i32 13 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 83, i32 13 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 84, i32 13 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 85, i32 13 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 86, i32 13 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 87, i32 13 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 88, i32 13 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 89, i32 13 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 90, i32 13 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 91, i32 13 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 92, i32 13 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 93, i32 13 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 94, i32 13 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 95, i32 13 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 96, i32 13 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 97, i32 13 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 98, i32 13 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 99, i32 13 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 100, i32 13 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 101, i32 13 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 102, i32 13 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 103, i32 13 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 104, i32 13 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 105, i32 13 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 106, i32 13 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 107, i32 13 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 108, i32 13 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 109, i32 13 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 110, i32 13 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 111, i32 13 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 112, i32 13 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 113, i32 13 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 114, i32 13 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 115, i32 13 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 116, i32 13 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 117, i32 13 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 118, i32 13 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 119, i32 13 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 120, i32 13 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 121, i32 13 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 122, i32 13 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 123, i32 13 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 124, i32 13 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 125, i32 13 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 126, i32 13 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 127, i32 13 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 128, i32 13 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 129, i32 13 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 130, i32 13 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 131, i32 13 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 132, i32 13 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 133, i32 13 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 134, i32 13 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 135, i32 13 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 136, i32 13 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 137, i32 13 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 138, i32 13 }
@___asan_gen_.464 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 731, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [23 x i8] c"hid_sensor_custom_fops\00", align 1
@___asan_gen_.471 = private constant [35 x i8] c"../drivers/hid/hid-sensor-custom.c\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 714, i32 37 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_hid_sensor_custom_platform_driver_exit, ptr @__initcall__kmod_hid_sensor_custom__229_977_hid_sensor_custom_platform_driver_init6, ptr @get_known_custom_sensor_index._entry, ptr @get_known_custom_sensor_index._entry.16, ptr @get_known_custom_sensor_index._entry.19, ptr @get_known_custom_sensor_index._entry_ptr, ptr @get_known_custom_sensor_index._entry_ptr.18, ptr @get_known_custom_sensor_index._entry_ptr.21, ptr @hid_sensor_capture_sample._entry, ptr @hid_sensor_capture_sample._entry_ptr, ptr @hid_sensor_custom_platform_driver_exit, ptr @hid_sensor_custom_probe._entry, ptr @hid_sensor_custom_probe._entry.7, ptr @hid_sensor_custom_probe._entry_ptr, ptr @hid_sensor_custom_probe._entry_ptr.9, ptr @set_power_report_state._entry, ptr @set_power_report_state._entry.28, ptr @set_power_report_state._entry_ptr, ptr @set_power_report_state._entry_ptr.30, ptr @hid_sensor_custom_platform_driver, ptr @.str, ptr @hid_sensor_custom_ids, ptr @hid_sensor_custom_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @enable_sensor_attr_group, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @get_known_custom_sensor_index.w_buf, ptr @get_known_custom_sensor_index.buf, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @enable_sensor_attrs, ptr @dev_attr_enable_sensor, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @hid_custom_attrs, ptr @.str.31, ptr @hid_sensor_custom_add_attributes.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @hid_custom_usage_desc_table, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @hid_sensor_custom_dev_if_add.__key, ptr @.str.107, ptr @hid_sensor_custom_fops], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_sensor_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_capture_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_known_custom_sensor_index.w_buf to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_known_custom_sensor_index.buf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_known_custom_sensor_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_known_custom_sensor_index._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_known_custom_sensor_index._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_sensor_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable_sensor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_power_report_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_power_report_state._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_custom_attrs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_add_attributes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_custom_usage_desc_table to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_dev_if_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_custom_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_custom_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hid_sensor_custom_platform_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_sensor_custom_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @hid_sensor_custom_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_custom_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %real_usage.i = alloca [5 x i8], align 4
  %sensor_manufacturer.i = alloca %struct.hid_sensor_hub_attribute_info, align 4
  %sensor_luid_info.i = alloca %struct.hid_sensor_hub_attribute_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %callbacks = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 3
  %capture_sample = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %capture_sample to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hid_sensor_capture_sample, ptr %capture_sample, align 4
  %send_event = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %send_event to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hid_sensor_send_event, ptr %send_event, align 4
  %4 = ptrtoint ptr %callbacks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %callbacks, align 4
  %hsdev5 = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %hsdev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %hsdev5, align 4
  %pdev6 = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev6, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @hid_sensor_custom_probe.__key) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %sensor_manufacturer.i) #11
  %8 = call ptr @memset(ptr %sensor_manufacturer.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %sensor_luid_info.i) #11
  %9 = call ptr @memset(ptr %sensor_luid_info.i, i32 0, i32 36)
  %10 = call ptr @memset(ptr @get_known_custom_sensor_index.w_buf, i32 0, i32 128)
  %11 = call ptr @memset(ptr @get_known_custom_sensor_index.buf, i32 0, i32 64)
  %usage.i = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usage.i, align 4
  %call.i89 = call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %13, i32 noundef 2097925, ptr noundef nonnull %sensor_manufacturer.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i = icmp slt i32 %call.i89, 0
  br i1 %cmp.i, label %if.end.if.end20_crit_edge, label %if.end.i

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end.i:                                         ; preds = %if.end
  %report_id.i = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, ptr %sensor_manufacturer.i, i32 0, i32 2
  %14 = ptrtoint ptr %report_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %report_id.i, align 4
  %index.i = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, ptr %sensor_manufacturer.i, i32 0, i32 3
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  %call1.i = call i32 @sensor_hub_get_feature(ptr noundef %1, i32 noundef %15, i32 noundef %17, i32 noundef 128, ptr noundef nonnull @get_known_custom_sensor_index.w_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 1
  br i1 %cmp2.i, label %do.end.i, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call1.i) #14
  br label %if.end20

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %i.087.i = phi i32 [ %inc.i, %for.body.i.land.rhs.i_crit_edge ], [ 0, %if.end.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x i16], ptr @get_known_custom_sensor_index.w_buf, i32 0, i32 %i.087.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %conv7.i = trunc i16 %21 to i8
  %arrayidx8.i = getelementptr [64 x i8], ptr @get_known_custom_sensor_index.buf, i32 0, i32 %i.087.i
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 63
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @get_known_custom_sensor_index.buf, ptr noundef nonnull dereferenceable(5) @.str.15, i32 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool10.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.end.i.if.end20_crit_edge

for.end.i.if.end20_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end12.i:                                       ; preds = %for.end.i
  %23 = call ptr @memset(ptr @get_known_custom_sensor_index.w_buf, i32 0, i32 128)
  %24 = call ptr @memset(ptr @get_known_custom_sensor_index.buf, i32 0, i32 64)
  %25 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usage.i, align 4
  %call14.i = call i32 @sensor_hub_input_get_attribute_info(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %26, i32 noundef 2097927, ptr noundef nonnull %sensor_luid_info.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.if.end20_crit_edge, label %if.end18.i

if.end12.i.if.end20_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end18.i:                                       ; preds = %if.end12.i
  %report_id19.i = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, ptr %sensor_luid_info.i, i32 0, i32 2
  %27 = ptrtoint ptr %report_id19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %report_id19.i, align 4
  %index20.i = getelementptr inbounds %struct.hid_sensor_hub_attribute_info, ptr %sensor_luid_info.i, i32 0, i32 3
  %29 = ptrtoint ptr %index20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index20.i, align 4
  %call21.i = call i32 @sensor_hub_get_feature(ptr noundef %1, i32 noundef %28, i32 noundef %30, i32 noundef 128, ptr noundef nonnull @get_known_custom_sensor_index.w_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 1
  br i1 %cmp22.i, label %do.end27.i, label %if.end18.i.land.rhs34.i_crit_edge

if.end18.i.land.rhs34.i_crit_edge:                ; preds = %if.end18.i
  br label %land.rhs34.i

do.end27.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev29.i = getelementptr inbounds %struct.hid_device, ptr %32, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.17, i32 noundef %call21.i) #14
  br label %if.end20

land.rhs34.i:                                     ; preds = %for.body39.i.land.rhs34.i_crit_edge, %if.end18.i.land.rhs34.i_crit_edge
  %i.188.i = phi i32 [ %inc44.i, %for.body39.i.land.rhs34.i_crit_edge ], [ 0, %if.end18.i.land.rhs34.i_crit_edge ]
  %arrayidx35.i = getelementptr [64 x i16], ptr @get_known_custom_sensor_index.w_buf, i32 0, i32 %i.188.i
  %33 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx35.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool37.not.i = icmp eq i16 %34, 0
  br i1 %tobool37.not.i, label %land.rhs34.i.for.end45.i_crit_edge, label %for.body39.i

land.rhs34.i.for.end45.i_crit_edge:               ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45.i

for.body39.i:                                     ; preds = %land.rhs34.i
  %conv41.i = trunc i16 %34 to i8
  %arrayidx42.i = getelementptr [64 x i8], ptr @get_known_custom_sensor_index.buf, i32 0, i32 %i.188.i
  %35 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv41.i, ptr %arrayidx42.i, align 1
  %inc44.i = add nuw nsw i32 %i.188.i, 1
  %exitcond89.not.i = icmp eq i32 %inc44.i, 63
  br i1 %exitcond89.not.i, label %for.body39.i.for.end45.i_crit_edge, label %for.body39.i.land.rhs34.i_crit_edge

for.body39.i.land.rhs34.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs34.i

for.body39.i.for.end45.i_crit_edge:               ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45.i

for.end45.i:                                      ; preds = %for.body39.i.for.end45.i_crit_edge, %land.rhs34.i.for.end45.i_crit_edge
  %call46.i = call i32 @strlen(ptr noundef nonnull @get_known_custom_sensor_index.buf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call46.i)
  %cmp48.not.i = icmp eq i32 %call46.i, 21
  br i1 %cmp48.not.i, label %if.end58.i, label %do.end53.i

do.end53.i:                                       ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %dev55.i = getelementptr inbounds %struct.hid_device, ptr %37, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14, i32 noundef %call46.i, i32 noundef 16) #14
  br label %if.end20

if.end58.i:                                       ; preds = %for.end45.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) getelementptr inbounds ([64 x i8], ptr @get_known_custom_sensor_index.buf, i32 0, i32 5), ptr noundef nonnull dereferenceable(16) @.str.22, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then9, label %if.end58.i.if.end20_crit_edge

if.end58.i.if.end20_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then9:                                         ; preds = %if.end58.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sensor_luid_info.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sensor_manufacturer.i) #11
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %real_usage.i) #11
  %38 = getelementptr inbounds i8, ptr %real_usage.i, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %38, align 4
  %40 = ptrtoint ptr %real_usage.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 808595522, ptr %real_usage.i, align 4
  br label %for.body.i90

for.body.i90:                                     ; preds = %for.body.i90.for.body.i90_crit_edge, %if.then9
  %c.01.i = phi ptr [ %real_usage.i, %if.then9 ], [ %incdec.ptr.i, %for.body.i90.for.body.i90_crit_edge ]
  %41 = phi i8 [ 48, %if.then9 ], [ %.pr.i, %for.body.i90.for.body.i90_crit_edge ]
  %conv.i.i = zext i8 %41 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp.not.i.i = icmp eq i8 %44, 0
  %sub.i.i = add i8 %41, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %41, i8 %sub.i.i
  %45 = ptrtoint ptr %c.01.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select.i.i, ptr %c.01.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %c.01.i, i32 1
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr.i = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp.not.i, label %for.end.i92, label %for.body.i90.for.body.i90_crit_edge

for.body.i90.for.body.i90_crit_edge:              ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i90

for.end.i92:                                      ; preds = %for.body.i90
  %call4.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.23, ptr noundef nonnull %real_usage.i) #11
  %tobool.not.i91 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i91, label %hid_sensor_register_platform_device.exit.thread, label %hid_sensor_register_platform_device.exit

hid_sensor_register_platform_device.exit.thread:  ; preds = %for.end.i92
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %real_usage.i) #11
  %custom_pdev137 = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 17
  %47 = ptrtoint ptr %custom_pdev137 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -12 to ptr), ptr %custom_pdev137, align 4
  br label %do.end17

hid_sensor_register_platform_device.exit:         ; preds = %for.end.i92
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #11
  %50 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %51 = call ptr @memset(ptr %50, i32 255, i32 48)
  %52 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %50, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call4.i, ptr %name2.i.i.i, align 4
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %1, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %59 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 104, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %60 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %61 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #11
  call void @kfree(ptr noundef nonnull %call4.i) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %real_usage.i) #11
  %custom_pdev = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 17
  %62 = ptrtoint ptr %custom_pdev to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i.i, ptr %custom_pdev, align 4
  %cmp.i.i.not = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %hid_sensor_register_platform_device.exit.do.end17_crit_edge, label %hid_sensor_register_platform_device.exit.cleanup_crit_edge

hid_sensor_register_platform_device.exit.cleanup_crit_edge: ; preds = %hid_sensor_register_platform_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hid_sensor_register_platform_device.exit.do.end17_crit_edge: ; preds = %hid_sensor_register_platform_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.end17:                                         ; preds = %hid_sensor_register_platform_device.exit.do.end17_crit_edge, %hid_sensor_register_platform_device.exit.thread
  %retval.0.i94139 = phi ptr [ inttoptr (i32 -12 to ptr), %hid_sensor_register_platform_device.exit.thread ], [ %call.i.i.i, %hid_sensor_register_platform_device.exit.do.end17_crit_edge ]
  %63 = ptrtoint ptr %retval.0.i94139 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end58.i.if.end20_crit_edge, %do.end53.i, %do.end27.i, %if.end12.i.if.end20_crit_edge, %for.end.i.if.end20_crit_edge, %do.end.i, %if.end.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sensor_luid_info.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %sensor_manufacturer.i) #11
  %64 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usage.i, align 4
  %call22 = call i32 @sensor_hub_register_callback(ptr noundef %1, i32 noundef %65, ptr noundef %callbacks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %66 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev6, align 4
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  %call32 = call i32 @sysfs_create_group(ptr noundef %dev31, ptr noundef nonnull @enable_sensor_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.err_remove_callback_crit_edge

if.end29.err_remove_callback_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_callback

if.end35:                                         ; preds = %if.end29
  %68 = ptrtoint ptr %hsdev5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hsdev5, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %fields1.i.i.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 5
  %sensor_field_count.i.i.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 4
  %input_field_count.i.i.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 6
  %input_report_size.i.i.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 7
  br label %for.body.i95

for.cond6.preheader.i:                            ; preds = %for.inc.i
  %72 = ptrtoint ptr %sensor_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sensor_field_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp7160.i = icmp sgt i32 %73, 0
  br i1 %cmp7160.i, label %while.cond.preheader.lr.ph.i, label %hid_sensor_custom_add_attributes.exit

while.cond.preheader.lr.ph.i:                     ; preds = %for.cond6.preheader.i
  %report_state.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 12
  %power_state.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 11
  br label %while.cond.preheader.i

for.body.i95:                                     ; preds = %for.inc.i.for.body.i95_crit_edge, %if.end35
  %j.0156.i = phi i32 [ 0, %if.end35 ], [ %inc.i101, %for.inc.i.for.body.i95_crit_edge ]
  %ret.0155.i = phi i32 [ -1, %if.end35 ], [ %ret.1.i, %for.inc.i.for.body.i95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.0156.i)
  %cmp3.i = icmp eq i32 %j.0156.i, 1
  br i1 %cmp3.i, label %for.body.i95.for.inc.i_crit_edge, label %if.end.i96

for.body.i95.for.inc.i_crit_edge:                 ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i96:                                       ; preds = %for.body.i95
  %report_list.i.i = getelementptr %struct.hid_device, ptr %71, i32 0, i32 15, i32 %j.0156.i, i32 1
  %74 = ptrtoint ptr %report_list.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %report.048.i.i = load ptr, ptr %report_list.i.i, align 4
  %cmp.not49.i.i = icmp eq ptr %report.048.i.i, %report_list.i.i
  br i1 %cmp.not49.i.i, label %if.end.i96.for.inc.i_crit_edge, label %for.cond3.preheader.lr.ph.i.i

if.end.i96.for.inc.i_crit_edge:                   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.cond3.preheader.lr.ph.i.i:                    ; preds = %if.end.i96
  %75 = ptrtoint ptr %hsdev5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hsdev5, align 4
  %start_collection_index.i.i = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %76, i32 0, i32 4
  %end_collection_index.i.i = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %76, i32 0, i32 5
  br label %for.cond3.preheader.i.i

for.cond.loopexit.i.i:                            ; preds = %for.inc.i.i.for.cond.loopexit.i.i_crit_edge, %for.cond3.preheader.i.i.for.cond.loopexit.i.i_crit_edge
  %77 = ptrtoint ptr %report.050.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %report.0.i.i = load ptr, ptr %report.050.i.i, align 4
  %cmp.not.i.i97 = icmp eq ptr %report.0.i.i, %report_list.i.i
  br i1 %cmp.not.i.i97, label %for.cond.loopexit.i.i.for.inc.i_crit_edge, label %for.cond.loopexit.i.i.for.cond3.preheader.i.i_crit_edge

for.cond.loopexit.i.i.for.cond3.preheader.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i.i

for.cond.loopexit.i.i.for.inc.i_crit_edge:        ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.cond3.preheader.i.i:                          ; preds = %for.cond.loopexit.i.i.for.cond3.preheader.i.i_crit_edge, %for.cond3.preheader.lr.ph.i.i
  %report.050.i.i = phi ptr [ %report.048.i.i, %for.cond3.preheader.lr.ph.i.i ], [ %report.0.i.i, %for.cond.loopexit.i.i.for.cond3.preheader.i.i_crit_edge ]
  %maxfield.i.i = getelementptr inbounds %struct.hid_report, ptr %report.050.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %maxfield.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp444.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp444.not.i.i, label %for.cond3.preheader.i.i.for.cond.loopexit.i.i_crit_edge, label %for.body5.lr.ph.i.i

for.cond3.preheader.i.i.for.cond.loopexit.i.i_crit_edge: ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i.i

for.body5.lr.ph.i.i:                              ; preds = %for.cond3.preheader.i.i
  %id.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report.050.i.i, i32 0, i32 2
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.inc.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %i.045.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body5.i.i_crit_edge ]
  %arrayidx.i.i98 = getelementptr %struct.hid_report, ptr %report.050.i.i, i32 0, i32 5, i32 %i.045.i.i
  %80 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i98, align 4
  %maxusage.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %maxusage.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %maxusage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i99 = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i99, label %for.body5.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body5.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body5.i.i
  %usage.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 3
  %84 = ptrtoint ptr %usage.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usage.i.i, align 4
  %collection_index.i.i = getelementptr inbounds %struct.hid_usage, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %collection_index.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %collection_index.i.i, align 4
  %88 = ptrtoint ptr %start_collection_index.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %start_collection_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp8.not.i.i = icmp ult i32 %87, %89
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %90 = ptrtoint ptr %end_collection_index.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %end_collection_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %91)
  %cmp13.i.i = icmp ult i32 %87, %91
  br i1 %cmp13.i.i, label %if.then.i.i, label %land.lhs.true9.i.i.for.inc.i.i_crit_edge

land.lhs.true9.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  %92 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fields1.i.i.i, align 4
  %94 = ptrtoint ptr %sensor_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sensor_field_count.i.i.i, align 4
  %96 = mul i32 %95, 1152
  %mul.i.i.i = add i32 %96, 1152
  %call.i.i.i100 = call noalias ptr @krealloc(ptr noundef %93, i32 noundef %mul.i.i.i, i32 noundef 3264) #16
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i100, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.err_remove_group.sink.split_crit_edge, label %if.end.i.i.i

if.then.i.i.err_remove_group.sink.split_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_group.sink.split

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %97 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i.i.i100, ptr %fields1.i.i.i, align 4
  %98 = ptrtoint ptr %sensor_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sensor_field_count.i.i.i, align 4
  %100 = ptrtoint ptr %hsdev5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hsdev5, align 4
  %usage.i.i.i = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %usage.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %usage.i.i.i, align 4
  %attribute.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2
  %104 = ptrtoint ptr %attribute.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %attribute.i.i.i, align 4
  %logical.i.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 1
  %105 = ptrtoint ptr %logical.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %logical.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool6.not.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool6.not.i.i.i, label %if.else.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %usage.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %usage.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.else.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ %110, %if.else.i.i.i ], [ %106, %if.end.i.i.i.if.end14.i.i.i_crit_edge ]
  %111 = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink.i.i.i, ptr %111, align 4
  %index16.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 3
  %113 = ptrtoint ptr %index16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %i.045.i.i, ptr %index16.i.i.i, align 4
  %114 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %id.i.i.i, align 4
  %report_id.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 2
  %116 = ptrtoint ptr %report_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %report_id.i.i.i, align 4
  %unit.i.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 16
  %117 = ptrtoint ptr %unit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %unit.i.i.i, align 4
  %units.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 4
  %119 = ptrtoint ptr %units.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %units.i.i.i, align 4
  %unit_exponent.i.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 15
  %120 = ptrtoint ptr %unit_exponent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %unit_exponent.i.i.i, align 4
  %unit_expo.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 5
  %122 = ptrtoint ptr %unit_expo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %unit_expo.i.i.i, align 4
  %report_size.i.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 7
  %123 = ptrtoint ptr %report_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %report_size.i.i.i, align 4
  %div86.i.i.i = lshr i32 %124, 3
  %size.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 6
  %125 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %div86.i.i.i, ptr %size.i.i.i, align 4
  %logical_minimum.i.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 11
  %126 = ptrtoint ptr %logical_minimum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %logical_minimum.i.i.i, align 4
  %logical_minimum22.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 7
  %128 = ptrtoint ptr %logical_minimum22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %logical_minimum22.i.i.i, align 4
  %logical_maximum.i.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 12
  %129 = ptrtoint ptr %logical_maximum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %logical_maximum.i.i.i, align 4
  %logical_maximum24.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 2, i32 8
  %131 = ptrtoint ptr %logical_maximum24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %logical_maximum24.i.i.i, align 4
  %132 = zext i32 %j.0156.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values)
  switch i32 %j.0156.i, label %if.end14.i.i.i.hid_sensor_custom_add_field.exit.thread.i.i_crit_edge [
    i32 2, label %if.then25.i.i.i
    i32 0, label %if.then33.i.i.i
  ]

if.end14.i.i.i.hid_sensor_custom_add_field.exit.thread.i.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_sensor_custom_add_field.exit.thread.i.i

if.then25.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %group_name.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 1
  %call30.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %group_name.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.32, i32 noundef %i.045.i.i, i32 noundef %.sink.i.i.i) #11
  br label %hid_sensor_custom_add_field.exit.thread.i.i

if.then33.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %group_name34.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 1
  %call40.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %group_name34.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %i.045.i.i, i32 noundef %.sink.i.i.i) #11
  %133 = ptrtoint ptr %input_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %input_field_count.i.i.i, align 4
  %inc.i.i.i = add i32 %134, 1
  store i32 %inc.i.i.i, ptr %input_field_count.i.i.i, align 4
  %135 = ptrtoint ptr %report_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %report_size.i.i.i, align 4
  %report_count.i.i.i = getelementptr inbounds %struct.hid_field, ptr %81, i32 0, i32 8
  %137 = ptrtoint ptr %report_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %report_count.i.i.i, align 4
  %mul42.i.i.i = mul i32 %138, %136
  %div4387.i.i.i = lshr i32 %mul42.i.i.i, 3
  %139 = ptrtoint ptr %input_report_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %input_report_size.i.i.i, align 4
  %add44.i.i.i = add i32 %div4387.i.i.i, %140
  store i32 %add44.i.i.i, ptr %input_report_size.i.i.i, align 4
  br label %hid_sensor_custom_add_field.exit.thread.i.i

hid_sensor_custom_add_field.exit.thread.i.i:      ; preds = %if.then33.i.i.i, %if.then25.i.i.i, %if.end14.i.i.i.hid_sensor_custom_add_field.exit.thread.i.i_crit_edge
  %hid_custom_attribute_group.i.i.i = getelementptr %struct.hid_sensor_custom_field, ptr %call.i.i.i100, i32 %99, i32 6
  %141 = call ptr @memset(ptr %hid_custom_attribute_group.i.i.i, i32 0, i32 20)
  %142 = ptrtoint ptr %sensor_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sensor_field_count.i.i.i, align 4
  %inc48.i.i.i = add i32 %143, 1
  store i32 %inc48.i.i.i, ptr %sensor_field_count.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %hid_sensor_custom_add_field.exit.thread.i.i, %land.lhs.true9.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body5.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.045.i.i, 1
  %144 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %maxfield.i.i, align 4
  %cmp4.i.i = icmp ult i32 %inc.i.i, %145
  br i1 %cmp4.i.i, label %for.inc.i.i.for.body5.i.i_crit_edge, label %for.inc.i.i.for.cond.loopexit.i.i_crit_edge

for.inc.i.i.for.cond.loopexit.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i.i

for.inc.i.i.for.body5.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i.i

for.inc.i:                                        ; preds = %for.cond.loopexit.i.i.for.inc.i_crit_edge, %if.end.i96.for.inc.i_crit_edge, %for.body.i95.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0155.i, %for.body.i95.for.inc.i_crit_edge ], [ 0, %if.end.i96.for.inc.i_crit_edge ], [ 0, %for.cond.loopexit.i.i.for.inc.i_crit_edge ]
  %inc.i101 = add nuw nsw i32 %j.0156.i, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, 3
  br i1 %exitcond.not.i102, label %for.cond6.preheader.i, label %for.inc.i.for.body.i95_crit_edge

for.inc.i.for.body.i95_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i95

while.cond.preheader.i:                           ; preds = %for.inc85.i.while.cond.preheader.i_crit_edge, %while.cond.preheader.lr.ph.i
  %i.0161.i = phi i32 [ 0, %while.cond.preheader.lr.ph.i ], [ %inc86.i, %for.inc85.i.while.cond.preheader.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end35.i, %while.cond.preheader.i
  %j.1158.i134 = phi i32 [ 0, %while.cond.preheader.i ], [ %inc40.i, %if.end35.i ]
  %arrayidx10.i = getelementptr [8 x %struct.attribute], ptr @hid_custom_attrs, i32 0, i32 %j.1158.i134
  %146 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx10.i, align 4
  %148 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fields1.i.i.i, align 4
  %arrayidx13.i = getelementptr %struct.hid_sensor_custom_field, ptr %149, i32 %i.0161.i, i32 3, i32 %j.1158.i134
  %arrayidx16.i = getelementptr %struct.hid_sensor_custom_field, ptr %149, i32 %i.0161.i, i32 4, i32 %j.1158.i134
  %group_name.i = getelementptr %struct.hid_sensor_custom_field, ptr %149, i32 %i.0161.i, i32 1
  %call21.i104 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx16.i, i32 noundef 64, ptr noundef nonnull @.str.31, ptr noundef %group_name.i, ptr noundef nonnull %147) #11
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx13.i, i32 0, i32 3
  %150 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @hid_sensor_custom_add_attributes.__key, ptr %key.i, align 4
  %151 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fields1.i.i.i, align 4
  %arrayidx25.i = getelementptr %struct.hid_sensor_custom_field, ptr %152, i32 %i.0161.i, i32 4, i32 %j.1158.i134
  %153 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %arrayidx25.i, ptr %arrayidx13.i, align 4
  %mode.i = getelementptr [8 x %struct.attribute], ptr @hid_custom_attrs, i32 0, i32 %j.1158.i134, i32 1
  %154 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %mode.i, align 4
  %mode30.i = getelementptr inbounds %struct.attribute, ptr %arrayidx13.i, i32 0, i32 1
  %156 = ptrtoint ptr %mode30.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %mode30.i, align 4
  %show.i = getelementptr %struct.hid_sensor_custom_field, ptr %149, i32 %i.0161.i, i32 3, i32 %j.1158.i134, i32 1
  %157 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @show_value, ptr %show.i, align 4
  %tobool33.not.not.i = icmp eq i32 %j.1158.i134, 6
  br i1 %tobool33.not.not.i, label %while.end.i, label %if.end35.i

if.end35.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %fields1.i.i.i, align 4
  %arrayidx39.i = getelementptr %struct.hid_sensor_custom_field, ptr %159, i32 %i.0161.i, i32 5, i32 %j.1158.i134
  %160 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %arrayidx13.i, ptr %arrayidx39.i, align 4
  %inc40.i = add nuw nsw i32 %j.1158.i134, 1
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %store.i = getelementptr %struct.hid_sensor_custom_field, ptr %149, i32 %i.0161.i, i32 3, i32 6, i32 2
  %161 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @store_value, ptr %store.i, align 4
  %162 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fields1.i.i.i, align 4
  %arrayidx39.i140 = getelementptr %struct.hid_sensor_custom_field, ptr %163, i32 %i.0161.i, i32 5, i32 %j.1158.i134
  %164 = ptrtoint ptr %arrayidx39.i140 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %arrayidx13.i, ptr %arrayidx39.i140, align 4
  %165 = load ptr, ptr %fields1.i.i.i, align 4
  %arrayidx44.i = getelementptr %struct.hid_sensor_custom_field, ptr %165, i32 %i.0161.i, i32 5, i32 7
  %166 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %arrayidx44.i, align 4
  %167 = load ptr, ptr %fields1.i.i.i, align 4
  %attrs47.i = getelementptr %struct.hid_sensor_custom_field, ptr %167, i32 %i.0161.i, i32 5
  %attrs51.i = getelementptr %struct.hid_sensor_custom_field, ptr %167, i32 %i.0161.i, i32 6, i32 3
  %168 = ptrtoint ptr %attrs51.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %attrs47.i, ptr %attrs51.i, align 4
  %169 = load ptr, ptr %fields1.i.i.i, align 4
  %group_name54.i = getelementptr %struct.hid_sensor_custom_field, ptr %169, i32 %i.0161.i, i32 1
  %hid_custom_attribute_group58.i = getelementptr %struct.hid_sensor_custom_field, ptr %169, i32 %i.0161.i, i32 6
  %170 = ptrtoint ptr %hid_custom_attribute_group58.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %group_name54.i, ptr %hid_custom_attribute_group58.i, align 4
  %171 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pdev6, align 4
  %dev.i105 = getelementptr inbounds %struct.platform_device, ptr %172, i32 0, i32 3
  %173 = load ptr, ptr %fields1.i.i.i, align 4
  %hid_custom_attribute_group62.i = getelementptr %struct.hid_sensor_custom_field, ptr %173, i32 %i.0161.i, i32 6
  %call63.i = call i32 @sysfs_create_group(ptr noundef %dev.i105, ptr noundef %hid_custom_attribute_group62.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %while.end.i.err_remove_group_crit_edge

while.end.i.err_remove_group_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_group

if.end66.i:                                       ; preds = %while.end.i
  %174 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fields1.i.i.i, align 4
  %arrayidx68.i = getelementptr %struct.hid_sensor_custom_field, ptr %175, i32 %i.0161.i
  %attrib_id.i = getelementptr %struct.hid_sensor_custom_field, ptr %175, i32 %i.0161.i, i32 2, i32 1
  %176 = ptrtoint ptr %attrib_id.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %attrib_id.i, align 4
  %178 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %177, label %if.end66.i.for.inc85.i_crit_edge [
    i32 2097945, label %if.end66.i.for.inc85.sink.split.i_crit_edge
    i32 2097942, label %if.then80.i
  ]

if.end66.i.for.inc85.sink.split.i_crit_edge:      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc85.sink.split.i

if.end66.i.for.inc85.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc85.i

if.then80.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc85.sink.split.i

for.inc85.sink.split.i:                           ; preds = %if.then80.i, %if.end66.i.for.inc85.sink.split.i_crit_edge
  %power_state.sink.i = phi ptr [ %report_state.i, %if.then80.i ], [ %power_state.i, %if.end66.i.for.inc85.sink.split.i_crit_edge ]
  %179 = ptrtoint ptr %power_state.sink.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %arrayidx68.i, ptr %power_state.sink.i, align 4
  br label %for.inc85.i

for.inc85.i:                                      ; preds = %for.inc85.sink.split.i, %if.end66.i.for.inc85.i_crit_edge
  %inc86.i = add nuw nsw i32 %i.0161.i, 1
  %180 = ptrtoint ptr %sensor_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %sensor_field_count.i.i.i, align 4
  %cmp7.i = icmp slt i32 %inc86.i, %181
  br i1 %cmp7.i, label %for.inc85.i.while.cond.preheader.i_crit_edge, label %for.inc85.i.if.end39_crit_edge

for.inc85.i.if.end39_crit_edge:                   ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

for.inc85.i.while.cond.preheader.i_crit_edge:     ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

hid_sensor_custom_add_attributes.exit:            ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool37.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool37.not, label %hid_sensor_custom_add_attributes.exit.if.end39_crit_edge, label %hid_sensor_custom_add_attributes.exit.err_remove_group_crit_edge

hid_sensor_custom_add_attributes.exit.err_remove_group_crit_edge: ; preds = %hid_sensor_custom_add_attributes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_group

hid_sensor_custom_add_attributes.exit.if.end39_crit_edge: ; preds = %hid_sensor_custom_add_attributes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %hid_sensor_custom_add_attributes.exit.if.end39_crit_edge, %for.inc85.i.if.end39_crit_edge
  %data_fifo.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 14
  %call.i107 = call i32 @__kfifo_alloc(ptr noundef %data_fifo.i, i32 noundef 4096, i32 noundef 1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %do.body.i, label %if.end39.err_remove_attributes_crit_edge

if.end39.err_remove_attributes_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_attributes

do.body.i:                                        ; preds = %if.end39
  %wait.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 16
  call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @hid_sensor_custom_dev_if_add.__key) #11
  %custom_dev.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 13
  %182 = ptrtoint ptr %custom_dev.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 255, ptr %custom_dev.i, align 4
  %183 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pdev6, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %184, i32 0, i32 3, i32 3
  %185 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i110 = icmp eq ptr %186, null
  br i1 %tobool.not.i.i110, label %if.end.i.i, label %do.body.i.dev_name.exit.i_crit_edge

do.body.i.dev_name.exit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i111 = getelementptr inbounds %struct.platform_device, ptr %184, i32 0, i32 3
  %187 = ptrtoint ptr %dev.i111 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i111, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i112 = phi ptr [ %188, %if.end.i.i ], [ %186, %do.body.i.dev_name.exit.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 13, i32 1
  %189 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %retval.0.i.i112, ptr %name.i, align 4
  %fops.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %call.i, i32 0, i32 13, i32 2
  %190 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @hid_sensor_custom_fops, ptr %fops.i, align 4
  %call6.i = call i32 @misc_register(ptr noundef %custom_dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %dev_name.exit.i.cleanup_crit_edge, label %if.then8.i

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__kfifo_free(ptr noundef %data_fifo.i) #11
  br label %err_remove_attributes

err_remove_attributes:                            ; preds = %if.then8.i, %if.end39.err_remove_attributes_crit_edge
  %retval.0.i113.ph = phi i32 [ %call.i107, %if.end39.err_remove_attributes_crit_edge ], [ %call6.i, %if.then8.i ]
  %191 = ptrtoint ptr %sensor_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sensor_field_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp7.i114 = icmp sgt i32 %192, 0
  br i1 %cmp7.i114, label %err_remove_attributes.for.body.i119_crit_edge, label %err_remove_attributes.err_remove_group.sink.split_crit_edge

err_remove_attributes.err_remove_group.sink.split_crit_edge: ; preds = %err_remove_attributes
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_group.sink.split

err_remove_attributes.for.body.i119_crit_edge:    ; preds = %err_remove_attributes
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.body.i119.for.body.i119_crit_edge, %err_remove_attributes.for.body.i119_crit_edge
  %i.08.i = phi i32 [ %inc.i117, %for.body.i119.for.body.i119_crit_edge ], [ 0, %err_remove_attributes.for.body.i119_crit_edge ]
  %193 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev6, align 4
  %dev.i116 = getelementptr inbounds %struct.platform_device, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %fields1.i.i.i, align 4
  %hid_custom_attribute_group.i = getelementptr %struct.hid_sensor_custom_field, ptr %196, i32 %i.08.i, i32 6
  call void @sysfs_remove_group(ptr noundef %dev.i116, ptr noundef %hid_custom_attribute_group.i) #11
  %inc.i117 = add nuw nsw i32 %i.08.i, 1
  %197 = ptrtoint ptr %sensor_field_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sensor_field_count.i.i.i, align 4
  %cmp.i118 = icmp slt i32 %inc.i117, %198
  br i1 %cmp.i118, label %for.body.i119.for.body.i119_crit_edge, label %for.body.i119.err_remove_group.sink.split_crit_edge

for.body.i119.err_remove_group.sink.split_crit_edge: ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_group.sink.split

for.body.i119.for.body.i119_crit_edge:            ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i119

err_remove_group.sink.split:                      ; preds = %for.body.i119.err_remove_group.sink.split_crit_edge, %err_remove_attributes.err_remove_group.sink.split_crit_edge, %if.then.i.i.err_remove_group.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %retval.0.i113.ph, %err_remove_attributes.err_remove_group.sink.split_crit_edge ], [ %retval.0.i113.ph, %for.body.i119.err_remove_group.sink.split_crit_edge ], [ -12, %if.then.i.i.err_remove_group.sink.split_crit_edge ]
  %199 = ptrtoint ptr %fields1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %fields1.i.i.i, align 4
  call void @kfree(ptr noundef %200) #11
  br label %err_remove_group

err_remove_group:                                 ; preds = %err_remove_group.sink.split, %hid_sensor_custom_add_attributes.exit.err_remove_group_crit_edge, %while.end.i.err_remove_group_crit_edge
  %ret.0 = phi i32 [ %ret.1.i, %hid_sensor_custom_add_attributes.exit.err_remove_group_crit_edge ], [ %ret.0.ph, %err_remove_group.sink.split ], [ %call63.i, %while.end.i.err_remove_group_crit_edge ]
  %201 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pdev6, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %202, i32 0, i32 3
  call void @sysfs_remove_group(ptr noundef %dev45, ptr noundef nonnull @enable_sensor_attr_group) #11
  br label %err_remove_callback

err_remove_callback:                              ; preds = %err_remove_group, %if.end29.err_remove_callback_crit_edge
  %ret.1 = phi i32 [ %call32, %if.end29.err_remove_callback_crit_edge ], [ %ret.0, %err_remove_group ]
  %203 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %usage.i, align 4
  %call48 = call i32 @sensor_hub_remove_callback(ptr noundef %1, i32 noundef %204) #11
  br label %cleanup

cleanup:                                          ; preds = %err_remove_callback, %dev_name.exit.i.cleanup_crit_edge, %do.end27, %do.end17, %hid_sensor_register_platform_device.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %63, %do.end17 ], [ %call22, %do.end27 ], [ %ret.1, %err_remove_callback ], [ -12, %entry.cleanup_crit_edge ], [ 0, %hid_sensor_register_platform_device.exit.cleanup_crit_edge ], [ 0, %dev_name.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_custom_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %custom_pdev = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %custom_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %custom_pdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %wait.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %custom_dev.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 13
  tail call void @misc_deregister(ptr noundef %custom_dev.i) #11
  %data_fifo.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 14
  tail call void @__kfifo_free(ptr noundef %data_fifo.i) #11
  %sensor_field_count.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sensor_field_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_field_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i = icmp sgt i32 %7, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %if.end.hid_sensor_custom_remove_attributes.exit_crit_edge

if.end.hid_sensor_custom_remove_attributes.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_sensor_custom_remove_attributes.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 1
  %fields.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fields.i, align 4
  %hid_custom_attribute_group.i = getelementptr %struct.hid_sensor_custom_field, ptr %11, i32 %i.08.i, i32 6
  tail call void @sysfs_remove_group(ptr noundef %dev.i, ptr noundef %hid_custom_attribute_group.i) #11
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %12 = ptrtoint ptr %sensor_field_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensor_field_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.hid_sensor_custom_remove_attributes.exit_crit_edge

for.body.i.hid_sensor_custom_remove_attributes.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_sensor_custom_remove_attributes.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

hid_sensor_custom_remove_attributes.exit:         ; preds = %for.body.i.hid_sensor_custom_remove_attributes.exit_crit_edge, %if.end.hid_sensor_custom_remove_attributes.exit_crit_edge
  %fields1.i = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %fields1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fields1.i, align 4
  tail call void @kfree(ptr noundef %15) #11
  %pdev2 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev3, ptr noundef nonnull @enable_sensor_attr_group) #11
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usage, align 4
  %call4 = tail call i32 @sensor_hub_remove_callback(ptr noundef %5, i32 noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %hid_sensor_custom_remove_attributes.exit, %if.then
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_capture_sample(ptr nocapture noundef readonly %hsdev, i32 noundef %usage_id, i32 noundef %raw_len, ptr noundef %raw_data, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %header = alloca %struct.hid_sensor_sample, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header) #11
  %2 = getelementptr inbounds %struct.hid_sensor_sample, ptr %header, i32 0, i32 1
  %3 = getelementptr inbounds %struct.hid_sensor_sample, ptr %header, i32 0, i32 2
  %input_skip_sample = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 9
  %4 = call ptr @memset(ptr %header, i32 255, i32 16)
  %5 = ptrtoint ptr %input_skip_sample to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %input_skip_sample, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hsdev1 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %hsdev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hsdev1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_sensor_capture_sample.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_sensor_capture_sample, %if.then7)) #11
          to label %do.end13 [label %if.then7], !srcloc !255

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %hsdev8 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %hsdev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsdev8, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  %input_report_recd_size = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %input_report_recd_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %input_report_recd_size, align 4
  %add = add i32 %16, %raw_len
  %input_report_size = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %input_report_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %input_report_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_sensor_capture_sample.__UNIQUE_ID_ddebug228, ptr noundef %dev10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %18) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %do.body2
  %misc_opened = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %misc_opened to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %misc_opened, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool15.not = icmp eq i32 %and1.i, 0
  br i1 %tobool15.not, label %do.end13.cleanup_crit_edge, label %if.end17

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %do.end13
  %input_report_recd_size18 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %input_report_recd_size18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %input_report_recd_size18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end39_crit_edge

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then20:                                        ; preds = %if.end17
  %input_report_size21 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %input_report_size21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %input_report_size21, align 4
  %add22 = add i32 %24, 16
  %usage = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %hsdev, i32 0, i32 3
  %25 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usage, align 4
  %27 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %header, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %24, ptr %3, align 4
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %call.i.i, ptr %2, align 4
  %data_fifo = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 14
  %mask = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 4
  %32 = ptrtoint ptr %data_fifo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_fifo, align 4
  %out = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out, align 4
  %sub.neg = add i32 %31, 1
  %add27 = sub i32 %sub.neg, %33
  %sub29 = add i32 %add27, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29, i32 %add22)
  %cmp.not = icmp ult i32 %sub29, %add22
  br i1 %cmp.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = call i32 @__kfifo_in(ptr noundef %data_fifo, ptr noundef nonnull %header, i32 noundef 16) #11
  br label %if.end39

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %input_skip_sample to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %input_skip_sample, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then32, %if.end17.if.end39_crit_edge
  %data_fifo41 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 14
  %mask44 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %mask44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask44, align 4
  %39 = ptrtoint ptr %data_fifo41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_fifo41, align 4
  %out49 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %out49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %out49, align 4
  %sub50.neg = add i32 %38, 1
  %add45 = sub i32 %sub50.neg, %40
  %sub51 = add i32 %add45, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub51, i32 %raw_len)
  %cmp54.not = icmp ult i32 %sub51, %raw_len
  br i1 %cmp54.not, label %if.end39.if.end64_crit_edge, label %if.then55

if.end39.if.end64_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then55:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = call i32 @__kfifo_in(ptr noundef %data_fifo41, ptr noundef %raw_data, i32 noundef %raw_len) #11
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %if.end39.if.end64_crit_edge
  %43 = ptrtoint ptr %input_report_recd_size18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %input_report_recd_size18, align 4
  %add66 = add i32 %44, %raw_len
  store i32 %add66, ptr %input_report_recd_size18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end13.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_send_event(ptr nocapture noundef readnone %hsdev, i32 noundef %usage_id, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %misc_opened = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %misc_opened to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %misc_opened, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %input_report_recd_size = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %input_report_recd_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %input_report_recd_size, align 4
  %input_skip_sample = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %input_skip_sample to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %input_skip_sample, align 4
  %wait = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_remove_callback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_get_attribute_info(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_get_feature(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_sensor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enable = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 1, !range !254
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_sensor_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !256
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #11
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %enable16 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %enable16 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable16, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool17.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool17.not, label %if.then3, label %land.lhs.true.unlock_state.thread_crit_edge

land.lhs.true.unlock_state.thread_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_state.thread

if.then3:                                         ; preds = %land.lhs.true
  %hsdev = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %hsdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hsdev, align 4
  %call4 = call i32 @sensor_hub_device_open(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.unlock_state_crit_edge

if.then3.unlock_state_crit_edge:                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_state

if.end7:                                          ; preds = %if.then3
  %call8 = call fastcc i32 @set_power_report_state(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %unlock_state.thread46, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %hsdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsdev, align 4
  call void @sensor_hub_device_close(ptr noundef %10) #11
  br label %unlock_state

unlock_state.thread46:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %enable16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %enable16, align 1
  call void @mutex_unlock(ptr noundef %1) #11
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end
  br i1 %tobool17.not, label %land.lhs.true15.unlock_state.thread_crit_edge, label %if.then18

land.lhs.true15.unlock_state.thread_crit_edge:    ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_state.thread

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = call fastcc i32 @set_power_report_state(ptr noundef %1, i1 noundef zeroext false)
  %hsdev20 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %hsdev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsdev20, align 4
  call void @sensor_hub_device_close(ptr noundef %13) #11
  %14 = ptrtoint ptr %enable16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enable16, align 1
  br label %unlock_state

unlock_state.thread:                              ; preds = %land.lhs.true15.unlock_state.thread_crit_edge, %land.lhs.true.unlock_state.thread_crit_edge
  call void @mutex_unlock(ptr noundef %1) #11
  br label %15

unlock_state:                                     ; preds = %if.then18, %if.then10, %if.then3.unlock_state_crit_edge
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ %call4, %if.then3.unlock_state_crit_edge ], [ %call8, %if.then10 ]
  call void @mutex_unlock(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp25 = icmp slt i32 %ret.0, 0
  br i1 %cmp25, label %unlock_state._crit_edge, label %unlock_state.cleanup_crit_edge

unlock_state.cleanup_crit_edge:                   ; preds = %unlock_state
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

unlock_state._crit_edge:                          ; preds = %unlock_state
  call void @__sanitizer_cov_trace_pc() #13
  br label %15

15:                                               ; preds = %unlock_state._crit_edge, %unlock_state.thread
  %ret.045 = phi i32 [ -22, %unlock_state.thread ], [ %ret.0, %unlock_state._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %15, %unlock_state.cleanup_crit_edge, %unlock_state.thread46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.045, %15 ], [ %count, %unlock_state.cleanup_crit_edge ], [ %count, %unlock_state.thread46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_power_report_state(ptr nocapture noundef readonly %sensor_inst, i1 noundef zeroext %state) unnamed_addr #2 align 64 {
entry:
  %power_val = alloca i32, align 4
  %report_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power_val) #11
  %0 = ptrtoint ptr %power_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %power_val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %report_val) #11
  %1 = ptrtoint ptr %report_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %report_val, align 4
  %.85 = select i1 %state, i32 2099265, i32 2099264
  %power_state = getelementptr inbounds %struct.hid_sensor_custom, ptr %sensor_inst, i32 0, i32 11
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_state, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %entry.if.end6_crit_edge, label %if.then2

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %state, i32 2099281, i32 2099285
  %hsdev = getelementptr inbounds %struct.hid_sensor_custom, ptr %sensor_inst, i32 0, i32 2
  %4 = ptrtoint ptr %hsdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsdev, align 4
  %report_id = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report_id, align 4
  %index = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %3, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %call = tail call i32 @hid_sensor_get_usage_index(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %.) #11
  %10 = ptrtoint ptr %power_val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %power_val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %entry.if.end6_crit_edge
  %report_state = getelementptr inbounds %struct.hid_sensor_custom, ptr %sensor_inst, i32 0, i32 12
  %11 = ptrtoint ptr %report_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %report_state, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end6.if.end17_crit_edge, label %if.then8

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %hsdev9 = getelementptr inbounds %struct.hid_sensor_custom, ptr %sensor_inst, i32 0, i32 2
  %13 = ptrtoint ptr %hsdev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsdev9, align 4
  %report_id12 = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %12, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %report_id12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %report_id12, align 4
  %index15 = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %12, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %index15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index15, align 4
  %call16 = tail call i32 @hid_sensor_get_usage_index(ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %.85) #11
  %19 = ptrtoint ptr %report_val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call16, ptr %report_val, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.end6.if.end17_crit_edge
  %20 = ptrtoint ptr %power_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %power_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp = icmp sgt i32 %21, -1
  br i1 %cmp, label %if.then18, label %if.end17.if.end33_crit_edge

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then18:                                        ; preds = %if.end17
  %22 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %power_state, align 4
  %logical_minimum = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %23, i32 0, i32 2, i32 7
  %24 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %logical_minimum, align 4
  %add = add i32 %25, %21
  %26 = ptrtoint ptr %power_val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %power_val, align 4
  %hsdev21 = getelementptr inbounds %struct.hid_sensor_custom, ptr %sensor_inst, i32 0, i32 2
  %27 = ptrtoint ptr %hsdev21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hsdev21, align 4
  %report_id24 = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %23, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %report_id24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %report_id24, align 4
  %index27 = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %23, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %index27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index27, align 4
  %call28 = call i32 @sensor_hub_set_feature(ptr noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef 4, ptr noundef nonnull %power_val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then18.if.end33_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then18.if.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33:                                         ; preds = %if.then18.if.end33_crit_edge, %if.end17.if.end33_crit_edge
  %33 = ptrtoint ptr %report_val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %report_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp34 = icmp sgt i32 %34, -1
  br i1 %cmp34, label %if.then35, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  %35 = ptrtoint ptr %report_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %report_state, align 4
  %logical_minimum38 = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %36, i32 0, i32 2, i32 7
  %37 = ptrtoint ptr %logical_minimum38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %logical_minimum38, align 4
  %add39 = add i32 %38, %34
  %39 = ptrtoint ptr %report_val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add39, ptr %report_val, align 4
  %hsdev40 = getelementptr inbounds %struct.hid_sensor_custom, ptr %sensor_inst, i32 0, i32 2
  %40 = ptrtoint ptr %hsdev40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hsdev40, align 4
  %report_id43 = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %36, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %report_id43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %report_id43, align 4
  %index46 = getelementptr inbounds %struct.hid_sensor_custom_field, ptr %36, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %index46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index46, align 4
  %call47 = call i32 @sensor_hub_set_feature(ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef 4, ptr noundef nonnull %report_val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then35.cleanup_crit_edge, label %if.then35.cleanup.sink.split_crit_edge

if.then35.cleanup.sink.split_crit_edge:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then35.cleanup.sink.split_crit_edge, %if.then18.cleanup.sink.split_crit_edge
  %hsdev40.sink = phi ptr [ %hsdev21, %if.then18.cleanup.sink.split_crit_edge ], [ %hsdev40, %if.then35.cleanup.sink.split_crit_edge ]
  %.str.29.sink = phi ptr [ @.str.26, %if.then18.cleanup.sink.split_crit_edge ], [ @.str.29, %if.then35.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call28, %if.then18.cleanup.sink.split_crit_edge ], [ %call47, %if.then35.cleanup.sink.split_crit_edge ]
  %46 = ptrtoint ptr %hsdev40.sink to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hsdev40.sink, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %dev55 = getelementptr inbounds %struct.hid_device, ptr %49, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull %.str.29.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then35.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then35.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %report_val) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power_val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sensor_hub_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_get_usage_index(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_set_feature(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_value(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %index = alloca i32, align 4
  %usage = alloca i32, align 4
  %name = alloca [64 x i8], align 1
  %values = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usage) #11
  %3 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %usage, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #11
  %4 = call ptr @memset(ptr %name, i32 255, i32 64)
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr, align 4
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %6, ptr noundef nonnull @.str.41, ptr noundef nonnull %index, ptr noundef nonnull %usage, ptr noundef nonnull %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp = icmp eq i32 %call3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %input_field_count = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %input_field_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input_field_count, align 4
  %add = add i32 %10, %8
  br label %if.end11

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr, align 4
  %call7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef nonnull %index, ptr noundef nonnull %usage, ptr noundef nonnull %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 3
  br i1 %cmp8, label %if.then9, label %if.else.cleanup133_crit_edge

if.else.cleanup133_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup133

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then
  %field_index.0 = phi i32 [ %add, %if.then ], [ %14, %if.then9 ]
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %name, ptr noundef nonnull dereferenceable(5) @.str.40, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then14, label %if.else72

if.then14:                                        ; preds = %if.end11
  %fields = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fields, align 4
  %report_id16 = getelementptr %struct.hid_sensor_custom_field, ptr %16, i32 %field_index.0, i32 2, i32 2
  %17 = ptrtoint ptr %report_id16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %report_id16, align 4
  br i1 %cmp, label %if.then18, label %cleanup70.thread

if.then18:                                        ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %values) #11
  %19 = call ptr @memset(ptr %values, i32 255, i32 64)
  %hsdev = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %hsdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hsdev, align 4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %call21 = call i32 @sensor_hub_get_feature(ptr noundef %21, i32 noundef %18, i32 noundef %23, i32 noundef 64, ptr noundef nonnull %values) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %cleanup70.thread199, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp25203.not = icmp eq i32 %call21, 0
  br i1 %cmp25203.not, label %while.cond.preheader.cleanup70_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup70_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup70

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %size = getelementptr %struct.hid_sensor_custom_field, ptr %16, i32 %field_index.0, i32 2, i32 6
  br label %while.body

cleanup70.thread199:                              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %values) #11
  br label %cleanup133

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %i.0205 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %sw.epilog.while.body_crit_edge ]
  %len.0204 = phi i32 [ 0, %while.body.lr.ph ], [ %add53, %sw.epilog.while.body_crit_edge ]
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %add26 = add i32 %25, %i.0205
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %call21)
  %cmp27 = icmp sgt i32 %add26, %call21
  br i1 %cmp27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx29 = getelementptr i8, ptr %buf, i32 %len.0204
  %sub = sub i32 4096, %len.0204
  %arrayidx30 = getelementptr [64 x i8], ptr %values, i32 0, i32 %i.0205
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx30, align 1
  %conv = zext i8 %27 to i32
  %call31 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx29, i32 noundef %sub, ptr noundef nonnull @.str.43, i32 noundef %conv) #11
  %add32 = add i32 %call31, %len.0204
  br label %cleanup70

if.end33:                                         ; preds = %while.body
  %28 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %25, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb39
    i32 8, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx35 = getelementptr [64 x i8], ptr %values, i32 0, i32 %i.0205
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx35, align 1
  %conv36 = zext i16 %30 to i64
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx40 = getelementptr [64 x i8], ptr %values, i32 0, i32 %i.0205
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx40, align 1
  %conv41 = zext i32 %32 to i64
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx45 = getelementptr [64 x i8], ptr %values, i32 0, i32 %i.0205
  %33 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %arrayidx45, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48 = getelementptr [64 x i8], ptr %values, i32 0, i32 %i.0205
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %36 to i64
  %inc = add nsw i32 %i.0205, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb44, %sw.bb39, %sw.bb
  %value19.0 = phi i64 [ %conv49, %sw.default ], [ %34, %sw.bb44 ], [ %conv41, %sw.bb39 ], [ %conv36, %sw.bb ]
  %i.1 = phi i32 [ %inc, %sw.default ], [ %add26, %sw.bb44 ], [ %add26, %sw.bb39 ], [ %add26, %sw.bb ]
  %arrayidx50 = getelementptr i8, ptr %buf, i32 %len.0204
  %sub51 = sub i32 4096, %len.0204
  %call52 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx50, i32 noundef %sub51, ptr noundef nonnull @.str.44, i64 noundef %value19.0) #11
  %add53 = add i32 %call52, %len.0204
  %cmp25 = icmp slt i32 %i.1, %call21
  br i1 %cmp25, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup70_crit_edge

sw.epilog.cleanup70_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup70

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup70.thread:                                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %hsdev64 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %hsdev64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hsdev64, align 4
  %usage66 = getelementptr inbounds %struct.hid_sensor_hub_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %usage66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usage66, align 4
  %41 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usage, align 4
  %call67 = call i32 @sensor_hub_input_attr_get_raw_value(ptr noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %18, i32 noundef 0, i1 noundef zeroext false) #11
  br label %if.end131

cleanup70:                                        ; preds = %sw.epilog.cleanup70_crit_edge, %if.then28, %while.cond.preheader.cleanup70_crit_edge
  %len.1 = phi i32 [ %add32, %if.then28 ], [ 0, %while.cond.preheader.cleanup70_crit_edge ], [ %add53, %sw.epilog.cleanup70_crit_edge ]
  %arrayidx54 = getelementptr i8, ptr %buf, i32 %len.1
  %sub55 = sub i32 4096, %len.1
  %call56 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx54, i32 noundef %sub55, ptr noundef nonnull @.str.45) #11
  %add57 = add i32 %call56, %len.1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %values) #11
  br label %cleanup133

if.else72:                                        ; preds = %if.end11
  %bcmp191 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %name, ptr noundef nonnull dereferenceable(5) @.str.35, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp191)
  %tobool75.not = icmp eq i32 %bcmp191, 0
  br i1 %tobool75.not, label %if.then76, label %if.else80

if.then76:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  %fields77 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %fields77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fields77, align 4
  %units = getelementptr %struct.hid_sensor_custom_field, ptr %44, i32 %field_index.0, i32 2, i32 4
  %45 = ptrtoint ptr %units to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %units, align 4
  br label %if.end131

if.else80:                                        ; preds = %if.else72
  %bcmp192 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %name, ptr noundef nonnull dereferenceable(9) @.str.36, i32 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp192)
  %tobool83.not = icmp eq i32 %bcmp192, 0
  br i1 %tobool83.not, label %if.then84, label %if.else88

if.then84:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #13
  %fields85 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %fields85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fields85, align 4
  %unit_expo = getelementptr %struct.hid_sensor_custom_field, ptr %48, i32 %field_index.0, i32 2, i32 5
  %49 = ptrtoint ptr %unit_expo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %unit_expo, align 4
  br label %if.end131

if.else88:                                        ; preds = %if.else80
  %bcmp193 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %name, ptr noundef nonnull dereferenceable(4) @.str.39, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp193)
  %tobool91.not = icmp eq i32 %bcmp193, 0
  br i1 %tobool91.not, label %if.then92, label %if.else97

if.then92:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #13
  %fields93 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %fields93 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fields93, align 4
  %size96 = getelementptr %struct.hid_sensor_custom_field, ptr %52, i32 %field_index.0, i32 2, i32 6
  %53 = ptrtoint ptr %size96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size96, align 4
  br label %if.end131

if.else97:                                        ; preds = %if.else88
  %bcmp194 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %name, ptr noundef nonnull dereferenceable(7) @.str.37, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp194)
  %tobool100.not = icmp eq i32 %bcmp194, 0
  br i1 %tobool100.not, label %if.then101, label %if.else105

if.then101:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #13
  %fields102 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %fields102 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fields102, align 4
  %logical_minimum = getelementptr %struct.hid_sensor_custom_field, ptr %56, i32 %field_index.0, i32 2, i32 7
  %57 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %logical_minimum, align 4
  br label %if.end131

if.else105:                                       ; preds = %if.else97
  %bcmp195 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %name, ptr noundef nonnull dereferenceable(7) @.str.38, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp195)
  %tobool108.not = icmp eq i32 %bcmp195, 0
  br i1 %tobool108.not, label %if.then109, label %if.else113

if.then109:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #13
  %fields110 = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %fields110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fields110, align 4
  %logical_maximum = getelementptr %struct.hid_sensor_custom_field, ptr %60, i32 %field_index.0, i32 2, i32 8
  %61 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %logical_maximum, align 4
  br label %if.end131

if.else113:                                       ; preds = %if.else105
  %bcmp196 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %name, ptr noundef nonnull dereferenceable(4) @.str.34, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp196)
  %tobool116.not = icmp eq i32 %bcmp196, 0
  br i1 %tobool116.not, label %if.then117, label %if.else113.cleanup133_crit_edge

if.else113.cleanup133_crit_edge:                  ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup133

if.then117:                                       ; preds = %if.else113
  %call118 = call ptr @bsearch(ptr noundef nonnull %usage, ptr noundef nonnull @hid_custom_usage_desc_table, i32 noundef 59, i32 noundef 8, ptr noundef nonnull @usage_id_cmp) #11
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %if.else122, label %if.then120

if.then120:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  %desc = getelementptr inbounds %struct.hid_custom_usage_desc, ptr %call118, i32 0, i32 1
  %63 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc, align 4
  %call121 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef %64)
  br label %cleanup133

if.else122:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  %65 = call ptr @memcpy(ptr %buf, ptr @.str.47, i32 15)
  br label %cleanup133

if.end131:                                        ; preds = %if.then109, %if.then101, %if.then92, %if.then84, %if.then76, %cleanup70.thread
  %value.2 = phi i32 [ %62, %if.then109 ], [ %58, %if.then101 ], [ %54, %if.then92 ], [ %50, %if.then84 ], [ %46, %if.then76 ], [ %call67, %cleanup70.thread ]
  %call132 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %value.2)
  br label %cleanup133

cleanup133:                                       ; preds = %if.end131, %if.else122, %if.then120, %if.else113.cleanup133_crit_edge, %cleanup70, %cleanup70.thread199, %if.else.cleanup133_crit_edge
  %retval.3 = phi i32 [ %call132, %if.end131 ], [ %add57, %cleanup70 ], [ -22, %if.else.cleanup133_crit_edge ], [ %call121, %if.then120 ], [ 14, %if.else122 ], [ -22, %if.else113.cleanup133_crit_edge ], [ %call21, %cleanup70.thread199 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usage) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_value(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %index = alloca i32, align 4
  %usage = alloca i32, align 4
  %name = alloca [64 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usage) #11
  %3 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %usage, align 4, !annotation !256
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #11
  %4 = call ptr @memset(ptr %name, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %value, align 4, !annotation !256
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef nonnull %index, ptr noundef nonnull %usage, ptr noundef nonnull %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp = icmp eq i32 %call3, 3
  br i1 %cmp, label %if.then, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %input_field_count = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %input_field_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_field_count, align 4
  %add = add i32 %11, %9
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %name, ptr noundef nonnull dereferenceable(5) @.str.40, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then6, label %if.then.cleanup18_crit_edge

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.then6:                                         ; preds = %if.then
  %call7 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %cleanup, label %if.then6.cleanup18_crit_edge

if.then6.cleanup18_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %fields = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fields, align 4
  %report_id11 = getelementptr %struct.hid_sensor_custom_field, ptr %13, i32 %add, i32 2, i32 2
  %14 = ptrtoint ptr %report_id11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %report_id11, align 4
  %hsdev = getelementptr inbounds %struct.hid_sensor_custom, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %hsdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsdev, align 4
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %call12 = call i32 @sensor_hub_set_feature(ptr noundef %17, i32 noundef %15, i32 noundef %19, i32 noundef 4, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.select = select i1 %tobool13.not, i32 %count, i32 %call12
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup, %if.then6.cleanup18_crit_edge, %if.then.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup18_crit_edge ], [ -22, %if.then.cleanup18_crit_edge ], [ -22, %if.then6.cleanup18_crit_edge ], [ %spec.select, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usage) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_input_attr_get_raw_value(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usage_id_cmp(ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p1, align 4
  %2 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp slt i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp1 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp1 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_custom_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_ps) #2 align 64 {
entry:
  %copied = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #11
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %copied, align 4, !annotation !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp = icmp ult i32 %count, 16
  br i1 %cmp, label %entry.cleanup53_crit_edge, label %do.body.preheader

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

do.body.preheader:                                ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %data_fifo = getelementptr i8, ptr %2, i32 40
  %out = getelementptr i8, ptr %2, i32 44
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait = getelementptr i8, ptr %2, i32 64
  br label %do.body

do.body:                                          ; preds = %do.cond49.do.body_crit_edge, %do.body.preheader
  %3 = ptrtoint ptr %data_fifo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_fifo, align 4
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp2 = icmp eq i32 %4, %6
  br i1 %cmp2, label %if.then3, label %do.body.if.end41_crit_edge

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then3:                                         ; preds = %do.body
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.then3.cleanup53_crit_edge

if.then3.cleanup53_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

if.end6:                                          ; preds = %if.then3
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 658) #11
  %9 = ptrtoint ptr %data_fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_fifo, align 4
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp16 = icmp eq i32 %10, %12
  br i1 %cmp16, label %if.then19, label %if.end6.if.end41_crit_edge

if.end6.if.end41_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then19:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call84 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %14 = ptrtoint ptr %data_fifo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_fifo, align 4
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp2685 = icmp eq i32 %15, %17
  br i1 %cmp2685, label %if.then19.if.end30_crit_edge, label %if.then19.if.end36.thread79_crit_edge

if.then19.if.end36.thread79_crit_edge:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.thread79

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  br label %if.end30

if.end30:                                         ; preds = %cleanup.if.end30_crit_edge, %if.then19.if.end30_crit_edge
  %call86 = phi i32 [ %call, %cleanup.if.end30_crit_edge ], [ %call84, %if.then19.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool31.not = icmp eq i32 %call86, 0
  br i1 %tobool31.not, label %cleanup, label %if.end36

cleanup:                                          ; preds = %if.end30
  call void @schedule() #11
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %18 = ptrtoint ptr %data_fifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_fifo, align 4
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  %cmp26 = icmp eq i32 %19, %21
  br i1 %cmp26, label %cleanup.if.end30_crit_edge, label %cleanup.if.end36.thread79_crit_edge

cleanup.if.end36.thread79_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.thread79

cleanup.if.end30_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end36.thread79:                                ; preds = %cleanup.if.end36.thread79_crit_edge, %if.then19.if.end36.thread79_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end41

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup53

if.end41:                                         ; preds = %if.end36.thread79, %if.end6.if.end41_crit_edge, %do.body.if.end41_crit_edge
  %call44 = call i32 @__kfifo_to_user(ptr noundef %data_fifo, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %copied) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool46.not = icmp eq i32 %call44, 0
  br i1 %tobool46.not, label %do.cond49, label %if.end41.cleanup53_crit_edge

if.end41.cleanup53_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

do.cond49:                                        ; preds = %if.end41
  %22 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %copied, align 4
  %cmp50 = icmp eq i32 %23, 0
  br i1 %cmp50, label %do.cond49.do.body_crit_edge, label %do.cond49.cleanup53_crit_edge

do.cond49.cleanup53_crit_edge:                    ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53

do.cond49.do.body_crit_edge:                      ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup53:                                        ; preds = %do.cond49.cleanup53_crit_edge, %if.end41.cleanup53_crit_edge, %if.end36, %if.then3.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup53_crit_edge ], [ %call86, %if.end36 ], [ %23, %do.cond49.cleanup53_crit_edge ], [ %call44, %if.end41.cleanup53_crit_edge ], [ -11, %if.then3.cleanup53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_custom_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait1 = getelementptr i8, ptr %1, i32 64
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %data_fifo = getelementptr i8, ptr %1, i32 40
  %4 = ptrtoint ptr %data_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_fifo, align 4
  %out = getelementptr i8, ptr %1, i32 44
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  %spec.select = select i1 %cmp, i32 0, i32 65
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_custom_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %misc_opened = getelementptr i8, ptr %1, i32 60
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %misc_opened) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_custom_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %misc_opened = getelementptr i8, ptr %1, i32 60
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %misc_opened) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !241, !243}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__initcall__kmod_hid_sensor_custom__229_977_hid_sensor_custom_platform_driver_init6, !1, !"__initcall__kmod_hid_sensor_custom__229_977_hid_sensor_custom_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-sensor-custom.c", i32 977, i32 1}
!2 = !{ptr @__exitcall_hid_sensor_custom_platform_driver_exit, !1, !"__exitcall_hid_sensor_custom_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-sensor-custom.c", i32 979, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-sensor-custom.c", i32 980, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-sensor-custom.c", i32 981, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-sensor-custom.c", i32 972, i32 11}
!12 = !{ptr @hid_sensor_custom_platform_driver, !13, !"hid_sensor_custom_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-sensor-custom.c", i32 969, i32 31}
!14 = !{ptr @hid_sensor_custom_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-sensor-custom.c", i32 888, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-sensor-custom.c", i32 898, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hid_sensor_custom_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @hid_sensor_custom_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-sensor-custom.c", i32 909, i32 3}
!27 = !{ptr @hid_sensor_custom_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hid_sensor_custom_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-sensor-custom.c", i32 425, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hid_sensor_capture_sample._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @hid_sensor_capture_sample._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-sensor-custom.c", i32 429, i32 2}
!36 = !{ptr @hid_sensor_capture_sample.__UNIQUE_ID_ddebug228, !35, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!37 = !{ptr @get_known_custom_sensor_index.w_buf, !38, !"w_buf", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-sensor-custom.c", i32 775, i32 13}
!39 = !{ptr @get_known_custom_sensor_index.buf, !40, !"buf", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-sensor-custom.c", i32 776, i32 14}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-sensor-custom.c", i32 794, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @get_known_custom_sensor_index._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @get_known_custom_sensor_index._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-sensor-custom.c", i32 805, i32 19}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-sensor-custom.c", i32 822, i32 3}
!50 = !{ptr @get_known_custom_sensor_index._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @get_known_custom_sensor_index._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-sensor-custom.c", i32 832, i32 3}
!54 = !{ptr @get_known_custom_sensor_index._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @get_known_custom_sensor_index._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-sensor-custom.c", i32 754, i32 50}
!58 = distinct !{null, !59, !"known_sensor_luid", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-sensor-custom.c", i32 754, i32 26}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-sensor-custom.c", i32 860, i32 35}
!62 = !{ptr @enable_sensor_attr_group, !63, !"enable_sensor_attr_group", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-sensor-custom.c", i32 272, i32 37}
!64 = !{ptr @enable_sensor_attrs, !65, !"enable_sensor_attrs", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-sensor-custom.c", i32 267, i32 26}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-sensor-custom.c", i32 265, i32 8}
!68 = !{ptr @dev_attr_enable_sensor, !67, !"dev_attr_enable_sensor", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-sensor-custom.c", i32 157, i32 22}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-sensor-custom.c", i32 206, i32 4}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @set_power_report_state._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @set_power_report_state._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-sensor-custom.c", i32 221, i32 4}
!78 = !{ptr @set_power_report_state._entry.28, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @set_power_report_state._entry_ptr.30, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-sensor-custom.c", i32 590, i32 30}
!82 = !{ptr @hid_sensor_custom_add_attributes.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-sensor-custom.c", i32 593, i32 4}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-sensor-custom.c", i32 507, i32 39}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-sensor-custom.c", i32 513, i32 5}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-sensor-custom.c", i32 66, i32 11}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-sensor-custom.c", i32 67, i32 11}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-sensor-custom.c", i32 68, i32 11}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-sensor-custom.c", i32 69, i32 11}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-sensor-custom.c", i32 70, i32 11}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-sensor-custom.c", i32 71, i32 11}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-sensor-custom.c", i32 72, i32 11}
!102 = !{ptr @hid_custom_attrs, !103, !"hid_custom_attrs", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-sensor-custom.c", i32 65, i32 25}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-sensor-custom.c", i32 287, i32 30}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-sensor-custom.c", i32 291, i32 37}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hid/hid-sensor-custom.c", i32 321, i32 8}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-sensor-custom.c", i32 343, i32 7}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hid/hid-sensor-custom.c", i32 345, i32 49}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hid/hid-sensor-custom.c", i32 374, i32 36}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/hid-sensor-custom.c", i32 377, i32 24}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hid/hid-sensor-custom.c", i32 80, i32 13}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hid/hid-sensor-custom.c", i32 81, i32 13}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hid/hid-sensor-custom.c", i32 82, i32 13}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hid/hid-sensor-custom.c", i32 83, i32 13}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hid/hid-sensor-custom.c", i32 84, i32 13}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-sensor-custom.c", i32 85, i32 13}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hid/hid-sensor-custom.c", i32 86, i32 13}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hid/hid-sensor-custom.c", i32 87, i32 13}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hid/hid-sensor-custom.c", i32 88, i32 13}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hid/hid-sensor-custom.c", i32 89, i32 13}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hid/hid-sensor-custom.c", i32 90, i32 13}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hid/hid-sensor-custom.c", i32 91, i32 13}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hid/hid-sensor-custom.c", i32 92, i32 13}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hid/hid-sensor-custom.c", i32 93, i32 13}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hid/hid-sensor-custom.c", i32 94, i32 13}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hid/hid-sensor-custom.c", i32 95, i32 13}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hid/hid-sensor-custom.c", i32 96, i32 13}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hid/hid-sensor-custom.c", i32 97, i32 13}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hid/hid-sensor-custom.c", i32 98, i32 13}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hid/hid-sensor-custom.c", i32 99, i32 13}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hid/hid-sensor-custom.c", i32 100, i32 13}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hid/hid-sensor-custom.c", i32 101, i32 13}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hid/hid-sensor-custom.c", i32 102, i32 13}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hid/hid-sensor-custom.c", i32 103, i32 13}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hid/hid-sensor-custom.c", i32 104, i32 13}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hid/hid-sensor-custom.c", i32 105, i32 13}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-sensor-custom.c", i32 106, i32 13}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hid/hid-sensor-custom.c", i32 107, i32 13}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-sensor-custom.c", i32 108, i32 13}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hid/hid-sensor-custom.c", i32 109, i32 13}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-sensor-custom.c", i32 110, i32 13}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hid/hid-sensor-custom.c", i32 111, i32 13}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/hid-sensor-custom.c", i32 112, i32 13}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hid/hid-sensor-custom.c", i32 113, i32 13}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hid/hid-sensor-custom.c", i32 114, i32 13}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hid/hid-sensor-custom.c", i32 115, i32 13}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hid/hid-sensor-custom.c", i32 116, i32 13}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hid/hid-sensor-custom.c", i32 117, i32 13}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hid/hid-sensor-custom.c", i32 118, i32 13}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hid/hid-sensor-custom.c", i32 119, i32 13}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hid/hid-sensor-custom.c", i32 120, i32 13}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hid/hid-sensor-custom.c", i32 121, i32 13}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hid/hid-sensor-custom.c", i32 122, i32 13}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hid/hid-sensor-custom.c", i32 123, i32 13}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hid/hid-sensor-custom.c", i32 124, i32 13}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hid/hid-sensor-custom.c", i32 125, i32 13}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hid/hid-sensor-custom.c", i32 126, i32 13}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hid/hid-sensor-custom.c", i32 127, i32 13}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hid/hid-sensor-custom.c", i32 128, i32 13}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hid/hid-sensor-custom.c", i32 129, i32 13}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hid/hid-sensor-custom.c", i32 130, i32 13}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hid/hid-sensor-custom.c", i32 131, i32 13}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hid/hid-sensor-custom.c", i32 132, i32 13}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hid/hid-sensor-custom.c", i32 133, i32 13}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hid/hid-sensor-custom.c", i32 134, i32 13}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hid/hid-sensor-custom.c", i32 135, i32 13}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hid/hid-sensor-custom.c", i32 136, i32 13}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hid/hid-sensor-custom.c", i32 137, i32 13}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hid/hid-sensor-custom.c", i32 138, i32 13}
!236 = !{ptr @hid_custom_usage_desc_table, !237, !"hid_custom_usage_desc_table", i1 false, i1 false}
!237 = !{!"../drivers/hid/hid-sensor-custom.c", i32 79, i32 3}
!238 = !{ptr @hid_sensor_custom_dev_if_add.__key, !239, !"__key", i1 false, i1 false}
!239 = !{!"../drivers/hid/hid-sensor-custom.c", i32 731, i32 2}
!240 = !{ptr @.str.107, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @hid_sensor_custom_fops, !242, !"hid_sensor_custom_fops", i1 false, i1 false}
!242 = !{!"../drivers/hid/hid-sensor-custom.c", i32 714, i32 37}
!243 = !{ptr @hid_sensor_custom_ids, !244, !"hid_sensor_custom_ids", i1 false, i1 false}
!244 = !{!"../drivers/hid/hid-sensor-custom.c", i32 958, i32 40}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{i8 0, i8 2}
!255 = !{i64 2148720242, i64 2148720247, i64 2148720260, i64 2148720304, i64 2148720338, i64 2148720359}
!256 = !{!"auto-init"}
