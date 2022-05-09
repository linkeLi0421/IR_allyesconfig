; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-ntrig.c_pt.bc'
source_filename = "../drivers/hid/hid-ntrig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.hid_usage_id = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ntrig_data = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__param_str_min_width = internal constant [20 x i8] c"hid_ntrig.min_width\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@min_width = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_min_width = internal constant %struct.kernel_param { ptr @__param_str_min_width, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @min_width } }, section "__param", align 4
@__UNIQUE_ID_min_widthtype232 = internal constant [34 x i8] c"hid_ntrig.parmtype=min_width:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_min_width233 = internal constant [64 x i8] c"hid_ntrig.parm=min_width:Minimum touch contact width to accept.\00", section ".modinfo", align 1
@__param_str_min_height = internal constant [21 x i8] c"hid_ntrig.min_height\00", align 1
@min_height = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_min_height = internal constant %struct.kernel_param { ptr @__param_str_min_height, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @min_height } }, section "__param", align 4
@__UNIQUE_ID_min_heighttype234 = internal constant [35 x i8] c"hid_ntrig.parmtype=min_height:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_min_height235 = internal constant [66 x i8] c"hid_ntrig.parm=min_height:Minimum touch contact height to accept.\00", section ".modinfo", align 1
@__param_str_activate_slack = internal constant [25 x i8] c"hid_ntrig.activate_slack\00", align 1
@activate_slack = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_activate_slack = internal constant %struct.kernel_param { ptr @__param_str_activate_slack, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @activate_slack } }, section "__param", align 4
@__UNIQUE_ID_activate_slacktype236 = internal constant [39 x i8] c"hid_ntrig.parmtype=activate_slack:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_activate_slack237 = internal constant [92 x i8] c"hid_ntrig.parm=activate_slack:Number of touch frames to ignore at the start of touch input.\00", section ".modinfo", align 1
@__param_str_deactivate_slack = internal constant [27 x i8] c"hid_ntrig.deactivate_slack\00", align 1
@deactivate_slack = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_deactivate_slack = internal constant %struct.kernel_param { ptr @__param_str_deactivate_slack, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @deactivate_slack } }, section "__param", align 4
@__UNIQUE_ID_deactivate_slacktype238 = internal constant [41 x i8] c"hid_ntrig.parmtype=deactivate_slack:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_deactivate_slack239 = internal constant [92 x i8] c"hid_ntrig.parm=deactivate_slack:Number of empty frames to ignore before deactivating touch.\00", section ".modinfo", align 1
@__param_str_activation_width = internal constant [27 x i8] c"hid_ntrig.activation_width\00", align 1
@activation_width = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_activation_width = internal constant %struct.kernel_param { ptr @__param_str_activation_width, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @activation_width } }, section "__param", align 4
@__UNIQUE_ID_activation_widthtype240 = internal constant [41 x i8] c"hid_ntrig.parmtype=activation_width:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_activation_width241 = internal constant [94 x i8] c"hid_ntrig.parm=activation_width:Width threshold to immediately start processing touch events.\00", section ".modinfo", align 1
@__param_str_activation_height = internal constant [28 x i8] c"hid_ntrig.activation_height\00", align 1
@activation_height = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_activation_height = internal constant %struct.kernel_param { ptr @__param_str_activation_height, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @activation_height } }, section "__param", align 4
@__UNIQUE_ID_activation_heighttype242 = internal constant [42 x i8] c"hid_ntrig.parmtype=activation_height:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_activation_height243 = internal constant [96 x i8] c"hid_ntrig.parm=activation_height:Height threshold to immediately start processing touch events.\00", section ".modinfo", align 1
@__initcall__kmod_hid_ntrig__244_1030_ntrig_driver_init6 = internal global ptr @ntrig_driver_init, section ".initcall6.init", align 4
@ntrig_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ntrig_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ntrig_probe, ptr @ntrig_remove, ptr null, ptr null, ptr @ntrig_grabbed_usages, ptr @ntrig_event, ptr null, ptr null, ptr @ntrig_input_mapping, ptr @ntrig_input_mapped, ptr @ntrig_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ntrig_driver_exit = internal global ptr @ntrig_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file245 = internal constant [37 x i8] c"hid_ntrig.file=drivers/hid/hid-ntrig\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [22 x i8] c"hid_ntrig.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid_ntrig\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ntrig\00", [26 x i8] zeroinitializer }, align 32
@ntrig_devices = internal constant { [20 x %struct.hid_device_id], [64 x i8] } { [20 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 7062, i32 1, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 3, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 4, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 5, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 6, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 7, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 8, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 9, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 10, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 11, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 12, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 13, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 14, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 15, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 16, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 17, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 18, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 19, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 20, i32 1 }, %struct.hid_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ntrig_grabbed_usages = internal constant { [2 x %struct.hid_usage_id], [40 x i8] } { [2 x %struct.hid_usage_id] [%struct.hid_usage_id { i32 -1, i32 -1, i32 -1 }, %struct.hid_usage_id { i32 -2, i32 -2, i32 -2 }], [40 x i8] zeroinitializer }, align 32
@ntrig_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 905, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot allocate N-Trig data\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ntrig_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-ntrig.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ntrig_probe._entry_ptr = internal global ptr @ntrig_probe._entry, section ".printk_index", align 4
@ntrig_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 924, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@ntrig_probe._entry_ptr.9 = internal global ptr @ntrig_probe._entry.7, section ".printk_index", align 4
@ntrig_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 930, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ntrig_probe._entry_ptr.12 = internal global ptr @ntrig_probe._entry.10, section ".printk_index", align 4
@ntrig_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ntrig_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 955, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot create sysfs group\0A\00", [37 x i8] zeroinitializer }, align 32
@ntrig_probe._entry_ptr.15 = internal global ptr @ntrig_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ntrig_report_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 161, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware version: %s (%02x%02x %02x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ntrig_report_version\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ntrig_report_version._entry_ptr = internal global ptr @ntrig_report_version._entry, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%u.%u.%u.%u.%u\00", [17 x i8] zeroinitializer }, align 32
@sysfs_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_sensor_physical_width, ptr @dev_attr_sensor_physical_height, ptr @dev_attr_sensor_logical_width, ptr @dev_attr_sensor_logical_height, ptr @dev_attr_min_height, ptr @dev_attr_min_width, ptr @dev_attr_activate_slack, ptr @dev_attr_activation_width, ptr @dev_attr_activation_height, ptr @dev_attr_deactivate_slack, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_sensor_physical_width = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_phys_width, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sensor_physical_height = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_phys_height, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sensor_logical_width = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_log_width, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sensor_logical_height = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_log_height, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min_height = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_min_height, ptr @set_min_height }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min_width = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_min_width, ptr @set_min_width }, [36 x i8] zeroinitializer }, align 32
@dev_attr_activate_slack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_activate_slack, ptr @set_activate_slack }, [36 x i8] zeroinitializer }, align 32
@dev_attr_activation_width = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_activation_width, ptr @set_activation_width }, [36 x i8] zeroinitializer }, align 32
@dev_attr_activation_height = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_activation_height, ptr @set_activation_height }, [36 x i8] zeroinitializer }, align 32
@dev_attr_deactivate_slack = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_deactivate_slack, ptr @set_deactivate_slack }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sensor_physical_width\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sensor_physical_height\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sensor_logical_width\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sensor_logical_height\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"min_height\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"min_width\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"activate_slack\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"activation_width\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"activation_height\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"deactivate_slack\00", [47 x i8] zeroinitializer }, align 32
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.hid_map_usage, ptr @.str.33, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"N-Trig Pen\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"N-Trig Touchscreen\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"N-Trig MultiTouch\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 65584, i64 65585, i64 852034, i64 852039, i64 852040, i64 852041, i64 852049, i64 852052, i64 4278190081, i64 4278190082]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 851968, i64 4278190080]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 65584, i64 65585]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 852040, i64 852041, i64 852049, i64 852050, i64 852051, i64 852053]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 851970, i64 851972]
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"min_width\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 23, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"min_height\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 27, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"activate_slack\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 31, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"deactivate_slack\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 36, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"activation_width\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 41, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"activation_height\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 46, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"ntrig_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1019, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1030, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1020, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"ntrig_devices\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 971, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"ntrig_grabbed_usages\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1014, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 905, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 924, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 930, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"ntrig_attribute_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 444, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 955, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 160, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 106, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"sysfs_attrs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 430, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"dev_attr_sensor_physical_width\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [32 x i8] c"dev_attr_sensor_physical_height\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"dev_attr_sensor_logical_width\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"dev_attr_sensor_logical_height\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"dev_attr_min_height\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"dev_attr_min_width\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"dev_attr_activate_slack\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [26 x i8] c"dev_attr_activation_width\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"dev_attr_activation_height\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"dev_attr_deactivate_slack\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 178, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 175, i32 22 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 190, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 202, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 214, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 284, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 249, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 317, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 353, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 389, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 427, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1036, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 869, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 885, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [27 x i8] c"../drivers/hid/hid-ntrig.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 886, i32 8 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_activate_slack237, ptr @__UNIQUE_ID_activate_slacktype236, ptr @__UNIQUE_ID_activation_height243, ptr @__UNIQUE_ID_activation_heighttype242, ptr @__UNIQUE_ID_activation_width241, ptr @__UNIQUE_ID_activation_widthtype240, ptr @__UNIQUE_ID_deactivate_slack239, ptr @__UNIQUE_ID_deactivate_slacktype238, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__UNIQUE_ID_min_height235, ptr @__UNIQUE_ID_min_heighttype234, ptr @__UNIQUE_ID_min_width233, ptr @__UNIQUE_ID_min_widthtype232, ptr @__exitcall_ntrig_driver_exit, ptr @__initcall__kmod_hid_ntrig__244_1030_ntrig_driver_init6, ptr @__param_activate_slack, ptr @__param_activation_height, ptr @__param_activation_width, ptr @__param_deactivate_slack, ptr @__param_min_height, ptr @__param_min_width, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @ntrig_driver_exit, ptr @ntrig_probe._entry, ptr @ntrig_probe._entry.10, ptr @ntrig_probe._entry.13, ptr @ntrig_probe._entry.7, ptr @ntrig_probe._entry_ptr, ptr @ntrig_probe._entry_ptr.12, ptr @ntrig_probe._entry_ptr.15, ptr @ntrig_probe._entry_ptr.9, ptr @ntrig_report_version._entry, ptr @ntrig_report_version._entry_ptr, ptr @min_width, ptr @min_height, ptr @activate_slack, ptr @deactivate_slack, ptr @activation_width, ptr @activation_height, ptr @ntrig_driver, ptr @.str, ptr @.str.1, ptr @ntrig_devices, ptr @ntrig_grabbed_usages, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @ntrig_attribute_group, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sysfs_attrs, ptr @dev_attr_sensor_physical_width, ptr @dev_attr_sensor_physical_height, ptr @dev_attr_sensor_logical_width, ptr @dev_attr_sensor_logical_height, ptr @dev_attr_min_height, ptr @dev_attr_min_width, ptr @dev_attr_activate_slack, ptr @dev_attr_activation_width, ptr @dev_attr_activation_height, ptr @dev_attr_deactivate_slack, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @hid_map_usage._rs, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_height to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activate_slack to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deactivate_slack to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activation_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activation_height to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_devices to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_grabbed_usages to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntrig_report_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sensor_physical_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sensor_physical_height to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sensor_logical_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sensor_logical_height to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min_height to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_activate_slack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_activation_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_activation_height to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_deactivate_slack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntrig_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ntrig_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ntrig_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hid_unregister_driver(ptr noundef nonnull @ntrig_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntrig_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %buf.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, 536870976
  store i32 %or, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 38) #13
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reading_mt = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 8
  %5 = ptrtoint ptr %reading_mt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %reading_mt, align 1
  %min_width = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 14
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %min_width, align 2
  %min_height = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 15
  %7 = ptrtoint ptr %min_height to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %min_height, align 8
  %8 = load i32, ptr @activate_slack, align 4
  %conv = trunc i32 %8 to i8
  %activate_slack = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 13
  %9 = ptrtoint ptr %activate_slack to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %activate_slack, align 1
  %act_state = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 11
  %10 = ptrtoint ptr %act_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %act_state, align 1
  %11 = load i32, ptr @deactivate_slack, align 4
  %12 = trunc i32 %11 to i8
  %conv5 = sub i8 0, %12
  %deactivate_slack = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 12
  %13 = ptrtoint ptr %deactivate_slack to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5, ptr %deactivate_slack, align 4
  %sensor_logical_width = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 18
  %14 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %sensor_logical_width, align 2
  %sensor_logical_height = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 19
  %15 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %sensor_logical_height, align 8
  %sensor_physical_width = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 20
  %16 = ptrtoint ptr %sensor_physical_width to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %sensor_physical_width, align 2
  %sensor_physical_height = getelementptr inbounds %struct.ntrig_data, ptr %call7.i, i32 0, i32 21
  %17 = ptrtoint ptr %sensor_physical_height to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %sensor_physical_height, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end13, label %if.end3.err_free_crit_edge

if.end3.err_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end13:                                         ; preds = %if.end3
  %call14 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %if.end13.err_free_crit_edge

if.end13.err_free_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end21:                                         ; preds = %if.end13
  %arrayidx22 = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 2, i32 10
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %if.then24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %21 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ll_driver.i, align 4
  %wait.i = getelementptr inbounds %struct.hid_ll_driver, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wait.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.then24.hid_hw_wait.exit_crit_edge, label %if.then.i

if.then24.hid_hw_wait.exit_crit_edge:             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %hid_hw_wait.exit

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %call.i71 = tail call i32 %24(ptr noundef %hdev) #10
  br label %hid_hw_wait.exit

hid_hw_wait.exit:                                 ; preds = %if.then.i, %if.then24.hid_hw_wait.exit_crit_edge
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef nonnull %20, i32 noundef 1) #10
  %arrayidx1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 2, i32 13
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i72 = icmp eq ptr %26, null
  br i1 %tobool.not.i72, label %hid_hw_wait.exit.if.end29_crit_edge, label %lor.lhs.false.i

hid_hw_wait.exit.if.end29_crit_edge:              ; preds = %hid_hw_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

lor.lhs.false.i:                                  ; preds = %hid_hw_wait.exit
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.end29_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end29_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %field.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp4.i = icmp eq i32 %32, 0
  br i1 %cmp4.i, label %lor.lhs.false2.i.if.end29_crit_edge, label %if.end.i

lor.lhs.false2.i.if.end29_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end.i:                                         ; preds = %lor.lhs.false2.i
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef nonnull %26, i32 noundef 1) #10
  %33 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ll_driver.i, align 4
  %wait.i.i = getelementptr inbounds %struct.hid_ll_driver, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wait.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.ntrig_get_mode.exit_crit_edge, label %if.then.i.i

if.end.i.ntrig_get_mode.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntrig_get_mode.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %36(ptr noundef %hdev) #10
  br label %ntrig_get_mode.exit

ntrig_get_mode.exit:                              ; preds = %if.then.i.i, %if.end.i.ntrig_get_mode.exit_crit_edge
  %37 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp = icmp sgt i32 %42, 3
  br i1 %cmp, label %if.then27, label %ntrig_get_mode.exit.if.end29_crit_edge

ntrig_get_mode.exit.if.end29_crit_edge:           ; preds = %ntrig_get_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %ntrig_get_mode.exit
  %arrayidx3.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 2, i32 16
  %43 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i73 = icmp eq ptr %44, null
  br i1 %tobool.not.i73, label %if.then27.if.end29_crit_edge, label %if.end5.i

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end5.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef nonnull %44, i32 noundef 1) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end5.i, %if.then27.if.end29_crit_edge, %ntrig_get_mode.exit.if.end29_crit_edge, %lor.lhs.false2.i.if.end29_crit_edge, %lor.lhs.false.i.if.end29_crit_edge, %hid_hw_wait.exit.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #10
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %45 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 8) #13
  %tobool.not.i74 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i74, label %if.end29.ntrig_report_version.exit_crit_edge, label %if.end.i76

if.end29.ntrig_report_version.exit_crit_edge:     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntrig_report_version.exit

if.end.i76:                                       ; preds = %if.end29
  %add.ptr.i = getelementptr i8, ptr %49, i32 -128
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %52, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or3.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 780, i16 noundef zeroext 1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 8, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call4.i)
  %cmp.i75 = icmp eq i32 %call4.i, 8
  br i1 %cmp.i75, label %if.then5.i, label %if.end.i76.ntrig_report_version.exit_crit_edge

if.end.i76.ntrig_report_version.exit_crit_edge:   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %ntrig_report_version.exit

if.then5.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 2
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i, i32 3
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i, align 1
  %55 = lshr i8 %54, 1
  %56 = and i8 %55, 7
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i, align 2
  %and4.i.i = lshr i8 %58, 2
  %59 = and i8 %and4.i.i, 15
  %60 = shl i8 %58, 3
  %61 = and i8 %60, 24
  %arrayidx10.i.i = getelementptr i8, ptr %call7.i.i, i32 5
  %62 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx10.i.i, align 1
  %64 = lshr i8 %63, 5
  %or.i.i = or i8 %64, %61
  %65 = shl i8 %63, 3
  %66 = and i8 %65, 56
  %arrayidx19.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %67 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx19.i.i, align 4
  %69 = lshr i8 %68, 5
  %or23.i.i = or i8 %69, %66
  %70 = and i8 %68, 7
  %conv29.i.i = zext i8 %56 to i32
  %conv30.i.i = zext i8 %59 to i32
  %conv31.i.i = zext i8 %or.i.i to i32
  %conv32.i.i = zext i8 %or23.i.i to i32
  %conv33.i.i = zext i8 %70 to i32
  %call.i.i77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.19, i32 noundef %conv29.i.i, i32 noundef %conv30.i.i, i32 noundef %conv31.i.i, i32 noundef %conv32.i.i, i32 noundef %conv33.i.i) #10
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i, align 1
  %conv11.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx19.i.i, align 4
  %conv13.i = zext i8 %76 to i32
  %77 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx10.i.i, align 1
  %conv15.i = zext i8 %78 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %buf.i, i32 noundef %conv.i, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef %conv15.i) #14
  br label %ntrig_report_version.exit

ntrig_report_version.exit:                        ; preds = %if.then5.i, %if.end.i76.ntrig_report_version.exit_crit_edge, %if.end29.ntrig_report_version.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #10
  %call31 = call i32 @sysfs_create_group(ptr noundef %dev.i, ptr noundef nonnull @ntrig_attribute_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %ntrig_report_version.exit.cleanup_crit_edge, label %do.end36

ntrig_report_version.exit.cleanup_crit_edge:      ; preds = %ntrig_report_version.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end36:                                         ; preds = %ntrig_report_version.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #14
  br label %cleanup

err_free:                                         ; preds = %if.end13.err_free_crit_edge, %if.end3.err_free_crit_edge
  %.str.11.sink = phi ptr [ @.str.8, %if.end3.err_free_crit_edge ], [ @.str.11, %if.end13.err_free_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %if.end3.err_free_crit_edge ], [ %call14, %if.end13.err_free_crit_edge ]
  %dev20 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull %.str.11.sink) #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.end36, %ntrig_report_version.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -12, %do.end ], [ 0, %do.end36 ], [ 0, %ntrig_report_version.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntrig_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @ntrig_attribute_group) #10
  tail call void @hid_hw_stop(ptr noundef %hdev) #10
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntrig_event(ptr noundef %hid, ptr noundef %field, ptr noundef %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %claimed, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.not_claimed_input_crit_edge, label %if.end

entry.not_claimed_input_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.end:                                           ; preds = %entry
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %4 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hidinput, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %input3 = getelementptr inbounds %struct.hid_input, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %input3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %8 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %9)
  %cmp = icmp eq i32 %9, 851970
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usage, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end10.cleanup_crit_edge [
    i32 -16777215, label %sw.bb
    i32 852034, label %sw.bb12
    i32 852039, label %sw.bb14
    i32 65584, label %sw.bb17
    i32 65585, label %sw.bb18
    i32 852049, label %sw.bb20
    i32 852040, label %sw.bb22
    i32 852041, label %sw.bb24
    i32 -16777214, label %sw.bb40
    i32 852052, label %sw.bb148
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %reading_mt = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %reading_mt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %reading_mt, align 1
  %first_contact_touch = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %first_contact_touch to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %first_contact_touch, align 2
  br label %not_claimed_input

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool13 = icmp ne i32 %value, 0
  %tipswitch = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 5
  %frombool = zext i1 %tobool13 to i8
  %15 = ptrtoint ptr %tipswitch to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %tipswitch, align 2
  br label %cleanup

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool15 = icmp ne i32 %value, 0
  %confidence = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 6
  %frombool16 = zext i1 %tobool15 to i8
  %16 = ptrtoint ptr %confidence to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool16, ptr %confidence, align 1
  br label %not_claimed_input

sw.bb17:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %value to i16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %1, align 2
  %mt_foot_count = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %mt_foot_count to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mt_foot_count, align 2
  br label %not_claimed_input

sw.bb18:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = trunc i32 %value to i16
  %y = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv19, ptr %y, align 2
  br label %not_claimed_input

sw.bb20:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv21 = trunc i32 %value to i16
  %id = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv21, ptr %id, align 2
  br label %not_claimed_input

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv23 = trunc i32 %value to i16
  %w = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv23, ptr %w, align 2
  br label %not_claimed_input

sw.bb24:                                          ; preds = %if.end10
  %conv25 = trunc i32 %value to i16
  %h = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %h to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv25, ptr %h, align 2
  %reading_mt26 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %reading_mt26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reading_mt26, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not = icmp eq i8 %24, 0
  br i1 %tobool27.not, label %if.then28, label %sw.bb24.not_claimed_input_crit_edge

sw.bb24.not_claimed_input_crit_edge:              ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  %tipswitch29 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %tipswitch29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tipswitch29, align 2, !range !150
  %27 = zext i8 %26 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 330, i32 noundef %27) #10
  %28 = ptrtoint ptr %tipswitch29 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tipswitch29, align 2, !range !150
  %30 = zext i8 %29 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 333, i32 noundef %30) #10
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %1, align 2
  %conv36 = zext i16 %32 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, i32 noundef %conv36) #10
  %y37 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %y37 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %y37, align 2
  %conv38 = zext i16 %34 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, i32 noundef %conv38) #10
  br label %not_claimed_input

sw.bb40:                                          ; preds = %if.end10
  %mt_foot_count41 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %mt_foot_count41 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mt_foot_count41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp43 = icmp ugt i8 %36, 3
  br i1 %cmp43, label %sw.bb40.not_claimed_input_crit_edge, label %if.end46

sw.bb40.not_claimed_input_crit_edge:              ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.end46:                                         ; preds = %sw.bb40
  %conv42 = zext i8 %36 to i32
  %conv47 = trunc i32 %value to i8
  %mt_footer = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 9
  %inc = add nuw nsw i8 %36, 1
  %37 = ptrtoint ptr %mt_foot_count41 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %inc, ptr %mt_foot_count41, align 2
  %arrayidx = getelementptr %struct.ntrig_data, ptr %1, i32 0, i32 9, i32 %conv42
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv47, ptr %arrayidx, align 1
  %39 = load i8, ptr %mt_foot_count41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %cmp51.not = icmp eq i8 %39, 4
  br i1 %cmp51.not, label %if.end54, label %if.end46.not_claimed_input_crit_edge

if.end46.not_claimed_input_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.end54:                                         ; preds = %if.end46
  %arrayidx56 = getelementptr %struct.ntrig_data, ptr %1, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool57.not = icmp eq i8 %41, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %42 = load i32, ptr @deactivate_slack, align 4
  %43 = trunc i32 %42 to i8
  %conv59 = add i8 %43, -1
  %act_state = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 11
  %44 = ptrtoint ptr %act_state to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv59, ptr %act_state, align 1
  %confidence60 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %confidence60 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %confidence60, align 1
  br label %not_claimed_input

if.end61:                                         ; preds = %if.end54
  %46 = ptrtoint ptr %mt_footer to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mt_footer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool64.not = icmp eq i8 %47, 0
  br i1 %tobool64.not, label %if.end61.not_claimed_input_crit_edge, label %if.then65

if.end61.not_claimed_input_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.then65:                                        ; preds = %if.end61
  %w66 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %w66 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %w66, align 2
  %min_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 14
  %50 = ptrtoint ptr %min_width to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %min_width, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp69 = icmp ult i16 %49, %51
  br i1 %cmp69, label %if.then65.if.then76_crit_edge, label %lor.lhs.false

if.then65.if.then76_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

lor.lhs.false:                                    ; preds = %if.then65
  %h71 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %h71 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %h71, align 2
  %min_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %min_height to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %min_height, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp74 = icmp ult i16 %53, %55
  br i1 %cmp74, label %lor.lhs.false.if.then76_crit_edge, label %lor.lhs.false.if.end79_crit_edge

lor.lhs.false.if.end79_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false.if.then76_crit_edge, %if.then65.if.then76_crit_edge
  %confidence77 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %confidence77 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %confidence77, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %lor.lhs.false.if.end79_crit_edge
  %act_state80 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 11
  %57 = ptrtoint ptr %act_state80 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %act_state80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp82 = icmp sgt i8 %58, 0
  br i1 %cmp82, label %if.then84, label %if.end79.if.end106_crit_edge

if.end79.if.end106_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then84:                                        ; preds = %if.end79
  %59 = ptrtoint ptr %w66 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %w66, align 2
  %activation_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 16
  %61 = ptrtoint ptr %activation_width to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %activation_width, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp88.not = icmp ult i16 %60, %62
  br i1 %cmp88.not, label %if.then84.not_claimed_input_crit_edge, label %land.lhs.true90

if.then84.not_claimed_input_crit_edge:            ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

land.lhs.true90:                                  ; preds = %if.then84
  %h91 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %h91 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %h91, align 2
  %activation_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 17
  %65 = ptrtoint ptr %activation_height to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %activation_height, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %66)
  %cmp94.not = icmp ult i16 %64, %66
  br i1 %cmp94.not, label %land.lhs.true90.not_claimed_input_crit_edge, label %if.then96

land.lhs.true90.not_claimed_input_crit_edge:      ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.then96:                                        ; preds = %land.lhs.true90
  %id97 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %id97 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %id97, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool98.not = icmp eq i16 %68, 0
  br i1 %tobool98.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %act_state80 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %act_state80, align 1
  br label %if.end106

if.else101:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %act_state80 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %act_state80, align 1
  br label %not_claimed_input

if.end106:                                        ; preds = %if.then99, %if.end79.if.end106_crit_edge
  %confidence107 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 6
  %71 = ptrtoint ptr %confidence107 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %confidence107, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool108.not = icmp eq i8 %72, 0
  br i1 %tobool108.not, label %if.end106.not_claimed_input_crit_edge, label %if.end110

if.end106.not_claimed_input_crit_edge:            ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.end110:                                        ; preds = %if.end106
  %id111 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %id111 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %id111, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp113 = icmp eq i16 %74, 0
  br i1 %cmp113, label %if.then115, label %if.end110.if.end124_crit_edge

if.end110.if.end124_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %first_contact_touch118 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 7
  %75 = ptrtoint ptr %first_contact_touch118 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %first_contact_touch118, align 2
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %1, align 2
  %conv121 = zext i16 %77 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, i32 noundef %conv121) #10
  %y122 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %y122 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %y122, align 2
  %conv123 = zext i16 %79 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, i32 noundef %conv123) #10
  br label %if.end124

if.end124:                                        ; preds = %if.then115, %if.end110.if.end124_crit_edge
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %1, align 2
  %conv126 = zext i16 %81 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 53, i32 noundef %conv126) #10
  %y127 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %y127 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %y127, align 2
  %conv128 = zext i16 %83 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 54, i32 noundef %conv128) #10
  %84 = ptrtoint ptr %w66 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %w66, align 2
  %h131 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %h131 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %h131, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %87)
  %cmp133 = icmp ugt i16 %85, %87
  %. = zext i1 %cmp133 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 52, i32 noundef %.) #10
  %88 = ptrtoint ptr %w66 to i32
  call void @__asan_load2_noabort(i32 %88)
  %w66.val = load i16, ptr %w66, align 2
  %89 = ptrtoint ptr %h131 to i32
  call void @__asan_load2_noabort(i32 %89)
  %h131.val = load i16, ptr %h131, align 2
  %90 = select i1 %cmp133, i16 %w66.val, i16 %h131.val
  %conv142 = zext i16 %90 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 48, i32 noundef %conv142) #10
  %91 = ptrtoint ptr %h131 to i32
  call void @__asan_load2_noabort(i32 %91)
  %h131.val335 = load i16, ptr %h131, align 2
  %92 = ptrtoint ptr %w66 to i32
  call void @__asan_load2_noabort(i32 %92)
  %w66.val336 = load i16, ptr %w66, align 2
  %93 = select i1 %cmp133, i16 %h131.val335, i16 %w66.val336
  %conv144 = zext i16 %93 to i32
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 49, i32 noundef %conv144) #10
  %94 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hidinput, align 4
  %input147 = getelementptr inbounds %struct.hid_input, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %input147 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %input147, align 4
  tail call void @input_event(ptr noundef %97, i32 noundef 0, i32 noundef 2, i32 noundef 0) #10
  br label %not_claimed_input

sw.bb148:                                         ; preds = %if.end10
  %reading_mt149 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 8
  %98 = ptrtoint ptr %reading_mt149 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %reading_mt149, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool150.not = icmp eq i8 %99, 0
  br i1 %tobool150.not, label %sw.bb148.not_claimed_input_crit_edge, label %if.end152

sw.bb148.not_claimed_input_crit_edge:             ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_claimed_input

if.end152:                                        ; preds = %sw.bb148
  %100 = ptrtoint ptr %reading_mt149 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %reading_mt149, align 1
  %act_state154 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 11
  %101 = ptrtoint ptr %act_state154 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %act_state154, align 1
  %conv155 = sext i8 %102 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp156 = icmp sgt i8 %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool159.not = icmp eq i32 %value, 0
  br i1 %cmp156, label %if.then158, label %if.else173

if.then158:                                       ; preds = %if.end152
  br i1 %tobool159.not, label %if.else170, label %if.then160

if.then160:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %conv155, i32 %value)
  %cmp163 = icmp sgt i32 %conv155, %value
  %103 = trunc i32 %value to i8
  %phi.cast = sub i8 %102, %103
  %cond = select i1 %cmp163, i8 %phi.cast, i8 0
  %104 = ptrtoint ptr %act_state154 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %cond, ptr %act_state154, align 1
  br label %not_claimed_input

if.else170:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  %activate_slack = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 13
  %105 = ptrtoint ptr %activate_slack to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %activate_slack, align 1
  %107 = ptrtoint ptr %act_state154 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %act_state154, align 1
  br label %not_claimed_input

if.else173:                                       ; preds = %if.end152
  br i1 %tobool159.not, label %if.else173.if.else183_crit_edge, label %land.lhs.true175

if.else173.if.else183_crit_edge:                  ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else183

land.lhs.true175:                                 ; preds = %if.else173
  %deactivate_slack = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 12
  %108 = ptrtoint ptr %deactivate_slack to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %deactivate_slack, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %109)
  %cmp179.not = icmp slt i8 %102, %109
  br i1 %cmp179.not, label %land.lhs.true175.if.else183_crit_edge, label %if.end197.thread

land.lhs.true175.if.else183_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else183

if.else183:                                       ; preds = %land.lhs.true175.if.else183_crit_edge, %if.else173.if.else183_crit_edge
  %deactivate_slack186 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 12
  %110 = ptrtoint ptr %deactivate_slack186 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %deactivate_slack186, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %111)
  %cmp188.not = icmp sgt i8 %102, %111
  br i1 %cmp188.not, label %if.else193, label %if.end197

if.else193:                                       ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add nsw i8 %102, -1
  %112 = ptrtoint ptr %act_state154 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %dec, ptr %act_state154, align 1
  br label %not_claimed_input

if.end197:                                        ; preds = %if.else183
  %activate_slack191 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 13
  %113 = ptrtoint ptr %activate_slack191 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %activate_slack191, align 1
  %115 = ptrtoint ptr %act_state154 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %act_state154, align 1
  %first_contact_touch198 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 7
  %116 = ptrtoint ptr %first_contact_touch198 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %first_contact_touch198, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool199.not = icmp ne i8 %117, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp204 = icmp slt i8 %114, 1
  %or.cond = select i1 %tobool199.not, i1 %cmp204, i1 false
  br i1 %or.cond, label %if.end197.if.then206_crit_edge, label %if.end197.if.else207_crit_edge

if.end197.if.else207_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else207

if.end197.if.then206_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then206

if.end197.thread:                                 ; preds = %land.lhs.true175
  %118 = ptrtoint ptr %act_state154 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %act_state154, align 1
  %first_contact_touch198330 = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 7
  %119 = ptrtoint ptr %first_contact_touch198330 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %first_contact_touch198330, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool199.not331 = icmp eq i8 %120, 0
  br i1 %tobool199.not331, label %if.end197.thread.if.else207_crit_edge, label %if.end197.thread.if.then206_crit_edge

if.end197.thread.if.then206_crit_edge:            ; preds = %if.end197.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then206

if.end197.thread.if.else207_crit_edge:            ; preds = %if.end197.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else207

if.then206:                                       ; preds = %if.end197.thread.if.then206_crit_edge, %if.end197.if.then206_crit_edge
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 333, i32 noundef 1) #10
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 330, i32 noundef 1) #10
  br label %not_claimed_input

if.else207:                                       ; preds = %if.end197.thread.if.else207_crit_edge, %if.end197.if.else207_crit_edge
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 333, i32 noundef 0) #10
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 330, i32 noundef 0) #10
  br label %not_claimed_input

not_claimed_input:                                ; preds = %if.else207, %if.then206, %if.else193, %if.else170, %if.then160, %sw.bb148.not_claimed_input_crit_edge, %if.end124, %if.end106.not_claimed_input_crit_edge, %if.else101, %land.lhs.true90.not_claimed_input_crit_edge, %if.then84.not_claimed_input_crit_edge, %if.end61.not_claimed_input_crit_edge, %if.then58, %if.end46.not_claimed_input_crit_edge, %sw.bb40.not_claimed_input_crit_edge, %if.then28, %sw.bb24.not_claimed_input_crit_edge, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb17, %sw.bb14, %sw.bb, %entry.not_claimed_input_crit_edge
  %121 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %claimed, align 4
  %and210 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %not_claimed_input.cleanup_crit_edge, label %land.lhs.true212

not_claimed_input.cleanup_crit_edge:              ; preds = %not_claimed_input
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true212:                                 ; preds = %not_claimed_input
  %hiddev_hid_event = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 46
  %123 = ptrtoint ptr %hiddev_hid_event to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hiddev_hid_event, align 8
  %tobool213.not = icmp eq ptr %124, null
  br i1 %tobool213.not, label %land.lhs.true212.cleanup_crit_edge, label %if.then214

land.lhs.true212.cleanup_crit_edge:               ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then214:                                       ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %124(ptr noundef %hid, ptr noundef %field, ptr noundef %usage, i32 noundef %value) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then214, %land.lhs.true212.cleanup_crit_edge, %not_claimed_input.cleanup_crit_edge, %sw.bb12, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb12 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 1, %if.then214 ], [ 1, %land.lhs.true212.cleanup_crit_edge ], [ 1, %not_claimed_input.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntrig_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %and = and i32 %5, -65536
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and, label %sw.epilog61 [
    i32 65536, label %sw.bb
    i32 851968, label %sw.bb53
    i32 -16777216, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %5, label %sw.bb.cleanup_crit_edge [
    i32 65584, label %sw.bb2
    i32 65585, label %sw.bb23
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %input1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %8 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input1.i, align 4
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 8
  %type19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %10 = ptrtoint ptr %type19.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %type19.i, align 4
  %code.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %11 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 53, ptr %code.i, align 2
  %12 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 63, ptr %max, align 4
  %13 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %absbit.i, ptr %bit, align 4
  %14 = load ptr, ptr %input1.i, align 4
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %15 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logical_minimum, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %17 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logical_maximum, align 4
  tail call void @input_set_abs_params(ptr noundef %14, i32 noundef 0, i32 noundef %16, i32 noundef %18, i32 noundef 0, i32 noundef 0) #10
  %sensor_logical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sensor_logical_width, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool3.not = icmp eq i16 %20, 0
  br i1 %tobool3.not, label %if.then4, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logical_maximum, align 4
  %23 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %logical_minimum, align 4
  %sub = sub i32 %22, %24
  %conv = trunc i32 %sub to i16
  %25 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %sensor_logical_width, align 2
  %physical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 14
  %26 = ptrtoint ptr %physical_maximum to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %physical_maximum, align 4
  %physical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 13
  %28 = ptrtoint ptr %physical_minimum to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %physical_minimum, align 4
  %sub8 = sub i32 %27, %29
  %conv9 = trunc i32 %sub8 to i16
  %sensor_physical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %sensor_physical_width to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv9, ptr %sensor_physical_width, align 2
  %31 = load i32, ptr @activation_width, align 4
  %conv11 = and i32 %sub, 65535
  %mul = mul i32 %31, %conv11
  %conv13 = and i32 %sub8, 65535
  %div = udiv i32 %mul, %conv13
  %conv14 = trunc i32 %div to i16
  %activation_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %activation_width to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv14, ptr %activation_width, align 2
  %33 = load i32, ptr @min_width, align 4
  %mul17 = mul i32 %33, %conv11
  %div20 = udiv i32 %mul17, %conv13
  %conv21 = trunc i32 %div20 to i16
  %min_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %min_width to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv21, ptr %min_width, align 2
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb
  %input1.i109 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %35 = ptrtoint ptr %input1.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input1.i109, align 4
  %absbit.i110 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 8
  %type19.i111 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %37 = ptrtoint ptr %type19.i111 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %type19.i111, align 4
  %code.i112 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %38 = ptrtoint ptr %code.i112 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 54, ptr %code.i112, align 2
  %39 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 63, ptr %max, align 4
  %40 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %absbit.i110, ptr %bit, align 4
  %41 = load ptr, ptr %input1.i109, align 4
  %logical_minimum25 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %42 = ptrtoint ptr %logical_minimum25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %logical_minimum25, align 4
  %logical_maximum26 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %44 = ptrtoint ptr %logical_maximum26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %logical_maximum26, align 4
  tail call void @input_set_abs_params(ptr noundef %41, i32 noundef 1, i32 noundef %43, i32 noundef %45, i32 noundef 0, i32 noundef 0) #10
  %sensor_logical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 19
  %46 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sensor_logical_height, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool27.not = icmp eq i16 %47, 0
  br i1 %tobool27.not, label %if.then28, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %logical_maximum26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %logical_maximum26, align 4
  %50 = ptrtoint ptr %logical_minimum25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %logical_minimum25, align 4
  %sub31 = sub i32 %49, %51
  %conv32 = trunc i32 %sub31 to i16
  %52 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv32, ptr %sensor_logical_height, align 2
  %physical_maximum34 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 14
  %53 = ptrtoint ptr %physical_maximum34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %physical_maximum34, align 4
  %physical_minimum35 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 13
  %55 = ptrtoint ptr %physical_minimum35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %physical_minimum35, align 4
  %sub36 = sub i32 %54, %56
  %conv37 = trunc i32 %sub36 to i16
  %sensor_physical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 21
  %57 = ptrtoint ptr %sensor_physical_height to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv37, ptr %sensor_physical_height, align 2
  %58 = load i32, ptr @activation_height, align 4
  %conv39 = and i32 %sub31, 65535
  %mul40 = mul i32 %58, %conv39
  %conv42 = and i32 %sub36, 65535
  %div43 = udiv i32 %mul40, %conv42
  %conv44 = trunc i32 %div43 to i16
  %activation_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 17
  %59 = ptrtoint ptr %activation_height to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv44, ptr %activation_height, align 2
  %60 = load i32, ptr @min_height, align 4
  %mul47 = mul i32 %60, %conv39
  %div50 = udiv i32 %mul47, %conv42
  %conv51 = trunc i32 %div50 to i16
  %min_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 15
  %61 = ptrtoint ptr %min_height to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv51, ptr %min_height, align 2
  br label %cleanup

sw.bb53:                                          ; preds = %if.end
  %62 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %sw.epilog59 [
    i32 852049, label %sw.bb53.cleanup_crit_edge
    i32 852050, label %sw.bb53.cleanup_crit_edge113
    i32 852051, label %sw.bb53.cleanup_crit_edge114
    i32 852053, label %sw.bb53.cleanup_crit_edge115
    i32 852040, label %sw.bb56
    i32 852041, label %sw.bb57
  ]

sw.bb53.cleanup_crit_edge115:                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb53.cleanup_crit_edge114:                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb53.cleanup_crit_edge113:                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb56:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hid_map_usage(ptr noundef %hi, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i32 noundef 48)
  br label %cleanup

sw.bb57:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hid_map_usage(ptr noundef %hi, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i32 noundef 49)
  %input58 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %63 = ptrtoint ptr %input58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input58, align 4
  tail call void @input_set_abs_params(ptr noundef %64, i32 noundef 52, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  br label %cleanup

sw.epilog59:                                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog61:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog61, %sw.epilog59, %sw.bb57, %sw.bb56, %sw.bb53.cleanup_crit_edge, %sw.bb53.cleanup_crit_edge113, %sw.bb53.cleanup_crit_edge114, %sw.bb53.cleanup_crit_edge115, %if.then28, %sw.bb23.cleanup_crit_edge, %if.then4, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog61 ], [ 0, %sw.epilog59 ], [ 1, %sw.bb57 ], [ 1, %sw.bb56 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4 ], [ 1, %sw.bb2.cleanup_crit_edge ], [ 1, %if.then28 ], [ 1, %sw.bb23.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb53.cleanup_crit_edge ], [ -1, %sw.bb53.cleanup_crit_edge113 ], [ -1, %sw.bb53.cleanup_crit_edge114 ], [ -1, %sw.bb53.cleanup_crit_edge115 ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntrig_input_mapped(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readonly %bit, ptr nocapture noundef readnone %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 4
  %.off = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then11, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %code, align 2
  %conv12 = zext i16 %5 to i32
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bit, align 4
  tail call void @_clear_bit(i32 noundef %conv12, ptr noundef %7) #10
  br label %return

return:                                           ; preds = %if.then11, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntrig_input_configured(ptr nocapture noundef readnone %hid, ptr nocapture noundef readonly %hidinput) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %report = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 1
  %2 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report, align 4
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %field = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field, align 4
  %application = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %application, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 851970, label %if.end.cleanup.sink.split_crit_edge
    i32 851972, label %sw.bb3
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 10
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %and.i23 = and i32 %12, -8226
  %add.ptr.i24 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 8
  %13 = ptrtoint ptr %add.ptr.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i24, align 4
  %and.i25 = and i32 %14, -2
  store i32 %and.i25, ptr %add.ptr.i24, align 4
  %or.i = or i32 %and.i23, 8192
  store i32 %or.i, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %report, align 4
  %field11 = getelementptr inbounds %struct.hid_report, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %field11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %field11, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %cond = select i1 %tobool.not, ptr @.str.36, ptr @.str.35
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %if.end.cleanup.sink.split_crit_edge
  %.str.34.sink = phi ptr [ %cond, %sw.bb3 ], [ @.str.34, %if.end.cleanup.sink.split_crit_edge ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.str.34.sink, ptr %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_phys_width(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor_physical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sensor_physical_width to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sensor_physical_width, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_phys_height(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor_physical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %sensor_physical_height to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sensor_physical_height, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_log_width(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor_logical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sensor_logical_width, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_log_height(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor_logical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sensor_logical_height, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_min_height(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %min_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %min_height to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %min_height, align 2
  %conv = zext i16 %3 to i32
  %sensor_physical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sensor_physical_height to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sensor_physical_height, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw i32 %conv1, %conv
  %sensor_logical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sensor_logical_height, align 2
  %conv2 = zext i16 %7 to i32
  %div = sdiv i32 %mul, %conv2
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_min_height(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %sensor_physical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %sensor_physical_height to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sensor_physical_height, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp ugt i32 %4, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sensor_logical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sensor_logical_height, align 2
  %conv5 = zext i16 %8 to i32
  %mul = mul i32 %4, %conv5
  %div = udiv i32 %mul, %conv
  %conv8 = trunc i32 %div to i16
  %min_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %min_height to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %min_height, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_min_width(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %min_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %min_width to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %min_width, align 2
  %conv = zext i16 %3 to i32
  %sensor_physical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %sensor_physical_width to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sensor_physical_width, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw i32 %conv1, %conv
  %sensor_logical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sensor_logical_width, align 2
  %conv2 = zext i16 %7 to i32
  %div = sdiv i32 %mul, %conv2
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_min_width(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %sensor_physical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %sensor_physical_width to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sensor_physical_width, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp ugt i32 %4, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sensor_logical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sensor_logical_width, align 2
  %conv5 = zext i16 %8 to i32
  %mul = mul i32 %4, %conv5
  %div = udiv i32 %mul, %conv
  %conv8 = trunc i32 %div to i16
  %min_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %min_width to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %min_width, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_activate_slack(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %activate_slack = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %activate_slack to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %activate_slack, align 1
  %conv = sext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_activate_slack(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %4)
  %cmp = icmp ugt i32 %4, 127
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %4 to i8
  %activate_slack = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %activate_slack to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %activate_slack, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_activation_width(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %activation_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %activation_width to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %activation_width, align 2
  %conv = zext i16 %3 to i32
  %sensor_physical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %sensor_physical_width to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sensor_physical_width, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw i32 %conv1, %conv
  %sensor_logical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sensor_logical_width, align 2
  %conv2 = zext i16 %7 to i32
  %div = sdiv i32 %mul, %conv2
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_activation_width(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %sensor_physical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %sensor_physical_width to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sensor_physical_width, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp ugt i32 %4, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sensor_logical_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %sensor_logical_width to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sensor_logical_width, align 2
  %conv5 = zext i16 %8 to i32
  %mul = mul i32 %4, %conv5
  %div = udiv i32 %mul, %conv
  %conv8 = trunc i32 %div to i16
  %activation_width = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %activation_width to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %activation_width, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_activation_height(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %activation_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %activation_height to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %activation_height, align 2
  %conv = zext i16 %3 to i32
  %sensor_physical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sensor_physical_height to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sensor_physical_height, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw i32 %conv1, %conv
  %sensor_logical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sensor_logical_height, align 2
  %conv2 = zext i16 %7 to i32
  %div = sdiv i32 %mul, %conv2
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_activation_height(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %sensor_physical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %sensor_physical_height to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sensor_physical_height, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp ugt i32 %4, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sensor_logical_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %sensor_logical_height to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sensor_logical_height, align 2
  %conv5 = zext i16 %8 to i32
  %mul = mul i32 %4, %conv5
  %div = udiv i32 %mul, %conv
  %conv8 = trunc i32 %div to i16
  %activation_height = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %activation_height to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %activation_height, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_deactivate_slack(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %deactivate_slack = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %deactivate_slack to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %deactivate_slack, align 2
  %conv = sext i8 %3 to i32
  %sub = sub nsw i32 0, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %sub)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_deactivate_slack(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !151
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp ugt i32 %4, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = trunc i32 %4 to i8
  %conv = sub nsw i8 0, %5
  %deactivate_slack = getelementptr inbounds %struct.ntrig_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %deactivate_slack to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %deactivate_slack, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_map_usage(ptr nocapture noundef readonly %hidinput, ptr nocapture noundef writeonly %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max, i32 noundef %c) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  %tobool.not = icmp eq ptr %absbit, null
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !152

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %3, i32 noundef %c, i32 noundef 3) #14
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type19 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %4 = ptrtoint ptr %type19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %type19, align 4
  %conv20 = trunc i32 %c to i16
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv20, ptr %code, align 2
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 63, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %if.then.cleanup_crit_edge
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %absbit, ptr %bit, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !61, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !91, !93, !95, !96, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !129, !130, !131, !132, !133, !134, !135, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__param_min_width, !1, !"__param_min_width", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-ntrig.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_min_widthtype232, !1, !"__UNIQUE_ID_min_widthtype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_min_width233, !4, !"__UNIQUE_ID_min_width233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-ntrig.c", i32 25, i32 1}
!5 = !{ptr @__param_min_height, !6, !"__param_min_height", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-ntrig.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_min_heighttype234, !6, !"__UNIQUE_ID_min_heighttype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_min_height235, !9, !"__UNIQUE_ID_min_height235", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-ntrig.c", i32 29, i32 1}
!10 = !{ptr @__param_activate_slack, !11, !"__param_activate_slack", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-ntrig.c", i32 32, i32 1}
!12 = !{ptr @__UNIQUE_ID_activate_slacktype236, !11, !"__UNIQUE_ID_activate_slacktype236", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_activate_slack237, !14, !"__UNIQUE_ID_activate_slack237", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-ntrig.c", i32 33, i32 1}
!15 = !{ptr @__param_deactivate_slack, !16, !"__param_deactivate_slack", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-ntrig.c", i32 37, i32 1}
!17 = !{ptr @__UNIQUE_ID_deactivate_slacktype238, !16, !"__UNIQUE_ID_deactivate_slacktype238", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_deactivate_slack239, !19, !"__UNIQUE_ID_deactivate_slack239", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-ntrig.c", i32 38, i32 1}
!20 = !{ptr @__param_activation_width, !21, !"__param_activation_width", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-ntrig.c", i32 42, i32 1}
!22 = !{ptr @__UNIQUE_ID_activation_widthtype240, !21, !"__UNIQUE_ID_activation_widthtype240", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_activation_width241, !24, !"__UNIQUE_ID_activation_width241", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-ntrig.c", i32 43, i32 1}
!25 = !{ptr @__param_activation_height, !26, !"__param_activation_height", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-ntrig.c", i32 47, i32 1}
!27 = !{ptr @__UNIQUE_ID_activation_heighttype242, !26, !"__UNIQUE_ID_activation_heighttype242", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_activation_height243, !29, !"__UNIQUE_ID_activation_height243", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-ntrig.c", i32 48, i32 1}
!30 = !{ptr @__initcall__kmod_hid_ntrig__244_1030_ntrig_driver_init6, !31, !"__initcall__kmod_hid_ntrig__244_1030_ntrig_driver_init6", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-ntrig.c", i32 1030, i32 1}
!32 = !{ptr @__exitcall_ntrig_driver_exit, !31, !"__exitcall_ntrig_driver_exit", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_file245, !34, !"__UNIQUE_ID_file245", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-ntrig.c", i32 1032, i32 1}
!35 = !{ptr @__UNIQUE_ID_license246, !34, !"__UNIQUE_ID_license246", i1 false, i1 false}
!36 = !{ptr @min_width, !37, !"min_width", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-ntrig.c", i32 23, i32 21}
!38 = !{ptr @min_height, !39, !"min_height", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-ntrig.c", i32 27, i32 21}
!40 = !{ptr @__param_str_min_width, !1, !"__param_str_min_width", i1 false, i1 false}
!41 = !{ptr @__param_str_min_height, !6, !"__param_str_min_height", i1 false, i1 false}
!42 = !{ptr @__param_str_activate_slack, !11, !"__param_str_activate_slack", i1 false, i1 false}
!43 = !{ptr @activate_slack, !44, !"activate_slack", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-ntrig.c", i32 31, i32 21}
!45 = !{ptr @__param_str_deactivate_slack, !16, !"__param_str_deactivate_slack", i1 false, i1 false}
!46 = !{ptr @deactivate_slack, !47, !"deactivate_slack", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-ntrig.c", i32 36, i32 21}
!48 = !{ptr @__param_str_activation_width, !21, !"__param_str_activation_width", i1 false, i1 false}
!49 = !{ptr @activation_width, !50, !"activation_width", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-ntrig.c", i32 41, i32 21}
!51 = !{ptr @__param_str_activation_height, !26, !"__param_str_activation_height", i1 false, i1 false}
!52 = !{ptr @activation_height, !53, !"activation_height", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-ntrig.c", i32 46, i32 21}
!54 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.1, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-ntrig.c", i32 1020, i32 10}
!57 = !{ptr @ntrig_driver, !58, !"ntrig_driver", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-ntrig.c", i32 1019, i32 26}
!59 = !{ptr @ntrig_devices, !60, !"ntrig_devices", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-ntrig.c", i32 971, i32 35}
!61 = !{ptr @.str.2, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-ntrig.c", i32 905, i32 3}
!63 = !{ptr @.str.3, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.4, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.5, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.6, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ntrig_probe._entry, !62, !"_entry", i1 false, i1 false}
!68 = !{ptr @ntrig_probe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-ntrig.c", i32 924, i32 3}
!71 = !{ptr @ntrig_probe._entry.7, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ntrig_probe._entry_ptr.9, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-ntrig.c", i32 930, i32 3}
!75 = !{ptr @ntrig_probe._entry.10, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ntrig_probe._entry_ptr.12, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-ntrig.c", i32 955, i32 3}
!79 = !{ptr @ntrig_probe._entry.13, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ntrig_probe._entry_ptr.15, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-ntrig.c", i32 160, i32 3}
!83 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ntrig_report_version._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @ntrig_report_version._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hid/hid-ntrig.c", i32 106, i32 22}
!89 = !{ptr @ntrig_attribute_group, !90, !"ntrig_attribute_group", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-ntrig.c", i32 444, i32 37}
!91 = !{ptr @sysfs_attrs, !92, !"sysfs_attrs", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-ntrig.c", i32 430, i32 26}
!93 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-ntrig.c", i32 178, i32 8}
!95 = !{ptr @dev_attr_sensor_physical_width, !94, !"dev_attr_sensor_physical_width", i1 false, i1 false}
!96 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-ntrig.c", i32 175, i32 22}
!98 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-ntrig.c", i32 190, i32 8}
!100 = !{ptr @dev_attr_sensor_physical_height, !99, !"dev_attr_sensor_physical_height", i1 false, i1 false}
!101 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-ntrig.c", i32 202, i32 8}
!103 = !{ptr @dev_attr_sensor_logical_width, !102, !"dev_attr_sensor_logical_width", i1 false, i1 false}
!104 = !{ptr @.str.24, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-ntrig.c", i32 214, i32 8}
!106 = !{ptr @dev_attr_sensor_logical_height, !105, !"dev_attr_sensor_logical_height", i1 false, i1 false}
!107 = !{ptr @.str.25, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-ntrig.c", i32 284, i32 8}
!109 = !{ptr @dev_attr_min_height, !108, !"dev_attr_min_height", i1 false, i1 false}
!110 = !{ptr @.str.26, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-ntrig.c", i32 249, i32 8}
!112 = !{ptr @dev_attr_min_width, !111, !"dev_attr_min_width", i1 false, i1 false}
!113 = !{ptr @.str.27, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-ntrig.c", i32 317, i32 8}
!115 = !{ptr @dev_attr_activate_slack, !114, !"dev_attr_activate_slack", i1 false, i1 false}
!116 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/hid-ntrig.c", i32 353, i32 8}
!118 = !{ptr @dev_attr_activation_width, !117, !"dev_attr_activation_width", i1 false, i1 false}
!119 = !{ptr @.str.29, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-ntrig.c", i32 389, i32 8}
!121 = !{ptr @dev_attr_activation_height, !120, !"dev_attr_activation_height", i1 false, i1 false}
!122 = !{ptr @.str.30, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hid/hid-ntrig.c", i32 427, i32 8}
!124 = !{ptr @dev_attr_deactivate_slack, !123, !"dev_attr_deactivate_slack", i1 false, i1 false}
!125 = !{ptr @ntrig_grabbed_usages, !126, !"ntrig_grabbed_usages", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-ntrig.c", i32 1014, i32 34}
!127 = !{ptr @.str.31, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!129 = !{ptr @hid_map_usage._rs, !128, !"_rs", i1 false, i1 false}
!130 = !{ptr @__func__.hid_map_usage, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.32, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.33, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @hid_map_usage._entry, !128, !"_entry", i1 false, i1 false}
!134 = !{ptr @hid_map_usage._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.34, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-ntrig.c", i32 869, i32 17}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hid/hid-ntrig.c", i32 885, i32 8}
!139 = !{ptr @.str.36, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hid/hid-ntrig.c", i32 886, i32 8}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i8 0, i8 2}
!151 = !{!"auto-init"}
!152 = !{!"branch_weights", i32 1, i32 2000}
