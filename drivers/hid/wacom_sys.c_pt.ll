; ModuleID = '/llk/IR_all_yes/drivers/hid/wacom_sys.c_pt.bc'
source_filename = "../drivers/hid/wacom_sys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.wacom_led = type { %struct.led_classdev, %struct.led_trigger, ptr, i32, i32, i8, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.wacom = type { ptr, ptr, %struct.wacom_wac, ptr, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.work_struct, i8, %struct.wacom_leds, %struct.wacom_battery, i8 }
%struct.wacom_wac = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [361 x i8], [2 x i32], [2 x i32], [2 x i64], i8, i8, %struct.wacom_features, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i32, i32, %struct.hid_data, i8, i8, i8, i8, i8 }
%struct.wacom_features = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.hid_data = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wacom_leds = type { ptr, i32, i8, i8, i8, i8, i8 }
%struct.wacom_battery = type { ptr, %struct.power_supply_desc, ptr, [64 x i8], i32, i32, i32, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.wacom_group_leds = type { i8, ptr, i32, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.wacom_sysfs_group_devres = type { ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.wacom_remote_data = type { [5 x %struct.anon.76] }
%struct.anon.76 = type { i32, i8 }
%struct.wacom_remote = type { %struct.spinlock, %struct.kfifo, ptr, [5 x %struct.anon.70] }
%struct.kfifo = type { %union.anon.69, [0 x i8] }
%union.anon.69 = type { %struct.__kfifo }
%struct.anon.70 = type { %struct.attribute_group, i32, ptr, i8, %struct.wacom_battery }
%struct.wacom_shared = type { i8, i8, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wacom_hdev_data = type { %struct.list_head, %struct.kref, ptr, %struct.wacom_shared }

@wacom_initialize_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1594, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot create leds err: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wacom_initialize_leds\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/wacom_sys.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry_ptr = internal global ptr @wacom_initialize_leds._entry, section ".printk_index", align 4
@generic_led_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.33, ptr null, ptr null, ptr @generic_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry_ptr.6 = internal global ptr @wacom_initialize_leds._entry.5, section ".printk_index", align 4
@intuos4_led_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.33, ptr null, ptr null, ptr @intuos4_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1632, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry_ptr.8 = internal global ptr @wacom_initialize_leds._entry.7, section ".printk_index", align 4
@cintiq_led_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.33, ptr null, ptr null, ptr @cintiq_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1652, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry_ptr.10 = internal global ptr @wacom_initialize_leds._entry.9, section ".printk_index", align 4
@intuos5_led_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.33, ptr null, ptr null, ptr @intuos5_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1666, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry_ptr.12 = internal global ptr @wacom_initialize_leds._entry.11, section ".printk_index", align 4
@wacom_initialize_leds._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry_ptr.14 = internal global ptr @wacom_initialize_leds._entry.13, section ".printk_index", align 4
@wacom_initialize_leds._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1688, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot create sysfs group err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wacom_initialize_leds._entry_ptr.17 = internal global ptr @wacom_initialize_leds._entry.15, section ".printk_index", align 4
@__initcall__kmod_wacom__238_2868_wacom_driver_init6 = internal global ptr @wacom_driver_init, section ".initcall6.init", align 4
@wacom_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.19, ptr @wacom_ids, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @wacom_probe, ptr @wacom_remove, ptr null, ptr @wacom_raw_event, ptr null, ptr null, ptr @wacom_wac_report, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wacom_resume, ptr @wacom_reset_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wacom_driver_exit = internal global ptr @wacom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version239 = internal constant [20 x i8] c"wacom.version=v2.00\00", section ".modinfo", align 1
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wacom\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v2.00\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.19, ptr @.str.20 }, section "__modver", align 4
@__UNIQUE_ID_author240 = internal constant [45 x i8] c"wacom.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [42 x i8] c"wacom.description=USB Wacom tablet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [29 x i8] c"wacom.file=drivers/hid/wacom\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [18 x i8] c"wacom.license=GPL\00", section ".modinfo", align 1
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s::wacom-%d.%d\00", [16 x i8] zeroinitializer }, align 32
@wacom_led_register_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register LED trigger %s: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wacom_led_register_one\00", [41 x i8] zeroinitializer }, align 32
@wacom_led_register_one._entry_ptr = internal global ptr @wacom_led_register_one._entry, section ".printk_index", align 4
@wacom_led_register_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register LED %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wacom_led_register_one._entry_ptr.26 = internal global ptr @wacom_led_register_one._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wacom_get_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"wacom_get_report: ran out of retries (last error = %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wacom_get_report\00", [47 x i8] zeroinitializer }, align 32
@wacom_get_report._entry_ptr = internal global ptr @wacom_get_report._entry, section ".printk_index", align 4
@wacom_set_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"wacom_set_report: ran out of retries (last error = %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wacom_set_report\00", [47 x i8] zeroinitializer }, align 32
@wacom_set_report._entry_ptr = internal global ptr @wacom_set_report._entry, section ".printk_index", align 4
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wacom_devm_sysfs_group_release\00", [33 x i8] zeroinitializer }, align 32
@wacom_devm_sysfs_group_release.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: dropping reference to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wacom_led\00", [22 x i8] zeroinitializer }, align 32
@generic_led_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_status0_luminance, ptr @dev_attr_status_led0_select, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_status0_luminance = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_status0_luminance_show, ptr @wacom_status0_luminance_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_status_led0_select = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_led0_select_show, ptr @wacom_led0_select_store }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"status0_luminance\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"status_led0_select\00", [45 x i8] zeroinitializer }, align 32
@intuos4_led_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_status0_luminance, ptr @dev_attr_status1_luminance, ptr @dev_attr_status_led0_select, ptr @dev_attr_buttons_luminance, ptr @dev_attr_button0_rawimg, ptr @dev_attr_button1_rawimg, ptr @dev_attr_button2_rawimg, ptr @dev_attr_button3_rawimg, ptr @dev_attr_button4_rawimg, ptr @dev_attr_button5_rawimg, ptr @dev_attr_button6_rawimg, ptr @dev_attr_button7_rawimg, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_status1_luminance = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_status1_luminance_show, ptr @wacom_status1_luminance_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_buttons_luminance = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_buttons_luminance_show, ptr @wacom_buttons_luminance_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button0_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg0_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button1_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg1_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button2_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg2_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button3_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg3_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button4_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg4_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button5_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg5_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button6_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg6_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_button7_rawimg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_btnimg7_store }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"status1_luminance\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buttons_luminance\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button0_rawimg\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button1_rawimg\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button2_rawimg\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button3_rawimg\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button4_rawimg\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button5_rawimg\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button6_rawimg\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"button7_rawimg\00", [17 x i8] zeroinitializer }, align 32
@cintiq_led_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_status_led0_select, ptr @dev_attr_status_led1_select, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_status_led1_select = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_led1_select_show, ptr @wacom_led1_select_store }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"status_led1_select\00", [45 x i8] zeroinitializer }, align 32
@intuos5_led_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_status0_luminance, ptr @dev_attr_status_led0_select, ptr null], [20 x i8] zeroinitializer }, align 32
@__wacom_initialize_battery.battery_no = internal global %struct.atomic_t zeroinitializer, align 4
@wacom_battery_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 73, i32 3, i32 0, i32 66, i32 47], [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wacom_battery_%ld\00", [46 x i8] zeroinitializer }, align 32
@wacom_ids = external dso_local constant [0 x %struct.hid_device_id], align 4
@wacom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&wacom->lock\00", [19 x i8] zeroinitializer }, align 32
@wacom_probe.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&wacom->init_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@wacom_probe.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&wacom->init_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@wacom_probe.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&wacom->wireless_work)\00", [55 x i8] zeroinitializer }, align 32
@wacom_probe.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&wacom->battery_work)\00", [56 x i8] zeroinitializer }, align 32
@wacom_probe.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&wacom->remote_work)\00", [57 x i8] zeroinitializer }, align 32
@wacom_probe.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&wacom->mode_change_work)\00", [52 x i8] zeroinitializer }, align 32
@wacom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 2788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wacom_probe\00", [20 x i8] zeroinitializer }, align 32
@wacom_probe._entry_ptr = internal global ptr @wacom_probe._entry, section ".printk_index", align 4
@dev_attr_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_show_speed, ptr @wacom_store_speed }, [36 x i8] zeroinitializer }, align 32
@wacom_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 2801, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can't create sysfs speed attribute err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wacom_probe._entry_ptr.67 = internal global ptr @wacom_probe._entry.64, section ".printk_index", align 4
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wacom_devm_kfifo_release\00", [39 x i8] zeroinitializer }, align 32
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@wacom_bt_query_tablet_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 641, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to poke device, command %d, err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wacom_bt_query_tablet_data\00", [37 x i8] zeroinitializer }, align 32
@wacom_bt_query_tablet_data._entry_ptr = internal global ptr @wacom_bt_query_tablet_data._entry, section ".printk_index", align 4
@wacom_wireless_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2470, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wireless tablet disconnected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wacom_wireless_work\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wacom_wireless_work._entry_ptr = internal global ptr @wacom_wireless_work._entry, section ".printk_index", align 4
@wacom_wireless_work._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.2, i32 2475, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wireless tablet connected with PID %x\0A\00", [57 x i8] zeroinitializer }, align 32
@wacom_wireless_work._entry_ptr.76 = internal global ptr @wacom_wireless_work._entry.74, section ".printk_index", align 4
@wacom_wireless_work._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.72, ptr @.str.2, i32 2485, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ignoring unknown PID.\0A\00", [41 x i8] zeroinitializer }, align 32
@wacom_wireless_work._entry_ptr.79 = internal global ptr @wacom_wireless_work._entry.77, section ".printk_index", align 4
@wacom_remote_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 2663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"workitem triggered without status available\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wacom_remote_work\00", [46 x i8] zeroinitializer }, align 32
@wacom_remote_work._entry_ptr = internal global ptr @wacom_remote_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@wacom_remote_create_attr_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.83, ptr @.str.2, i32 1907, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wacom_remote_create_attr_group\00", [33 x i8] zeroinitializer }, align 32
@wacom_remote_create_attr_group._entry_ptr = internal global ptr @wacom_remote_create_attr_group._entry, section ".printk_index", align 4
@wacom_parse_and_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 2353, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown device_type for '%s'. %s.\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wacom_parse_and_register\00", [39 x i8] zeroinitializer }, align 32
@wacom_parse_and_register._entry_ptr = internal global ptr @wacom_parse_and_register._entry, section ".printk_index", align 4
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ignoring\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Assuming pen\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" (WL)\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@wacom_parse_and_register._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.85, ptr @.str.2, i32 2404, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@wacom_parse_and_register._entry_ptr.92 = internal global ptr @wacom_parse_and_register._entry.90, section ".printk_index", align 4
@wacom_feature_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 332, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"wacom_feature_mapping: could not get HID_DG_CONTACTMAX, defaulting to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wacom_feature_mapping\00", [42 x i8] zeroinitializer }, align 32
@wacom_feature_mapping._entry_ptr = internal global ptr @wacom_feature_mapping._entry, section ".printk_index", align 4
@wacom_feature_mapping._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HID_DG_INPUTMODE out of range\0A\00", [33 x i8] zeroinitializer }, align 32
@wacom_feature_mapping._entry_ptr.97 = internal global ptr @wacom_feature_mapping._entry.95, section ".printk_index", align 4
@wacom_feature_mapping._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 388, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: could not retrieve sensor offsets\0A\00", [57 x i8] zeroinitializer }, align 32
@wacom_feature_mapping._entry_ptr.100 = internal global ptr @wacom_feature_mapping._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Wacom HID\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %X\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Wacom\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WACOM\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Wacom %s\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%s Pen\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s%s Finger\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%s Pad\00", [23 x i8] zeroinitializer }, align 32
@wacom_udev_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.111, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wacom_udev_list_lock, i64 52), ptr getelementptr (i8, ptr @wacom_udev_list_lock, i64 52) }, ptr @wacom_udev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@wacom_udev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @wacom_udev_list, ptr @wacom_udev_list }, [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wacom_udev_list_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wacom_udev_list_lock\00", [43 x i8] zeroinitializer }, align 32
@wacom_initialize_remotes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&remote->remote_lock\00", [43 x i8] zeroinitializer }, align 32
@wacom_initialize_remotes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 2005, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed allocating remote_fifo\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wacom_initialize_remotes\00", [39 x i8] zeroinitializer }, align 32
@wacom_initialize_remotes._entry_ptr = internal global ptr @wacom_initialize_remotes._entry, section ".printk_index", align 4
@remote0_serial_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @remote0_serial_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@remote1_serial_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @remote1_serial_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@remote2_serial_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @remote2_serial_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@remote3_serial_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @remote3_serial_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@remote4_serial_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @remote4_serial_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wacom_remote\00", [19 x i8] zeroinitializer }, align 32
@remote_unpair_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @unpair_remote_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@wacom_initialize_remotes._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.115, ptr @.str.2, i32 2024, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wacom_initialize_remotes._entry_ptr.118 = internal global ptr @wacom_initialize_remotes._entry.117, section ".printk_index", align 4
@remote0_serial_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @remote0_mode_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@remote0_mode_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.119, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_show_remote0_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remote_mode\00", [20 x i8] zeroinitializer }, align 32
@remote1_serial_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @remote1_mode_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@remote1_mode_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.119, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_show_remote1_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@remote2_serial_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @remote2_mode_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@remote2_mode_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.119, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_show_remote2_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@remote3_serial_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @remote3_mode_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@remote3_mode_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.119, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_show_remote3_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@remote4_serial_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @remote4_mode_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@remote4_mode_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.119, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wacom_show_remote4_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@unpair_remote_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.120, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @wacom_store_unpair_remote }, [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unpair_remote\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"*\0A\00", [29 x i8] zeroinitializer }, align 32
@wacom_store_unpair_remote._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1948, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"remote: unrecognized unpair code: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wacom_store_unpair_remote\00", [38 x i8] zeroinitializer }, align 32
@wacom_store_unpair_remote._entry_ptr = internal global ptr @wacom_store_unpair_remote._entry, section ".printk_index", align 4
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@wacom_wac_queue_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 85, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: unable to flush event due to error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wacom_wac_queue_flush\00", [42 x i8] zeroinitializer }, align 32
@wacom_wac_queue_flush._entry_ptr = internal global ptr @wacom_wac_queue_flush._entry, section ".printk_index", align 4
@wacom_wac_queue_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 64, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: kfifo has filled, starting to drop events\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wacom_wac_queue_insert\00", [41 x i8] zeroinitializer }, align 32
@wacom_wac_queue_insert._entry_ptr = internal global ptr @wacom_wac_queue_insert._entry, section ".printk_index", align 4
@switch.table._wacom_query_tablet_data = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 18, i32 131, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 26, i64 29, i64 46, i64 53]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 26, i64 29]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.181 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 47, i64 66, i64 73]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 32, i64 852018, i64 852059, i64 4279042140, i64 4279042167]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 852059, i64 4279042140, i64 4279042167]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 32, i64 64]
@__sancov_gen_cov_switch_values.185 = internal global [13 x i64] [i64 11, i64 32, i64 851968, i64 852050, i64 852053, i64 4278779904, i64 4279045424, i64 4279045425, i64 4279045426, i64 4279045427, i64 4279046146, i64 4279046194, i64 4279304192]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 4278779906, i64 4279304194]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 4278779921, i64 4279304209]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.208 = internal global [7 x i64] [i64 5, i64 32, i64 851972, i64 851973, i64 4278190085, i64 4278779921, i64 4279304209]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 851970, i64 852000]
@__sancov_gen_cov_switch_values.210 = internal global [8 x i64] [i64 6, i64 32, i64 851969, i64 851970, i64 4278779906, i64 4279042049, i64 4279042050, i64 4279304194]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 32, i64 65584, i64 65585, i64 852016]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 15]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.222 = internal global [4 x i64] [i64 2, i64 32, i64 851970, i64 852000]
@__sancov_gen_cov_switch_values.223 = internal global [8 x i64] [i64 6, i64 32, i64 851969, i64 851970, i64 4278779906, i64 4279042049, i64 4279042050, i64 4279304194]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1593, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [23 x i8] c"generic_led_attr_group\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1216, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1614, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [23 x i8] c"intuos4_led_attr_group\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1194, i32 37 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1631, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [22 x i8] c"cintiq_led_attr_group\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1173, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1651, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [23 x i8] c"intuos5_led_attr_group\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1205, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1665, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1676, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1687, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [13 x i8] c"wacom_driver\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2856, i32 26 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2870, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1368, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1379, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1404, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 33, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 50, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1243, i32 11 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1231, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1217, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"generic_led_attrs\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1210, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"dev_attr_status0_luminance\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [28 x i8] c"dev_attr_status_led0_select\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1116, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1073, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [18 x i8] c"intuos4_led_attrs\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1178, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant [27 x i8] c"dev_attr_status1_luminance\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [27 x i8] c"dev_attr_buttons_luminance\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [24 x i8] c"dev_attr_button0_rawimg\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [24 x i8] c"dev_attr_button1_rawimg\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [24 x i8] c"dev_attr_button2_rawimg\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [24 x i8] c"dev_attr_button3_rawimg\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [24 x i8] c"dev_attr_button4_rawimg\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [24 x i8] c"dev_attr_button5_rawimg\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [24 x i8] c"dev_attr_button6_rawimg\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [24 x i8] c"dev_attr_button7_rawimg\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1117, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1118, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1158, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1159, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1160, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1161, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1162, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1163, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1164, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1165, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"cintiq_led_attrs\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1167, i32 26 }
@___asan_gen_.426 = private unnamed_addr constant [28 x i8] c"dev_attr_status_led1_select\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1074, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [18 x i8] c"intuos5_led_attrs\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1199, i32 26 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c"wacom_battery_props\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1708, i32 35 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1778, i32 29 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2778, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2779, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2780, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2781, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2782, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2783, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2788, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [15 x i8] c"dev_attr_speed\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2799, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1283, i32 13 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 640, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2470, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2474, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2485, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2662, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1898, i32 10 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1906, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2351, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2363, i32 38 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2363, i32 48 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2404, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 329, i32 5 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 340, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 387, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2214, i32 49 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2224, i32 33 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2226, i32 35 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2228, i32 28 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2231, i32 33 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2236, i32 29 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2250, i32 53 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2255, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2257, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2259, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c"wacom_udev_list_lock\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [16 x i8] c"wacom_udev_list\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 747, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 748, i32 8 }
@___asan_gen_.648 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1999, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2005, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant [21 x i8] c"remote0_serial_group\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [21 x i8] c"remote1_serial_group\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [21 x i8] c"remote2_serial_group\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c"remote3_serial_group\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c"remote4_serial_group\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2015, i32 46 }
@___asan_gen_.681 = private unnamed_addr constant [20 x i8] c"remote_unpair_attrs\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1965, i32 32 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2023, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c"remote0_serial_attrs\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [18 x i8] c"remote0_mode_attr\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1884, i32 1 }
@___asan_gen_.696 = private unnamed_addr constant [21 x i8] c"remote1_serial_attrs\00", align 1
@___asan_gen_.699 = private unnamed_addr constant [18 x i8] c"remote1_mode_attr\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1885, i32 1 }
@___asan_gen_.702 = private unnamed_addr constant [21 x i8] c"remote2_serial_attrs\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [18 x i8] c"remote2_mode_attr\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1886, i32 1 }
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c"remote3_serial_attrs\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [18 x i8] c"remote3_mode_attr\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1887, i32 1 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"remote4_serial_attrs\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [18 x i8] c"remote4_mode_attr\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1888, i32 1 }
@___asan_gen_.720 = private unnamed_addr constant [19 x i8] c"unpair_remote_attr\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1960, i32 30 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1961, i32 19 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1944, i32 20 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1947, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1847, i32 8 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1825, i32 25 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 84, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.760 = private constant [27 x i8] c"../drivers/hid/wacom_sys.c\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 64, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant [38 x i8] c"switch.table._wacom_query_tablet_data\00", align 1
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_version239, ptr @__exitcall_wacom_driver_exit, ptr @__initcall__kmod_wacom__238_2868_wacom_driver_init6, ptr @__modver_attr, ptr @wacom_bt_query_tablet_data._entry, ptr @wacom_bt_query_tablet_data._entry_ptr, ptr @wacom_driver_exit, ptr @wacom_feature_mapping._entry, ptr @wacom_feature_mapping._entry.95, ptr @wacom_feature_mapping._entry.98, ptr @wacom_feature_mapping._entry_ptr, ptr @wacom_feature_mapping._entry_ptr.100, ptr @wacom_feature_mapping._entry_ptr.97, ptr @wacom_get_report._entry, ptr @wacom_get_report._entry_ptr, ptr @wacom_initialize_leds._entry, ptr @wacom_initialize_leds._entry.11, ptr @wacom_initialize_leds._entry.13, ptr @wacom_initialize_leds._entry.15, ptr @wacom_initialize_leds._entry.5, ptr @wacom_initialize_leds._entry.7, ptr @wacom_initialize_leds._entry.9, ptr @wacom_initialize_leds._entry_ptr, ptr @wacom_initialize_leds._entry_ptr.10, ptr @wacom_initialize_leds._entry_ptr.12, ptr @wacom_initialize_leds._entry_ptr.14, ptr @wacom_initialize_leds._entry_ptr.17, ptr @wacom_initialize_leds._entry_ptr.6, ptr @wacom_initialize_leds._entry_ptr.8, ptr @wacom_initialize_remotes._entry, ptr @wacom_initialize_remotes._entry.117, ptr @wacom_initialize_remotes._entry_ptr, ptr @wacom_initialize_remotes._entry_ptr.118, ptr @wacom_led_register_one._entry, ptr @wacom_led_register_one._entry.24, ptr @wacom_led_register_one._entry_ptr, ptr @wacom_led_register_one._entry_ptr.26, ptr @wacom_parse_and_register._entry, ptr @wacom_parse_and_register._entry.90, ptr @wacom_parse_and_register._entry_ptr, ptr @wacom_parse_and_register._entry_ptr.92, ptr @wacom_probe._entry, ptr @wacom_probe._entry.64, ptr @wacom_probe._entry_ptr, ptr @wacom_probe._entry_ptr.67, ptr @wacom_remote_create_attr_group._entry, ptr @wacom_remote_create_attr_group._entry_ptr, ptr @wacom_remote_work._entry, ptr @wacom_remote_work._entry_ptr, ptr @wacom_set_report._entry, ptr @wacom_set_report._entry_ptr, ptr @wacom_store_unpair_remote._entry, ptr @wacom_store_unpair_remote._entry_ptr, ptr @wacom_wac_queue_flush._entry, ptr @wacom_wac_queue_flush._entry_ptr, ptr @wacom_wac_queue_insert._entry, ptr @wacom_wac_queue_insert._entry_ptr, ptr @wacom_wireless_work._entry, ptr @wacom_wireless_work._entry.74, ptr @wacom_wireless_work._entry.77, ptr @wacom_wireless_work._entry_ptr, ptr @wacom_wireless_work._entry_ptr.76, ptr @wacom_wireless_work._entry_ptr.79, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @generic_led_attr_group, ptr @intuos4_led_attr_group, ptr @cintiq_led_attr_group, ptr @intuos5_led_attr_group, ptr @.str.16, ptr @wacom_driver, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @generic_led_attrs, ptr @dev_attr_status0_luminance, ptr @dev_attr_status_led0_select, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @intuos4_led_attrs, ptr @dev_attr_status1_luminance, ptr @dev_attr_buttons_luminance, ptr @dev_attr_button0_rawimg, ptr @dev_attr_button1_rawimg, ptr @dev_attr_button2_rawimg, ptr @dev_attr_button3_rawimg, ptr @dev_attr_button4_rawimg, ptr @dev_attr_button5_rawimg, ptr @dev_attr_button6_rawimg, ptr @dev_attr_button7_rawimg, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @cintiq_led_attrs, ptr @dev_attr_status_led1_select, ptr @.str.47, ptr @intuos5_led_attrs, ptr @wacom_battery_props, ptr @.str.48, ptr @wacom_probe.__key, ptr @.str.49, ptr @wacom_probe.__key.50, ptr @.str.51, ptr @wacom_probe.__key.52, ptr @.str.53, ptr @wacom_probe.__key.54, ptr @.str.55, ptr @wacom_probe.__key.56, ptr @.str.57, ptr @wacom_probe.__key.58, ptr @.str.59, ptr @wacom_probe.__key.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @dev_attr_speed, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @wacom_udev_list_lock, ptr @wacom_udev_list, ptr @.str.111, ptr @.str.112, ptr @wacom_initialize_remotes.__key, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @remote0_serial_group, ptr @remote1_serial_group, ptr @remote2_serial_group, ptr @remote3_serial_group, ptr @remote4_serial_group, ptr @.str.116, ptr @remote_unpair_attrs, ptr @remote0_serial_attrs, ptr @remote0_mode_attr, ptr @.str.119, ptr @remote1_serial_attrs, ptr @remote1_mode_attr, ptr @remote2_serial_attrs, ptr @remote2_mode_attr, ptr @remote3_serial_attrs, ptr @remote3_mode_attr, ptr @remote4_serial_attrs, ptr @remote4_mode_attr, ptr @unpair_remote_attr, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @switch.table._wacom_query_tablet_data], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_led_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_leds._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intuos4_led_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_leds._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cintiq_led_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_leds._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intuos5_led_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_leds._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_leds._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_leds._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_led_register_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_led_register_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_get_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_set_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_led_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status0_luminance to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status_led0_select to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intuos4_led_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status1_luminance to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_buttons_luminance to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button0_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button1_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button2_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button3_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button4_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button5_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button6_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_button7_rawimg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cintiq_led_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status_led1_select to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intuos5_led_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_battery_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_bt_query_tablet_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_wireless_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_wireless_work._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_wireless_work._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_remote_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_remote_create_attr_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_parse_and_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_parse_and_register._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_feature_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_feature_mapping._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_feature_mapping._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_udev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_udev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_remotes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_remotes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote0_serial_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote1_serial_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote2_serial_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote3_serial_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote4_serial_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote_unpair_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_initialize_remotes._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote0_serial_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote0_mode_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote1_serial_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote1_mode_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote2_serial_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote2_mode_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote3_serial_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote3_mode_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote4_serial_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote4_mode_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unpair_remote_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_store_unpair_remote._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_wac_queue_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_wac_queue_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wacom_query_tablet_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wacom_leds_brightness_get(ptr nocapture noundef readonly %led) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wacom1 = getelementptr inbounds %struct.wacom_led, ptr %led, i32 0, i32 2
  %0 = ptrtoint ptr %wacom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wacom1, align 4
  %max_hlv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 6
  %2 = ptrtoint ptr %max_hlv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_hlv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hlv = getelementptr inbounds %struct.wacom_led, ptr %led, i32 0, i32 6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %max_llv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 5
  %4 = ptrtoint ptr %max_llv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_llv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %llv = getelementptr inbounds %struct.wacom_led, ptr %led, i32 0, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.then
  %.sink24.in = phi ptr [ %llv, %if.then8 ], [ %hlv, %if.then ]
  %.sink = phi i8 [ %5, %if.then8 ], [ %3, %if.then ]
  %6 = ptrtoint ptr %.sink24.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %.sink24 = load i8, ptr %.sink24.in, align 1
  %conv9 = zext i8 %.sink24 to i16
  %mul10 = mul nuw i16 %conv9, 255
  %div14.rhs.trunc = zext i8 %.sink to i16
  %div1422 = udiv i16 %mul10, %div14.rhs.trunc
  %phi.cast = zext i16 %div1422 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0.shrunk = phi i32 [ 255, %if.end.cleanup_crit_edge ], [ %phi.cast, %cleanup.sink.split ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @wacom_led_find(ptr nocapture noundef readonly %wacom, i32 noundef %group_id, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %group_id)
  %cmp.not = icmp ugt i32 %1, %group_id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %led = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led, align 4
  %leds = getelementptr %struct.wacom_group_leds, ptr %3, i32 %group_id, i32 1
  %4 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %leds, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %count4 = getelementptr %struct.wacom_group_leds, ptr %3, i32 %group_id, i32 2
  %6 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count4, align 4
  %rem = urem i32 %id, %7
  %arrayidx6 = getelementptr %struct.wacom_led, ptr %5, i32 %rem
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx6, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wacom_led_next(ptr noundef readonly %wacom, ptr noundef readonly %cur) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wacom, null
  %tobool1.not = icmp eq ptr %cur, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %group2 = getelementptr inbounds %struct.wacom_led, ptr %cur, i32 0, i32 3
  %0 = ptrtoint ptr %group2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %group2, align 4
  %id = getelementptr inbounds %struct.wacom_led, ptr %cur, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %count.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.not.i = icmp ugt i32 %5, %1
  br i1 %cmp.not.i, label %if.end.split, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.split:                                     ; preds = %if.end
  %led.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %6 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led.i, align 4
  %leds.i = getelementptr %struct.wacom_group_leds, ptr %7, i32 %1, i32 1
  %8 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %leds.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.split.cleanup_crit_edge, label %if.end.split.split

if.end.split.cleanup_crit_edge:                   ; preds = %if.end.split
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.split.split:                               ; preds = %if.end.split
  %count4.i = getelementptr %struct.wacom_group_leds, ptr %7, i32 %1, i32 2
  %10 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count4.i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end.split.split
  %next.0 = phi i32 [ %3, %if.end.split.split ], [ %inc, %do.cond.do.body_crit_edge ]
  %inc = add i32 %next.0, 1
  %rem.i = urem i32 %inc, %11
  %arrayidx6.i = getelementptr %struct.wacom_led, ptr %9, i32 %rem.i
  %tobool3.not = icmp eq ptr %arrayidx6.i, null
  %cmp = icmp eq ptr %arrayidx6.i, %cur
  %or.cond20 = or i1 %tobool3.not, %cmp
  br i1 %or.cond20, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %arrayidx6.i, i32 0, i32 24
  %12 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trigger, align 4
  %trigger7 = getelementptr %struct.wacom_led, ptr %9, i32 %rem.i, i32 1
  %cmp8.not = icmp eq ptr %13, %trigger7
  br i1 %cmp8.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.split.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end.split.cleanup_crit_edge ], [ %arrayidx6.i, %do.body.cleanup_crit_edge ], [ %arrayidx6.i, %do.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wacom_initialize_leds(ptr noundef %wacom) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device_type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 13
  %0 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_type, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 53, label %sw.bb
    i32 13, label %if.end.sw.bb11_crit_edge
    i32 14, label %if.end.sw.bb11_crit_edge290
    i32 15, label %if.end.sw.bb11_crit_edge291
    i32 16, label %if.end.sw.bb11_crit_edge292
    i32 29, label %if.end.sw.bb29_crit_edge
    i32 26, label %if.end.sw.bb29_crit_edge293
    i32 17, label %if.end.sw.bb46_crit_edge
    i32 18, label %if.end.sw.bb46_crit_edge294
    i32 19, label %if.end.sw.bb46_crit_edge295
    i32 20, label %if.end.sw.bb46_crit_edge296
    i32 21, label %if.end.sw.bb46_crit_edge297
    i32 22, label %if.end.sw.bb46_crit_edge298
    i32 23, label %sw.bb61
    i32 46, label %sw.bb75
  ]

if.end.sw.bb46_crit_edge298:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

if.end.sw.bb46_crit_edge297:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

if.end.sw.bb46_crit_edge296:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

if.end.sw.bb46_crit_edge295:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

if.end.sw.bb46_crit_edge294:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

if.end.sw.bb46_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

if.end.sw.bb29_crit_edge293:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb29

if.end.sw.bb29_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb29

if.end.sw.bb11_crit_edge292:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11

if.end.sw.bb11_crit_edge291:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11

if.end.sw.bb11_crit_edge290:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %generic_has_leds = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 11
  %5 = ptrtoint ptr %generic_has_leds to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %generic_has_leds, align 8, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %sw.bb.cleanup_crit_edge, label %if.end5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %llv = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %llv to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 100, ptr %llv, align 4
  %max_llv = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 5
  %8 = ptrtoint ptr %max_llv to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 100, ptr %max_llv, align 1
  %call = tail call fastcc i32 @wacom_leds_alloc_and_register(ptr noundef %wacom, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %sw.epilog, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %hdev = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #20
  br label %cleanup

sw.bb11:                                          ; preds = %if.end.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge290, %if.end.sw.bb11_crit_edge291, %if.end.sw.bb11_crit_edge292
  %llv13 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %llv13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %llv13, align 4
  %hlv = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %hlv to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %hlv, align 1
  %max_llv16 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 5
  %13 = ptrtoint ptr %max_llv16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %max_llv16, align 1
  %max_hlv = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %max_hlv to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %max_hlv, align 4
  %img_lum = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 4
  %15 = ptrtoint ptr %img_lum to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %img_lum, align 2
  %pad_input.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 14
  %16 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pad_input.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %sw.bb11.do.end24_crit_edge, label %if.end.i

sw.bb11.do.end24_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end24

if.end.i:                                         ; preds = %sw.bb11
  %dev3.i = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 40
  %hdev.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %18 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 18
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i, i32 noundef 16, i32 noundef 3520) #17
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end24_crit_edge, label %wacom_led_groups_allocate.exit.i

if.end.i.do.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end24

wacom_led_groups_allocate.exit.i:                 ; preds = %if.end.i
  %call.i.i.i = tail call i32 @devm_add_action(ptr noundef %dev1.i.i, ptr noundef nonnull @wacom_led_groups_release, ptr noundef %wacom) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  %led.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %call5.i.i..i.i = select i1 %tobool.not.i.i.i, ptr %call5.i.i.i.i, ptr null
  %count..i.i = zext i1 %tobool.not.i.i.i to i32
  %20 = ptrtoint ptr %led.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i..i.i, ptr %led.i.i, align 4
  %count.i.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %count..i.i, ptr %count.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %for.body.i.preheader, label %wacom_led_groups_allocate.exit.i.do.end24_crit_edge

wacom_led_groups_allocate.exit.i.do.end24_crit_edge: ; preds = %wacom_led_groups_allocate.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end24

for.body.i.preheader:                             ; preds = %wacom_led_groups_allocate.exit.i
  %call8.i = tail call fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev3.i, ptr noundef %wacom, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.preheader.do.end24_crit_edge

for.body.i.preheader.do.end24_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end24

for.cond.i:                                       ; preds = %for.body.i.preheader
  %22 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdev.i.i, align 8
  %call.i.i = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @wacom_devm_sysfs_group_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.31) #17
  %tobool.not.i.i152 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i152, label %for.cond.i.do.end93_crit_edge, label %if.end.i.i

for.cond.i.do.end93_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end93

do.end24:                                         ; preds = %for.body.i.preheader.do.end24_crit_edge, %wacom_led_groups_allocate.exit.i.do.end24_crit_edge, %if.end.i.do.end24_crit_edge, %sw.bb11.do.end24_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.do.end24_crit_edge ], [ %call.i.i.i, %wacom_led_groups_allocate.exit.i.do.end24_crit_edge ], [ -22, %sw.bb11.do.end24_crit_edge ], [ %call8.i, %for.body.i.preheader.do.end24_crit_edge ]
  %hdev25 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %24 = ptrtoint ptr %hdev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev25, align 8
  %dev26 = getelementptr inbounds %struct.hid_device, ptr %25, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str, i32 noundef %retval.0.i.ph) #20
  br label %cleanup

if.end.i.i:                                       ; preds = %for.cond.i
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 18
  %26 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @intuos4_led_attr_group, ptr %call.i.i, align 4
  %root2.i.i = getelementptr inbounds %struct.wacom_sysfs_group_devres, ptr %call.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %root2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev.i, ptr %root2.i.i, align 4
  %call4.i.i = tail call i32 @sysfs_create_group(ptr noundef %dev.i, ptr noundef nonnull @intuos4_led_attr_group) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i.i.do.end93.sink.split_crit_edge

if.end.i.i.do.end93.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end93.sink.split

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  tail call void @devres_add(ptr noundef %dev.i.i, ptr noundef nonnull %call.i.i) #17
  br label %cleanup

sw.bb29:                                          ; preds = %if.end.sw.bb29_crit_edge, %if.end.sw.bb29_crit_edge293
  %llv31 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %30 = ptrtoint ptr %llv31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %llv31, align 4
  %hlv33 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 3
  %31 = ptrtoint ptr %hlv33 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %hlv33, align 1
  %img_lum35 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 4
  %32 = ptrtoint ptr %img_lum35 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %img_lum35, align 2
  %pad_input.i153 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 14
  %33 = ptrtoint ptr %pad_input.i153 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pad_input.i153, align 8
  %tobool.not.i154 = icmp eq ptr %34, null
  br i1 %tobool.not.i154, label %sw.bb29.do.end41_crit_edge, label %if.end.i158

sw.bb29.do.end41_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

if.end.i158:                                      ; preds = %sw.bb29
  %dev3.i155 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 40
  %hdev.i.i156 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %35 = ptrtoint ptr %hdev.i.i156 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdev.i.i156, align 8
  %dev1.i.i157 = getelementptr inbounds %struct.hid_device, ptr %36, i32 0, i32 18
  %call5.i.i.i.i159 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i157, i32 noundef 32, i32 noundef 3520) #17
  %tobool.not.i.i160 = icmp eq ptr %call5.i.i.i.i159, null
  br i1 %tobool.not.i.i160, label %if.end.i158.do.end41_crit_edge, label %wacom_led_groups_allocate.exit.i167

if.end.i158.do.end41_crit_edge:                   ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

wacom_led_groups_allocate.exit.i167:              ; preds = %if.end.i158
  %call.i.i.i161 = tail call i32 @devm_add_action(ptr noundef %dev1.i.i157, ptr noundef nonnull @wacom_led_groups_release, ptr noundef %wacom) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i161)
  %tobool.not.i.i.i162 = icmp eq i32 %call.i.i.i161, 0
  %led.i.i163 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %call5.i.i..i.i164 = select i1 %tobool.not.i.i.i162, ptr %call5.i.i.i.i159, ptr null
  %count..i.i165 = select i1 %tobool.not.i.i.i162, i32 2, i32 0
  %37 = ptrtoint ptr %led.i.i163 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i..i.i164, ptr %led.i.i163, align 4
  %count.i.i.i166 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %count.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %count..i.i165, ptr %count.i.i.i166, align 4
  br i1 %tobool.not.i.i.i162, label %for.body.i175.preheader, label %wacom_led_groups_allocate.exit.i167.do.end41_crit_edge

wacom_led_groups_allocate.exit.i167.do.end41_crit_edge: ; preds = %wacom_led_groups_allocate.exit.i167
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

for.body.i175.preheader:                          ; preds = %wacom_led_groups_allocate.exit.i167
  %call8.i173 = tail call fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev3.i155, ptr noundef %wacom, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i173)
  %tobool9.not.i174 = icmp eq i32 %call8.i173, 0
  br i1 %tobool9.not.i174, label %for.cond.i171, label %for.body.i175.preheader.do.end41_crit_edge

for.body.i175.preheader.do.end41_crit_edge:       ; preds = %for.body.i175.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

for.cond.i171:                                    ; preds = %for.body.i175.preheader
  %call8.i173.1 = tail call fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev3.i155, ptr noundef %wacom, i32 noundef 1, i32 noundef 4, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i173.1)
  %tobool9.not.i174.1 = icmp eq i32 %call8.i173.1, 0
  br i1 %tobool9.not.i174.1, label %for.cond.i171.1, label %for.cond.i171.do.end41_crit_edge

for.cond.i171.do.end41_crit_edge:                 ; preds = %for.cond.i171
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

for.cond.i171.1:                                  ; preds = %for.cond.i171
  %39 = ptrtoint ptr %hdev.i.i156 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdev.i.i156, align 8
  %call.i.i179 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @wacom_devm_sysfs_group_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.31) #17
  %tobool.not.i.i180 = icmp eq ptr %call.i.i179, null
  br i1 %tobool.not.i.i180, label %for.cond.i171.1.do.end93_crit_edge, label %if.end.i.i185

for.cond.i171.1.do.end93_crit_edge:               ; preds = %for.cond.i171.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end93

do.end41:                                         ; preds = %for.cond.i171.do.end41_crit_edge, %for.body.i175.preheader.do.end41_crit_edge, %wacom_led_groups_allocate.exit.i167.do.end41_crit_edge, %if.end.i158.do.end41_crit_edge, %sw.bb29.do.end41_crit_edge
  %retval.0.i176.ph = phi i32 [ -12, %if.end.i158.do.end41_crit_edge ], [ %call.i.i.i161, %wacom_led_groups_allocate.exit.i167.do.end41_crit_edge ], [ -22, %sw.bb29.do.end41_crit_edge ], [ %call8.i173, %for.body.i175.preheader.do.end41_crit_edge ], [ %call8.i173.1, %for.cond.i171.do.end41_crit_edge ]
  %hdev42 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %41 = ptrtoint ptr %hdev42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev42, align 8
  %dev43 = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str, i32 noundef %retval.0.i176.ph) #20
  br label %cleanup

if.end.i.i185:                                    ; preds = %for.cond.i171.1
  %dev.i181 = getelementptr inbounds %struct.hid_device, ptr %40, i32 0, i32 18
  %43 = ptrtoint ptr %call.i.i179 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @cintiq_led_attr_group, ptr %call.i.i179, align 4
  %root2.i.i182 = getelementptr inbounds %struct.wacom_sysfs_group_devres, ptr %call.i.i179, i32 0, i32 1
  %44 = ptrtoint ptr %root2.i.i182 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev.i181, ptr %root2.i.i182, align 4
  %call4.i.i183 = tail call i32 @sysfs_create_group(ptr noundef %dev.i181, ptr noundef nonnull @cintiq_led_attr_group) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i183)
  %tobool5.not.i.i184 = icmp eq i32 %call4.i.i183, 0
  br i1 %tobool5.not.i.i184, label %if.end7.i.i188, label %if.end.i.i185.do.end93.sink.split_crit_edge

if.end.i.i185.do.end93.sink.split_crit_edge:      ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end93.sink.split

if.end7.i.i188:                                   ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %hdev.i.i156 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdev.i.i156, align 8
  %dev.i.i187 = getelementptr inbounds %struct.hid_device, ptr %46, i32 0, i32 18
  tail call void @devres_add(ptr noundef %dev.i.i187, ptr noundef nonnull %call.i.i179) #17
  br label %cleanup

sw.bb46:                                          ; preds = %if.end.sw.bb46_crit_edge, %if.end.sw.bb46_crit_edge294, %if.end.sw.bb46_crit_edge295, %if.end.sw.bb46_crit_edge296, %if.end.sw.bb46_crit_edge297, %if.end.sw.bb46_crit_edge298
  %llv48 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %47 = ptrtoint ptr %llv48 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 32, ptr %llv48, align 4
  %max_llv50 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 5
  %48 = ptrtoint ptr %max_llv50 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 96, ptr %max_llv50, align 1
  %pad_input.i191 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 14
  %49 = ptrtoint ptr %pad_input.i191 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pad_input.i191, align 8
  %tobool.not.i192 = icmp eq ptr %50, null
  br i1 %tobool.not.i192, label %sw.bb46.do.end56_crit_edge, label %if.end.i196

sw.bb46.do.end56_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

if.end.i196:                                      ; preds = %sw.bb46
  %dev3.i193 = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 40
  %hdev.i.i194 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %51 = ptrtoint ptr %hdev.i.i194 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdev.i.i194, align 8
  %dev1.i.i195 = getelementptr inbounds %struct.hid_device, ptr %52, i32 0, i32 18
  %call5.i.i.i.i197 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i195, i32 noundef 16, i32 noundef 3520) #17
  %tobool.not.i.i198 = icmp eq ptr %call5.i.i.i.i197, null
  br i1 %tobool.not.i.i198, label %if.end.i196.do.end56_crit_edge, label %wacom_led_groups_allocate.exit.i205

if.end.i196.do.end56_crit_edge:                   ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

wacom_led_groups_allocate.exit.i205:              ; preds = %if.end.i196
  %call.i.i.i199 = tail call i32 @devm_add_action(ptr noundef %dev1.i.i195, ptr noundef nonnull @wacom_led_groups_release, ptr noundef %wacom) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i199)
  %tobool.not.i.i.i200 = icmp eq i32 %call.i.i.i199, 0
  %led.i.i201 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %call5.i.i..i.i202 = select i1 %tobool.not.i.i.i200, ptr %call5.i.i.i.i197, ptr null
  %count..i.i203 = zext i1 %tobool.not.i.i.i200 to i32
  %53 = ptrtoint ptr %led.i.i201 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i..i.i202, ptr %led.i.i201, align 4
  %count.i.i.i204 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %count.i.i.i204 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %count..i.i203, ptr %count.i.i.i204, align 4
  br i1 %tobool.not.i.i.i200, label %for.body.i213.preheader, label %wacom_led_groups_allocate.exit.i205.do.end56_crit_edge

wacom_led_groups_allocate.exit.i205.do.end56_crit_edge: ; preds = %wacom_led_groups_allocate.exit.i205
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

for.body.i213.preheader:                          ; preds = %wacom_led_groups_allocate.exit.i205
  %call8.i211 = tail call fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev3.i193, ptr noundef %wacom, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i211)
  %tobool9.not.i212 = icmp eq i32 %call8.i211, 0
  br i1 %tobool9.not.i212, label %for.cond.i209, label %for.body.i213.preheader.do.end56_crit_edge

for.body.i213.preheader.do.end56_crit_edge:       ; preds = %for.body.i213.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end56

for.cond.i209:                                    ; preds = %for.body.i213.preheader
  %55 = ptrtoint ptr %hdev.i.i194 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdev.i.i194, align 8
  %call.i.i217 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @wacom_devm_sysfs_group_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.31) #17
  %tobool.not.i.i218 = icmp eq ptr %call.i.i217, null
  br i1 %tobool.not.i.i218, label %for.cond.i209.do.end93_crit_edge, label %if.end.i.i223

for.cond.i209.do.end93_crit_edge:                 ; preds = %for.cond.i209
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end93

do.end56:                                         ; preds = %for.body.i213.preheader.do.end56_crit_edge, %wacom_led_groups_allocate.exit.i205.do.end56_crit_edge, %if.end.i196.do.end56_crit_edge, %sw.bb46.do.end56_crit_edge
  %retval.0.i214.ph = phi i32 [ -12, %if.end.i196.do.end56_crit_edge ], [ %call.i.i.i199, %wacom_led_groups_allocate.exit.i205.do.end56_crit_edge ], [ -22, %sw.bb46.do.end56_crit_edge ], [ %call8.i211, %for.body.i213.preheader.do.end56_crit_edge ]
  %hdev57 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %57 = ptrtoint ptr %hdev57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hdev57, align 8
  %dev58 = getelementptr inbounds %struct.hid_device, ptr %58, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str, i32 noundef %retval.0.i214.ph) #20
  br label %cleanup

if.end.i.i223:                                    ; preds = %for.cond.i209
  %dev.i219 = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 18
  %59 = ptrtoint ptr %call.i.i217 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @intuos5_led_attr_group, ptr %call.i.i217, align 4
  %root2.i.i220 = getelementptr inbounds %struct.wacom_sysfs_group_devres, ptr %call.i.i217, i32 0, i32 1
  %60 = ptrtoint ptr %root2.i.i220 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev.i219, ptr %root2.i.i220, align 4
  %call4.i.i221 = tail call i32 @sysfs_create_group(ptr noundef %dev.i219, ptr noundef nonnull @intuos5_led_attr_group) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i221)
  %tobool5.not.i.i222 = icmp eq i32 %call4.i.i221, 0
  br i1 %tobool5.not.i.i222, label %if.end7.i.i226, label %if.end.i.i223.do.end93.sink.split_crit_edge

if.end.i.i223.do.end93.sink.split_crit_edge:      ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end93.sink.split

if.end7.i.i226:                                   ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #19
  %61 = ptrtoint ptr %hdev.i.i194 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hdev.i.i194, align 8
  %dev.i.i225 = getelementptr inbounds %struct.hid_device, ptr %62, i32 0, i32 18
  tail call void @devres_add(ptr noundef %dev.i.i225, ptr noundef nonnull %call.i.i217) #17
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  %llv63 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %63 = ptrtoint ptr %llv63 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 50, ptr %llv63, align 4
  %max_llv65 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 5
  %64 = ptrtoint ptr %max_llv65 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 100, ptr %max_llv65, align 1
  %pad_input.i229 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 14
  %65 = ptrtoint ptr %pad_input.i229 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pad_input.i229, align 8
  %tobool.not.i230 = icmp eq ptr %66, null
  br i1 %tobool.not.i230, label %sw.bb61.do.end71_crit_edge, label %if.end.i234

sw.bb61.do.end71_crit_edge:                       ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end71

if.end.i234:                                      ; preds = %sw.bb61
  %dev3.i231 = getelementptr inbounds %struct.input_dev, ptr %66, i32 0, i32 40
  %hdev.i.i232 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %67 = ptrtoint ptr %hdev.i.i232 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hdev.i.i232, align 8
  %dev1.i.i233 = getelementptr inbounds %struct.hid_device, ptr %68, i32 0, i32 18
  %call5.i.i.i.i235 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i233, i32 noundef 16, i32 noundef 3520) #17
  %tobool.not.i.i236 = icmp eq ptr %call5.i.i.i.i235, null
  br i1 %tobool.not.i.i236, label %if.end.i234.do.end71_crit_edge, label %wacom_led_groups_allocate.exit.i243

if.end.i234.do.end71_crit_edge:                   ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end71

wacom_led_groups_allocate.exit.i243:              ; preds = %if.end.i234
  %call.i.i.i237 = tail call i32 @devm_add_action(ptr noundef %dev1.i.i233, ptr noundef nonnull @wacom_led_groups_release, ptr noundef %wacom) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i237)
  %tobool.not.i.i.i238 = icmp eq i32 %call.i.i.i237, 0
  %led.i.i239 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %call5.i.i..i.i240 = select i1 %tobool.not.i.i.i238, ptr %call5.i.i.i.i235, ptr null
  %count..i.i241 = zext i1 %tobool.not.i.i.i238 to i32
  %69 = ptrtoint ptr %led.i.i239 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call5.i.i..i.i240, ptr %led.i.i239, align 4
  %count.i.i.i242 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %70 = ptrtoint ptr %count.i.i.i242 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %count..i.i241, ptr %count.i.i.i242, align 4
  br i1 %tobool.not.i.i.i238, label %for.body.i251.preheader, label %wacom_led_groups_allocate.exit.i243.do.end71_crit_edge

wacom_led_groups_allocate.exit.i243.do.end71_crit_edge: ; preds = %wacom_led_groups_allocate.exit.i243
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end71

for.body.i251.preheader:                          ; preds = %wacom_led_groups_allocate.exit.i243
  %call8.i249 = tail call fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev3.i231, ptr noundef %wacom, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i249)
  %tobool9.not.i250 = icmp eq i32 %call8.i249, 0
  br i1 %tobool9.not.i250, label %for.body.i251.preheader.cleanup_crit_edge, label %for.body.i251.preheader.do.end71_crit_edge

for.body.i251.preheader.do.end71_crit_edge:       ; preds = %for.body.i251.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end71

for.body.i251.preheader.cleanup_crit_edge:        ; preds = %for.body.i251.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end71:                                         ; preds = %for.body.i251.preheader.do.end71_crit_edge, %wacom_led_groups_allocate.exit.i243.do.end71_crit_edge, %if.end.i234.do.end71_crit_edge, %sw.bb61.do.end71_crit_edge
  %retval.0.i252.ph = phi i32 [ -12, %if.end.i234.do.end71_crit_edge ], [ %call.i.i.i237, %wacom_led_groups_allocate.exit.i243.do.end71_crit_edge ], [ -22, %sw.bb61.do.end71_crit_edge ], [ %call8.i249, %for.body.i251.preheader.do.end71_crit_edge ]
  %hdev72 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %71 = ptrtoint ptr %hdev72 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hdev72, align 8
  %dev73 = getelementptr inbounds %struct.hid_device, ptr %72, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str, i32 noundef %retval.0.i252.ph) #20
  br label %cleanup

sw.bb75:                                          ; preds = %if.end
  %llv77 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %73 = ptrtoint ptr %llv77 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %llv77, align 4
  %max_llv79 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 5
  %74 = ptrtoint ptr %max_llv79 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %max_llv79, align 1
  %hdev.i254 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %75 = ptrtoint ptr %hdev.i254 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hdev.i254, align 8
  %dev1.i = getelementptr inbounds %struct.hid_device, ptr %76, i32 0, i32 18
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 80, i32 noundef 3520) #17
  %tobool.not.i255 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i255, label %sw.bb75.do.end85_crit_edge, label %wacom_led_groups_allocate.exit

sw.bb75.do.end85_crit_edge:                       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end85

wacom_led_groups_allocate.exit:                   ; preds = %sw.bb75
  %call.i.i256 = tail call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @wacom_led_groups_release, ptr noundef %wacom) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %tobool.not.i.i257 = icmp eq i32 %call.i.i256, 0
  %led.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %call5.i.i..i = select i1 %tobool.not.i.i257, ptr %call5.i.i.i, ptr null
  %count..i = select i1 %tobool.not.i.i257, i32 5, i32 0
  %77 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call5.i.i..i, ptr %led.i, align 4
  %count.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %78 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %count..i, ptr %count.i.i, align 4
  br i1 %tobool.not.i.i257, label %wacom_led_groups_allocate.exit.cleanup_crit_edge, label %wacom_led_groups_allocate.exit.do.end85_crit_edge

wacom_led_groups_allocate.exit.do.end85_crit_edge: ; preds = %wacom_led_groups_allocate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end85

wacom_led_groups_allocate.exit.cleanup_crit_edge: ; preds = %wacom_led_groups_allocate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end85:                                         ; preds = %wacom_led_groups_allocate.exit.do.end85_crit_edge, %sw.bb75.do.end85_crit_edge
  %retval.0.i259274 = phi i32 [ %call.i.i256, %wacom_led_groups_allocate.exit.do.end85_crit_edge ], [ -12, %sw.bb75.do.end85_crit_edge ]
  %79 = ptrtoint ptr %hdev.i254 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hdev.i254, align 8
  %dev87 = getelementptr inbounds %struct.hid_device, ptr %80, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str, i32 noundef %retval.0.i259274) #20
  br label %cleanup

sw.epilog:                                        ; preds = %if.end5
  %call10 = tail call fastcc i32 @wacom_devm_sysfs_create_group(ptr noundef %wacom, ptr noundef nonnull @generic_led_attr_group)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool89.not = icmp eq i32 %call10, 0
  br i1 %tobool89.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.end93_crit_edge

sw.epilog.do.end93_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end93

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end93.sink.split:                              ; preds = %if.end.i.i223.do.end93.sink.split_crit_edge, %if.end.i.i185.do.end93.sink.split_crit_edge, %if.end.i.i.do.end93.sink.split_crit_edge
  %call.i.i217.sink = phi ptr [ %call.i.i, %if.end.i.i.do.end93.sink.split_crit_edge ], [ %call.i.i179, %if.end.i.i185.do.end93.sink.split_crit_edge ], [ %call.i.i217, %if.end.i.i223.do.end93.sink.split_crit_edge ]
  %error.0277.ph = phi i32 [ %call4.i.i, %if.end.i.i.do.end93.sink.split_crit_edge ], [ %call4.i.i183, %if.end.i.i185.do.end93.sink.split_crit_edge ], [ %call4.i.i221, %if.end.i.i223.do.end93.sink.split_crit_edge ]
  tail call void @devres_free(ptr noundef nonnull %call.i.i217.sink) #17
  br label %do.end93

do.end93:                                         ; preds = %do.end93.sink.split, %sw.epilog.do.end93_crit_edge, %for.cond.i209.do.end93_crit_edge, %for.cond.i171.1.do.end93_crit_edge, %for.cond.i.do.end93_crit_edge
  %error.0277 = phi i32 [ %call10, %sw.epilog.do.end93_crit_edge ], [ -12, %for.cond.i209.do.end93_crit_edge ], [ -12, %for.cond.i171.1.do.end93_crit_edge ], [ -12, %for.cond.i.do.end93_crit_edge ], [ %error.0277.ph, %do.end93.sink.split ]
  %hdev94 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %81 = ptrtoint ptr %hdev94 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hdev94, align 8
  %dev95 = getelementptr inbounds %struct.hid_device, ptr %82, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95, ptr noundef nonnull @.str.16, i32 noundef %error.0277) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %sw.epilog.cleanup_crit_edge, %do.end85, %wacom_led_groups_allocate.exit.cleanup_crit_edge, %do.end71, %for.body.i251.preheader.cleanup_crit_edge, %if.end7.i.i226, %do.end56, %if.end7.i.i188, %do.end41, %if.end7.i.i, %do.end24, %do.end, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i259274, %do.end85 ], [ %retval.0.i252.ph, %do.end71 ], [ %retval.0.i214.ph, %do.end56 ], [ %error.0277, %do.end93 ], [ %retval.0.i176.ph, %do.end41 ], [ %retval.0.i.ph, %do.end24 ], [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %wacom_led_groups_allocate.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end7.i.i ], [ 0, %if.end7.i.i188 ], [ 0, %if.end7.i.i226 ], [ 0, %for.body.i251.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wacom_leds_alloc_and_register(ptr noundef %wacom, i32 noundef %group_count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pad_input = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 14
  %0 = ptrtoint ptr %pad_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pad_input, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %hdev.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %2 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %group_count, i32 16) #17
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !323

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef %6, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %wacom_led_groups_allocate.exit

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

wacom_led_groups_allocate.exit:                   ; preds = %devm_kcalloc.exit.i
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @wacom_led_groups_release, ptr noundef %wacom) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %led.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %call5.i.i..i = select i1 %tobool.not.i.i, ptr %call5.i.i.i, ptr null
  %count..i = select i1 %tobool.not.i.i, i32 %group_count, i32 0
  %7 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i..i, ptr %led.i, align 4
  %count.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %count..i, ptr %count.i.i, align 4
  br i1 %tobool.not.i.i, label %for.cond.preheader, label %wacom_led_groups_allocate.exit.cleanup_crit_edge

wacom_led_groups_allocate.exit.cleanup_crit_edge: ; preds = %wacom_led_groups_allocate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %wacom_led_groups_allocate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_count)
  %cmp3.not = icmp eq i32 %group_count, 0
  br i1 %cmp3.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %group_count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call8 = tail call fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev3, ptr noundef %wacom, i32 noundef %i.04, i32 noundef 4, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %wacom_led_groups_allocate.exit.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %wacom_led_groups_allocate.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wacom_devm_sysfs_create_group(ptr nocapture noundef readonly %wacom, ptr noundef %group) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %call.i = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @wacom_devm_sysfs_group_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.31) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__wacom_devm_sysfs_create_group.exit_crit_edge, label %if.end.i

entry.__wacom_devm_sysfs_create_group.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %__wacom_devm_sysfs_create_group.exit

if.end.i:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group, ptr %call.i, align 4
  %root2.i = getelementptr inbounds %struct.wacom_sysfs_group_devres, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %root2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %root2.i, align 4
  %call4.i = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef %group) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @devres_free(ptr noundef nonnull %call.i) #17
  br label %__wacom_devm_sysfs_create_group.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  tail call void @devres_add(ptr noundef %dev.i, ptr noundef nonnull %call.i) #17
  br label %__wacom_devm_sysfs_create_group.exit

__wacom_devm_sysfs_create_group.exit:             ; preds = %if.end7.i, %if.then6.i, %entry.__wacom_devm_sysfs_create_group.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then6.i ], [ 0, %if.end7.i ], [ -12, %entry.__wacom_devm_sysfs_create_group.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wacom_battery_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1060
  %quirks = getelementptr i8, ptr %work, i32 -300
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %battery10 = getelementptr i8, ptr %work, i32 312
  %2 = ptrtoint ptr %battery10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %battery10, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool11.not, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end13_crit_edge, label %if.then.i

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %battery.i = getelementptr i8, ptr %work, i32 256
  %call.i = tail call fastcc i32 @__wacom_initialize_battery(ptr noundef %add.ptr, ptr noundef %battery.i) #17
  br label %if.end13

land.lhs.true8:                                   ; preds = %entry
  br i1 %tobool11.not, label %land.lhs.true8.if.end13_crit_edge, label %if.then12

land.lhs.true8.if.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true8
  %6 = ptrtoint ptr %battery10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %battery10, align 4
  %tobool.not.i19 = icmp eq ptr %7, null
  br i1 %tobool.not.i19, label %if.then12.if.end13_crit_edge, label %if.then.i21

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then.i21:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %hdev.i = getelementptr i8, ptr %work, i32 -140
  %8 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev.i, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  %bat_desc.i = getelementptr i8, ptr %work, i32 260
  %call.i20 = tail call i32 @devres_release_group(ptr noundef %dev.i, ptr noundef %bat_desc.i) #17
  %10 = ptrtoint ptr %battery10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %battery10, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then.i21, %if.then12.if.end13_crit_edge, %land.lhs.true8.if.end13_crit_edge, %if.then.i, %if.then.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @wacom_driver, ptr noundef null, ptr noundef nonnull @.str.19) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wacom_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @hid_unregister_driver(ptr noundef nonnull @wacom_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev, ptr noundef %wacom, i32 noundef %group_id, i32 noundef %count, i1 noundef zeroext %read_only) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %led = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %count1 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %group_id)
  %cmp.not = icmp ugt i32 %1, %group_id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led, align 4
  %arrayidx = getelementptr %struct.wacom_group_leds, ptr %3, i32 %group_id
  %call = tail call ptr @devres_open_group(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 496) #17
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end5.err_crit_edge, label %devm_kcalloc.exit, !prof !323

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

devm_kcalloc.exit:                                ; preds = %if.end5
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #17
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %devm_kcalloc.exit.err_crit_edge, label %if.end9

devm_kcalloc.exit.err_crit_edge:                  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end9:                                          ; preds = %devm_kcalloc.exit
  %7 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %led, align 4
  %leds13 = getelementptr %struct.wacom_group_leds, ptr %8, i32 %group_id, i32 1
  %9 = ptrtoint ptr %leds13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %leds13, align 4
  %10 = load ptr, ptr %led, align 4
  %count17 = getelementptr %struct.wacom_group_leds, ptr %10, i32 %group_id, i32 2
  %11 = ptrtoint ptr %count17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %count, ptr %count17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1890.not = icmp eq i32 %count, 0
  br i1 %cmp1890.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %llv.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %hlv.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 3
  br label %for.body

for.cond:                                         ; preds = %if.end32.i
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx19 = getelementptr %struct.wacom_led, ptr %call5.i.i, i32 %i.091
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i79, label %for.body.dev_name.exit.i_crit_edge

for.body.dev_name.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i

if.end.i.i79:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i79, %for.body.dev_name.exit.i_crit_edge
  %retval.0.i.i80 = phi ptr [ %15, %if.end.i.i79 ], [ %13, %for.body.dev_name.exit.i_crit_edge ]
  %call1.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i80, i32 noundef %group_id, i32 noundef %i.091) #17
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %dev_name.exit.i.err_crit_edge, label %if.end.i

dev_name.exit.i.err_crit_edge:                    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end.i:                                         ; preds = %dev_name.exit.i
  br i1 %read_only, label %if.end.i.if.end12.i_crit_edge, label %if.then3.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i
  %trigger.i = getelementptr %struct.wacom_led, ptr %call5.i.i, i32 %i.091, i32 1
  %16 = ptrtoint ptr %trigger.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i, ptr %trigger.i, align 4
  %call6.i = tail call i32 @devm_led_trigger_register(ptr noundef %dev, ptr noundef %trigger.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3.i.if.end12.i_crit_edge, label %do.end.i

if.then3.i.if.end12.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  %hdev.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %17 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev.i, align 8
  %dev9.i = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.22, ptr noundef %20, i32 noundef %call6.i) #20
  br label %err

if.end12.i:                                       ; preds = %if.then3.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %group13.i = getelementptr %struct.wacom_led, ptr %call5.i.i, i32 %i.091, i32 3
  %21 = ptrtoint ptr %group13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %group_id, ptr %group13.i, align 4
  %id14.i = getelementptr %struct.wacom_led, ptr %call5.i.i, i32 %i.091, i32 4
  %22 = ptrtoint ptr %id14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.091, ptr %id14.i, align 4
  %wacom15.i = getelementptr %struct.wacom_led, ptr %call5.i.i, i32 %i.091, i32 2
  %23 = ptrtoint ptr %wacom15.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %wacom, ptr %wacom15.i, align 4
  %24 = ptrtoint ptr %llv.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %llv.i, align 4
  %llv17.i = getelementptr %struct.wacom_led, ptr %call5.i.i, i32 %i.091, i32 5
  %26 = ptrtoint ptr %llv17.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %llv17.i, align 4
  %27 = ptrtoint ptr %hlv.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hlv.i, align 1
  %hlv19.i = getelementptr %struct.wacom_led, ptr %call5.i.i, i32 %i.091, i32 6
  %29 = ptrtoint ptr %hlv19.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %hlv19.i, align 1
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i, ptr %arrayidx19, align 4
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx19, i32 0, i32 2
  %31 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 255, ptr %max_brightness.i, align 4
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx19, i32 0, i32 3
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 524288, ptr %flags.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx19, i32 0, i32 7
  %33 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @__wacom_led_brightness_get, ptr %brightness_get.i, align 4
  br i1 %read_only, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx19, i32 0, i32 6
  %34 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @wacom_led_brightness_set, ptr %brightness_set_blocking.i, align 4
  %default_trigger.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx19, i32 0, i32 14
  %35 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call1.i, ptr %default_trigger.i, align 4
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  %brightness_set.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx19, i32 0, i32 5
  %36 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @wacom_led_readonly_brightness_set, ptr %brightness_set.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then26.i
  %call.i.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx19, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool35.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool35.not.i, label %for.cond, label %do.end39.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  %hdev40.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %37 = ptrtoint ptr %hdev40.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdev40.i, align 8
  %dev41.i = getelementptr inbounds %struct.hid_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i, ptr noundef nonnull @.str.25, ptr noundef %40, i32 noundef %call.i.i) #20
  %41 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx19, align 4
  br label %err

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end9.for.end_crit_edge
  %42 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %led, align 4
  %dev28 = getelementptr %struct.wacom_group_leds, ptr %43, i32 %group_id, i32 3
  %44 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev, ptr %dev28, align 4
  %45 = load ptr, ptr %led, align 4
  %arrayidx31 = getelementptr %struct.wacom_group_leds, ptr %45, i32 %group_id
  tail call void @devres_close_group(ptr noundef %dev, ptr noundef %arrayidx31) #17
  %hdev = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %46 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hdev, align 8
  %dev32 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %led, align 4
  %arrayidx35 = getelementptr %struct.wacom_group_leds, ptr %49, i32 %group_id
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev32, ptr noundef nonnull @wacom_led_groups_release_one, ptr noundef %arrayidx35) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i81 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i81, label %for.end.cleanup_crit_edge, label %if.then.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr %struct.wacom_group_leds, ptr %49, i32 %group_id, i32 3
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %call.i83 = tail call i32 @devres_release_group(ptr noundef %51, ptr noundef %arrayidx35) #17
  br label %cleanup

err:                                              ; preds = %do.end39.i, %do.end.i, %dev_name.exit.i.err_crit_edge, %devm_kcalloc.exit.err_crit_edge, %if.end5.err_crit_edge
  %error.0 = phi i32 [ -12, %devm_kcalloc.exit.err_crit_edge ], [ -12, %if.end5.err_crit_edge ], [ %call6.i, %do.end.i ], [ %call.i.i, %do.end39.i ], [ -12, %dev_name.exit.i.err_crit_edge ]
  %52 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %led, align 4
  %arrayidx42 = getelementptr %struct.wacom_group_leds, ptr %53, i32 %group_id
  %call43 = tail call i32 @devres_release_group(ptr noundef %dev, ptr noundef %arrayidx42) #17
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.i, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_led_groups_release_one(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wacom_group_leds, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @devres_release_group(ptr noundef %1, ptr noundef %data) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__wacom_led_brightness_get(ptr nocapture noundef readonly %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wacom1 = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %wacom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wacom1, align 4
  %led2 = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %led2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led2, align 4
  %group = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 3
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %group, align 4
  %arrayidx = getelementptr %struct.wacom_group_leds, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %7 to i32
  %id = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp.not = icmp eq i32 %9, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_hlv.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %max_hlv.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_hlv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %hlv.i = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %max_llv.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 5
  %12 = ptrtoint ptr %max_llv.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_llv.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %if.then8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %llv.i = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %if.then.i
  %.sink24.in.i = phi ptr [ %llv.i, %if.then8.i ], [ %hlv.i, %if.then.i ]
  %.sink.i = phi i8 [ %13, %if.then8.i ], [ %11, %if.then.i ]
  %14 = ptrtoint ptr %.sink24.in.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %.sink24.i = load i8, ptr %.sink24.in.i, align 1
  %conv9.i = zext i8 %.sink24.i to i16
  %mul10.i = mul nuw i16 %conv9.i, 255
  %div14.rhs.trunc.i = zext i8 %.sink.i to i16
  %div1422.i = udiv i16 %mul10.i, %div14.rhs.trunc.i
  %phi.cast.i = zext i16 %div1422.i to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 255, %if.end.i.cleanup_crit_edge ], [ %phi.cast.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_led_brightness_set(ptr nocapture noundef %cdev, i32 noundef %brightness) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wacom1 = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %wacom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wacom1, align 4
  %lock = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #17
  %led2 = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %led2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %group = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 3
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %group, align 4
  %arrayidx = getelementptr %struct.wacom_group_leds, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %7 to i32
  %id = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp5.not = icmp eq i32 %9, %conv
  br i1 %cmp5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %max_llv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 5
  %10 = ptrtoint ptr %max_llv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_llv, align 1
  %conv8 = zext i8 %11 to i32
  %mul = mul i32 %conv8, %brightness
  %div = udiv i32 %mul, 255
  %conv9 = trunc i32 %div to i8
  %llv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 2
  %12 = ptrtoint ptr %llv to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %llv, align 4
  %llv11 = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 5
  %13 = ptrtoint ptr %llv11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %llv11, align 4
  %max_hlv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %max_hlv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_hlv, align 4
  %conv13 = zext i8 %15 to i32
  %mul14 = mul i32 %conv13, %brightness
  %div15 = udiv i32 %mul14, 255
  %conv16 = trunc i32 %div15 to i8
  %hlv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 3
  %16 = ptrtoint ptr %hlv to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv16, ptr %hlv, align 1
  %hlv18 = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 6
  %17 = ptrtoint ptr %hlv18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16, ptr %hlv18, align 1
  %id19 = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 4
  %18 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id19, align 4
  %conv20 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %led2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %led2, align 4
  %group23 = getelementptr inbounds %struct.wacom_led, ptr %cdev, i32 0, i32 3
  %22 = ptrtoint ptr %group23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %group23, align 4
  %arrayidx24 = getelementptr %struct.wacom_group_leds, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv20, ptr %arrayidx24, align 4
  %call = tail call fastcc i32 @wacom_led_control(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ %call, %if.end ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #17
  ret i32 %error.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wacom_led_readonly_brightness_set(ptr nocapture noundef %cdev, i32 noundef %brightness) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wacom_led_control(ptr nocapture noundef readonly %wacom) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %led = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %0 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %3)
  %cmp = icmp eq i32 %3, 46
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pid = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 16
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp10 = icmp eq i32 %3, 23
  %spec.select = select i1 %cmp10, i8 -126, i8 32
  %spec.select192 = select i1 %cmp10, i32 51, i32 9
  %report_id.0 = select i1 %tobool5.not, i8 %spec.select, i8 3
  %buf_size.0 = select i1 %tobool5.not, i32 %spec.select192, i32 13
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buf_size.0, i32 noundef 3520) #21
  %tobool14.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool14.not, label %if.end3.cleanup_crit_edge, label %if.end16

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %7)
  %cmp20 = icmp eq i32 %7, 53
  br i1 %cmp20, label %if.then21, label %if.else29

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 50, ptr %call9.i.i, align 128
  %llv = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %llv to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %llv, align 4
  %arrayidx23 = getelementptr i8, ptr %call9.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx23, align 1
  %12 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %led, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %16 = and i8 %15, 3
  %arrayidx28 = getelementptr i8, ptr %call9.i.i, i32 2
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx28, align 2
  br label %if.end130

if.else29:                                        ; preds = %if.end16
  %18 = add i32 %7, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %19 = icmp ult i32 %18, 6
  br i1 %19, label %if.then40, label %if.else66

if.then40:                                        ; preds = %if.else29
  %20 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %led, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %24 = and i8 %23, 3
  %llv48 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %llv48 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %llv48, align 4
  %27 = lshr i8 %26, 3
  %narrow = and i8 %27, 12
  %28 = add nuw nsw i8 %narrow, 12
  %29 = and i8 %28, 12
  %or53191 = or i8 %29, %24
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %report_id.0, ptr %call9.i.i, align 128
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool58.not = icmp eq i32 %32, 0
  br i1 %tobool58.not, label %if.else63, label %if.then59

if.then59:                                        ; preds = %if.then40
  %hdev = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %33 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev, align 8
  %35 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %call9.i.i, align 128
  %call.i = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %36, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %37 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %call.i, label %if.then59.do.end.i_crit_edge [
    i32 -110, label %if.then59.land.rhs.i_crit_edge
    i32 -11, label %if.then59.land.rhs.i_crit_edge213
  ]

if.then59.land.rhs.i_crit_edge213:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

if.then59.land.rhs.i_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

if.then59.do.end.i_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.then59.land.rhs.i_crit_edge, %if.then59.land.rhs.i_crit_edge213
  %38 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call9.i.i, align 128
  %call.i.1 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %39, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %40 = zext i32 %call.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call.i.1, label %land.rhs.i.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.land.rhs.i.1_crit_edge
    i32 -11, label %land.rhs.i.land.rhs.i.1_crit_edge214
  ]

land.rhs.i.land.rhs.i.1_crit_edge214:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1

land.rhs.i.land.rhs.i.1_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.1:                                     ; preds = %land.rhs.i.land.rhs.i.1_crit_edge, %land.rhs.i.land.rhs.i.1_crit_edge214
  %41 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %call9.i.i, align 128
  %call.i.2 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %42, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %43 = zext i32 %call.i.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %call.i.2, label %land.rhs.i.1.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.1.land.rhs.i.2_crit_edge
    i32 -11, label %land.rhs.i.1.land.rhs.i.2_crit_edge215
  ]

land.rhs.i.1.land.rhs.i.2_crit_edge215:           ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2

land.rhs.i.1.land.rhs.i.2_crit_edge:              ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2

land.rhs.i.1.do.end.i_crit_edge:                  ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.2:                                     ; preds = %land.rhs.i.1.land.rhs.i.2_crit_edge, %land.rhs.i.1.land.rhs.i.2_crit_edge215
  %44 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %call9.i.i, align 128
  %call.i.3 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %45, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %46 = zext i32 %call.i.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call.i.3, label %land.rhs.i.2.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.2.land.rhs.i.3_crit_edge
    i32 -11, label %land.rhs.i.2.land.rhs.i.3_crit_edge216
  ]

land.rhs.i.2.land.rhs.i.3_crit_edge216:           ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3

land.rhs.i.2.land.rhs.i.3_crit_edge:              ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3

land.rhs.i.2.do.end.i_crit_edge:                  ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.3:                                     ; preds = %land.rhs.i.2.land.rhs.i.3_crit_edge, %land.rhs.i.2.land.rhs.i.3_crit_edge216
  %47 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %call9.i.i, align 128
  %call.i.4 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %48, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %49 = zext i32 %call.i.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call.i.4, label %land.rhs.i.3.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.3.land.rhs.i.4_crit_edge
    i32 -11, label %land.rhs.i.3.land.rhs.i.4_crit_edge217
  ]

land.rhs.i.3.land.rhs.i.4_crit_edge217:           ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4

land.rhs.i.3.land.rhs.i.4_crit_edge:              ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4

land.rhs.i.3.do.end.i_crit_edge:                  ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.4:                                     ; preds = %land.rhs.i.3.land.rhs.i.4_crit_edge, %land.rhs.i.3.land.rhs.i.4_crit_edge217
  %50 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %call9.i.i, align 128
  %call.i.5 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %51, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %52 = zext i32 %call.i.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call.i.5, label %land.rhs.i.4.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.4.land.rhs.i.5_crit_edge
    i32 -11, label %land.rhs.i.4.land.rhs.i.5_crit_edge218
  ]

land.rhs.i.4.land.rhs.i.5_crit_edge218:           ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5

land.rhs.i.4.land.rhs.i.5_crit_edge:              ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5

land.rhs.i.4.do.end.i_crit_edge:                  ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.5:                                     ; preds = %land.rhs.i.4.land.rhs.i.5_crit_edge, %land.rhs.i.4.land.rhs.i.5_crit_edge218
  %53 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %call9.i.i, align 128
  %call.i.6 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %54, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %55 = zext i32 %call.i.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call.i.6, label %land.rhs.i.5.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.5.land.rhs.i.6_crit_edge
    i32 -11, label %land.rhs.i.5.land.rhs.i.6_crit_edge219
  ]

land.rhs.i.5.land.rhs.i.6_crit_edge219:           ; preds = %land.rhs.i.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6

land.rhs.i.5.land.rhs.i.6_crit_edge:              ; preds = %land.rhs.i.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6

land.rhs.i.5.do.end.i_crit_edge:                  ; preds = %land.rhs.i.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.6:                                     ; preds = %land.rhs.i.5.land.rhs.i.6_crit_edge, %land.rhs.i.5.land.rhs.i.6_crit_edge219
  %56 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %call9.i.i, align 128
  %call.i.7 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %57, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %58 = zext i32 %call.i.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call.i.7, label %land.rhs.i.6.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.6.land.rhs.i.7_crit_edge
    i32 -11, label %land.rhs.i.6.land.rhs.i.7_crit_edge220
  ]

land.rhs.i.6.land.rhs.i.7_crit_edge220:           ; preds = %land.rhs.i.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7

land.rhs.i.6.land.rhs.i.7_crit_edge:              ; preds = %land.rhs.i.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7

land.rhs.i.6.do.end.i_crit_edge:                  ; preds = %land.rhs.i.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.7:                                     ; preds = %land.rhs.i.6.land.rhs.i.7_crit_edge, %land.rhs.i.6.land.rhs.i.7_crit_edge220
  %59 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %call9.i.i, align 128
  %call.i.8 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %60, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %61 = zext i32 %call.i.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call.i.8, label %land.rhs.i.7.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.7.land.rhs.i.8_crit_edge
    i32 -11, label %land.rhs.i.7.land.rhs.i.8_crit_edge221
  ]

land.rhs.i.7.land.rhs.i.8_crit_edge221:           ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8

land.rhs.i.7.land.rhs.i.8_crit_edge:              ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8

land.rhs.i.7.do.end.i_crit_edge:                  ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.8:                                     ; preds = %land.rhs.i.7.land.rhs.i.8_crit_edge, %land.rhs.i.7.land.rhs.i.8_crit_edge221
  %62 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %call9.i.i, align 128
  %call.i.9 = tail call i32 @hid_hw_raw_request(ptr noundef %34, i8 noundef zeroext %63, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 1) #17
  %64 = zext i32 %call.i.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call.i.9, label %land.rhs.i.8.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.8.do.end6.i_crit_edge
    i32 -11, label %land.rhs.i.8.do.end6.i_crit_edge222
  ]

land.rhs.i.8.do.end6.i_crit_edge222:              ; preds = %land.rhs.i.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i

land.rhs.i.8.do.end6.i_crit_edge:                 ; preds = %land.rhs.i.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i

land.rhs.i.8.do.end.i_crit_edge:                  ; preds = %land.rhs.i.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.8.do.end.i_crit_edge, %land.rhs.i.7.do.end.i_crit_edge, %land.rhs.i.6.do.end.i_crit_edge, %land.rhs.i.5.do.end.i_crit_edge, %land.rhs.i.4.do.end.i_crit_edge, %land.rhs.i.3.do.end.i_crit_edge, %land.rhs.i.2.do.end.i_crit_edge, %land.rhs.i.1.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge, %if.then59.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %if.then59.do.end.i_crit_edge ], [ %call.i.1, %land.rhs.i.do.end.i_crit_edge ], [ %call.i.2, %land.rhs.i.1.do.end.i_crit_edge ], [ %call.i.3, %land.rhs.i.2.do.end.i_crit_edge ], [ %call.i.4, %land.rhs.i.3.do.end.i_crit_edge ], [ %call.i.5, %land.rhs.i.4.do.end.i_crit_edge ], [ %call.i.6, %land.rhs.i.5.do.end.i_crit_edge ], [ %call.i.7, %land.rhs.i.6.do.end.i_crit_edge ], [ %call.i.8, %land.rhs.i.7.do.end.i_crit_edge ], [ %call.i.9, %land.rhs.i.8.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp3.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp3.i, label %do.end.i.do.end6.i_crit_edge, label %do.end.i.wacom_get_report.exit_crit_edge

do.end.i.wacom_get_report.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_get_report.exit

do.end.i.do.end6.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i.do.end6.i_crit_edge, %land.rhs.i.8.do.end6.i_crit_edge, %land.rhs.i.8.do.end6.i_crit_edge222
  %call.i212 = phi i32 [ %call.i.lcssa, %do.end.i.do.end6.i_crit_edge ], [ %call.i.9, %land.rhs.i.8.do.end6.i_crit_edge ], [ %call.i.9, %land.rhs.i.8.do.end6.i_crit_edge222 ]
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %34, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %call.i212) #20
  br label %wacom_get_report.exit

wacom_get_report.exit:                            ; preds = %do.end6.i, %do.end.i.wacom_get_report.exit_crit_edge
  %65 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %report_id.0, ptr %call9.i.i, align 128
  %arrayidx62 = getelementptr i8, ptr %call9.i.i, i32 4
  %66 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %or53191, ptr %arrayidx62, align 4
  br label %if.end130

if.else63:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx64 = getelementptr i8, ptr %call9.i.i, i32 1
  %67 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %or53191, ptr %arrayidx64, align 1
  br label %if.end130

if.else66:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %7)
  %cmp70 = icmp eq i32 %7, 23
  br i1 %cmp70, label %if.then72, label %if.else90

if.then72:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #19
  %68 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %report_id.0, ptr %call9.i.i, align 128
  %arrayidx74 = getelementptr i8, ptr %call9.i.i, i32 4
  %llv80 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %69 = call ptr @memset(ptr %arrayidx74, i32 100, i32 5)
  %70 = ptrtoint ptr %llv80 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %llv80, align 4
  %arrayidx81 = getelementptr i8, ptr %call9.i.i, i32 9
  %72 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx81, align 1
  %73 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %led, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  %77 = and i8 %76, 3
  %arrayidx89 = getelementptr i8, ptr %call9.i.i, i32 10
  %78 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx89, align 2
  br label %if.end130

if.else90:                                        ; preds = %if.else66
  %79 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %led, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 4
  %83 = or i8 %82, 4
  %84 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %7, label %if.else90.if.end117_crit_edge [
    i32 26, label %if.else90.if.then108_crit_edge
    i32 29, label %if.else90.if.then108_crit_edge223
  ]

if.else90.if.then108_crit_edge223:                ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then108

if.else90.if.then108_crit_edge:                   ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then108

if.else90.if.end117_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

if.then108:                                       ; preds = %if.else90.if.then108_crit_edge, %if.else90.if.then108_crit_edge223
  %arrayidx111 = getelementptr %struct.wacom_group_leds, ptr %80, i32 1
  %85 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx111, align 4
  %shl114 = shl i8 %86, 4
  %or115 = or i8 %82, %shl114
  %or116 = or i8 %or115, 68
  br label %if.end117

if.end117:                                        ; preds = %if.then108, %if.else90.if.end117_crit_edge
  %led91.0 = phi i8 [ %or116, %if.then108 ], [ %83, %if.else90.if.end117_crit_edge ]
  %87 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %report_id.0, ptr %call9.i.i, align 128
  %arrayidx120 = getelementptr i8, ptr %call9.i.i, i32 1
  %88 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %led91.0, ptr %arrayidx120, align 1
  %llv122 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 2
  %89 = ptrtoint ptr %llv122 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %llv122, align 4
  %arrayidx123 = getelementptr i8, ptr %call9.i.i, i32 2
  %91 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx123, align 2
  %hlv = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 3
  %92 = ptrtoint ptr %hlv to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %hlv, align 1
  %arrayidx125 = getelementptr i8, ptr %call9.i.i, i32 3
  %94 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx125, align 1
  %img_lum = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12, i32 4
  %95 = ptrtoint ptr %img_lum to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %img_lum, align 2
  %arrayidx127 = getelementptr i8, ptr %call9.i.i, i32 4
  %97 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx127, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end117, %if.then72, %if.else63, %wacom_get_report.exit, %if.then21
  %hdev131 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %98 = ptrtoint ptr %hdev131 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hdev131, align 8
  %100 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %call9.i.i, align 128
  %call.i194 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %101, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %102 = zext i32 %call.i194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call.i194, label %if.end130.do.end.i200_crit_edge [
    i32 -110, label %if.end130.land.rhs.i198_crit_edge
    i32 -11, label %if.end130.land.rhs.i198_crit_edge224
  ]

if.end130.land.rhs.i198_crit_edge224:             ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198

if.end130.land.rhs.i198_crit_edge:                ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198

if.end130.do.end.i200_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198:                                    ; preds = %if.end130.land.rhs.i198_crit_edge, %if.end130.land.rhs.i198_crit_edge224
  %103 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %call9.i.i, align 128
  %call.i194.1 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %104, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %105 = zext i32 %call.i194.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call.i194.1, label %land.rhs.i198.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.land.rhs.i198.1_crit_edge
    i32 -11, label %land.rhs.i198.land.rhs.i198.1_crit_edge225
  ]

land.rhs.i198.land.rhs.i198.1_crit_edge225:       ; preds = %land.rhs.i198
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.1

land.rhs.i198.land.rhs.i198.1_crit_edge:          ; preds = %land.rhs.i198
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.1

land.rhs.i198.do.end.i200_crit_edge:              ; preds = %land.rhs.i198
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.1:                                  ; preds = %land.rhs.i198.land.rhs.i198.1_crit_edge, %land.rhs.i198.land.rhs.i198.1_crit_edge225
  %106 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %call9.i.i, align 128
  %call.i194.2 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %107, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %108 = zext i32 %call.i194.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call.i194.2, label %land.rhs.i198.1.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.1.land.rhs.i198.2_crit_edge
    i32 -11, label %land.rhs.i198.1.land.rhs.i198.2_crit_edge226
  ]

land.rhs.i198.1.land.rhs.i198.2_crit_edge226:     ; preds = %land.rhs.i198.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.2

land.rhs.i198.1.land.rhs.i198.2_crit_edge:        ; preds = %land.rhs.i198.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.2

land.rhs.i198.1.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.2:                                  ; preds = %land.rhs.i198.1.land.rhs.i198.2_crit_edge, %land.rhs.i198.1.land.rhs.i198.2_crit_edge226
  %109 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %call9.i.i, align 128
  %call.i194.3 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %110, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %111 = zext i32 %call.i194.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %call.i194.3, label %land.rhs.i198.2.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.2.land.rhs.i198.3_crit_edge
    i32 -11, label %land.rhs.i198.2.land.rhs.i198.3_crit_edge227
  ]

land.rhs.i198.2.land.rhs.i198.3_crit_edge227:     ; preds = %land.rhs.i198.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.3

land.rhs.i198.2.land.rhs.i198.3_crit_edge:        ; preds = %land.rhs.i198.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.3

land.rhs.i198.2.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.3:                                  ; preds = %land.rhs.i198.2.land.rhs.i198.3_crit_edge, %land.rhs.i198.2.land.rhs.i198.3_crit_edge227
  %112 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %call9.i.i, align 128
  %call.i194.4 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %113, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %114 = zext i32 %call.i194.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call.i194.4, label %land.rhs.i198.3.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.3.land.rhs.i198.4_crit_edge
    i32 -11, label %land.rhs.i198.3.land.rhs.i198.4_crit_edge228
  ]

land.rhs.i198.3.land.rhs.i198.4_crit_edge228:     ; preds = %land.rhs.i198.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.4

land.rhs.i198.3.land.rhs.i198.4_crit_edge:        ; preds = %land.rhs.i198.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.4

land.rhs.i198.3.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.4:                                  ; preds = %land.rhs.i198.3.land.rhs.i198.4_crit_edge, %land.rhs.i198.3.land.rhs.i198.4_crit_edge228
  %115 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %call9.i.i, align 128
  %call.i194.5 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %116, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %117 = zext i32 %call.i194.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %call.i194.5, label %land.rhs.i198.4.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.4.land.rhs.i198.5_crit_edge
    i32 -11, label %land.rhs.i198.4.land.rhs.i198.5_crit_edge229
  ]

land.rhs.i198.4.land.rhs.i198.5_crit_edge229:     ; preds = %land.rhs.i198.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.5

land.rhs.i198.4.land.rhs.i198.5_crit_edge:        ; preds = %land.rhs.i198.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.5

land.rhs.i198.4.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.5:                                  ; preds = %land.rhs.i198.4.land.rhs.i198.5_crit_edge, %land.rhs.i198.4.land.rhs.i198.5_crit_edge229
  %118 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %call9.i.i, align 128
  %call.i194.6 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %119, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %120 = zext i32 %call.i194.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call.i194.6, label %land.rhs.i198.5.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.5.land.rhs.i198.6_crit_edge
    i32 -11, label %land.rhs.i198.5.land.rhs.i198.6_crit_edge230
  ]

land.rhs.i198.5.land.rhs.i198.6_crit_edge230:     ; preds = %land.rhs.i198.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.6

land.rhs.i198.5.land.rhs.i198.6_crit_edge:        ; preds = %land.rhs.i198.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.6

land.rhs.i198.5.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.6:                                  ; preds = %land.rhs.i198.5.land.rhs.i198.6_crit_edge, %land.rhs.i198.5.land.rhs.i198.6_crit_edge230
  %121 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %call9.i.i, align 128
  %call.i194.7 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %122, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %123 = zext i32 %call.i194.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %call.i194.7, label %land.rhs.i198.6.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.6.land.rhs.i198.7_crit_edge
    i32 -11, label %land.rhs.i198.6.land.rhs.i198.7_crit_edge231
  ]

land.rhs.i198.6.land.rhs.i198.7_crit_edge231:     ; preds = %land.rhs.i198.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.7

land.rhs.i198.6.land.rhs.i198.7_crit_edge:        ; preds = %land.rhs.i198.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.7

land.rhs.i198.6.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.7:                                  ; preds = %land.rhs.i198.6.land.rhs.i198.7_crit_edge, %land.rhs.i198.6.land.rhs.i198.7_crit_edge231
  %124 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %call9.i.i, align 128
  %call.i194.8 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %125, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %126 = zext i32 %call.i194.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call.i194.8, label %land.rhs.i198.7.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.7.land.rhs.i198.8_crit_edge
    i32 -11, label %land.rhs.i198.7.land.rhs.i198.8_crit_edge232
  ]

land.rhs.i198.7.land.rhs.i198.8_crit_edge232:     ; preds = %land.rhs.i198.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.8

land.rhs.i198.7.land.rhs.i198.8_crit_edge:        ; preds = %land.rhs.i198.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i198.8

land.rhs.i198.7.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

land.rhs.i198.8:                                  ; preds = %land.rhs.i198.7.land.rhs.i198.8_crit_edge, %land.rhs.i198.7.land.rhs.i198.8_crit_edge232
  %127 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %call9.i.i, align 128
  %call.i194.9 = tail call i32 @hid_hw_raw_request(ptr noundef %99, i8 noundef zeroext %128, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size.0, i8 noundef zeroext 2, i32 noundef 9) #17
  %129 = zext i32 %call.i194.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call.i194.9, label %land.rhs.i198.8.do.end.i200_crit_edge [
    i32 -110, label %land.rhs.i198.8.do.end6.i202_crit_edge
    i32 -11, label %land.rhs.i198.8.do.end6.i202_crit_edge233
  ]

land.rhs.i198.8.do.end6.i202_crit_edge233:        ; preds = %land.rhs.i198.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i202

land.rhs.i198.8.do.end6.i202_crit_edge:           ; preds = %land.rhs.i198.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i202

land.rhs.i198.8.do.end.i200_crit_edge:            ; preds = %land.rhs.i198.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i200

do.end.i200:                                      ; preds = %land.rhs.i198.8.do.end.i200_crit_edge, %land.rhs.i198.7.do.end.i200_crit_edge, %land.rhs.i198.6.do.end.i200_crit_edge, %land.rhs.i198.5.do.end.i200_crit_edge, %land.rhs.i198.4.do.end.i200_crit_edge, %land.rhs.i198.3.do.end.i200_crit_edge, %land.rhs.i198.2.do.end.i200_crit_edge, %land.rhs.i198.1.do.end.i200_crit_edge, %land.rhs.i198.do.end.i200_crit_edge, %if.end130.do.end.i200_crit_edge
  %call.i194.lcssa = phi i32 [ %call.i194, %if.end130.do.end.i200_crit_edge ], [ %call.i194.1, %land.rhs.i198.do.end.i200_crit_edge ], [ %call.i194.2, %land.rhs.i198.1.do.end.i200_crit_edge ], [ %call.i194.3, %land.rhs.i198.2.do.end.i200_crit_edge ], [ %call.i194.4, %land.rhs.i198.3.do.end.i200_crit_edge ], [ %call.i194.5, %land.rhs.i198.4.do.end.i200_crit_edge ], [ %call.i194.6, %land.rhs.i198.5.do.end.i200_crit_edge ], [ %call.i194.7, %land.rhs.i198.6.do.end.i200_crit_edge ], [ %call.i194.8, %land.rhs.i198.7.do.end.i200_crit_edge ], [ %call.i194.9, %land.rhs.i198.8.do.end.i200_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194.lcssa)
  %cmp3.i199 = icmp slt i32 %call.i194.lcssa, 0
  br i1 %cmp3.i199, label %do.end.i200.do.end6.i202_crit_edge, label %do.end.i200.wacom_set_report.exit_crit_edge

do.end.i200.wacom_set_report.exit_crit_edge:      ; preds = %do.end.i200
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit

do.end.i200.do.end6.i202_crit_edge:               ; preds = %do.end.i200
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i202

do.end6.i202:                                     ; preds = %do.end.i200.do.end6.i202_crit_edge, %land.rhs.i198.8.do.end6.i202_crit_edge, %land.rhs.i198.8.do.end6.i202_crit_edge233
  %call.i194210 = phi i32 [ %call.i194.lcssa, %do.end.i200.do.end6.i202_crit_edge ], [ %call.i194.9, %land.rhs.i198.8.do.end6.i202_crit_edge ], [ %call.i194.9, %land.rhs.i198.8.do.end6.i202_crit_edge233 ]
  %dev.i201 = getelementptr inbounds %struct.hid_device, ptr %99, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i201, ptr noundef nonnull @.str.29, i32 noundef %call.i194210) #20
  br label %wacom_set_report.exit

wacom_set_report.exit:                            ; preds = %do.end6.i202, %do.end.i200.wacom_set_report.exit_crit_edge
  %call.i194209 = phi i32 [ %call.i194.lcssa, %do.end.i200.wacom_set_report.exit_crit_edge ], [ %call.i194210, %do.end6.i202 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %wacom_set_report.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i194209, %wacom_set_report.exit ], [ -524, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_devm_sysfs_group_release(ptr noundef %dev, ptr nocapture noundef readonly %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.wacom_sysfs_group_devres, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wacom_devm_sysfs_group_release.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wacom_devm_sysfs_group_release, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !324

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wacom_devm_sysfs_group_release.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef %5) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef %7) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_status0_luminance_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %llv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %llv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %llv, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %conv) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_status0_luminance_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #17
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !325
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.wacom_luminance_store.exit_crit_edge

entry.wacom_luminance_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_luminance_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %llv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 2
  %lock.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #17
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %5 = trunc i32 %4 to i8
  %conv.i = and i8 %5, 127
  %6 = ptrtoint ptr %llv to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %llv, align 1
  %call1.i = call fastcc i32 @wacom_led_control(ptr noundef %1) #17
  call void @mutex_unlock(ptr noundef %lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %call1.count.i = select i1 %cmp.i, i32 %call1.i, i32 %count
  br label %wacom_luminance_store.exit

wacom_luminance_store.exit:                       ; preds = %if.end.i, %entry.wacom_luminance_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.count.i, %if.end.i ], [ %call.i, %entry.wacom_luminance_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_led0_select_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %led = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %conv) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_led0_select_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #17
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %id.i, align 4, !annotation !325
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %id.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.wacom_led_select_store.exit_crit_edge

entry.wacom_led_select_store.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_led_select_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %lock.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #17
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %5 = trunc i32 %4 to i8
  %conv.i = and i8 %5, 3
  %led.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %7, align 4
  %call2.i = call fastcc i32 @wacom_led_control(ptr noundef %1) #17
  call void @mutex_unlock(ptr noundef %lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  %call2.count.i = select i1 %cmp.i, i32 %call2.i, i32 %count
  br label %wacom_led_select_store.exit

wacom_led_select_store.exit:                      ; preds = %if.end.i, %entry.wacom_led_select_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.count.i, %if.end.i ], [ %call1.i, %entry.wacom_led_select_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_status1_luminance_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hlv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 3
  %2 = ptrtoint ptr %hlv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hlv, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %conv) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_status1_luminance_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #17
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !325
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.wacom_luminance_store.exit_crit_edge

entry.wacom_luminance_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_luminance_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hlv = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 3
  %lock.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #17
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %5 = trunc i32 %4 to i8
  %conv.i = and i8 %5, 127
  %6 = ptrtoint ptr %hlv to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %hlv, align 1
  %call1.i = call fastcc i32 @wacom_led_control(ptr noundef %1) #17
  call void @mutex_unlock(ptr noundef %lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %call1.count.i = select i1 %cmp.i, i32 %call1.i, i32 %count
  br label %wacom_luminance_store.exit

wacom_luminance_store.exit:                       ; preds = %if.end.i, %entry.wacom_luminance_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.count.i, %if.end.i ], [ %call.i, %entry.wacom_luminance_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_buttons_luminance_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %img_lum = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %img_lum to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %img_lum, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %conv) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_buttons_luminance_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #17
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !325
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.wacom_luminance_store.exit_crit_edge

entry.wacom_luminance_store.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_luminance_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %img_lum = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 4
  %lock.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #17
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %5 = trunc i32 %4 to i8
  %conv.i = and i8 %5, 127
  %6 = ptrtoint ptr %img_lum to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %img_lum, align 1
  %call1.i = call fastcc i32 @wacom_led_control(ptr noundef %1) #17
  call void @mutex_unlock(ptr noundef %lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %call1.count.i = select i1 %cmp.i, i32 %call1.i, i32 %count
  br label %wacom_luminance_store.exit

wacom_luminance_store.exit:                       ; preds = %if.end.i, %entry.wacom_luminance_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.count.i, %if.end.i ], [ %call.i, %entry.wacom_luminance_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg0_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 0, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wacom_button_image_store(ptr nocapture noundef readonly %dev, i32 noundef %button_id, ptr nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus = getelementptr i8, ptr %dev, i32 -3232
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp = icmp eq i16 %3, 5
  %. = select i1 %cmp, i32 256, i32 1024
  %.20 = select i1 %cmp, i8 38, i8 35
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %count)
  %cmp2.not = icmp eq i32 %., %count
  br i1 %cmp2.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #17
  %div49.i = lshr exact i32 %count, 2
  %add.i = or i32 %div49.i, 3
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #21
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %wacom_led_putimage.exit.thread, label %if.end.i

wacom_led_putimage.exit.thread:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %lock) #17
  br label %105

if.end.i:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 33, ptr %call9.i.i.i, align 128
  %arrayidx2.i = getelementptr i8, ptr %call9.i.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx2.i, align 1
  %hdev.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev.i, align 8
  %call.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext 33, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %8 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %call.i.i, label %if.end.i.do.end.i.i_crit_edge [
    i32 -110, label %if.end.i.land.rhs.i.i_crit_edge
    i32 -11, label %if.end.i.land.rhs.i.i_crit_edge30
  ]

if.end.i.land.rhs.i.i_crit_edge30:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i

if.end.i.do.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge30
  %9 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call9.i.i.i, align 128
  %call.i.1.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %10, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %11 = zext i32 %call.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %call.i.1.i, label %land.rhs.i.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.i.land.rhs.i.1.i_crit_edge
    i32 -11, label %land.rhs.i.i.land.rhs.i.1.i_crit_edge31
  ]

land.rhs.i.i.land.rhs.i.1.i_crit_edge31:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i

land.rhs.i.i.land.rhs.i.1.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i

land.rhs.i.i.do.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.1.i:                                   ; preds = %land.rhs.i.i.land.rhs.i.1.i_crit_edge, %land.rhs.i.i.land.rhs.i.1.i_crit_edge31
  %12 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call9.i.i.i, align 128
  %call.i.2.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %13, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %14 = zext i32 %call.i.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call.i.2.i, label %land.rhs.i.1.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge
    i32 -11, label %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge32
  ]

land.rhs.i.1.i.land.rhs.i.2.i_crit_edge32:        ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i

land.rhs.i.1.i.land.rhs.i.2.i_crit_edge:          ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i

land.rhs.i.1.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.2.i:                                   ; preds = %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge, %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge32
  %15 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call9.i.i.i, align 128
  %call.i.3.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %16, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %17 = zext i32 %call.i.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call.i.3.i, label %land.rhs.i.2.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge
    i32 -11, label %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge33
  ]

land.rhs.i.2.i.land.rhs.i.3.i_crit_edge33:        ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i

land.rhs.i.2.i.land.rhs.i.3.i_crit_edge:          ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i

land.rhs.i.2.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.3.i:                                   ; preds = %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge, %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge33
  %18 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call9.i.i.i, align 128
  %call.i.4.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %19, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %20 = zext i32 %call.i.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call.i.4.i, label %land.rhs.i.3.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge
    i32 -11, label %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge34
  ]

land.rhs.i.3.i.land.rhs.i.4.i_crit_edge34:        ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i

land.rhs.i.3.i.land.rhs.i.4.i_crit_edge:          ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i

land.rhs.i.3.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.4.i:                                   ; preds = %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge, %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge34
  %21 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call9.i.i.i, align 128
  %call.i.5.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %22, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %23 = zext i32 %call.i.5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call.i.5.i, label %land.rhs.i.4.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge
    i32 -11, label %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge35
  ]

land.rhs.i.4.i.land.rhs.i.5.i_crit_edge35:        ; preds = %land.rhs.i.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i

land.rhs.i.4.i.land.rhs.i.5.i_crit_edge:          ; preds = %land.rhs.i.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i

land.rhs.i.4.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.5.i:                                   ; preds = %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge, %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge35
  %24 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call9.i.i.i, align 128
  %call.i.6.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %25, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %26 = zext i32 %call.i.6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call.i.6.i, label %land.rhs.i.5.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge
    i32 -11, label %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge36
  ]

land.rhs.i.5.i.land.rhs.i.6.i_crit_edge36:        ; preds = %land.rhs.i.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i

land.rhs.i.5.i.land.rhs.i.6.i_crit_edge:          ; preds = %land.rhs.i.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i

land.rhs.i.5.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.6.i:                                   ; preds = %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge, %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge36
  %27 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call9.i.i.i, align 128
  %call.i.7.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %28, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %29 = zext i32 %call.i.7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call.i.7.i, label %land.rhs.i.6.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge
    i32 -11, label %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge37
  ]

land.rhs.i.6.i.land.rhs.i.7.i_crit_edge37:        ; preds = %land.rhs.i.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i

land.rhs.i.6.i.land.rhs.i.7.i_crit_edge:          ; preds = %land.rhs.i.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i

land.rhs.i.6.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.7.i:                                   ; preds = %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge, %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge37
  %30 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call9.i.i.i, align 128
  %call.i.8.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %31, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %32 = zext i32 %call.i.8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call.i.8.i, label %land.rhs.i.7.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge
    i32 -11, label %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge38
  ]

land.rhs.i.7.i.land.rhs.i.8.i_crit_edge38:        ; preds = %land.rhs.i.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i

land.rhs.i.7.i.land.rhs.i.8.i_crit_edge:          ; preds = %land.rhs.i.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i

land.rhs.i.7.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.8.i:                                   ; preds = %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge, %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge38
  %33 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call9.i.i.i, align 128
  %call.i.9.i = tail call i32 @hid_hw_raw_request(ptr noundef %7, i8 noundef zeroext %34, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %35 = zext i32 %call.i.9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call.i.9.i, label %land.rhs.i.8.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.8.i.out.sink.split.i_crit_edge
    i32 -11, label %land.rhs.i.8.i.out.sink.split.i_crit_edge39
  ]

land.rhs.i.8.i.out.sink.split.i_crit_edge39:      ; preds = %land.rhs.i.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

land.rhs.i.8.i.out.sink.split.i_crit_edge:        ; preds = %land.rhs.i.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

land.rhs.i.8.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.8.i.do.end.i.i_crit_edge, %land.rhs.i.7.i.do.end.i.i_crit_edge, %land.rhs.i.6.i.do.end.i.i_crit_edge, %land.rhs.i.5.i.do.end.i.i_crit_edge, %land.rhs.i.4.i.do.end.i.i_crit_edge, %land.rhs.i.3.i.do.end.i.i_crit_edge, %land.rhs.i.2.i.do.end.i.i_crit_edge, %land.rhs.i.1.i.do.end.i.i_crit_edge, %land.rhs.i.i.do.end.i.i_crit_edge, %if.end.i.do.end.i.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end.i.do.end.i.i_crit_edge ], [ %call.i.1.i, %land.rhs.i.i.do.end.i.i_crit_edge ], [ %call.i.2.i, %land.rhs.i.1.i.do.end.i.i_crit_edge ], [ %call.i.3.i, %land.rhs.i.2.i.do.end.i.i_crit_edge ], [ %call.i.4.i, %land.rhs.i.3.i.do.end.i.i_crit_edge ], [ %call.i.5.i, %land.rhs.i.4.i.do.end.i.i_crit_edge ], [ %call.i.6.i, %land.rhs.i.5.i.do.end.i.i_crit_edge ], [ %call.i.7.i, %land.rhs.i.6.i.do.end.i.i_crit_edge ], [ %call.i.8.i, %land.rhs.i.7.i.do.end.i.i_crit_edge ], [ %call.i.9.i, %land.rhs.i.8.i.do.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i)
  %cmp3.i.i = icmp slt i32 %call.i.lcssa.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i.out.sink.split.i_crit_edge, label %if.end5.i

do.end.i.i.out.sink.split.i_crit_edge:            ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

if.end5.i:                                        ; preds = %do.end.i.i
  %36 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.20, ptr %call9.i.i.i, align 128
  %37 = trunc i32 %button_id to i8
  %conv.i = and i8 %37, 7
  %38 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %call9.i.i.i, i32 2
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 3
  br label %for.body.i

for.cond.i:                                       ; preds = %do.end.i57.i
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end5.i
  %i.084.i = phi i32 [ 0, %if.end5.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %conv10.i = trunc i32 %i.084.i to i8
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv10.i, ptr %arrayidx11.i, align 2
  %mul.i = mul nuw nsw i32 %i.084.i, %div49.i
  %add.ptr12.i = getelementptr i8, ptr %buf, i32 %mul.i
  %40 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr12.i, i32 %div49.i)
  %41 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev.i, align 8
  %43 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %44, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %45 = zext i32 %call.i51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call.i51.i, label %for.body.i.do.end.i57.i_crit_edge [
    i32 -110, label %for.body.i.land.rhs.i55.i_crit_edge
    i32 -11, label %for.body.i.land.rhs.i55.i_crit_edge40
  ]

for.body.i.land.rhs.i55.i_crit_edge40:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.i

for.body.i.land.rhs.i55.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.i

for.body.i.do.end.i57.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.i:                                   ; preds = %for.body.i.land.rhs.i55.i_crit_edge, %for.body.i.land.rhs.i55.i_crit_edge40
  %46 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.1.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %47, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %48 = zext i32 %call.i51.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call.i51.1.i, label %land.rhs.i55.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.i.land.rhs.i55.1.i_crit_edge
    i32 -11, label %land.rhs.i55.i.land.rhs.i55.1.i_crit_edge41
  ]

land.rhs.i55.i.land.rhs.i55.1.i_crit_edge41:      ; preds = %land.rhs.i55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.1.i

land.rhs.i55.i.land.rhs.i55.1.i_crit_edge:        ; preds = %land.rhs.i55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.1.i

land.rhs.i55.i.do.end.i57.i_crit_edge:            ; preds = %land.rhs.i55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.1.i:                                 ; preds = %land.rhs.i55.i.land.rhs.i55.1.i_crit_edge, %land.rhs.i55.i.land.rhs.i55.1.i_crit_edge41
  %49 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.2.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %50, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %51 = zext i32 %call.i51.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call.i51.2.i, label %land.rhs.i55.1.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.1.i.land.rhs.i55.2.i_crit_edge
    i32 -11, label %land.rhs.i55.1.i.land.rhs.i55.2.i_crit_edge42
  ]

land.rhs.i55.1.i.land.rhs.i55.2.i_crit_edge42:    ; preds = %land.rhs.i55.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.2.i

land.rhs.i55.1.i.land.rhs.i55.2.i_crit_edge:      ; preds = %land.rhs.i55.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.2.i

land.rhs.i55.1.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.2.i:                                 ; preds = %land.rhs.i55.1.i.land.rhs.i55.2.i_crit_edge, %land.rhs.i55.1.i.land.rhs.i55.2.i_crit_edge42
  %52 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.3.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %53, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %54 = zext i32 %call.i51.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call.i51.3.i, label %land.rhs.i55.2.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.2.i.land.rhs.i55.3.i_crit_edge
    i32 -11, label %land.rhs.i55.2.i.land.rhs.i55.3.i_crit_edge43
  ]

land.rhs.i55.2.i.land.rhs.i55.3.i_crit_edge43:    ; preds = %land.rhs.i55.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.3.i

land.rhs.i55.2.i.land.rhs.i55.3.i_crit_edge:      ; preds = %land.rhs.i55.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.3.i

land.rhs.i55.2.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.3.i:                                 ; preds = %land.rhs.i55.2.i.land.rhs.i55.3.i_crit_edge, %land.rhs.i55.2.i.land.rhs.i55.3.i_crit_edge43
  %55 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.4.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %56, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %57 = zext i32 %call.i51.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %call.i51.4.i, label %land.rhs.i55.3.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.3.i.land.rhs.i55.4.i_crit_edge
    i32 -11, label %land.rhs.i55.3.i.land.rhs.i55.4.i_crit_edge44
  ]

land.rhs.i55.3.i.land.rhs.i55.4.i_crit_edge44:    ; preds = %land.rhs.i55.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.4.i

land.rhs.i55.3.i.land.rhs.i55.4.i_crit_edge:      ; preds = %land.rhs.i55.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.4.i

land.rhs.i55.3.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.4.i:                                 ; preds = %land.rhs.i55.3.i.land.rhs.i55.4.i_crit_edge, %land.rhs.i55.3.i.land.rhs.i55.4.i_crit_edge44
  %58 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.5.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %59, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %60 = zext i32 %call.i51.5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call.i51.5.i, label %land.rhs.i55.4.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.4.i.land.rhs.i55.5.i_crit_edge
    i32 -11, label %land.rhs.i55.4.i.land.rhs.i55.5.i_crit_edge45
  ]

land.rhs.i55.4.i.land.rhs.i55.5.i_crit_edge45:    ; preds = %land.rhs.i55.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.5.i

land.rhs.i55.4.i.land.rhs.i55.5.i_crit_edge:      ; preds = %land.rhs.i55.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.5.i

land.rhs.i55.4.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.5.i:                                 ; preds = %land.rhs.i55.4.i.land.rhs.i55.5.i_crit_edge, %land.rhs.i55.4.i.land.rhs.i55.5.i_crit_edge45
  %61 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.6.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %62, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %63 = zext i32 %call.i51.6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %call.i51.6.i, label %land.rhs.i55.5.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.5.i.land.rhs.i55.6.i_crit_edge
    i32 -11, label %land.rhs.i55.5.i.land.rhs.i55.6.i_crit_edge46
  ]

land.rhs.i55.5.i.land.rhs.i55.6.i_crit_edge46:    ; preds = %land.rhs.i55.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.6.i

land.rhs.i55.5.i.land.rhs.i55.6.i_crit_edge:      ; preds = %land.rhs.i55.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.6.i

land.rhs.i55.5.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.6.i:                                 ; preds = %land.rhs.i55.5.i.land.rhs.i55.6.i_crit_edge, %land.rhs.i55.5.i.land.rhs.i55.6.i_crit_edge46
  %64 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.7.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %65, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %66 = zext i32 %call.i51.7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %call.i51.7.i, label %land.rhs.i55.6.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.6.i.land.rhs.i55.7.i_crit_edge
    i32 -11, label %land.rhs.i55.6.i.land.rhs.i55.7.i_crit_edge47
  ]

land.rhs.i55.6.i.land.rhs.i55.7.i_crit_edge47:    ; preds = %land.rhs.i55.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.7.i

land.rhs.i55.6.i.land.rhs.i55.7.i_crit_edge:      ; preds = %land.rhs.i55.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.7.i

land.rhs.i55.6.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.7.i:                                 ; preds = %land.rhs.i55.6.i.land.rhs.i55.7.i_crit_edge, %land.rhs.i55.6.i.land.rhs.i55.7.i_crit_edge47
  %67 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.8.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %68, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %69 = zext i32 %call.i51.8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call.i51.8.i, label %land.rhs.i55.7.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.7.i.land.rhs.i55.8.i_crit_edge
    i32 -11, label %land.rhs.i55.7.i.land.rhs.i55.8.i_crit_edge48
  ]

land.rhs.i55.7.i.land.rhs.i55.8.i_crit_edge48:    ; preds = %land.rhs.i55.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.8.i

land.rhs.i55.7.i.land.rhs.i55.8.i_crit_edge:      ; preds = %land.rhs.i55.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i55.8.i

land.rhs.i55.7.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

land.rhs.i55.8.i:                                 ; preds = %land.rhs.i55.7.i.land.rhs.i55.8.i_crit_edge, %land.rhs.i55.7.i.land.rhs.i55.8.i_crit_edge48
  %70 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %call9.i.i.i, align 128
  %call.i51.9.i = tail call i32 @hid_hw_raw_request(ptr noundef %42, i8 noundef zeroext %71, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %72 = zext i32 %call.i51.9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %call.i51.9.i, label %land.rhs.i55.8.i.do.end.i57.i_crit_edge [
    i32 -110, label %land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge
    i32 -11, label %land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge49
  ]

land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge49: ; preds = %land.rhs.i55.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit60.thread.i

land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge: ; preds = %land.rhs.i55.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit60.thread.i

land.rhs.i55.8.i.do.end.i57.i_crit_edge:          ; preds = %land.rhs.i55.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i57.i

do.end.i57.i:                                     ; preds = %land.rhs.i55.8.i.do.end.i57.i_crit_edge, %land.rhs.i55.7.i.do.end.i57.i_crit_edge, %land.rhs.i55.6.i.do.end.i57.i_crit_edge, %land.rhs.i55.5.i.do.end.i57.i_crit_edge, %land.rhs.i55.4.i.do.end.i57.i_crit_edge, %land.rhs.i55.3.i.do.end.i57.i_crit_edge, %land.rhs.i55.2.i.do.end.i57.i_crit_edge, %land.rhs.i55.1.i.do.end.i57.i_crit_edge, %land.rhs.i55.i.do.end.i57.i_crit_edge, %for.body.i.do.end.i57.i_crit_edge
  %call.i51.lcssa.i = phi i32 [ %call.i51.i, %for.body.i.do.end.i57.i_crit_edge ], [ %call.i51.1.i, %land.rhs.i55.i.do.end.i57.i_crit_edge ], [ %call.i51.2.i, %land.rhs.i55.1.i.do.end.i57.i_crit_edge ], [ %call.i51.3.i, %land.rhs.i55.2.i.do.end.i57.i_crit_edge ], [ %call.i51.4.i, %land.rhs.i55.3.i.do.end.i57.i_crit_edge ], [ %call.i51.5.i, %land.rhs.i55.4.i.do.end.i57.i_crit_edge ], [ %call.i51.6.i, %land.rhs.i55.5.i.do.end.i57.i_crit_edge ], [ %call.i51.7.i, %land.rhs.i55.6.i.do.end.i57.i_crit_edge ], [ %call.i51.8.i, %land.rhs.i55.7.i.do.end.i57.i_crit_edge ], [ %call.i51.9.i, %land.rhs.i55.8.i.do.end.i57.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.lcssa.i)
  %cmp3.i56.i = icmp slt i32 %call.i51.lcssa.i, 0
  br i1 %cmp3.i56.i, label %do.end.i57.i.wacom_set_report.exit60.thread.i_crit_edge, label %for.cond.i

do.end.i57.i.wacom_set_report.exit60.thread.i_crit_edge: ; preds = %do.end.i57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit60.thread.i

wacom_set_report.exit60.thread.i:                 ; preds = %do.end.i57.i.wacom_set_report.exit60.thread.i_crit_edge, %land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge, %land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge49
  %call.i5190.i = phi i32 [ %call.i51.9.i, %land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge ], [ %call.i51.9.i, %land.rhs.i55.8.i.wacom_set_report.exit60.thread.i_crit_edge49 ], [ %call.i51.lcssa.i, %do.end.i57.i.wacom_set_report.exit60.thread.i_crit_edge ]
  %dev.i58.i = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i58.i, ptr noundef nonnull @.str.29, i32 noundef %call.i5190.i) #20
  br label %for.end.i

for.end.i:                                        ; preds = %wacom_set_report.exit60.thread.i, %for.cond.i.for.end.i_crit_edge
  %call.i5189.i = phi i32 [ %call.i5190.i, %wacom_set_report.exit60.thread.i ], [ %call.i51.lcssa.i, %for.cond.i.for.end.i_crit_edge ]
  %73 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 33, ptr %call9.i.i.i, align 128
  %74 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx2.i, align 1
  %75 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hdev.i, align 8
  %call.i62.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext 33, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %77 = zext i32 %call.i62.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %call.i62.i, label %for.end.i.do.end.i68.i_crit_edge [
    i32 -110, label %for.end.i.land.rhs.i66.i_crit_edge
    i32 -11, label %for.end.i.land.rhs.i66.i_crit_edge50
  ]

for.end.i.land.rhs.i66.i_crit_edge50:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.i

for.end.i.land.rhs.i66.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.i

for.end.i.do.end.i68.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.i:                                   ; preds = %for.end.i.land.rhs.i66.i_crit_edge, %for.end.i.land.rhs.i66.i_crit_edge50
  %78 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.1.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %79, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %80 = zext i32 %call.i62.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %call.i62.1.i, label %land.rhs.i66.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.i.land.rhs.i66.1.i_crit_edge
    i32 -11, label %land.rhs.i66.i.land.rhs.i66.1.i_crit_edge51
  ]

land.rhs.i66.i.land.rhs.i66.1.i_crit_edge51:      ; preds = %land.rhs.i66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.1.i

land.rhs.i66.i.land.rhs.i66.1.i_crit_edge:        ; preds = %land.rhs.i66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.1.i

land.rhs.i66.i.do.end.i68.i_crit_edge:            ; preds = %land.rhs.i66.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.1.i:                                 ; preds = %land.rhs.i66.i.land.rhs.i66.1.i_crit_edge, %land.rhs.i66.i.land.rhs.i66.1.i_crit_edge51
  %81 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.2.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %82, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %83 = zext i32 %call.i62.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call.i62.2.i, label %land.rhs.i66.1.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.1.i.land.rhs.i66.2.i_crit_edge
    i32 -11, label %land.rhs.i66.1.i.land.rhs.i66.2.i_crit_edge52
  ]

land.rhs.i66.1.i.land.rhs.i66.2.i_crit_edge52:    ; preds = %land.rhs.i66.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.2.i

land.rhs.i66.1.i.land.rhs.i66.2.i_crit_edge:      ; preds = %land.rhs.i66.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.2.i

land.rhs.i66.1.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.2.i:                                 ; preds = %land.rhs.i66.1.i.land.rhs.i66.2.i_crit_edge, %land.rhs.i66.1.i.land.rhs.i66.2.i_crit_edge52
  %84 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.3.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %85, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %86 = zext i32 %call.i62.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %call.i62.3.i, label %land.rhs.i66.2.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.2.i.land.rhs.i66.3.i_crit_edge
    i32 -11, label %land.rhs.i66.2.i.land.rhs.i66.3.i_crit_edge53
  ]

land.rhs.i66.2.i.land.rhs.i66.3.i_crit_edge53:    ; preds = %land.rhs.i66.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.3.i

land.rhs.i66.2.i.land.rhs.i66.3.i_crit_edge:      ; preds = %land.rhs.i66.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.3.i

land.rhs.i66.2.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.3.i:                                 ; preds = %land.rhs.i66.2.i.land.rhs.i66.3.i_crit_edge, %land.rhs.i66.2.i.land.rhs.i66.3.i_crit_edge53
  %87 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.4.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %88, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %89 = zext i32 %call.i62.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call.i62.4.i, label %land.rhs.i66.3.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.3.i.land.rhs.i66.4.i_crit_edge
    i32 -11, label %land.rhs.i66.3.i.land.rhs.i66.4.i_crit_edge54
  ]

land.rhs.i66.3.i.land.rhs.i66.4.i_crit_edge54:    ; preds = %land.rhs.i66.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.4.i

land.rhs.i66.3.i.land.rhs.i66.4.i_crit_edge:      ; preds = %land.rhs.i66.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.4.i

land.rhs.i66.3.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.4.i:                                 ; preds = %land.rhs.i66.3.i.land.rhs.i66.4.i_crit_edge, %land.rhs.i66.3.i.land.rhs.i66.4.i_crit_edge54
  %90 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.5.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %91, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %92 = zext i32 %call.i62.5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %call.i62.5.i, label %land.rhs.i66.4.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.4.i.land.rhs.i66.5.i_crit_edge
    i32 -11, label %land.rhs.i66.4.i.land.rhs.i66.5.i_crit_edge55
  ]

land.rhs.i66.4.i.land.rhs.i66.5.i_crit_edge55:    ; preds = %land.rhs.i66.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.5.i

land.rhs.i66.4.i.land.rhs.i66.5.i_crit_edge:      ; preds = %land.rhs.i66.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.5.i

land.rhs.i66.4.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.5.i:                                 ; preds = %land.rhs.i66.4.i.land.rhs.i66.5.i_crit_edge, %land.rhs.i66.4.i.land.rhs.i66.5.i_crit_edge55
  %93 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.6.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %94, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %95 = zext i32 %call.i62.6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %call.i62.6.i, label %land.rhs.i66.5.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.5.i.land.rhs.i66.6.i_crit_edge
    i32 -11, label %land.rhs.i66.5.i.land.rhs.i66.6.i_crit_edge56
  ]

land.rhs.i66.5.i.land.rhs.i66.6.i_crit_edge56:    ; preds = %land.rhs.i66.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.6.i

land.rhs.i66.5.i.land.rhs.i66.6.i_crit_edge:      ; preds = %land.rhs.i66.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.6.i

land.rhs.i66.5.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.6.i:                                 ; preds = %land.rhs.i66.5.i.land.rhs.i66.6.i_crit_edge, %land.rhs.i66.5.i.land.rhs.i66.6.i_crit_edge56
  %96 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.7.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %97, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %98 = zext i32 %call.i62.7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %call.i62.7.i, label %land.rhs.i66.6.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.6.i.land.rhs.i66.7.i_crit_edge
    i32 -11, label %land.rhs.i66.6.i.land.rhs.i66.7.i_crit_edge57
  ]

land.rhs.i66.6.i.land.rhs.i66.7.i_crit_edge57:    ; preds = %land.rhs.i66.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.7.i

land.rhs.i66.6.i.land.rhs.i66.7.i_crit_edge:      ; preds = %land.rhs.i66.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.7.i

land.rhs.i66.6.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.7.i:                                 ; preds = %land.rhs.i66.6.i.land.rhs.i66.7.i_crit_edge, %land.rhs.i66.6.i.land.rhs.i66.7.i_crit_edge57
  %99 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.8.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %100, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %101 = zext i32 %call.i62.8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %call.i62.8.i, label %land.rhs.i66.7.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.7.i.land.rhs.i66.8.i_crit_edge
    i32 -11, label %land.rhs.i66.7.i.land.rhs.i66.8.i_crit_edge58
  ]

land.rhs.i66.7.i.land.rhs.i66.8.i_crit_edge58:    ; preds = %land.rhs.i66.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.8.i

land.rhs.i66.7.i.land.rhs.i66.8.i_crit_edge:      ; preds = %land.rhs.i66.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i66.8.i

land.rhs.i66.7.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

land.rhs.i66.8.i:                                 ; preds = %land.rhs.i66.7.i.land.rhs.i66.8.i_crit_edge, %land.rhs.i66.7.i.land.rhs.i66.8.i_crit_edge58
  %102 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %call9.i.i.i, align 128
  %call.i62.9.i = tail call i32 @hid_hw_raw_request(ptr noundef %76, i8 noundef zeroext %103, ptr noundef nonnull %call9.i.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %104 = zext i32 %call.i62.9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %call.i62.9.i, label %land.rhs.i66.8.i.do.end.i68.i_crit_edge [
    i32 -110, label %land.rhs.i66.8.i.out.sink.split.i_crit_edge
    i32 -11, label %land.rhs.i66.8.i.out.sink.split.i_crit_edge59
  ]

land.rhs.i66.8.i.out.sink.split.i_crit_edge59:    ; preds = %land.rhs.i66.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

land.rhs.i66.8.i.out.sink.split.i_crit_edge:      ; preds = %land.rhs.i66.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

land.rhs.i66.8.i.do.end.i68.i_crit_edge:          ; preds = %land.rhs.i66.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i68.i

do.end.i68.i:                                     ; preds = %land.rhs.i66.8.i.do.end.i68.i_crit_edge, %land.rhs.i66.7.i.do.end.i68.i_crit_edge, %land.rhs.i66.6.i.do.end.i68.i_crit_edge, %land.rhs.i66.5.i.do.end.i68.i_crit_edge, %land.rhs.i66.4.i.do.end.i68.i_crit_edge, %land.rhs.i66.3.i.do.end.i68.i_crit_edge, %land.rhs.i66.2.i.do.end.i68.i_crit_edge, %land.rhs.i66.1.i.do.end.i68.i_crit_edge, %land.rhs.i66.i.do.end.i68.i_crit_edge, %for.end.i.do.end.i68.i_crit_edge
  %call.i62.lcssa.i = phi i32 [ %call.i62.i, %for.end.i.do.end.i68.i_crit_edge ], [ %call.i62.1.i, %land.rhs.i66.i.do.end.i68.i_crit_edge ], [ %call.i62.2.i, %land.rhs.i66.1.i.do.end.i68.i_crit_edge ], [ %call.i62.3.i, %land.rhs.i66.2.i.do.end.i68.i_crit_edge ], [ %call.i62.4.i, %land.rhs.i66.3.i.do.end.i68.i_crit_edge ], [ %call.i62.5.i, %land.rhs.i66.4.i.do.end.i68.i_crit_edge ], [ %call.i62.6.i, %land.rhs.i66.5.i.do.end.i68.i_crit_edge ], [ %call.i62.7.i, %land.rhs.i66.6.i.do.end.i68.i_crit_edge ], [ %call.i62.8.i, %land.rhs.i66.7.i.do.end.i68.i_crit_edge ], [ %call.i62.9.i, %land.rhs.i66.8.i.do.end.i68.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.lcssa.i)
  %cmp3.i67.i = icmp slt i32 %call.i62.lcssa.i, 0
  br i1 %cmp3.i67.i, label %do.end.i68.i.out.sink.split.i_crit_edge, label %do.end.i68.i.wacom_led_putimage.exit_crit_edge

do.end.i68.i.wacom_led_putimage.exit_crit_edge:   ; preds = %do.end.i68.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_led_putimage.exit

do.end.i68.i.out.sink.split.i_crit_edge:          ; preds = %do.end.i68.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %do.end.i68.i.out.sink.split.i_crit_edge, %land.rhs.i66.8.i.out.sink.split.i_crit_edge, %land.rhs.i66.8.i.out.sink.split.i_crit_edge59, %do.end.i.i.out.sink.split.i_crit_edge, %land.rhs.i.8.i.out.sink.split.i_crit_edge, %land.rhs.i.8.i.out.sink.split.i_crit_edge39
  %.sink.i = phi ptr [ %7, %land.rhs.i.8.i.out.sink.split.i_crit_edge ], [ %7, %land.rhs.i.8.i.out.sink.split.i_crit_edge39 ], [ %7, %do.end.i.i.out.sink.split.i_crit_edge ], [ %76, %land.rhs.i66.8.i.out.sink.split.i_crit_edge ], [ %76, %land.rhs.i66.8.i.out.sink.split.i_crit_edge59 ], [ %76, %do.end.i68.i.out.sink.split.i_crit_edge ]
  %call.i6287.sink.i = phi i32 [ %call.i.9.i, %land.rhs.i.8.i.out.sink.split.i_crit_edge ], [ %call.i.9.i, %land.rhs.i.8.i.out.sink.split.i_crit_edge39 ], [ %call.i.lcssa.i, %do.end.i.i.out.sink.split.i_crit_edge ], [ %call.i62.9.i, %land.rhs.i66.8.i.out.sink.split.i_crit_edge ], [ %call.i62.9.i, %land.rhs.i66.8.i.out.sink.split.i_crit_edge59 ], [ %call.i62.lcssa.i, %do.end.i68.i.out.sink.split.i_crit_edge ]
  %retval1.2.ph.i = phi i32 [ %call.i.9.i, %land.rhs.i.8.i.out.sink.split.i_crit_edge ], [ %call.i.9.i, %land.rhs.i.8.i.out.sink.split.i_crit_edge39 ], [ %call.i.lcssa.i, %do.end.i.i.out.sink.split.i_crit_edge ], [ %call.i5189.i, %land.rhs.i66.8.i.out.sink.split.i_crit_edge ], [ %call.i5189.i, %land.rhs.i66.8.i.out.sink.split.i_crit_edge59 ], [ %call.i5189.i, %do.end.i68.i.out.sink.split.i_crit_edge ]
  %dev.i69.i = getelementptr inbounds %struct.hid_device, ptr %.sink.i, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i69.i, ptr noundef nonnull @.str.29, i32 noundef %call.i6287.sink.i) #20
  br label %wacom_led_putimage.exit

wacom_led_putimage.exit:                          ; preds = %out.sink.split.i, %do.end.i68.i.wacom_led_putimage.exit_crit_edge
  %retval1.2.i = phi i32 [ %call.i5189.i, %do.end.i68.i.wacom_led_putimage.exit_crit_edge ], [ %retval1.2.ph.i, %out.sink.split.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  tail call void @mutex_unlock(ptr noundef %lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.2.i)
  %cmp8 = icmp slt i32 %retval1.2.i, 0
  br i1 %cmp8, label %wacom_led_putimage.exit._crit_edge, label %wacom_led_putimage.exit.cleanup_crit_edge

wacom_led_putimage.exit.cleanup_crit_edge:        ; preds = %wacom_led_putimage.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

wacom_led_putimage.exit._crit_edge:               ; preds = %wacom_led_putimage.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %105

105:                                              ; preds = %wacom_led_putimage.exit._crit_edge, %wacom_led_putimage.exit.thread
  %retval.0.i23 = phi i32 [ -12, %wacom_led_putimage.exit.thread ], [ %retval1.2.i, %wacom_led_putimage.exit._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %105, %wacom_led_putimage.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i23, %105 ], [ %count, %wacom_led_putimage.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg1_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 1, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg2_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 2, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg3_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 3, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg4_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 4, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg5_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 5, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg6_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 6, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_btnimg7_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wacom_button_image_store(ptr noundef %dev, i32 noundef 7, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_led1_select_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %led = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led, align 4
  %arrayidx = getelementptr %struct.wacom_group_leds, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %conv) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_led1_select_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #17
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %id.i, align 4, !annotation !325
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %id.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.wacom_led_select_store.exit_crit_edge

entry.wacom_led_select_store.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_led_select_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %lock.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #17
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %5 = trunc i32 %4 to i8
  %conv.i = and i8 %5, 3
  %led.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led.i, align 4
  %arrayidx.i = getelementptr %struct.wacom_group_leds, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %arrayidx.i, align 4
  %call2.i = call fastcc i32 @wacom_led_control(ptr noundef %1) #17
  call void @mutex_unlock(ptr noundef %lock.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  %call2.count.i = select i1 %cmp.i, i32 %call2.i, i32 %count
  br label %wacom_led_select_store.exit

wacom_led_select_store.exit:                      ; preds = %if.end.i, %entry.wacom_led_select_store.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.count.i, %if.end.i ], [ %call1.i, %entry.wacom_led_select_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @wacom_led_groups_release(ptr nocapture noundef writeonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %led = getelementptr inbounds %struct.wacom, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %led, align 4
  %count = getelementptr inbounds %struct.wacom, ptr %data, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__wacom_initialize_battery(ptr noundef %wacom, ptr noundef %battery) unnamed_addr #3 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #17
  %2 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %3 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %battery, ptr %2, align 4
  %bat_desc2 = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 1
  %call = tail call ptr @devres_open_group(ptr noundef %dev1, ptr noundef %bat_desc2, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wacom, ptr %battery, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @__wacom_initialize_battery.battery_no, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !326
  tail call void @llvm.prefetch.p0(ptr nonnull @__wacom_initialize_battery.battery_no, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__wacom_initialize_battery.battery_no, ptr nonnull @__wacom_initialize_battery.battery_no, i32 1, ptr nonnull elementtype(i32) @__wacom_initialize_battery.battery_no) #17, !srcloc !327
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !328
  %sub = add i32 %asmresult.i.i.i.i, -1
  %properties = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wacom_battery_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wacom_battery_get_property, ptr %get_property, align 4
  %bat_name = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 3
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bat_name, ptr noundef nonnull @.str.48, i32 noundef %sub)
  %10 = ptrtoint ptr %bat_desc2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bat_name, ptr %bat_desc2, align 4
  %type = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %type, align 4
  %use_for_apm = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %use_for_apm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %use_for_apm, align 4
  %call8 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef %bat_desc2, ptr noundef nonnull %psy_cfg) #17
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %call8 to i32
  %call17 = call i32 @devres_release_group(ptr noundef %dev1, ptr noundef %bat_desc2) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev, align 8
  %dev14 = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 18
  %call15 = call i32 @power_supply_powers(ptr noundef %call8, ptr noundef %dev14) #17
  %battery16 = getelementptr inbounds %struct.wacom_battery, ptr %battery, i32 0, i32 2
  %16 = ptrtoint ptr %battery16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8, ptr %battery16, align 4
  call void @devres_close_group(ptr noundef %dev1, ptr noundef %bat_desc2) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then10 ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #17
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 73, label %sw.bb
    i32 3, label %sw.bb1
    i32 66, label %sw.bb2
    i32 47, label %sw.bb3
    i32 0, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %wacom_wac = getelementptr inbounds %struct.wacom, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wacom_wac, ptr %val, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bat_connected = getelementptr inbounds %struct.wacom_battery, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %bat_connected to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bat_connected, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %battery_capacity = getelementptr inbounds %struct.wacom_battery, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %battery_capacity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %battery_capacity, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %bat_status = getelementptr inbounds %struct.wacom_battery, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %bat_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bat_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.not = icmp eq i32 %12, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb4
  %bat_charging = getelementptr inbounds %struct.wacom_battery, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %bat_charging to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bat_charging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %val, align 4
  br label %sw.epilog

if.else7:                                         ; preds = %if.else
  %battery_capacity8 = getelementptr inbounds %struct.wacom_battery, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %battery_capacity8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %battery_capacity8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %18)
  %cmp9 = icmp eq i32 %18, 100
  br i1 %cmp9, label %land.lhs.true, label %if.else7.if.else12_crit_edge

if.else7.if.else12_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else12

land.lhs.true:                                    ; preds = %if.else7
  %ps_connected = getelementptr inbounds %struct.wacom_battery, ptr %call, i32 0, i32 8
  %19 = ptrtoint ptr %ps_connected to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ps_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %land.lhs.true.if.else12_crit_edge, label %if.then11

land.lhs.true.if.else12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %val, align 4
  br label %sw.epilog

if.else12:                                        ; preds = %land.lhs.true.if.else12_crit_edge, %if.else7.if.else12_crit_edge
  %ps_connected13 = getelementptr inbounds %struct.wacom_battery, ptr %call, i32 0, i32 8
  %22 = ptrtoint ptr %ps_connected13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ps_connected13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not = icmp eq i32 %23, 0
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %val, align 4
  br label %sw.epilog

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else16, %if.then15, %if.then11, %if.then6, %if.then, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then11 ], [ 0, %if.then15 ], [ 0, %if.else16 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = and i32 %3, -536870921
  %and = or i32 %or, 536870912
  store i32 %and, ptr %quirks, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1464, i32 noundef 3520) #17
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %hdev5 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %hdev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hdev, ptr %hdev5, align 8
  %features7 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 2, i32 10
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = call ptr @memcpy(ptr %features7, ptr %8, i32 120)
  %check_for_hid_type = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 2, i32 10, i32 28
  %10 = ptrtoint ptr %check_for_hid_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %check_for_hid_type, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.end4.if.end12_crit_edge, label %land.lhs.true

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end4
  %hid_type = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 2, i32 10, i32 29
  %12 = ptrtoint ptr %hid_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hid_type, align 4
  %type = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 13
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %call.i183 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @wacom_devm_kfifo_release, i32 noundef 20, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.68) #17
  %tobool.not.i = icmp eq ptr %call.i183, null
  br i1 %tobool.not.i, label %if.end12.cleanup_crit_edge, label %if.end.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call2.i = tail call i32 @__kfifo_alloc(ptr noundef nonnull %call.i183, i32 noundef 361, i32 noundef 1, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not.i, label %if.end16, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @devres_free(ptr noundef nonnull %call.i183) #17
  br label %cleanup

if.end16:                                         ; preds = %if.end.i
  %16 = ptrtoint ptr %hdev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev5, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 18
  tail call void @devres_add(ptr noundef %dev.i, ptr noundef nonnull %call.i183) #17
  %pen_fifo7.i = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 2, i32 15
  %18 = ptrtoint ptr %pen_fifo7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i183, ptr %pen_fifo7.i, align 4
  %hid_data = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 2, i32 22
  %19 = ptrtoint ptr %hid_data to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %hid_data, align 4
  %mode_report = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 2, i32 20
  %20 = ptrtoint ptr %mode_report to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %mode_report, align 4
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %21 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %22, @usb_hid_driver
  br i1 %cmp.i.i, label %if.then18, label %if.end16.do.body_crit_edge

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 -32
  %parent.i = getelementptr i8, ptr %24, i32 136
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 -128
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %call.i, align 8
  %intf22 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %intf22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %intf22, align 4
  br label %do.body

do.body:                                          ; preds = %if.then18, %if.end16.do.body_crit_edge
  %lock = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @wacom_probe.__key) #17
  %init_work = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %init_work, i32 noundef 0) #17
  %29 = ptrtoint ptr %init_work to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %init_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.51, ptr noundef nonnull @wacom_probe.__key.50, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry32 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %30 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %32 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @wacom_init_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.53, ptr noundef nonnull @wacom_probe.__key.52) #17
  %wireless_work = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %wireless_work, i32 noundef 0) #17
  %33 = ptrtoint ptr %wireless_work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %wireless_work, align 8
  %lockdep_map49 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.55, ptr noundef nonnull @wacom_probe.__key.54, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry51 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i184 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry51, ptr %prev.i184, align 4
  %func53 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %func53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @wacom_wireless_work, ptr %func53, align 4
  %battery_work = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %battery_work, i32 noundef 0) #17
  %37 = ptrtoint ptr %battery_work to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %battery_work, align 4
  %lockdep_map62 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62, ptr noundef nonnull @.str.57, ptr noundef nonnull @wacom_probe.__key.56, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry64 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i185 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry64, ptr %prev.i185, align 4
  %func66 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 6, i32 2
  %40 = ptrtoint ptr %func66 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @wacom_battery_work, ptr %func66, align 4
  %remote_work = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %remote_work, i32 noundef 0) #17
  %41 = ptrtoint ptr %remote_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %remote_work, align 8
  %lockdep_map75 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map75, ptr noundef nonnull @.str.59, ptr noundef nonnull @wacom_probe.__key.58, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry77 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry77, ptr %entry77, align 4
  %prev.i186 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i186 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry77, ptr %prev.i186, align 4
  %func79 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %func79 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @wacom_remote_work, ptr %func79, align 4
  %mode_change_work = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %mode_change_work, i32 noundef 0) #17
  %45 = ptrtoint ptr %mode_change_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %mode_change_work, align 4
  %lockdep_map88 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map88, ptr noundef nonnull @.str.61, ptr noundef nonnull @wacom_probe.__key.60, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry90 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %entry90 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry90, ptr %entry90, align 4
  %prev.i187 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i187 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry90, ptr %prev.i187, align 4
  %func92 = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 10, i32 2
  %48 = ptrtoint ptr %func92 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @wacom_mode_change_work, ptr %func92, align 4
  %call.i188 = tail call i32 @hid_open_report(ptr noundef %hdev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool96.not = icmp eq i32 %call.i188, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #20
  br label %cleanup

if.end102:                                        ; preds = %do.body
  %call103 = tail call fastcc i32 @wacom_parse_and_register(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end106:                                        ; preds = %if.end102
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %49 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %50)
  %cmp107 = icmp eq i16 %50, 5
  br i1 %cmp107, label %if.then109, label %if.end106.if.end119_crit_edge

if.end106.if.end119_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.then109:                                       ; preds = %if.end106
  %call111 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_speed) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then109.if.end119_crit_edge, label %do.end116

if.then109.if.end119_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

do.end116:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %call111) #20
  br label %if.end119

if.end119:                                        ; preds = %do.end116, %if.then109.if.end119_crit_edge, %if.end106.if.end119_crit_edge
  %probe_complete = getelementptr inbounds %struct.wacom, ptr %call.i, i32 0, i32 2, i32 8
  %51 = ptrtoint ptr %probe_complete to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %probe_complete, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end102.cleanup_crit_edge, %do.end100, %if.then5.i, %if.end12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i188, %do.end100 ], [ 0, %if.end119 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ %call103, %if.end102.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call2.i, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_remove(ptr noundef %hdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_type = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 10, i32 13
  %2 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_type, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @hid_hw_close(ptr noundef %hdev) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #17
  %init_work = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 8
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %init_work) #17
  %wireless_work = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 5
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wireless_work) #17
  %battery_work = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 6
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %battery_work) #17
  %remote_work = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 7
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %remote_work) #17
  %mode_change_work = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 10
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %mode_change_work) #17
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %5)
  %cmp = icmp eq i16 %5, 5
  br i1 %cmp, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_speed) #17
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %led.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %led.i, align 4
  %count.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count.i, align 4
  %type = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 10, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %9)
  %cmp13.not = icmp eq i32 %9, 46
  br i1 %cmp13.not, label %if.end10.if.end16_crit_edge, label %if.then15

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then15:                                        ; preds = %if.end10
  %resources.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %resources.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %resources.i, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then15.if.end16_crit_edge, label %if.end.i

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  %hdev1.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev1.i, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  %call.i = tail call i32 @devres_release_group(ptr noundef %dev.i, ptr noundef %1) #17
  %14 = ptrtoint ptr %resources.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %resources.i, align 4
  %pen_input.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 12
  %15 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pen_input.i, align 8
  %touch_input.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 13
  %16 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %touch_input.i, align 4
  %pad_input.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 14
  %17 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pad_input.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end.i, %if.then15.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_raw_event(ptr noundef %hdev, ptr nocapture noundef readonly %report, ptr noundef %raw_data, i32 noundef %size) #3 align 64 {
entry:
  %buf.i.i = alloca [361 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 361, i32 %size)
  %cmp = icmp sgt i32 %size, 361
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %serial.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %serial.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %serial.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

lor.lhs.false.i:                                  ; preds = %if.end
  %quirks.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 10, i32 23
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end3_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp124.not.i = icmp eq i32 %7, 0
  br i1 %cmp124.not.i, label %for.cond.preheader.i.if.end3_crit_edge, label %for.cond4.preheader.lr.ph.i

for.cond.preheader.i.if.end3_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

for.cond4.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %add.ptr.i = getelementptr i8, ptr %raw_data, i32 1
  %id.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 6
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc44.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.i
  %i.0127.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i ], [ %inc45.i, %for.inc44.i.for.cond4.preheader.i_crit_edge ]
  %insert.0.off0126.i = phi i1 [ false, %for.cond4.preheader.lr.ph.i ], [ %insert.1.off0.lcssa.i, %for.inc44.i.for.cond4.preheader.i_crit_edge ]
  %flush.0.off0125.i = phi i1 [ false, %for.cond4.preheader.lr.ph.i ], [ %flush.1.off0.lcssa.i, %for.inc44.i.for.cond4.preheader.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.hid_report, ptr %report, i32 0, i32 5, i32 %i.0127.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5.i, align 4
  %maxusage118.i = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %maxusage118.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxusage118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6119.not.i = icmp eq i32 %11, 0
  br i1 %cmp6119.not.i, label %for.cond4.preheader.i.for.inc44.i_crit_edge, label %for.cond4.preheader.i.for.body7.i_crit_edge

for.cond4.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body7.i

for.cond4.preheader.i.for.inc44.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc44.i

for.body7.i:                                      ; preds = %cleanup.i.for.body7.i_crit_edge, %for.cond4.preheader.i.for.body7.i_crit_edge
  %12 = phi ptr [ %28, %cleanup.i.for.body7.i_crit_edge ], [ %9, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %j.0122.i = phi i32 [ %inc.i, %cleanup.i.for.body7.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %insert.1.off0121.i = phi i1 [ %insert.3.off0.i, %cleanup.i.for.body7.i_crit_edge ], [ %insert.0.off0126.i, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %flush.1.off0120.i = phi i1 [ %flush.3.off0.i, %cleanup.i.for.body7.i_crit_edge ], [ %flush.0.off0125.i, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %usage11.i = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %usage11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usage11.i, align 4
  %arrayidx12.i = getelementptr %struct.hid_usage, ptr %14, i32 %j.0122.i
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12.i, align 4
  %call13.i = tail call i32 @wacom_equivalent_usage(i32 noundef %16) #17
  %17 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call13.i, label %for.body7.i.cleanup.i_crit_edge [
    i32 852018, label %for.body7.i.if.end21.i_crit_edge
    i32 852059, label %for.body7.i.if.end21.i_crit_edge18
    i32 -15925156, label %for.body7.i.if.end21.i_crit_edge19
    i32 -15925129, label %for.body7.i.if.end21.i_crit_edge20
  ]

for.body7.i.if.end21.i_crit_edge20:               ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

for.body7.i.if.end21.i_crit_edge19:               ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

for.body7.i.if.end21.i_crit_edge18:               ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

for.body7.i.if.end21.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

for.body7.i.cleanup.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.end21.i:                                       ; preds = %for.body7.i.if.end21.i_crit_edge, %for.body7.i.if.end21.i_crit_edge18, %for.body7.i.if.end21.i_crit_edge19, %for.body7.i.if.end21.i_crit_edge20
  %report_offset.i = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 6
  %18 = ptrtoint ptr %report_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %report_offset.i, align 4
  %report_size22.i = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 7
  %20 = ptrtoint ptr %report_size22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %report_size22.i, align 4
  %mul.i = mul i32 %21, %j.0122.i
  %add.i = add i32 %mul.i, %19
  %call23.i = tail call i32 @hid_field_extract(ptr noundef %hdev, ptr noundef %add.ptr.i, i32 noundef %add.i, i32 noundef %21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 852018, i32 %call13.i)
  %cmp24.i = icmp eq i32 %call13.i, 852018
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool26.not.i = icmp eq i32 %call23.i, 0
  %lnot.ext.i = zext i1 %tobool26.not.i to i32
  %value.0.i = select i1 %cmp24.i, i32 %lnot.ext.i, i32 %call23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.0.i)
  %tobool28.not.i = icmp eq i32 %value.0.i, 0
  br i1 %tobool28.not.i, label %if.end21.i.cleanup.i_crit_edge, label %if.then29.i

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.then29.i:                                      ; preds = %if.end21.i
  %22 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %call13.i, label %if.then29.i.cleanup.i_crit_edge [
    i32 852059, label %sw.bb.i
    i32 -15925156, label %sw.bb32.i
    i32 -15925129, label %sw.bb36.i
  ]

if.then29.i.cleanup.i_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i = zext i32 %value.0.i to i64
  %23 = ptrtoint ptr %serial.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv.i, ptr %serial.i, align 8
  br label %cleanup.i

sw.bb32.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv33.i = zext i32 %value.0.i to i64
  %shl.i = shl nuw i64 %conv33.i, 32
  %24 = ptrtoint ptr %serial.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %serial.i, align 8
  %or.i = or i64 %25, %shl.i
  store i64 %or.i, ptr %serial.i, align 8
  br label %cleanup.i

sw.bb36.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %value.0.i, ptr %id.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb36.i, %sw.bb32.i, %sw.bb.i, %if.then29.i.cleanup.i_crit_edge, %if.end21.i.cleanup.i_crit_edge, %for.body7.i.cleanup.i_crit_edge
  %flush.3.off0.i = phi i1 [ %flush.1.off0120.i, %for.body7.i.cleanup.i_crit_edge ], [ true, %if.then29.i.cleanup.i_crit_edge ], [ true, %sw.bb36.i ], [ true, %sw.bb32.i ], [ true, %sw.bb.i ], [ %flush.1.off0120.i, %if.end21.i.cleanup.i_crit_edge ]
  %insert.3.off0.i = phi i1 [ %insert.1.off0121.i, %for.body7.i.cleanup.i_crit_edge ], [ %insert.1.off0121.i, %if.then29.i.cleanup.i_crit_edge ], [ %insert.1.off0121.i, %sw.bb36.i ], [ %insert.1.off0121.i, %sw.bb32.i ], [ %insert.1.off0121.i, %sw.bb.i ], [ true, %if.end21.i.cleanup.i_crit_edge ]
  %inc.i = add nuw i32 %j.0122.i, 1
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx5.i, align 4
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %maxusage.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %30
  br i1 %cmp6.i, label %cleanup.i.for.body7.i_crit_edge, label %cleanup.i.for.inc44.i_crit_edge

cleanup.i.for.inc44.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc44.i

cleanup.i.for.body7.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body7.i

for.inc44.i:                                      ; preds = %cleanup.i.for.inc44.i_crit_edge, %for.cond4.preheader.i.for.inc44.i_crit_edge
  %flush.1.off0.lcssa.i = phi i1 [ %flush.0.off0125.i, %for.cond4.preheader.i.for.inc44.i_crit_edge ], [ %flush.3.off0.i, %cleanup.i.for.inc44.i_crit_edge ]
  %insert.1.off0.lcssa.i = phi i1 [ %insert.0.off0126.i, %for.cond4.preheader.i.for.inc44.i_crit_edge ], [ %insert.3.off0.i, %cleanup.i.for.inc44.i_crit_edge ]
  %inc45.i = add nuw i32 %i.0127.i, 1
  %31 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %maxfield.i, align 4
  %cmp.i = icmp ult i32 %inc45.i, %32
  br i1 %cmp.i, label %for.inc44.i.for.cond4.preheader.i_crit_edge, label %for.end46.i

for.inc44.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond4.preheader.i

for.end46.i:                                      ; preds = %for.inc44.i
  br i1 %flush.1.off0.lcssa.i, label %if.then48.i, label %if.else49.i

if.then48.i:                                      ; preds = %for.end46.i
  %pen_fifo.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 15
  %33 = ptrtoint ptr %pen_fifo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pen_fifo.i, align 4
  %out.i.i = getelementptr inbounds %struct.__kfifo, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.not10.i.i = icmp eq i32 %36, %38
  br i1 %cmp.not10.i.i, label %if.then48.i.if.end3_crit_edge, label %while.body.lr.ph.i.i

if.then48.i.if.end3_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

while.body.lr.ph.i.i:                             ; preds = %if.then48.i
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  call void @llvm.lifetime.start.p0(i64 361, ptr nonnull %buf.i.i) #17
  %39 = call ptr @memset(ptr %buf.i.i, i32 255, i32 361)
  %call.i.i = call i32 @__kfifo_out_r(ptr noundef %34, ptr noundef nonnull %buf.i.i, i32 noundef 361, i32 noundef 2) #17
  %call4.i.i = call i32 @hid_report_raw_event(ptr noundef %hdev, i32 noundef 0, ptr noundef nonnull %buf.i.i, i32 noundef %call.i.i, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %do.end.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef %call4.i.i) #20
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %while.body.i.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 361, ptr nonnull %buf.i.i) #17
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %34, align 4
  %42 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %41, %43
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end3_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

if.end.i.i.if.end3_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.else49.i:                                      ; preds = %for.end46.i
  br i1 %insert.1.off0.lcssa.i, label %if.then51.i, label %if.else49.i.if.end3_crit_edge

if.else49.i.if.end3_crit_edge:                    ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then51.i:                                      ; preds = %if.else49.i
  %pen_fifo52.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 15
  %44 = ptrtoint ptr %pen_fifo52.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pen_fifo52.i, align 4
  %mask.i.i = getelementptr inbounds %struct.__kfifo, ptr %45, i32 0, i32 2
  %out.i112.i = getelementptr inbounds %struct.__kfifo, ptr %45, i32 0, i32 1
  %dev.i113.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i117.i, %if.then51.i
  %warned.0.off0.i.i = phi i1 [ false, %if.then51.i ], [ true, %if.end.i117.i ]
  %46 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask.i.i, align 4
  %add.i.i = add i32 %47, 1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 4
  %50 = ptrtoint ptr %out.i112.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %out.i112.i, align 4
  %sub.neg.i.i = sub i32 %51, %49
  %sub1.i.i = add i32 %add.i.i, %sub.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.i)
  %cmp.i.i = icmp ult i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %while.cond.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

while.cond.i.i.cond.end.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub3.i.i = add i32 %sub1.i.i, -2
  %call.i114.i = tail call i32 @__kfifo_max_r(i32 noundef %sub3.i.i, i32 noundef 2) #17
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %while.cond.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %call.i114.i, %cond.false.i.i ], [ 0, %while.cond.i.i.cond.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %size)
  %cmp5.i.i = icmp ult i32 %cond.i.i, %size
  br i1 %cmp5.i.i, label %while.body.i115.i, label %wacom_wac_pen_serial_enforce.exit.thread13

while.body.i115.i:                                ; preds = %cond.end.i.i
  br i1 %warned.0.off0.i.i, label %while.body.i115.i.if.end.i117.i_crit_edge, label %do.end.i116.i

while.body.i115.i.if.end.i117.i_crit_edge:        ; preds = %while.body.i115.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i117.i

do.end.i116.i:                                    ; preds = %while.body.i115.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i113.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #20
  br label %if.end.i117.i

if.end.i117.i:                                    ; preds = %do.end.i116.i, %while.body.i115.i.if.end.i117.i_crit_edge
  tail call void @__kfifo_skip_r(ptr noundef %45, i32 noundef 2) #17
  br label %while.cond.i.i

wacom_wac_pen_serial_enforce.exit.thread13:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call11.i.i = tail call i32 @__kfifo_in_r(ptr noundef %45, ptr noundef %raw_data, i32 noundef %size, i32 noundef 2) #17
  br label %cleanup

if.end3:                                          ; preds = %if.else49.i.if.end3_crit_edge, %if.end.i.i.if.end3_crit_edge, %if.then48.i.if.end3_crit_edge, %for.cond.preheader.i.if.end3_crit_edge, %lor.lhs.false.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %wacom_wac = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2
  %data = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 4
  %52 = call ptr @memcpy(ptr %data, ptr %raw_data, i32 %size)
  call void @wacom_wac_irq(ptr noundef %wacom_wac, i32 noundef %size) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %wacom_wac_pen_serial_enforce.exit.thread13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 1, %entry.cleanup_crit_edge ], [ -1, %wacom_wac_pen_serial_enforce.exit.thread13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wacom_wac_report(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_resume(ptr nocapture noundef readonly %hdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #17
  tail call fastcc void @_wacom_query_tablet_data(ptr noundef %1)
  %call2 = tail call fastcc i32 @wacom_led_control(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_reset_resume(ptr nocapture noundef readonly %hdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #17
  tail call fastcc void @_wacom_query_tablet_data(ptr noundef %1) #17
  %call2.i = tail call fastcc i32 @wacom_led_control(ptr noundef %1) #17
  tail call void @mutex_unlock(ptr noundef %lock.i) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_init_work(ptr nocapture noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1148
  tail call fastcc void @_wacom_query_tablet_data(ptr noundef %add.ptr)
  %call1 = tail call fastcc i32 @wacom_led_control(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_wireless_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1016
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %wacom_wac2 = getelementptr i8, ptr %work, i32 -1008
  %battery1.i = getelementptr i8, ptr %work, i32 356
  %2 = ptrtoint ptr %battery1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %battery1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.wacom_destroy_battery.exit_crit_edge, label %if.then.i

entry.wacom_destroy_battery.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_destroy_battery.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hdev.i = getelementptr i8, ptr %work, i32 -96
  %4 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev.i, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  %bat_desc.i = getelementptr i8, ptr %work, i32 304
  %call.i = tail call i32 @devres_release_group(ptr noundef %dev.i, ptr noundef %bat_desc.i) #17
  %6 = ptrtoint ptr %battery1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %battery1.i, align 4
  br label %wacom_destroy_battery.exit

wacom_destroy_battery.exit:                       ; preds = %if.then.i, %entry.wacom_destroy_battery.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %wacom_destroy_battery.exit.cleanup66_crit_edge, label %if.end

wacom_destroy_battery.exit.cleanup66_crit_edge:   ; preds = %wacom_destroy_battery.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

if.end:                                           ; preds = %wacom_destroy_battery.exit
  %config = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 8
  %arrayidx = getelementptr %struct.usb_host_config, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i113 = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 18, i32 8
  %13 = ptrtoint ptr %driver_data.i.i113 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i113, align 4
  %wacom_wac5 = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2
  %resources.i = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %resources.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %resources.i, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i114 = icmp eq i8 %16, 0
  br i1 %tobool.not.i114, label %if.end.wacom_release_resources.exit_crit_edge, label %if.end.i

if.end.wacom_release_resources.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_release_resources.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %hdev1.i = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev1.i, align 8
  %dev.i115 = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  %call.i116 = tail call i32 @devres_release_group(ptr noundef %dev.i115, ptr noundef %14) #17
  %19 = ptrtoint ptr %resources.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %resources.i, align 4
  %pen_input.i = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pen_input.i, align 8
  %touch_input.i = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2, i32 13
  %21 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %touch_input.i, align 4
  %pad_input.i = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2, i32 14
  %22 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pad_input.i, align 8
  br label %wacom_release_resources.exit

wacom_release_resources.exit:                     ; preds = %if.end.i, %if.end.wacom_release_resources.exit_crit_edge
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config, align 8
  %arrayidx8 = getelementptr %struct.usb_host_config, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx8, align 4
  %driver_data.i.i117 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %driver_data.i.i117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i117, align 4
  %driver_data.i.i118 = getelementptr inbounds %struct.hid_device, ptr %28, i32 0, i32 18, i32 8
  %29 = ptrtoint ptr %driver_data.i.i118 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i118, align 4
  %resources.i119 = getelementptr inbounds %struct.wacom, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %resources.i119 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %resources.i119, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i120 = icmp eq i8 %32, 0
  br i1 %tobool.not.i120, label %wacom_release_resources.exit.wacom_release_resources.exit128_crit_edge, label %if.end.i127

wacom_release_resources.exit.wacom_release_resources.exit128_crit_edge: ; preds = %wacom_release_resources.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_release_resources.exit128

if.end.i127:                                      ; preds = %wacom_release_resources.exit
  call void @__sanitizer_cov_trace_pc() #19
  %hdev1.i121 = getelementptr inbounds %struct.wacom, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %hdev1.i121 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev1.i121, align 8
  %dev.i122 = getelementptr inbounds %struct.hid_device, ptr %34, i32 0, i32 18
  %call.i123 = tail call i32 @devres_release_group(ptr noundef %dev.i122, ptr noundef %30) #17
  %35 = ptrtoint ptr %resources.i119 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %resources.i119, align 4
  %pen_input.i124 = getelementptr inbounds %struct.wacom, ptr %30, i32 0, i32 2, i32 12
  %36 = ptrtoint ptr %pen_input.i124 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %pen_input.i124, align 8
  %touch_input.i125 = getelementptr inbounds %struct.wacom, ptr %30, i32 0, i32 2, i32 13
  %37 = ptrtoint ptr %touch_input.i125 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %touch_input.i125, align 4
  %pad_input.i126 = getelementptr inbounds %struct.wacom, ptr %30, i32 0, i32 2, i32 14
  %38 = ptrtoint ptr %pad_input.i126 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %pad_input.i126, align 8
  br label %wacom_release_resources.exit128

wacom_release_resources.exit128:                  ; preds = %if.end.i127, %wacom_release_resources.exit.wacom_release_resources.exit128_crit_edge
  %pid = getelementptr i8, ptr %work, i32 -208
  %39 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp eq i32 %40, 0
  %hdev = getelementptr i8, ptr %work, i32 -96
  %41 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 18
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %wacom_release_resources.exit128
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.71) #20
  br label %cleanup66

if.else:                                          ; preds = %wacom_release_resources.exit128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %40) #20
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @wacom_ids to i32))
  %43 = load i16, ptr @wacom_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool19.not137 = icmp eq i16 %43, 0
  br i1 %tobool19.not137, label %if.else.do.end30_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.else.do.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %if.else.while.body_crit_edge
  %id.0138 = phi ptr [ %incdec.ptr, %if.end24.while.body_crit_edge ], [ @wacom_ids, %if.else.while.body_crit_edge ]
  %vendor = getelementptr inbounds %struct.hid_device_id, ptr %id.0138, i32 0, i32 2
  %44 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1386, i32 %45)
  %cmp20 = icmp eq i32 %45, 1386
  br i1 %cmp20, label %land.lhs.true, label %while.body.if.end24_crit_edge

while.body.if.end24_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

land.lhs.true:                                    ; preds = %while.body
  %product = getelementptr inbounds %struct.hid_device_id, ptr %id.0138, i32 0, i32 3
  %46 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %product, align 4
  %48 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp22 = icmp eq i32 %47, %49
  br i1 %cmp22, label %if.end33, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %while.body.if.end24_crit_edge
  %incdec.ptr = getelementptr %struct.hid_device_id, ptr %id.0138, i32 1
  %50 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr, align 4
  %tobool19.not = icmp eq i16 %51, 0
  br i1 %tobool19.not, label %if.end24.do.end30_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30

do.end30:                                         ; preds = %if.end24.do.end30_crit_edge, %if.else.do.end30_crit_edge
  %52 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hdev, align 8
  %dev32 = getelementptr inbounds %struct.hid_device, ptr %53, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.78) #20
  br label %cleanup66

if.end33:                                         ; preds = %land.lhs.true
  %features = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2, i32 10
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id.0138, i32 0, i32 4
  %54 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %driver_data, align 4
  %56 = inttoptr i32 %55 to ptr
  %57 = call ptr @memcpy(ptr %features, ptr %56, i32 120)
  %58 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid, align 8
  %pid35 = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2, i32 16
  %60 = ptrtoint ptr %pid35 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %pid35, align 8
  tail call void @hid_hw_stop(ptr noundef %12) #17
  %call36 = tail call fastcc i32 @wacom_parse_and_register(ptr noundef %14, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.fail_crit_edge

if.end33.fail_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end39:                                         ; preds = %if.end33
  %touch_max = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2, i32 10, i32 24
  %61 = ptrtoint ptr %touch_max to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %touch_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool41.not = icmp eq i32 %62, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %if.end39.if.then48_crit_edge

if.end39.if.then48_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then48

lor.lhs.false:                                    ; preds = %if.end39
  %type = getelementptr inbounds %struct.wacom, ptr %14, i32 0, i32 2, i32 10, i32 5
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type, align 4
  %65 = add i32 %64, -38
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %lor.lhs.false.if.then48_crit_edge, label %lor.lhs.false.if.end57_crit_edge

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %if.end39.if.then48_crit_edge
  %features49 = getelementptr inbounds %struct.wacom, ptr %30, i32 0, i32 2, i32 10
  %67 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %driver_data, align 4
  %69 = inttoptr i32 %68 to ptr
  %70 = call ptr @memcpy(ptr %features49, ptr %69, i32 120)
  %71 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pid, align 8
  %pid52 = getelementptr inbounds %struct.wacom, ptr %30, i32 0, i32 2, i32 16
  %73 = ptrtoint ptr %pid52 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %pid52, align 8
  tail call void @hid_hw_stop(ptr noundef %28) #17
  %call53 = tail call fastcc i32 @wacom_parse_and_register(ptr noundef %30, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then48.if.end57_crit_edge, label %if.then48.fail_crit_edge

if.then48.fail_crit_edge:                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.end57:                                         ; preds = %if.then48.if.end57_crit_edge, %lor.lhs.false.if.end57_crit_edge
  %call60 = tail call i32 @strlcpy(ptr noundef %wacom_wac2, ptr noundef %wacom_wac5, i32 noundef 64) #17
  %quirks.i = getelementptr i8, ptr %work, i32 -256
  %74 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i129 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i129, label %if.end57.cleanup66_crit_edge, label %wacom_initialize_battery.exit

if.end57.cleanup66_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

wacom_initialize_battery.exit:                    ; preds = %if.end57
  %battery.i = getelementptr i8, ptr %work, i32 300
  %call.i130 = tail call fastcc i32 @__wacom_initialize_battery(ptr noundef %add.ptr, ptr noundef %battery.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool62.not = icmp eq i32 %call.i130, 0
  br i1 %tobool62.not, label %wacom_initialize_battery.exit.cleanup66_crit_edge, label %wacom_initialize_battery.exit.fail_crit_edge

wacom_initialize_battery.exit.fail_crit_edge:     ; preds = %wacom_initialize_battery.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

wacom_initialize_battery.exit.cleanup66_crit_edge: ; preds = %wacom_initialize_battery.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup66

fail:                                             ; preds = %wacom_initialize_battery.exit.fail_crit_edge, %if.then48.fail_crit_edge, %if.end33.fail_crit_edge
  tail call fastcc void @wacom_release_resources(ptr noundef %14)
  tail call fastcc void @wacom_release_resources(ptr noundef %30)
  br label %cleanup66

cleanup66:                                        ; preds = %fail, %wacom_initialize_battery.exit.cleanup66_crit_edge, %if.end57.cleanup66_crit_edge, %do.end30, %do.end, %wacom_destroy_battery.exit.cleanup66_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_remote_work(ptr noundef %work) #3 align 64 {
entry:
  %data = alloca %struct.wacom_remote_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1104
  %remote1 = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %remote1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote1, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %data) #17
  %2 = call ptr @memset(ptr %data, i32 255, i32 40)
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %remote_fifo = getelementptr inbounds %struct.wacom_remote, ptr %1, i32 0, i32 1
  %call8 = call i32 @__kfifo_out(ptr noundef %remote_fifo, ptr noundef nonnull %data, i32 noundef 40) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call8)
  %cmp10.not = icmp eq i32 %call8, 40
  br i1 %cmp10.not, label %if.end, label %do.end14

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hdev = getelementptr i8, ptr %work, i32 -184
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #20
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %remote_fifo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %remote_fifo, align 4
  %out = getelementptr inbounds %struct.wacom_remote, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp18 = icmp eq i32 %6, %8
  br i1 %cmp18, label %if.end.if.end21_crit_edge, label %if.then20

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #17
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  %hdev.i = getelementptr i8, ptr %work, i32 -184
  %features.i.i = getelementptr i8, ptr %work, i32 -436
  %pid.i.i = getelementptr i8, ptr %work, i32 -296
  %pad_name.i = getelementptr i8, ptr %work, i32 -904
  %wacom_wac.i = getelementptr i8, ptr %work, i32 -1096
  %led.i = getelementptr i8, ptr %work, i32 196
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21
  %i.090 = phi i32 [ 0, %if.end21 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.anon.76], ptr %data, i32 0, i32 %i.090
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %connected = getelementptr [5 x %struct.anon.76], ptr %data, i32 0, i32 %i.090, i32 1
  %12 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %connected, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool29.not = icmp eq i8 %13, 0
  %serial47 = getelementptr %struct.wacom_remote, ptr %1, i32 0, i32 3, i32 %i.090, i32 1
  %14 = ptrtoint ptr %serial47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %serial47, align 4
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp33 = icmp eq i32 %15, %11
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then30
  %16 = ptrtoint ptr %remote1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remote1, align 8
  %registered.i = getelementptr %struct.wacom_remote, ptr %17, i32 0, i32 3, i32 %i.090, i32 3
  %18 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %registered.i, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then35.for.inc_crit_edge, label %if.end.i

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end.i:                                         ; preds = %if.then35
  %battery.i = getelementptr %struct.wacom_remote, ptr %17, i32 0, i32 3, i32 %i.090, i32 4
  %battery4.i = getelementptr %struct.wacom_remote, ptr %17, i32 0, i32 3, i32 %i.090, i32 4, i32 2
  %20 = ptrtoint ptr %battery4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %battery4.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end7.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %led.i, align 4
  %arrayidx8.i = getelementptr %struct.wacom_group_leds, ptr %23, i32 %i.090
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp.i = icmp eq i8 %25, -1
  br i1 %cmp.i, label %if.end7.i.for.inc_crit_edge, label %if.end11.i

if.end7.i.for.inc_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = call fastcc i32 @__wacom_initialize_battery(ptr noundef %add.ptr, ptr noundef %battery.i) #17
  br label %for.inc

if.end37:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool41.not = icmp eq i32 %15, 0
  br i1 %tobool41.not, label %if.end37.if.end43_crit_edge, label %if.then42

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @wacom_remote_destroy_one(ptr noundef %add.ptr, i32 noundef %i.090)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end37.if.end43_crit_edge
  %26 = ptrtoint ptr %remote1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remote1, align 8
  %28 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev.i, align 8
  %dev2.i = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  %serial3.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %serial3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %serial3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %11)
  %cmp4.i = icmp eq i32 %31, %11
  br i1 %cmp4.i, label %if.end43.if.then6.critedge.i_crit_edge, label %for.cond.i

if.end43.if.then6.critedge.i_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6.critedge.i

for.cond.i:                                       ; preds = %if.end43
  %serial3.1.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 1, i32 1
  %32 = ptrtoint ptr %serial3.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %serial3.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %11)
  %cmp4.1.i = icmp eq i32 %33, %11
  br i1 %cmp4.1.i, label %for.cond.i.if.then6.critedge.i_crit_edge, label %for.cond.1.i

for.cond.i.if.then6.critedge.i_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6.critedge.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %serial3.2.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 2, i32 1
  %34 = ptrtoint ptr %serial3.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %serial3.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %11)
  %cmp4.2.i = icmp eq i32 %35, %11
  br i1 %cmp4.2.i, label %for.cond.1.i.if.then6.critedge.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6.critedge.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %serial3.3.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 3, i32 1
  %36 = ptrtoint ptr %serial3.3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %serial3.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %11)
  %cmp4.3.i = icmp eq i32 %37, %11
  br i1 %cmp4.3.i, label %for.cond.2.i.if.then6.critedge.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6.critedge.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %serial3.4.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 4, i32 1
  %38 = ptrtoint ptr %serial3.4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %serial3.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %11)
  %cmp4.4.i = icmp eq i32 %39, %11
  br i1 %cmp4.4.i, label %for.cond.3.i.if.then6.critedge.i_crit_edge, label %for.cond.4.i

for.cond.3.i.if.then6.critedge.i_crit_edge:       ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6.critedge.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx12.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 %i.090
  %call.i86 = call ptr @devres_open_group(ptr noundef %dev2.i, ptr noundef %arrayidx12.i, i32 noundef 3264) #17
  %tobool.not.i87 = icmp eq ptr %call.i86, null
  br i1 %tobool.not.i87, label %for.cond.4.i.for.inc_crit_edge, label %if.end14.i

for.cond.4.i.for.inc_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then6.critedge.i:                              ; preds = %for.cond.3.i.if.then6.critedge.i_crit_edge, %for.cond.2.i.if.then6.critedge.i_crit_edge, %for.cond.1.i.if.then6.critedge.i_crit_edge, %for.cond.i.if.then6.critedge.i_crit_edge, %if.end43.if.then6.critedge.i_crit_edge
  %serial9.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 %i.090, i32 1
  %40 = ptrtoint ptr %serial9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %11, ptr %serial9.i, align 4
  br label %for.inc

if.end14.i:                                       ; preds = %for.cond.4.i
  %41 = ptrtoint ptr %remote1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remote1, align 8
  %43 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %44, i32 0, i32 18
  %call.i.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i.i, i32 noundef 3264, ptr noundef nonnull @.str.82, i32 noundef %11) #17
  %arrayidx.i.i = getelementptr %struct.wacom_remote, ptr %42, i32 0, i32 3, i32 %i.090
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end14.i.fail.i_crit_edge, label %if.end.i.i

if.end14.i.fail.i_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.i

if.end.i.i:                                       ; preds = %if.end14.i
  %remote_dir.i.i = getelementptr inbounds %struct.wacom_remote, ptr %42, i32 0, i32 2
  %46 = ptrtoint ptr %remote_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remote_dir.i.i, align 4
  %call.i.i.i88 = call noalias ptr @__devres_alloc_node(ptr noundef nonnull @wacom_devm_sysfs_group_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.31) #17
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i88, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.then11.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %48 = ptrtoint ptr %call.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.i.i, ptr %call.i.i.i88, align 4
  %root2.i.i.i = getelementptr inbounds %struct.wacom_sysfs_group_devres, ptr %call.i.i.i88, i32 0, i32 1
  %49 = ptrtoint ptr %root2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %root2.i.i.i, align 4
  %call4.i.i.i = call i32 @sysfs_create_group(ptr noundef %47, ptr noundef %arrayidx.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end18.i, label %if.then6.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @devres_free(ptr noundef nonnull %call.i.i.i88) #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.then6.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -12, %if.end.i.i.if.then11.i.i_crit_edge ], [ %call4.i.i.i, %if.then6.i.i.i ]
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx.i.i, align 4
  %51 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdev.i, align 8
  %dev17.i.i = getelementptr inbounds %struct.hid_device, ptr %52, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph.i.i) #20
  br label %fail.i

if.end18.i:                                       ; preds = %if.end.i.i.i
  %53 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdev.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.hid_device, ptr %54, i32 0, i32 18
  call void @devres_add(ptr noundef %dev.i.i.i, ptr noundef nonnull %call.i.i.i88) #17
  %55 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdev.i, align 8
  %dev.i1.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 18
  %call.i2.i = call ptr @devm_input_allocate_device(ptr noundef %dev.i1.i) #17
  %tobool.not.i3.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool.not.i3.i, label %wacom_allocate_input.exit.thread.i, label %if.end.i4.i

wacom_allocate_input.exit.thread.i:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  %input7.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 %i.090, i32 2
  %57 = ptrtoint ptr %input7.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %input7.i, align 4
  br label %fail.i

if.end.i4.i:                                      ; preds = %if.end18.i
  %58 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %features.i.i, align 4
  %60 = ptrtoint ptr %call.i2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %call.i2.i, align 8
  %phys.i.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 40
  %phys4.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 1
  %61 = ptrtoint ptr %phys4.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %phys.i.i, ptr %phys4.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 40, i32 1
  %62 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev.i1.i, ptr %parent.i.i, align 8
  %open.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 31
  %63 = ptrtoint ptr %open.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @wacom_open, ptr %open.i.i, align 8
  %close.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 32
  %64 = ptrtoint ptr %close.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @wacom_close, ptr %close.i.i, align 4
  %uniq.i.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 41
  %uniq8.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 2
  %65 = ptrtoint ptr %uniq8.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %uniq.i.i, ptr %uniq8.i.i, align 8
  %bus.i.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 8
  %66 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bus.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 3
  %68 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %id.i.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 10
  %69 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vendor.i.i, align 4
  %conv.i.i = trunc i32 %70 to i16
  %vendor10.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %vendor10.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i.i, ptr %vendor10.i.i, align 2
  %72 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool11.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool11.not.i.i, label %cond.false.i.i, label %if.end.i4.i.if.end27.i_crit_edge

if.end.i4.i.if.end27.i_crit_edge:                 ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

cond.false.i.i:                                   ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #19
  %product.i.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 11
  %74 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %product.i.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %cond.false.i.i, %if.end.i4.i.if.end27.i_crit_edge
  %cond.i.i = phi i32 [ %75, %cond.false.i.i ], [ %73, %if.end.i4.i.if.end27.i_crit_edge ]
  %conv13.i.i = trunc i32 %cond.i.i to i16
  %product15.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 3, i32 2
  %76 = ptrtoint ptr %product15.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv13.i.i, ptr %product15.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 12
  %77 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %version.i.i, align 4
  %conv16.i.i = trunc i32 %78 to i16
  %version18.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 3, i32 3
  %79 = ptrtoint ptr %version18.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv16.i.i, ptr %version18.i.i, align 2
  %driver_data.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i2.i, i32 0, i32 40, i32 8
  %80 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr, ptr %driver_data.i.i.i.i, align 4
  %input.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 %i.090, i32 2
  %81 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i2.i, ptr %input.i, align 4
  %82 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx12.i, align 4
  %84 = ptrtoint ptr %uniq8.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %uniq8.i.i, align 8
  %85 = load ptr, ptr %input.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %pad_name.i, ptr %85, align 8
  %87 = load ptr, ptr %input.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %tobool41.not.i = icmp eq ptr %89, null
  br i1 %tobool41.not.i, label %if.end27.i.fail.i_crit_edge, label %if.end43.i

if.end27.i.fail.i_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.i

if.end43.i:                                       ; preds = %if.end27.i
  %call48.i = call i32 @wacom_setup_pad_input_capabilities(ptr noundef %87, ptr noundef %wacom_wac.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end43.i.fail.i_crit_edge

if.end43.i.fail.i_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.i

if.end51.i:                                       ; preds = %if.end43.i
  %serial54.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 %i.090, i32 1
  %90 = ptrtoint ptr %serial54.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %11, ptr %serial54.i, align 4
  %91 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %input.i, align 4
  %call58.i = call i32 @input_register_device(ptr noundef %92) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end51.i.fail.i_crit_edge

if.end51.i.fail.i_crit_edge:                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.i

if.end61.i:                                       ; preds = %if.end51.i
  %93 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %input.i, align 4
  %dev65.i = getelementptr inbounds %struct.input_dev, ptr %94, i32 0, i32 40
  %call66.i = call fastcc i32 @wacom_led_groups_alloc_and_register_one(ptr noundef %dev65.i, ptr noundef %add.ptr, i32 noundef %i.090, i32 noundef 3, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end61.i.fail.i_crit_edge

if.end61.i.fail.i_crit_edge:                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail.i

if.end69.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #19
  %registered.i89 = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 %i.090, i32 3
  %95 = ptrtoint ptr %registered.i89 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %registered.i89, align 4
  call void @devres_close_group(ptr noundef %dev2.i, ptr noundef %arrayidx12.i) #17
  br label %for.inc

fail.i:                                           ; preds = %if.end61.i.fail.i_crit_edge, %if.end51.i.fail.i_crit_edge, %if.end43.i.fail.i_crit_edge, %if.end27.i.fail.i_crit_edge, %wacom_allocate_input.exit.thread.i, %if.then11.i.i, %if.end14.i.fail.i_crit_edge
  %call76.i = call i32 @devres_release_group(ptr noundef %dev2.i, ptr noundef %arrayidx12.i) #17
  %serial79.i = getelementptr %struct.wacom_remote, ptr %27, i32 0, i32 3, i32 %i.090, i32 1
  %96 = ptrtoint ptr %serial79.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %serial79.i, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool48.not = icmp eq i32 %15, 0
  br i1 %tobool48.not, label %if.else.for.inc_crit_edge, label %if.then49

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @wacom_remote_destroy_one(ptr noundef %add.ptr, i32 noundef %i.090)
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %if.else.for.inc_crit_edge, %fail.i, %if.end69.i, %if.then6.critedge.i, %for.cond.4.i.for.inc_crit_edge, %if.end11.i, %if.end7.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.then35.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_mode_change_work(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %shared1 = getelementptr i8, ptr %work, i32 -464
  %0 = ptrtoint ptr %shared1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared1, align 4
  %is_direct_mode = getelementptr i8, ptr %work, i32 -337
  %2 = ptrtoint ptr %is_direct_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_direct_mode, align 1, !range !322
  %pen = getelementptr inbounds %struct.wacom_shared, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pen, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %resources.i = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %resources.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %resources.i, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %hdev1.i = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev1.i, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18
  %call.i = tail call i32 @devres_release_group(ptr noundef %dev.i, ptr noundef %7) #17
  %12 = ptrtoint ptr %resources.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %resources.i, align 4
  %pen_input.i = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 2, i32 12
  %13 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pen_input.i, align 8
  %touch_input.i = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 2, i32 13
  %14 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %touch_input.i, align 4
  %pad_input.i = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 2, i32 14
  %15 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pad_input.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge
  %hdev = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 8
  tail call void @hid_hw_stop(ptr noundef %17) #17
  %has_mode_change = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 2, i32 25
  %18 = ptrtoint ptr %has_mode_change to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %has_mode_change, align 2
  %is_direct_mode8 = getelementptr inbounds %struct.wacom, ptr %7, i32 0, i32 2, i32 26
  %19 = ptrtoint ptr %is_direct_mode8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %3, ptr %is_direct_mode8, align 1
  %touch = getelementptr inbounds %struct.wacom_shared, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %touch, align 4
  %tobool10.not = icmp eq ptr %21, null
  br i1 %tobool10.not, label %if.end21.thread, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11

if.end.thread:                                    ; preds = %entry
  %touch77 = getelementptr inbounds %struct.wacom_shared, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %touch77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %touch77, align 4
  %tobool10.not78 = icmp eq ptr %23, null
  br i1 %tobool10.not78, label %if.end.thread.cleanup_crit_edge, label %if.end.thread.if.then11_crit_edge

if.end.thread.if.then11_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then11:                                        ; preds = %if.end.thread.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %24 = phi ptr [ %23, %if.end.thread.if.then11_crit_edge ], [ %21, %if.end.if.then11_crit_edge ]
  %wacom1.079 = phi ptr [ null, %if.end.thread.if.then11_crit_edge ], [ %7, %if.end.if.then11_crit_edge ]
  %driver_data.i.i58 = getelementptr inbounds %struct.hid_device, ptr %24, i32 0, i32 18, i32 8
  %25 = ptrtoint ptr %driver_data.i.i58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i58, align 4
  %resources.i59 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %resources.i59 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %resources.i59, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i60 = icmp eq i8 %28, 0
  br i1 %tobool.not.i60, label %if.then11.if.end21_crit_edge, label %if.end.i67

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.end.i67:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  %hdev1.i61 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %hdev1.i61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev1.i61, align 8
  %dev.i62 = getelementptr inbounds %struct.hid_device, ptr %30, i32 0, i32 18
  %call.i63 = tail call i32 @devres_release_group(ptr noundef %dev.i62, ptr noundef %26) #17
  %31 = ptrtoint ptr %resources.i59 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %resources.i59, align 4
  %pen_input.i64 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 2, i32 12
  %32 = ptrtoint ptr %pen_input.i64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pen_input.i64, align 8
  %touch_input.i65 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 2, i32 13
  %33 = ptrtoint ptr %touch_input.i65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %touch_input.i65, align 4
  %pad_input.i66 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 2, i32 14
  %34 = ptrtoint ptr %pad_input.i66 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %pad_input.i66, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end.i67, %if.then11.if.end21_crit_edge
  %hdev14 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 3
  %35 = ptrtoint ptr %hdev14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdev14, align 8
  tail call void @hid_hw_stop(ptr noundef %36) #17
  %has_mode_change16 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 2, i32 25
  %37 = ptrtoint ptr %has_mode_change16 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %has_mode_change16, align 2
  %is_direct_mode19 = getelementptr inbounds %struct.wacom, ptr %26, i32 0, i32 2, i32 26
  %38 = ptrtoint ptr %is_direct_mode19 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %3, ptr %is_direct_mode19, align 1
  %tobool22.not = icmp eq ptr %wacom1.079, null
  br i1 %tobool22.not, label %if.end28, label %if.end21.if.then23_crit_edge

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23

if.end21.thread:                                  ; preds = %if.end
  %tobool22.not70 = icmp eq ptr %7, null
  br i1 %tobool22.not70, label %if.end21.thread.cleanup_crit_edge, label %if.end21.thread.if.then23_crit_edge

if.end21.thread.if.then23_crit_edge:              ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23

if.end21.thread.cleanup_crit_edge:                ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then23:                                        ; preds = %if.end21.thread.if.then23_crit_edge, %if.end21.if.then23_crit_edge
  %wacom1.080 = phi ptr [ %7, %if.end21.thread.if.then23_crit_edge ], [ %wacom1.079, %if.end21.if.then23_crit_edge ]
  %wacom2.073 = phi ptr [ null, %if.end21.thread.if.then23_crit_edge ], [ %26, %if.end21.if.then23_crit_edge ]
  %call24 = tail call fastcc i32 @wacom_parse_and_register(ptr noundef nonnull %wacom1.080, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp ne i32 %call24, 0
  %tobool29.not = icmp eq ptr %wacom2.073, null
  %or.cond = or i1 %tobool29.not, %tobool25.not
  br i1 %or.cond, label %if.then23.cleanup_crit_edge, label %if.then23.if.then30_crit_edge

if.then23.if.then30_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %tobool29.not.old = icmp eq ptr %26, null
  br i1 %tobool29.not.old, label %if.end28.cleanup_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.then23.if.then30_crit_edge
  %wacom2.072 = phi ptr [ %wacom2.073, %if.then23.if.then30_crit_edge ], [ %26, %if.end28.if.then30_crit_edge ]
  %call31 = tail call fastcc i32 @wacom_parse_and_register(ptr noundef nonnull %wacom2.072, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end21.thread.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wacom_parse_and_register(ptr noundef %wacom, i1 noundef zeroext %wireless) unnamed_addr #3 align 64 {
entry:
  %name.i = alloca [44 x i8], align 1
  %field.i19.i = alloca %struct.hid_field, align 4
  %field.i.i = alloca %struct.hid_field, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wacom_wac1 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2
  %features2 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10
  %hdev3 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %0 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev3, align 8
  %report_list.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 15, i32 0, i32 1
  %2 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %report.015.i = load ptr, ptr %report_list.i, align 4
  %cmp.not16.i = icmp eq ptr %report.015.i, %report_list.i
  br i1 %cmp.not16.i, label %wacom_compute_pktlen.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

wacom_compute_pktlen.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %pktlen265 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 27
  %3 = ptrtoint ptr %pktlen265 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pktlen265, align 4
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %report.018.i = phi ptr [ %report.0.i, %for.body.i.for.body.i_crit_edge ], [ %report.015.i, %entry.for.body.i_crit_edge ]
  %size.017.i = phi i32 [ %8, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %size.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 7
  %4 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %5, 7
  %div3.i.i = lshr i32 %sub.i.i, 3
  %id.i.i = getelementptr inbounds %struct.hid_report, ptr %report.018.i, i32 0, i32 2
  %6 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp ne i32 %7, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add nuw nsw i32 %div3.i.i, %conv.i.i
  %8 = tail call i32 @llvm.umax.i32(i32 %add1.i.i, i32 %size.017.i) #17
  %9 = ptrtoint ptr %report.018.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %report.0.i = load ptr, ptr %report.018.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %wacom_compute_pktlen.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wacom_compute_pktlen.exit:                        ; preds = %for.body.i
  %pktlen = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 27
  %10 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %pktlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 361, i32 %8)
  %cmp = icmp sgt i32 %8, 361
  br i1 %cmp, label %wacom_compute_pktlen.exit.cleanup_crit_edge, label %wacom_compute_pktlen.exit.if.end_crit_edge

wacom_compute_pktlen.exit.if.end_crit_edge:       ; preds = %wacom_compute_pktlen.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

wacom_compute_pktlen.exit.cleanup_crit_edge:      ; preds = %wacom_compute_pktlen.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %wacom_compute_pktlen.exit.if.end_crit_edge, %wacom_compute_pktlen.exit.thread
  %pktlen267 = phi ptr [ %pktlen265, %wacom_compute_pktlen.exit.thread ], [ %pktlen, %wacom_compute_pktlen.exit.if.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call5 = tail call ptr @devres_open_group(ptr noundef %dev, ptr noundef %wacom, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %resources = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 14
  %11 = ptrtoint ptr %resources to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %resources, align 4
  %12 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev3, align 8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  %call.i.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i.i) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.wacom_allocate_input.exit.i_crit_edge, label %if.end.i.i

if.end7.wacom_allocate_input.exit.i_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_allocate_input.exit.i

if.end.i.i:                                       ; preds = %if.end7
  %14 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %features2, align 4
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call.i.i, align 8
  %phys.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 40
  %phys4.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %phys4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %phys.i.i, ptr %phys4.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 1
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev.i.i, ptr %parent.i.i, align 8
  %open.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 31
  %19 = ptrtoint ptr %open.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wacom_open, ptr %open.i.i, align 8
  %close.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 32
  %20 = ptrtoint ptr %close.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @wacom_close, ptr %close.i.i, align 4
  %uniq.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 41
  %uniq8.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %uniq8.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %uniq.i.i, ptr %uniq8.i.i, align 8
  %bus.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 8
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bus.i.i, align 8
  %id.i.i186 = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %id.i.i186 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %id.i.i186, align 4
  %vendor.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 10
  %25 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vendor.i.i, align 4
  %conv.i.i187 = trunc i32 %26 to i16
  %vendor10.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %vendor10.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i187, ptr %vendor10.i.i, align 2
  %pid.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 16
  %28 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool11.not.i.i, label %cond.false.i.i, label %if.end.i.i.cond.end.i.i_crit_edge

if.end.i.i.cond.end.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %product.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 11
  %30 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %product.i.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %31, %cond.false.i.i ], [ %29, %if.end.i.i.cond.end.i.i_crit_edge ]
  %conv13.i.i = trunc i32 %cond.i.i to i16
  %product15.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %product15.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv13.i.i, ptr %product15.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 12
  %33 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version.i.i, align 4
  %conv16.i.i = trunc i32 %34 to i16
  %version18.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %version18.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv16.i.i, ptr %version18.i.i, align 2
  %driver_data.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %wacom, ptr %driver_data.i.i.i.i, align 4
  br label %wacom_allocate_input.exit.i

wacom_allocate_input.exit.i:                      ; preds = %cond.end.i.i, %if.end7.wacom_allocate_input.exit.i_crit_edge
  %pen_input.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 12
  %37 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %pen_input.i, align 8
  %38 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdev3, align 8
  %dev.i32.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 18
  %call.i33.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i32.i) #17
  %tobool.not.i34.i = icmp eq ptr %call.i33.i, null
  br i1 %tobool.not.i34.i, label %wacom_allocate_input.exit.i.wacom_allocate_input.exit61.i_crit_edge, label %if.end.i50.i

wacom_allocate_input.exit.i.wacom_allocate_input.exit61.i_crit_edge: ; preds = %wacom_allocate_input.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_allocate_input.exit61.i

if.end.i50.i:                                     ; preds = %wacom_allocate_input.exit.i
  %40 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %features2, align 4
  %42 = ptrtoint ptr %call.i33.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %call.i33.i, align 8
  %phys.i36.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 40
  %phys4.i37.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 1
  %43 = ptrtoint ptr %phys4.i37.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %phys.i36.i, ptr %phys4.i37.i, align 4
  %parent.i38.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 40, i32 1
  %44 = ptrtoint ptr %parent.i38.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev.i32.i, ptr %parent.i38.i, align 8
  %open.i39.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 31
  %45 = ptrtoint ptr %open.i39.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @wacom_open, ptr %open.i39.i, align 8
  %close.i40.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 32
  %46 = ptrtoint ptr %close.i40.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @wacom_close, ptr %close.i40.i, align 4
  %uniq.i41.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 41
  %uniq8.i42.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 2
  %47 = ptrtoint ptr %uniq8.i42.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %uniq.i41.i, ptr %uniq8.i42.i, align 8
  %bus.i43.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 8
  %48 = ptrtoint ptr %bus.i43.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bus.i43.i, align 8
  %id.i44.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 3
  %50 = ptrtoint ptr %id.i44.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %id.i44.i, align 4
  %vendor.i45.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 10
  %51 = ptrtoint ptr %vendor.i45.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vendor.i45.i, align 4
  %conv.i46.i = trunc i32 %52 to i16
  %vendor10.i47.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %vendor10.i47.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i46.i, ptr %vendor10.i47.i, align 2
  %pid.i48.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 16
  %54 = ptrtoint ptr %pid.i48.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid.i48.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool11.not.i49.i = icmp eq i32 %55, 0
  br i1 %tobool11.not.i49.i, label %cond.false.i52.i, label %if.end.i50.i.cond.end.i60.i_crit_edge

if.end.i50.i.cond.end.i60.i_crit_edge:            ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i60.i

cond.false.i52.i:                                 ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #19
  %product.i51.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 11
  %56 = ptrtoint ptr %product.i51.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %product.i51.i, align 8
  br label %cond.end.i60.i

cond.end.i60.i:                                   ; preds = %cond.false.i52.i, %if.end.i50.i.cond.end.i60.i_crit_edge
  %cond.i53.i = phi i32 [ %57, %cond.false.i52.i ], [ %55, %if.end.i50.i.cond.end.i60.i_crit_edge ]
  %conv13.i54.i = trunc i32 %cond.i53.i to i16
  %product15.i55.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %product15.i55.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv13.i54.i, ptr %product15.i55.i, align 4
  %version.i56.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 12
  %59 = ptrtoint ptr %version.i56.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %version.i56.i, align 4
  %conv16.i57.i = trunc i32 %60 to i16
  %version18.i58.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %version18.i58.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv16.i57.i, ptr %version18.i58.i, align 2
  %driver_data.i.i.i59.i = getelementptr inbounds %struct.input_dev, ptr %call.i33.i, i32 0, i32 40, i32 8
  %62 = ptrtoint ptr %driver_data.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %wacom, ptr %driver_data.i.i.i59.i, align 4
  br label %wacom_allocate_input.exit61.i

wacom_allocate_input.exit61.i:                    ; preds = %cond.end.i60.i, %wacom_allocate_input.exit.i.wacom_allocate_input.exit61.i_crit_edge
  %touch_input.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 13
  %63 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i33.i, ptr %touch_input.i, align 4
  %64 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hdev3, align 8
  %dev.i63.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 18
  %call.i64.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i63.i) #17
  %tobool.not.i65.i = icmp eq ptr %call.i64.i, null
  br i1 %tobool.not.i65.i, label %wacom_allocate_input.exit61.i.wacom_allocate_input.exit92.i_crit_edge, label %if.end.i81.i

wacom_allocate_input.exit61.i.wacom_allocate_input.exit92.i_crit_edge: ; preds = %wacom_allocate_input.exit61.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_allocate_input.exit92.i

if.end.i81.i:                                     ; preds = %wacom_allocate_input.exit61.i
  %66 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %features2, align 4
  %68 = ptrtoint ptr %call.i64.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %call.i64.i, align 8
  %phys.i67.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 40
  %phys4.i68.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 1
  %69 = ptrtoint ptr %phys4.i68.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %phys.i67.i, ptr %phys4.i68.i, align 4
  %parent.i69.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 40, i32 1
  %70 = ptrtoint ptr %parent.i69.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dev.i63.i, ptr %parent.i69.i, align 8
  %open.i70.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 31
  %71 = ptrtoint ptr %open.i70.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @wacom_open, ptr %open.i70.i, align 8
  %close.i71.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 32
  %72 = ptrtoint ptr %close.i71.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @wacom_close, ptr %close.i71.i, align 4
  %uniq.i72.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 41
  %uniq8.i73.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 2
  %73 = ptrtoint ptr %uniq8.i73.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %uniq.i72.i, ptr %uniq8.i73.i, align 8
  %bus.i74.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 8
  %74 = ptrtoint ptr %bus.i74.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bus.i74.i, align 8
  %id.i75.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 3
  %76 = ptrtoint ptr %id.i75.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %id.i75.i, align 4
  %vendor.i76.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 10
  %77 = ptrtoint ptr %vendor.i76.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vendor.i76.i, align 4
  %conv.i77.i = trunc i32 %78 to i16
  %vendor10.i78.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %vendor10.i78.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i77.i, ptr %vendor10.i78.i, align 2
  %pid.i79.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 16
  %80 = ptrtoint ptr %pid.i79.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pid.i79.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool11.not.i80.i = icmp eq i32 %81, 0
  br i1 %tobool11.not.i80.i, label %cond.false.i83.i, label %if.end.i81.i.cond.end.i91.i_crit_edge

if.end.i81.i.cond.end.i91.i_crit_edge:            ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i91.i

cond.false.i83.i:                                 ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #19
  %product.i82.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 11
  %82 = ptrtoint ptr %product.i82.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %product.i82.i, align 8
  br label %cond.end.i91.i

cond.end.i91.i:                                   ; preds = %cond.false.i83.i, %if.end.i81.i.cond.end.i91.i_crit_edge
  %cond.i84.i = phi i32 [ %83, %cond.false.i83.i ], [ %81, %if.end.i81.i.cond.end.i91.i_crit_edge ]
  %conv13.i85.i = trunc i32 %cond.i84.i to i16
  %product15.i86.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 3, i32 2
  %84 = ptrtoint ptr %product15.i86.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv13.i85.i, ptr %product15.i86.i, align 4
  %version.i87.i = getelementptr inbounds %struct.hid_device, ptr %65, i32 0, i32 12
  %85 = ptrtoint ptr %version.i87.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %version.i87.i, align 4
  %conv16.i88.i = trunc i32 %86 to i16
  %version18.i89.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 3, i32 3
  %87 = ptrtoint ptr %version18.i89.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv16.i88.i, ptr %version18.i89.i, align 2
  %driver_data.i.i.i90.i = getelementptr inbounds %struct.input_dev, ptr %call.i64.i, i32 0, i32 40, i32 8
  %88 = ptrtoint ptr %driver_data.i.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %wacom, ptr %driver_data.i.i.i90.i, align 4
  br label %wacom_allocate_input.exit92.i

wacom_allocate_input.exit92.i:                    ; preds = %cond.end.i91.i, %wacom_allocate_input.exit61.i.wacom_allocate_input.exit92.i_crit_edge
  %pad_input.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 14
  %89 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i64.i, ptr %pad_input.i, align 8
  %90 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pen_input.i, align 8
  %tobool.not.i = icmp eq ptr %91, null
  br i1 %tobool.not.i, label %wacom_allocate_input.exit92.i.fail_crit_edge, label %lor.lhs.false.i

wacom_allocate_input.exit92.i.fail_crit_edge:     ; preds = %wacom_allocate_input.exit92.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

lor.lhs.false.i:                                  ; preds = %wacom_allocate_input.exit92.i
  %92 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %touch_input.i, align 4
  %tobool6.not.i = icmp eq ptr %93, null
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool.not.i65.i
  br i1 %or.cond.i, label %lor.lhs.false.i.fail_crit_edge, label %if.end11

lor.lhs.false.i.fail_crit_edge:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end11:                                         ; preds = %lor.lhs.false.i
  %pen_name.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %pen_name.i, ptr %91, align 8
  %touch_name.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 2
  %95 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %touch_input.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %touch_name.i, ptr %96, align 8
  %pad_name.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pad_input.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %pad_name.i, ptr %99, align 8
  %type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 5
  %101 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %102)
  %cmp12 = icmp eq i32 %102, 44
  br i1 %cmp12, label %if.then13, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then13:                                        ; preds = %if.end11
  %103 = ptrtoint ptr %pktlen267 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pktlen267, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %104, label %if.then13.fail_crit_edge [
    i32 8, label %if.then16
    i32 32, label %if.then13.if.end25_crit_edge
    i32 64, label %if.then13.if.end25_crit_edge293
  ]

if.then13.if.end25_crit_edge293:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then13.fail_crit_edge:                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  %106 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 53, ptr %type, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.then13.if.end25_crit_edge, %if.then13.if.end25_crit_edge293, %if.end11.if.end25_crit_edge
  %x_resolution.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 6
  %107 = ptrtoint ptr %x_resolution.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %x_resolution.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i188 = icmp eq i32 %108, 0
  br i1 %tobool.not.i188, label %if.end25.wacom_set_default_phy.exit_crit_edge, label %if.then.i

if.end25.wacom_set_default_phy.exit_crit_edge:    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_default_phy.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %x_max.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 1
  %109 = ptrtoint ptr %x_max.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %x_max.i, align 4
  %mul.i = mul i32 %110, 100
  %div.i = sdiv i32 %mul.i, %108
  %x_phy.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 14
  %111 = ptrtoint ptr %x_phy.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div.i, ptr %x_phy.i, align 4
  %y_max.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 2
  %112 = ptrtoint ptr %y_max.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %y_max.i, align 4
  %mul2.i = mul i32 %113, 100
  %y_resolution.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 7
  %114 = ptrtoint ptr %y_resolution.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %y_resolution.i, align 4
  %div3.i = sdiv i32 %mul2.i, %115
  %y_phy.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 15
  %116 = ptrtoint ptr %y_phy.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %div3.i, ptr %y_phy.i, align 4
  br label %wacom_set_default_phy.exit

wacom_set_default_phy.exit:                       ; preds = %if.then.i, %if.end25.wacom_set_default_phy.exit_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %117 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %driver_data.i.i.i, align 4
  %intf1.i = getelementptr inbounds %struct.wacom, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %intf1.i, align 4
  %x_fuzz.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 18
  %121 = ptrtoint ptr %x_fuzz.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 4, ptr %x_fuzz.i, align 4
  %y_fuzz.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 19
  %122 = ptrtoint ptr %y_fuzz.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4, ptr %y_fuzz.i, align 4
  %pressure_fuzz.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 20
  %123 = ptrtoint ptr %pressure_fuzz.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %pressure_fuzz.i, align 4
  %distance_fuzz.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 21
  %124 = ptrtoint ptr %distance_fuzz.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %distance_fuzz.i, align 4
  %tilt_fuzz.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 22
  %125 = ptrtoint ptr %tilt_fuzz.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %tilt_fuzz.i, align 4
  %126 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %127)
  %cmp.i = icmp ne i32 %127, 45
  %tobool.not.i190 = icmp eq ptr %120, null
  %or.cond.i191 = select i1 %cmp.i, i1 true, i1 %tobool.not.i190
  br i1 %or.cond.i191, label %if.end6.i, label %if.then.i192

if.then.i192:                                     ; preds = %wacom_set_default_phy.exit
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %120, i32 0, i32 1
  %128 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bInterfaceNumber.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp2.i = icmp eq i8 %131, 0
  %device_type.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 13
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #19
  %132 = ptrtoint ptr %device_type.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 8, ptr %device_type.i, align 4
  br label %wacom_retrieve_hid_descriptor.exit

if.else.i:                                        ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #19
  %133 = ptrtoint ptr %device_type.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %device_type.i, align 4
  br label %wacom_retrieve_hid_descriptor.exit

if.end6.i:                                        ; preds = %wacom_set_default_phy.exit
  %report_list.i.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 2, i32 1
  %134 = ptrtoint ptr %report_list.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %hreport.0132.i.i = load ptr, ptr %report_list.i.i, align 4
  %cmp.not133.i.i = icmp eq ptr %hreport.0132.i.i, %report_list.i.i
  br i1 %cmp.not133.i.i, label %if.end6.i.for.end26.i.i_crit_edge, label %if.end6.i.for.cond2.preheader.i.i_crit_edge

if.end6.i.for.cond2.preheader.i.i_crit_edge:      ; preds = %if.end6.i
  br label %for.cond2.preheader.i.i

if.end6.i.for.end26.i.i_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end26.i.i

for.cond.loopexit.i.i:                            ; preds = %for.inc17.i.i.for.cond.loopexit.i.i_crit_edge, %for.cond2.preheader.i.i.for.cond.loopexit.i.i_crit_edge
  %135 = ptrtoint ptr %hreport.0134.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %hreport.0.i.i = load ptr, ptr %hreport.0134.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %hreport.0.i.i, %report_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.loopexit.i.i.for.end26.i.i_crit_edge, label %for.cond.loopexit.i.i.for.cond2.preheader.i.i_crit_edge

for.cond.loopexit.i.i.for.cond2.preheader.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond2.preheader.i.i

for.cond.loopexit.i.i.for.end26.i.i_crit_edge:    ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end26.i.i

for.cond2.preheader.i.i:                          ; preds = %for.cond.loopexit.i.i.for.cond2.preheader.i.i_crit_edge, %if.end6.i.for.cond2.preheader.i.i_crit_edge
  %hreport.0134.i.i = phi ptr [ %hreport.0.i.i, %for.cond.loopexit.i.i.for.cond2.preheader.i.i_crit_edge ], [ %hreport.0132.i.i, %if.end6.i.for.cond2.preheader.i.i_crit_edge ]
  %maxfield.i.i = getelementptr inbounds %struct.hid_report, ptr %hreport.0134.i.i, i32 0, i32 6
  %136 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %maxfield.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp3130.not.i.i = icmp eq i32 %137, 0
  br i1 %cmp3130.not.i.i, label %for.cond2.preheader.i.i.for.cond.loopexit.i.i_crit_edge, label %for.cond2.preheader.i.i.for.body4.i.i_crit_edge

for.cond2.preheader.i.i.for.body4.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  br label %for.body4.i.i

for.cond2.preheader.i.i.for.cond.loopexit.i.i_crit_edge: ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit.i.i

for.body4.i.i:                                    ; preds = %for.inc17.i.i.for.body4.i.i_crit_edge, %for.cond2.preheader.i.i.for.body4.i.i_crit_edge
  %i.0131.i.i = phi i32 [ %inc18.i.i, %for.inc17.i.i.for.body4.i.i_crit_edge ], [ 0, %for.cond2.preheader.i.i.for.body4.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.hid_report, ptr %hreport.0134.i.i, i32 0, i32 5, i32 %i.0131.i.i
  %138 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx5.i.i, align 4
  %report_count.i.i = getelementptr inbounds %struct.hid_field, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %report_count.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %report_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp6.i.i = icmp eq i32 %141, 0
  br i1 %cmp6.i.i, label %for.body4.i.i.for.inc17.i.i_crit_edge, label %for.cond7.preheader.i.i

for.body4.i.i.for.inc17.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc17.i.i

for.cond7.preheader.i.i:                          ; preds = %for.body4.i.i
  %maxusage126.i.i = getelementptr inbounds %struct.hid_field, ptr %139, i32 0, i32 4
  %142 = ptrtoint ptr %maxusage126.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %maxusage126.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp10127.not.i.i = icmp eq i32 %143, 0
  br i1 %cmp10127.not.i.i, label %for.cond7.preheader.i.i.for.inc17.i.i_crit_edge, label %for.cond7.preheader.i.i.for.body11.i.i_crit_edge

for.cond7.preheader.i.i.for.body11.i.i_crit_edge: ; preds = %for.cond7.preheader.i.i
  br label %for.body11.i.i

for.cond7.preheader.i.i.for.inc17.i.i_crit_edge:  ; preds = %for.cond7.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc17.i.i

for.body11.i.i:                                   ; preds = %wacom_feature_mapping.exit.i.i.for.body11.i.i_crit_edge, %for.cond7.preheader.i.i.for.body11.i.i_crit_edge
  %144 = phi ptr [ %278, %wacom_feature_mapping.exit.i.i.for.body11.i.i_crit_edge ], [ %139, %for.cond7.preheader.i.i.for.body11.i.i_crit_edge ]
  %j.0128.i.i = phi i32 [ %inc.i.i, %wacom_feature_mapping.exit.i.i.for.body11.i.i_crit_edge ], [ 0, %for.cond7.preheader.i.i.for.body11.i.i_crit_edge ]
  %usage.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %usage.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %usage.i.i, align 4
  %add.ptr16.i.i = getelementptr %struct.hid_usage, ptr %146, i32 %j.0128.i.i
  %147 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %driver_data.i.i.i, align 4
  %hid_data3.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 22
  %149 = ptrtoint ptr %add.ptr16.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr16.i.i, align 4
  %call4.i.i.i = tail call i32 @wacom_equivalent_usage(i32 noundef %150) #17
  tail call fastcc void @wacom_hid_usage_quirk(ptr noundef %1, ptr noundef %144, ptr noundef %add.ptr16.i.i) #17
  %151 = zext i32 %call4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %call4.i.i.i, label %for.body11.i.i.wacom_feature_mapping.exit.i.i_crit_edge [
    i32 -15921102, label %sw.bb.i.i.i
    i32 852053, label %sw.bb5.i.i.i
    i32 852050, label %sw.bb34.i.i.i
    i32 851968, label %sw.bb48.i.i.i
    i32 -15921150, label %sw.bb65.i.i.i
    i32 -16187392, label %for.body11.i.i.sw.bb72.i.i.i_crit_edge
    i32 -15663104, label %for.body11.i.i.sw.bb72.i.i.i_crit_edge294
    i32 -15921872, label %for.body11.i.i.sw.bb93.i.i.i_crit_edge
    i32 -15921871, label %for.body11.i.i.sw.bb93.i.i.i_crit_edge295
    i32 -15921870, label %for.body11.i.i.sw.bb93.i.i.i_crit_edge296
    i32 -15921869, label %for.body11.i.i.sw.bb93.i.i.i_crit_edge297
  ]

for.body11.i.i.sw.bb93.i.i.i_crit_edge297:        ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb93.i.i.i

for.body11.i.i.sw.bb93.i.i.i_crit_edge296:        ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb93.i.i.i

for.body11.i.i.sw.bb93.i.i.i_crit_edge295:        ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb93.i.i.i

for.body11.i.i.sw.bb93.i.i.i_crit_edge:           ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb93.i.i.i

for.body11.i.i.sw.bb72.i.i.i_crit_edge294:        ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb72.i.i.i

for.body11.i.i.sw.bb72.i.i.i_crit_edge:           ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb72.i.i.i

for.body11.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

sw.bb.i.i.i:                                      ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %generic_has_leds.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 11
  %152 = ptrtoint ptr %generic_has_leds.i.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %generic_has_leds.i.i.i, align 8
  br label %wacom_feature_mapping.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %for.body11.i.i
  %touch_max.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 10, i32 24
  %153 = ptrtoint ptr %touch_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %touch_max.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i.i.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %sw.bb5.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge

sw.bb5.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.bb5.i.i.i
  %report.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 17
  %155 = ptrtoint ptr %report.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %report.i.i.i, align 4
  %size.i.i.i.i = getelementptr inbounds %struct.hid_report, ptr %156, i32 0, i32 7
  %157 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %size.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %158, 7
  %div3.i.i.i.i = lshr i32 %sub.i.i.i.i, 3
  %id.i.i.i.i = getelementptr inbounds %struct.hid_report, ptr %156, i32 0, i32 2
  %159 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.i.i.i.i = icmp ne i32 %160, 0
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add nuw nsw i32 %div3.i.i.i.i, %conv.i.i.i.i
  %call8.i.i.i = tail call ptr @hid_alloc_report_buf(ptr noundef %156, i32 noundef 3264) #17
  %tobool9.not.i.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %if.then.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %161 = ptrtoint ptr %report.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %report.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.hid_report, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %id.i.i.i, align 4
  %conv.i.i.i = trunc i32 %164 to i8
  %165 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv.i.i.i, ptr %call8.i.i.i, align 1
  %call.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %conv.i.i.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %166 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %call.i.i.i, label %if.end.i.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %if.end.i.i.i.land.rhs.i.i.i_crit_edge
    i32 -11, label %if.end.i.i.i.land.rhs.i.i.i_crit_edge298
  ]

if.end.i.i.i.land.rhs.i.i.i_crit_edge298:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i.i

if.end.i.i.i.land.rhs.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i.i

if.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i.i.land.rhs.i.i.i_crit_edge, %if.end.i.i.i.land.rhs.i.i.i_crit_edge298
  %167 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %call8.i.i.i, align 1
  %call.i.1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %168, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %169 = zext i32 %call.i.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %call.i.1.i.i, label %land.rhs.i.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.i.i.land.rhs.i.1.i.i_crit_edge
    i32 -11, label %land.rhs.i.i.i.land.rhs.i.1.i.i_crit_edge299
  ]

land.rhs.i.i.i.land.rhs.i.1.i.i_crit_edge299:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i.i

land.rhs.i.i.i.land.rhs.i.1.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i.i

land.rhs.i.i.i.do.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.1.i.i:                                 ; preds = %land.rhs.i.i.i.land.rhs.i.1.i.i_crit_edge, %land.rhs.i.i.i.land.rhs.i.1.i.i_crit_edge299
  %170 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %call8.i.i.i, align 1
  %call.i.2.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %171, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %172 = zext i32 %call.i.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %call.i.2.i.i, label %land.rhs.i.1.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.1.i.i.land.rhs.i.2.i.i_crit_edge
    i32 -11, label %land.rhs.i.1.i.i.land.rhs.i.2.i.i_crit_edge300
  ]

land.rhs.i.1.i.i.land.rhs.i.2.i.i_crit_edge300:   ; preds = %land.rhs.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i.i

land.rhs.i.1.i.i.land.rhs.i.2.i.i_crit_edge:      ; preds = %land.rhs.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i.i

land.rhs.i.1.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.2.i.i:                                 ; preds = %land.rhs.i.1.i.i.land.rhs.i.2.i.i_crit_edge, %land.rhs.i.1.i.i.land.rhs.i.2.i.i_crit_edge300
  %173 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %call8.i.i.i, align 1
  %call.i.3.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %174, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %175 = zext i32 %call.i.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %call.i.3.i.i, label %land.rhs.i.2.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.2.i.i.land.rhs.i.3.i.i_crit_edge
    i32 -11, label %land.rhs.i.2.i.i.land.rhs.i.3.i.i_crit_edge301
  ]

land.rhs.i.2.i.i.land.rhs.i.3.i.i_crit_edge301:   ; preds = %land.rhs.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i.i

land.rhs.i.2.i.i.land.rhs.i.3.i.i_crit_edge:      ; preds = %land.rhs.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i.i

land.rhs.i.2.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.3.i.i:                                 ; preds = %land.rhs.i.2.i.i.land.rhs.i.3.i.i_crit_edge, %land.rhs.i.2.i.i.land.rhs.i.3.i.i_crit_edge301
  %176 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %call8.i.i.i, align 1
  %call.i.4.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %177, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %178 = zext i32 %call.i.4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %call.i.4.i.i, label %land.rhs.i.3.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.3.i.i.land.rhs.i.4.i.i_crit_edge
    i32 -11, label %land.rhs.i.3.i.i.land.rhs.i.4.i.i_crit_edge302
  ]

land.rhs.i.3.i.i.land.rhs.i.4.i.i_crit_edge302:   ; preds = %land.rhs.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i.i

land.rhs.i.3.i.i.land.rhs.i.4.i.i_crit_edge:      ; preds = %land.rhs.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i.i

land.rhs.i.3.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.4.i.i:                                 ; preds = %land.rhs.i.3.i.i.land.rhs.i.4.i.i_crit_edge, %land.rhs.i.3.i.i.land.rhs.i.4.i.i_crit_edge302
  %179 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %call8.i.i.i, align 1
  %call.i.5.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %180, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %181 = zext i32 %call.i.5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %call.i.5.i.i, label %land.rhs.i.4.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.4.i.i.land.rhs.i.5.i.i_crit_edge
    i32 -11, label %land.rhs.i.4.i.i.land.rhs.i.5.i.i_crit_edge303
  ]

land.rhs.i.4.i.i.land.rhs.i.5.i.i_crit_edge303:   ; preds = %land.rhs.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i.i

land.rhs.i.4.i.i.land.rhs.i.5.i.i_crit_edge:      ; preds = %land.rhs.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i.i

land.rhs.i.4.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.5.i.i:                                 ; preds = %land.rhs.i.4.i.i.land.rhs.i.5.i.i_crit_edge, %land.rhs.i.4.i.i.land.rhs.i.5.i.i_crit_edge303
  %182 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %call8.i.i.i, align 1
  %call.i.6.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %183, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %184 = zext i32 %call.i.6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %call.i.6.i.i, label %land.rhs.i.5.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.5.i.i.land.rhs.i.6.i.i_crit_edge
    i32 -11, label %land.rhs.i.5.i.i.land.rhs.i.6.i.i_crit_edge304
  ]

land.rhs.i.5.i.i.land.rhs.i.6.i.i_crit_edge304:   ; preds = %land.rhs.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i.i

land.rhs.i.5.i.i.land.rhs.i.6.i.i_crit_edge:      ; preds = %land.rhs.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i.i

land.rhs.i.5.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.6.i.i:                                 ; preds = %land.rhs.i.5.i.i.land.rhs.i.6.i.i_crit_edge, %land.rhs.i.5.i.i.land.rhs.i.6.i.i_crit_edge304
  %185 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %call8.i.i.i, align 1
  %call.i.7.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %186, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %187 = zext i32 %call.i.7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %call.i.7.i.i, label %land.rhs.i.6.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.6.i.i.land.rhs.i.7.i.i_crit_edge
    i32 -11, label %land.rhs.i.6.i.i.land.rhs.i.7.i.i_crit_edge305
  ]

land.rhs.i.6.i.i.land.rhs.i.7.i.i_crit_edge305:   ; preds = %land.rhs.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i.i

land.rhs.i.6.i.i.land.rhs.i.7.i.i_crit_edge:      ; preds = %land.rhs.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i.i

land.rhs.i.6.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.7.i.i:                                 ; preds = %land.rhs.i.6.i.i.land.rhs.i.7.i.i_crit_edge, %land.rhs.i.6.i.i.land.rhs.i.7.i.i_crit_edge305
  %188 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %call8.i.i.i, align 1
  %call.i.8.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %189, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %190 = zext i32 %call.i.8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %call.i.8.i.i, label %land.rhs.i.7.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.7.i.i.land.rhs.i.8.i.i_crit_edge
    i32 -11, label %land.rhs.i.7.i.i.land.rhs.i.8.i.i_crit_edge306
  ]

land.rhs.i.7.i.i.land.rhs.i.8.i.i_crit_edge306:   ; preds = %land.rhs.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i.i

land.rhs.i.7.i.i.land.rhs.i.8.i.i_crit_edge:      ; preds = %land.rhs.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i.i

land.rhs.i.7.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

land.rhs.i.8.i.i:                                 ; preds = %land.rhs.i.7.i.i.land.rhs.i.8.i.i_crit_edge, %land.rhs.i.7.i.i.land.rhs.i.8.i.i_crit_edge306
  %191 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %call8.i.i.i, align 1
  %call.i.9.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %192, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %193 = zext i32 %call.i.9.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %call.i.9.i.i, label %land.rhs.i.8.i.i.do.end.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge307
  ]

land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge307:      ; preds = %land.rhs.i.8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i.i

land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge:         ; preds = %land.rhs.i.8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i.i

land.rhs.i.8.i.i.do.end.i.i.i_crit_edge:          ; preds = %land.rhs.i.8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.8.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.7.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.6.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.5.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.4.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.3.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.2.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.1.i.i.do.end.i.i.i_crit_edge, %land.rhs.i.i.i.do.end.i.i.i_crit_edge, %if.end.i.i.i.do.end.i.i.i_crit_edge
  %call.i.lcssa.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i.do.end.i.i.i_crit_edge ], [ %call.i.1.i.i, %land.rhs.i.i.i.do.end.i.i.i_crit_edge ], [ %call.i.2.i.i, %land.rhs.i.1.i.i.do.end.i.i.i_crit_edge ], [ %call.i.3.i.i, %land.rhs.i.2.i.i.do.end.i.i.i_crit_edge ], [ %call.i.4.i.i, %land.rhs.i.3.i.i.do.end.i.i.i_crit_edge ], [ %call.i.5.i.i, %land.rhs.i.4.i.i.do.end.i.i.i_crit_edge ], [ %call.i.6.i.i, %land.rhs.i.5.i.i.do.end.i.i.i_crit_edge ], [ %call.i.7.i.i, %land.rhs.i.6.i.i.do.end.i.i.i_crit_edge ], [ %call.i.8.i.i, %land.rhs.i.7.i.i.do.end.i.i.i_crit_edge ], [ %call.i.9.i.i, %land.rhs.i.8.i.i.do.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.lcssa.i.i, 0
  br i1 %cmp3.i.i.i, label %do.end.i.i.i.do.end6.i.i.i_crit_edge, label %do.end.i.i.i.wacom_get_report.exit.i.i_crit_edge

do.end.i.i.i.wacom_get_report.exit.i.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_get_report.exit.i.i

do.end.i.i.i.do.end6.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i.i

do.end6.i.i.i:                                    ; preds = %do.end.i.i.i.do.end6.i.i.i_crit_edge, %land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge, %land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge307
  %call.i145.i.i = phi i32 [ %call.i.lcssa.i.i, %do.end.i.i.i.do.end6.i.i.i_crit_edge ], [ %call.i.9.i.i, %land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge ], [ %call.i.9.i.i, %land.rhs.i.8.i.i.do.end6.i.i.i_crit_edge307 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call.i145.i.i) #20
  br label %wacom_get_report.exit.i.i

wacom_get_report.exit.i.i:                        ; preds = %do.end6.i.i.i, %do.end.i.i.i.wacom_get_report.exit.i.i_crit_edge
  %call.i144.i.i = phi i32 [ %call.i.lcssa.i.i, %do.end.i.i.i.wacom_get_report.exit.i.i_crit_edge ], [ %call.i145.i.i, %do.end6.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i144.i.i, i32 %add1.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i144.i.i, %add1.i.i.i.i
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %wacom_get_report.exit.i.i.if.else.i.i.i_crit_edge

wacom_get_report.exit.i.i.if.else.i.i.i_crit_edge: ; preds = %wacom_get_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %wacom_get_report.exit.i.i
  %type.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 10, i32 5
  %194 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %195)
  %cmp14.i.i.i = icmp eq i32 %195, 53
  br i1 %cmp14.i.i.i, label %if.then16.i.i.i, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i

if.then16.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call17.i.i.i = tail call i32 @hid_report_raw_event(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %call8.i.i.i, i32 noundef %add1.i.i.i.i, i32 noundef 0) #17
  br label %if.end32.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %wacom_get_report.exit.i.i.if.else.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i144.i.i)
  %cmp18.i.i.i = icmp eq i32 %call.i144.i.i, 2
  br i1 %cmp18.i.i.i, label %land.lhs.true20.i.i.i, label %if.else.i.i.i.if.else28.i.i.i_crit_edge

if.else.i.i.i.if.else28.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else28.i.i.i

land.lhs.true20.i.i.i:                            ; preds = %if.else.i.i.i
  %type21.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 10, i32 5
  %196 = ptrtoint ptr %type21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %type21.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %197)
  %cmp22.not.i.i.i = icmp eq i32 %197, 53
  br i1 %cmp22.not.i.i.i, label %land.lhs.true20.i.i.i.if.else28.i.i.i_crit_edge, label %if.then24.i.i.i

land.lhs.true20.i.i.i.if.else28.i.i.i_crit_edge:  ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else28.i.i.i

if.then24.i.i.i:                                  ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx25.i.i.i = getelementptr i8, ptr %call8.i.i.i, i32 1
  %198 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx25.i.i.i, align 1
  %conv26.i.i.i = zext i8 %199 to i32
  %200 = ptrtoint ptr %touch_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %conv26.i.i.i, ptr %touch_max.i.i.i, align 4
  br label %if.end32.i.i.i

if.else28.i.i.i:                                  ; preds = %land.lhs.true20.i.i.i.if.else28.i.i.i_crit_edge, %if.else.i.i.i.if.else28.i.i.i_crit_edge
  %201 = ptrtoint ptr %touch_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 16, ptr %touch_max.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef 16) #20
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.else28.i.i.i, %if.then24.i.i.i, %if.then16.i.i.i
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #17
  br label %wacom_feature_mapping.exit.i.i

sw.bb34.i.i.i:                                    ; preds = %for.body11.i.i
  %usage_index.i.i.i = getelementptr %struct.hid_usage, ptr %146, i32 %j.0128.i.i, i32 2
  %202 = ptrtoint ptr %usage_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %usage_index.i.i.i, align 4
  %report_count.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 8
  %204 = ptrtoint ptr %report_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %report_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %205)
  %cmp35.not.i.i.i = icmp ult i32 %203, %205
  br i1 %cmp35.not.i.i.i, label %if.end42.i.i.i, label %do.end40.i.i.i

do.end40.i.i.i:                                   ; preds = %sw.bb34.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #20
  br label %wacom_feature_mapping.exit.i.i

if.end42.i.i.i:                                   ; preds = %sw.bb34.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %report43.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 17
  %206 = ptrtoint ptr %report43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %report43.i.i.i, align 4
  %id44.i.i.i = getelementptr inbounds %struct.hid_report, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %id44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %id44.i.i.i, align 4
  %conv45.i.i.i = trunc i32 %209 to i16
  %210 = ptrtoint ptr %hid_data3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv45.i.i.i, ptr %hid_data3.i.i.i, align 4
  %211 = ptrtoint ptr %usage_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %usage_index.i.i.i, align 4
  %conv47.i.i.i = trunc i32 %212 to i16
  %inputmode_index.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 22, i32 1
  %213 = ptrtoint ptr %inputmode_index.i.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv47.i.i.i, ptr %inputmode_index.i.i.i, align 2
  br label %wacom_feature_mapping.exit.i.i

sw.bb48.i.i.i:                                    ; preds = %for.body11.i.i
  %report49.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 17
  %214 = ptrtoint ptr %report49.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %report49.i.i.i, align 4
  %id50.i.i.i = getelementptr inbounds %struct.hid_report, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %id50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %id50.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %217)
  %cmp51.i.i.i = icmp eq i32 %217, 11
  br i1 %cmp51.i.i.i, label %land.lhs.true53.i.i.i, label %sw.bb48.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge

sw.bb48.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %sw.bb48.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

land.lhs.true53.i.i.i:                            ; preds = %sw.bb48.i.i.i
  %application.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 2
  %218 = ptrtoint ptr %application.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %application.i.i.i, align 4
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %219, label %land.lhs.true53.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge [
    i32 -16187390, label %land.lhs.true53.i.i.i.if.then59.i.i.i_crit_edge
    i32 -15663102, label %land.lhs.true53.i.i.i.if.then59.i.i.i_crit_edge308
  ]

land.lhs.true53.i.i.i.if.then59.i.i.i_crit_edge308: ; preds = %land.lhs.true53.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then59.i.i.i

land.lhs.true53.i.i.i.if.then59.i.i.i_crit_edge:  ; preds = %land.lhs.true53.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then59.i.i.i

land.lhs.true53.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %land.lhs.true53.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

if.then59.i.i.i:                                  ; preds = %land.lhs.true53.i.i.i.if.then59.i.i.i_crit_edge, %land.lhs.true53.i.i.i.if.then59.i.i.i_crit_edge308
  %mode_report.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 20
  %221 = ptrtoint ptr %mode_report.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 11, ptr %mode_report.i.i.i, align 4
  %mode_value.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 21
  %222 = ptrtoint ptr %mode_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %mode_value.i.i.i, align 8
  br label %wacom_feature_mapping.exit.i.i

sw.bb65.i.i.i:                                    ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %report66.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 17
  %223 = ptrtoint ptr %report66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %report66.i.i.i, align 4
  %id67.i.i.i = getelementptr inbounds %struct.hid_report, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %id67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %id67.i.i.i, align 4
  %mode_report69.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 20
  %227 = ptrtoint ptr %mode_report69.i.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %mode_report69.i.i.i, align 4
  %mode_value71.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 21
  %228 = ptrtoint ptr %mode_value71.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 2, ptr %mode_value71.i.i.i, align 8
  br label %wacom_feature_mapping.exit.i.i

sw.bb72.i.i.i:                                    ; preds = %for.body11.i.i.sw.bb72.i.i.i_crit_edge, %for.body11.i.i.sw.bb72.i.i.i_crit_edge294
  %report73.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 17
  %229 = ptrtoint ptr %report73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %report73.i.i.i, align 4
  %id74.i.i.i = getelementptr inbounds %struct.hid_report, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %id74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %id74.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %232)
  %cmp75.i.i.i = icmp eq i32 %232, 3
  br i1 %cmp75.i.i.i, label %land.lhs.true77.i.i.i, label %sw.bb72.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge

sw.bb72.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %sw.bb72.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

land.lhs.true77.i.i.i:                            ; preds = %sw.bb72.i.i.i
  %application78.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 2
  %233 = ptrtoint ptr %application78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %application78.i.i.i, align 4
  %235 = zext i32 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %234, label %land.lhs.true77.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge [
    i32 -16187375, label %land.lhs.true77.i.i.i.if.then85.i.i.i_crit_edge
    i32 -15663087, label %land.lhs.true77.i.i.i.if.then85.i.i.i_crit_edge309
  ]

land.lhs.true77.i.i.i.if.then85.i.i.i_crit_edge309: ; preds = %land.lhs.true77.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i.i.i

land.lhs.true77.i.i.i.if.then85.i.i.i_crit_edge:  ; preds = %land.lhs.true77.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then85.i.i.i

land.lhs.true77.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %land.lhs.true77.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

if.then85.i.i.i:                                  ; preds = %land.lhs.true77.i.i.i.if.then85.i.i.i_crit_edge, %land.lhs.true77.i.i.i.if.then85.i.i.i_crit_edge309
  %mode_report89.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 20
  %236 = ptrtoint ptr %mode_report89.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 3, ptr %mode_report89.i.i.i, align 4
  %mode_value91.i.i.i = getelementptr inbounds %struct.wacom, ptr %148, i32 0, i32 2, i32 21
  %237 = ptrtoint ptr %mode_value91.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %mode_value91.i.i.i, align 8
  br label %wacom_feature_mapping.exit.i.i

sw.bb93.i.i.i:                                    ; preds = %for.body11.i.i.sw.bb93.i.i.i_crit_edge, %for.body11.i.i.sw.bb93.i.i.i_crit_edge295, %for.body11.i.i.sw.bb93.i.i.i_crit_edge296, %for.body11.i.i.sw.bb93.i.i.i_crit_edge297
  %report94.i.i.i = getelementptr inbounds %struct.hid_field, ptr %144, i32 0, i32 17
  %238 = ptrtoint ptr %report94.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %report94.i.i.i, align 4
  %size.i176.i.i.i = getelementptr inbounds %struct.hid_report, ptr %239, i32 0, i32 7
  %240 = ptrtoint ptr %size.i176.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %size.i176.i.i.i, align 4
  %sub.i177.i.i.i = add i32 %241, 7
  %div3.i178.i.i.i = lshr i32 %sub.i177.i.i.i, 3
  %id.i179.i.i.i = getelementptr inbounds %struct.hid_report, ptr %239, i32 0, i32 2
  %242 = ptrtoint ptr %id.i179.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %id.i179.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp.i180.i.i.i = icmp ne i32 %243, 0
  %conv.i181.i.i.i = zext i1 %cmp.i180.i.i.i to i32
  %add1.i182.i.i.i = add nuw nsw i32 %div3.i178.i.i.i, %conv.i181.i.i.i
  %call97.i.i.i = tail call ptr @hid_alloc_report_buf(ptr noundef %239, i32 noundef 3264) #17
  %tobool98.not.i.i.i = icmp eq ptr %call97.i.i.i, null
  br i1 %tobool98.not.i.i.i, label %sw.bb93.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, label %if.end100.i.i.i

sw.bb93.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge: ; preds = %sw.bb93.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_feature_mapping.exit.i.i

if.end100.i.i.i:                                  ; preds = %sw.bb93.i.i.i
  %244 = ptrtoint ptr %report94.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %report94.i.i.i, align 4
  %id102.i.i.i = getelementptr inbounds %struct.hid_report, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %id102.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %id102.i.i.i, align 4
  %conv103.i.i.i = trunc i32 %247 to i8
  %248 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv103.i.i.i, ptr %call97.i.i.i, align 1
  %call.i.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %conv103.i.i.i, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %249 = zext i32 %call.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %call.i.i.i.i, label %if.end100.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %if.end100.i.i.i.land.rhs.i.i.i.i_crit_edge
    i32 -11, label %if.end100.i.i.i.land.rhs.i.i.i.i_crit_edge310
  ]

if.end100.i.i.i.land.rhs.i.i.i.i_crit_edge310:    ; preds = %if.end100.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i.i.i

if.end100.i.i.i.land.rhs.i.i.i.i_crit_edge:       ; preds = %if.end100.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i.i.i

if.end100.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %if.end100.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end100.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.end100.i.i.i.land.rhs.i.i.i.i_crit_edge310
  %250 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %call97.i.i.i, align 1
  %call.i.1.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %251, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %252 = zext i32 %call.i.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %call.i.1.i.i.i, label %land.rhs.i.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.i.i.i.land.rhs.i.1.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.i.i.i.land.rhs.i.1.i.i.i_crit_edge311
  ]

land.rhs.i.i.i.i.land.rhs.i.1.i.i.i_crit_edge311: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i.i.i

land.rhs.i.i.i.i.land.rhs.i.1.i.i.i_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i.i.i

land.rhs.i.i.i.i.do.end.i.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.1.i.i.i:                               ; preds = %land.rhs.i.i.i.i.land.rhs.i.1.i.i.i_crit_edge, %land.rhs.i.i.i.i.land.rhs.i.1.i.i.i_crit_edge311
  %253 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %call97.i.i.i, align 1
  %call.i.2.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %254, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %255 = zext i32 %call.i.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %call.i.2.i.i.i, label %land.rhs.i.1.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.1.i.i.i.land.rhs.i.2.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.1.i.i.i.land.rhs.i.2.i.i.i_crit_edge312
  ]

land.rhs.i.1.i.i.i.land.rhs.i.2.i.i.i_crit_edge312: ; preds = %land.rhs.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i.i.i

land.rhs.i.1.i.i.i.land.rhs.i.2.i.i.i_crit_edge:  ; preds = %land.rhs.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i.i.i

land.rhs.i.1.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.2.i.i.i:                               ; preds = %land.rhs.i.1.i.i.i.land.rhs.i.2.i.i.i_crit_edge, %land.rhs.i.1.i.i.i.land.rhs.i.2.i.i.i_crit_edge312
  %256 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %call97.i.i.i, align 1
  %call.i.3.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %257, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %258 = zext i32 %call.i.3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %call.i.3.i.i.i, label %land.rhs.i.2.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.2.i.i.i.land.rhs.i.3.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.2.i.i.i.land.rhs.i.3.i.i.i_crit_edge313
  ]

land.rhs.i.2.i.i.i.land.rhs.i.3.i.i.i_crit_edge313: ; preds = %land.rhs.i.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i.i.i

land.rhs.i.2.i.i.i.land.rhs.i.3.i.i.i_crit_edge:  ; preds = %land.rhs.i.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i.i.i

land.rhs.i.2.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.3.i.i.i:                               ; preds = %land.rhs.i.2.i.i.i.land.rhs.i.3.i.i.i_crit_edge, %land.rhs.i.2.i.i.i.land.rhs.i.3.i.i.i_crit_edge313
  %259 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %call97.i.i.i, align 1
  %call.i.4.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %260, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %261 = zext i32 %call.i.4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %call.i.4.i.i.i, label %land.rhs.i.3.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.3.i.i.i.land.rhs.i.4.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.3.i.i.i.land.rhs.i.4.i.i.i_crit_edge314
  ]

land.rhs.i.3.i.i.i.land.rhs.i.4.i.i.i_crit_edge314: ; preds = %land.rhs.i.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i.i.i

land.rhs.i.3.i.i.i.land.rhs.i.4.i.i.i_crit_edge:  ; preds = %land.rhs.i.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i.i.i

land.rhs.i.3.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.4.i.i.i:                               ; preds = %land.rhs.i.3.i.i.i.land.rhs.i.4.i.i.i_crit_edge, %land.rhs.i.3.i.i.i.land.rhs.i.4.i.i.i_crit_edge314
  %262 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %call97.i.i.i, align 1
  %call.i.5.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %263, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %264 = zext i32 %call.i.5.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %264, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %call.i.5.i.i.i, label %land.rhs.i.4.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.4.i.i.i.land.rhs.i.5.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.4.i.i.i.land.rhs.i.5.i.i.i_crit_edge315
  ]

land.rhs.i.4.i.i.i.land.rhs.i.5.i.i.i_crit_edge315: ; preds = %land.rhs.i.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i.i.i

land.rhs.i.4.i.i.i.land.rhs.i.5.i.i.i_crit_edge:  ; preds = %land.rhs.i.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i.i.i

land.rhs.i.4.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.5.i.i.i:                               ; preds = %land.rhs.i.4.i.i.i.land.rhs.i.5.i.i.i_crit_edge, %land.rhs.i.4.i.i.i.land.rhs.i.5.i.i.i_crit_edge315
  %265 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %call97.i.i.i, align 1
  %call.i.6.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %266, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %267 = zext i32 %call.i.6.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %call.i.6.i.i.i, label %land.rhs.i.5.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.5.i.i.i.land.rhs.i.6.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.5.i.i.i.land.rhs.i.6.i.i.i_crit_edge316
  ]

land.rhs.i.5.i.i.i.land.rhs.i.6.i.i.i_crit_edge316: ; preds = %land.rhs.i.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i.i.i

land.rhs.i.5.i.i.i.land.rhs.i.6.i.i.i_crit_edge:  ; preds = %land.rhs.i.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i.i.i

land.rhs.i.5.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.6.i.i.i:                               ; preds = %land.rhs.i.5.i.i.i.land.rhs.i.6.i.i.i_crit_edge, %land.rhs.i.5.i.i.i.land.rhs.i.6.i.i.i_crit_edge316
  %268 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %call97.i.i.i, align 1
  %call.i.7.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %269, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %270 = zext i32 %call.i.7.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %call.i.7.i.i.i, label %land.rhs.i.6.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.6.i.i.i.land.rhs.i.7.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.6.i.i.i.land.rhs.i.7.i.i.i_crit_edge317
  ]

land.rhs.i.6.i.i.i.land.rhs.i.7.i.i.i_crit_edge317: ; preds = %land.rhs.i.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i.i.i

land.rhs.i.6.i.i.i.land.rhs.i.7.i.i.i_crit_edge:  ; preds = %land.rhs.i.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i.i.i

land.rhs.i.6.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.7.i.i.i:                               ; preds = %land.rhs.i.6.i.i.i.land.rhs.i.7.i.i.i_crit_edge, %land.rhs.i.6.i.i.i.land.rhs.i.7.i.i.i_crit_edge317
  %271 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %call97.i.i.i, align 1
  %call.i.8.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %272, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %273 = zext i32 %call.i.8.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %273, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %call.i.8.i.i.i, label %land.rhs.i.7.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.7.i.i.i.land.rhs.i.8.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.7.i.i.i.land.rhs.i.8.i.i.i_crit_edge318
  ]

land.rhs.i.7.i.i.i.land.rhs.i.8.i.i.i_crit_edge318: ; preds = %land.rhs.i.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i.i.i

land.rhs.i.7.i.i.i.land.rhs.i.8.i.i.i_crit_edge:  ; preds = %land.rhs.i.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i.i.i

land.rhs.i.7.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

land.rhs.i.8.i.i.i:                               ; preds = %land.rhs.i.7.i.i.i.land.rhs.i.8.i.i.i_crit_edge, %land.rhs.i.7.i.i.i.land.rhs.i.8.i.i.i_crit_edge318
  %274 = ptrtoint ptr %call97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %call97.i.i.i, align 1
  %call.i.9.i.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %275, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %276 = zext i32 %call.i.9.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %call.i.9.i.i.i, label %land.rhs.i.8.i.i.i.do.end.i.i.i.i_crit_edge [
    i32 -110, label %land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge
    i32 -11, label %land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge319
  ]

land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge319:  ; preds = %land.rhs.i.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i.i.i

land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge:     ; preds = %land.rhs.i.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i.i.i

land.rhs.i.8.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.8.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.7.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.6.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.5.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.4.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.3.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.2.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.1.i.i.i.do.end.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end100.i.i.i.do.end.i.i.i.i_crit_edge
  %call.i.lcssa.i.i.i = phi i32 [ %call.i.i.i.i, %if.end100.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.1.i.i.i, %land.rhs.i.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.2.i.i.i, %land.rhs.i.1.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.3.i.i.i, %land.rhs.i.2.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.4.i.i.i, %land.rhs.i.3.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.5.i.i.i, %land.rhs.i.4.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.6.i.i.i, %land.rhs.i.5.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.7.i.i.i, %land.rhs.i.6.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.8.i.i.i, %land.rhs.i.7.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.9.i.i.i, %land.rhs.i.8.i.i.i.do.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.lcssa.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %do.end.i.i.i.i.do.end6.i.i.i.i_crit_edge, label %do.end.i.i.i.i.wacom_get_report.exit.i.i.i_crit_edge

do.end.i.i.i.i.wacom_get_report.exit.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_get_report.exit.i.i.i

do.end.i.i.i.i.do.end6.i.i.i.i_crit_edge:         ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i.i.i

do.end6.i.i.i.i:                                  ; preds = %do.end.i.i.i.i.do.end6.i.i.i.i_crit_edge, %land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge, %land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge319
  %call.i188.i.i.i = phi i32 [ %call.i.lcssa.i.i.i, %do.end.i.i.i.i.do.end6.i.i.i.i_crit_edge ], [ %call.i.9.i.i.i, %land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge ], [ %call.i.9.i.i.i, %land.rhs.i.8.i.i.i.do.end6.i.i.i.i_crit_edge319 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call.i188.i.i.i) #20
  br label %wacom_get_report.exit.i.i.i

wacom_get_report.exit.i.i.i:                      ; preds = %do.end6.i.i.i.i, %do.end.i.i.i.i.wacom_get_report.exit.i.i.i_crit_edge
  %call.i187.i.i.i = phi i32 [ %call.i.lcssa.i.i.i, %do.end.i.i.i.i.wacom_get_report.exit.i.i.i_crit_edge ], [ %call.i188.i.i.i, %do.end6.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i187.i.i.i, i32 %add1.i182.i.i.i)
  %cmp106.i.i.i = icmp eq i32 %call.i187.i.i.i, %add1.i182.i.i.i
  br i1 %cmp106.i.i.i, label %if.then108.i.i.i, label %do.end113.i.i.i

if.then108.i.i.i:                                 ; preds = %wacom_get_report.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call109.i.i.i = tail call i32 @hid_report_raw_event(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %call97.i.i.i, i32 noundef %add1.i182.i.i.i, i32 noundef 0) #17
  br label %if.end115.i.i.i

do.end113.i.i.i:                                  ; preds = %wacom_get_report.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #20
  br label %if.end115.i.i.i

if.end115.i.i.i:                                  ; preds = %do.end113.i.i.i, %if.then108.i.i.i
  tail call void @kfree(ptr noundef nonnull %call97.i.i.i) #17
  br label %wacom_feature_mapping.exit.i.i

wacom_feature_mapping.exit.i.i:                   ; preds = %if.end115.i.i.i, %sw.bb93.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, %if.then85.i.i.i, %land.lhs.true77.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, %sw.bb72.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, %sw.bb65.i.i.i, %if.then59.i.i.i, %land.lhs.true53.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, %sw.bb48.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, %if.end42.i.i.i, %do.end40.i.i.i, %if.end32.i.i.i, %if.then.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, %sw.bb5.i.i.i.wacom_feature_mapping.exit.i.i_crit_edge, %sw.bb.i.i.i, %for.body11.i.i.wacom_feature_mapping.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %j.0128.i.i, 1
  %277 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %arrayidx5.i.i, align 4
  %maxusage.i.i = getelementptr inbounds %struct.hid_field, ptr %278, i32 0, i32 4
  %279 = ptrtoint ptr %maxusage.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %maxusage.i.i, align 4
  %cmp10.i.i = icmp ult i32 %inc.i.i, %280
  br i1 %cmp10.i.i, label %wacom_feature_mapping.exit.i.i.for.body11.i.i_crit_edge, label %wacom_feature_mapping.exit.i.i.for.inc17.i.i_crit_edge

wacom_feature_mapping.exit.i.i.for.inc17.i.i_crit_edge: ; preds = %wacom_feature_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc17.i.i

wacom_feature_mapping.exit.i.i.for.body11.i.i_crit_edge: ; preds = %wacom_feature_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body11.i.i

for.inc17.i.i:                                    ; preds = %wacom_feature_mapping.exit.i.i.for.inc17.i.i_crit_edge, %for.cond7.preheader.i.i.for.inc17.i.i_crit_edge, %for.body4.i.i.for.inc17.i.i_crit_edge
  %inc18.i.i = add nuw i32 %i.0131.i.i, 1
  %281 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %maxfield.i.i, align 4
  %cmp3.i.i = icmp ult i32 %inc18.i.i, %282
  br i1 %cmp3.i.i, label %for.inc17.i.i.for.body4.i.i_crit_edge, label %for.inc17.i.i.for.cond.loopexit.i.i_crit_edge

for.inc17.i.i.for.cond.loopexit.i.i_crit_edge:    ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit.i.i

for.inc17.i.i.for.body4.i.i_crit_edge:            ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4.i.i

for.end26.i.i:                                    ; preds = %for.cond.loopexit.i.i.for.end26.i.i_crit_edge, %if.end6.i.for.end26.i.i_crit_edge
  %283 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %hreport.1140.i.i = load ptr, ptr %report_list.i, align 4
  %cmp37.not141.i.i = icmp eq ptr %hreport.1140.i.i, %report_list.i
  br i1 %cmp37.not141.i.i, label %for.end26.i.i.for.end71.i.i_crit_edge, label %for.end26.i.i.for.body39.i.i_crit_edge

for.end26.i.i.for.body39.i.i_crit_edge:           ; preds = %for.end26.i.i
  br label %for.body39.i.i

for.end26.i.i.for.end71.i.i_crit_edge:            ; preds = %for.end26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end71.i.i

for.body39.i.i:                                   ; preds = %for.inc65.i.i.for.body39.i.i_crit_edge, %for.end26.i.i.for.body39.i.i_crit_edge
  %hreport.1142.i.i = phi ptr [ %hreport.1.i.i, %for.inc65.i.i.for.body39.i.i_crit_edge ], [ %hreport.1140.i.i, %for.end26.i.i.for.body39.i.i_crit_edge ]
  %maxfield40.i.i = getelementptr inbounds %struct.hid_report, ptr %hreport.1142.i.i, i32 0, i32 6
  %284 = ptrtoint ptr %maxfield40.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %maxfield40.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool.not.i.i193 = icmp eq i32 %285, 0
  br i1 %tobool.not.i.i193, label %for.body39.i.i.for.inc65.i.i_crit_edge, label %for.body39.i.i.for.cond47.preheader.i.i_crit_edge

for.body39.i.i.for.cond47.preheader.i.i_crit_edge: ; preds = %for.body39.i.i
  br label %for.cond47.preheader.i.i

for.body39.i.i.for.inc65.i.i_crit_edge:           ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc65.i.i

for.cond47.preheader.i.i:                         ; preds = %for.inc62.i.i.for.cond47.preheader.i.i_crit_edge, %for.body39.i.i.for.cond47.preheader.i.i_crit_edge
  %i.1139.i.i = phi i32 [ %inc63.i.i, %for.inc62.i.i.for.cond47.preheader.i.i_crit_edge ], [ 0, %for.body39.i.i.for.cond47.preheader.i.i_crit_edge ]
  %arrayidx49.i.i = getelementptr %struct.hid_report, ptr %hreport.1142.i.i, i32 0, i32 5, i32 %i.1139.i.i
  %286 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx49.i.i, align 4
  %maxusage50135.i.i = getelementptr inbounds %struct.hid_field, ptr %287, i32 0, i32 4
  %288 = ptrtoint ptr %maxusage50135.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %maxusage50135.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp51136.not.i.i = icmp eq i32 %289, 0
  br i1 %cmp51136.not.i.i, label %for.cond47.preheader.i.i.for.inc62.i.i_crit_edge, label %for.cond47.preheader.i.i.for.body52.i.i_crit_edge

for.cond47.preheader.i.i.for.body52.i.i_crit_edge: ; preds = %for.cond47.preheader.i.i
  br label %for.body52.i.i

for.cond47.preheader.i.i.for.inc62.i.i_crit_edge: ; preds = %for.cond47.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc62.i.i

for.body52.i.i:                                   ; preds = %wacom_usage_mapping.exit.i.i.for.body52.i.i_crit_edge, %for.cond47.preheader.i.i.for.body52.i.i_crit_edge
  %290 = phi ptr [ %355, %wacom_usage_mapping.exit.i.i.for.body52.i.i_crit_edge ], [ %287, %for.cond47.preheader.i.i.for.body52.i.i_crit_edge ]
  %j.1137.i.i = phi i32 [ %inc60.i.i, %wacom_usage_mapping.exit.i.i.for.body52.i.i_crit_edge ], [ 0, %for.cond47.preheader.i.i.for.body52.i.i_crit_edge ]
  %usage57.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 3
  %291 = ptrtoint ptr %usage57.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %usage57.i.i, align 4
  %add.ptr58.i.i = getelementptr %struct.hid_usage, ptr %292, i32 %j.1137.i.i
  %293 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %driver_data.i.i.i, align 4
  %logical.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 1
  %295 = ptrtoint ptr %logical.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %logical.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852002, i32 %296)
  %cmp.i108.i.i = icmp eq i32 %296, 852002
  br i1 %cmp.i108.i.i, label %for.body52.i.i.lor.lhs.false18.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body52.i.i.lor.lhs.false18.i.i.i_crit_edge:   ; preds = %for.body52.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false18.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body52.i.i
  %297 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852002, i32 %298)
  %cmp2.i.i.i = icmp eq i32 %298, 852002
  br i1 %cmp2.i.i.i, label %lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge, label %lor.lhs.false3.i.i.i

lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end.i.i.i

lor.lhs.false3.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %application.i109.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 2
  %299 = ptrtoint ptr %application.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %application.i109.i.i, align 4
  %301 = zext i32 %300 to i64
  call void @__sanitizer_cov_trace_switch(i64 %301, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %300, label %lor.rhs.i.i.i [
    i32 851972, label %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge
    i32 -16187375, label %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge320
    i32 -15663087, label %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge321
    i32 -16777211, label %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge322
    i32 851973, label %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge323
  ]

lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge323:  ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end.i.i.i

lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge322:  ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end.i.i.i

lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge321:  ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end.i.i.i

lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge320:  ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end.i.i.i

lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge:     ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end.i.i.i

lor.rhs.i.i.i:                                    ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end.i.i.i

lor.end.i.i.i:                                    ; preds = %lor.rhs.i.i.i, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge320, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge321, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge322, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge323, %lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge
  %302 = phi i1 [ true, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge ], [ true, %lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge ], [ false, %lor.rhs.i.i.i ], [ true, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge320 ], [ true, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge321 ], [ true, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge322 ], [ true, %lor.lhs.false3.i.i.i.lor.end.i.i.i_crit_edge323 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 852000, i32 %296)
  %cmp17.i.i.i = icmp eq i32 %296, 852000
  br i1 %cmp17.i.i.i, label %lor.end.i.i.i.if.then.i110.i.i_crit_edge, label %lor.end.i.i.i.lor.lhs.false18.i.i.i_crit_edge

lor.end.i.i.i.lor.lhs.false18.i.i.i_crit_edge:    ; preds = %lor.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false18.i.i.i

lor.end.i.i.i.if.then.i110.i.i_crit_edge:         ; preds = %lor.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false18.i.i.i:                            ; preds = %lor.end.i.i.i.lor.lhs.false18.i.i.i_crit_edge, %for.body52.i.i.lor.lhs.false18.i.i.i_crit_edge
  %303 = phi i1 [ %302, %lor.end.i.i.i.lor.lhs.false18.i.i.i_crit_edge ], [ true, %for.body52.i.i.lor.lhs.false18.i.i.i_crit_edge ]
  %304 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %290, align 4
  %306 = zext i32 %305 to i64
  call void @__sanitizer_cov_trace_switch(i64 %306, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %305, label %lor.lhs.false24.i.i.i [
    i32 852000, label %lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge
    i32 851970, label %lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge324
  ]

lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge324: ; preds = %lor.lhs.false18.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge: ; preds = %lor.lhs.false18.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false24.i.i.i:                            ; preds = %lor.lhs.false18.i.i.i
  %application25.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 2
  %307 = ptrtoint ptr %application25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %application25.i.i.i, align 4
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %308, label %if.else.i111.i.i [
    i32 851970, label %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge
    i32 851969, label %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge325
    i32 -15925246, label %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge326
    i32 -15925247, label %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge327
    i32 -16187390, label %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge328
    i32 -15663102, label %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge329
  ]

lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge329: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge328: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge327: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge326: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge325: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i110.i.i

if.then.i110.i.i:                                 ; preds = %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge325, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge326, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge327, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge328, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge329, %lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge, %lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge324, %lor.end.i.i.i.if.then.i110.i.i_crit_edge
  %.ph.i.i.i = phi i1 [ %303, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge ], [ %303, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge325 ], [ %303, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge326 ], [ %303, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge327 ], [ %303, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge328 ], [ %303, %lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge ], [ %302, %lor.end.i.i.i.if.then.i110.i.i_crit_edge ], [ %303, %lor.lhs.false18.i.i.i.if.then.i110.i.i_crit_edge324 ], [ %303, %lor.lhs.false24.i.i.i.if.then.i110.i.i_crit_edge329 ]
  %310 = ptrtoint ptr %add.ptr58.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %add.ptr58.i.i, align 4
  %call44146.i.i.i = tail call i32 @wacom_equivalent_usage(i32 noundef %311) #17
  br label %if.end50.i.i.i

if.else.i111.i.i:                                 ; preds = %lor.lhs.false24.i.i.i
  %312 = ptrtoint ptr %add.ptr58.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %add.ptr58.i.i, align 4
  %call44.i.i.i = tail call i32 @wacom_equivalent_usage(i32 noundef %313) #17
  br i1 %303, label %if.else.i111.i.i.if.end50.i.i.i_crit_edge, label %if.else.i111.i.i.wacom_usage_mapping.exit.i.i_crit_edge

if.else.i111.i.i.wacom_usage_mapping.exit.i.i_crit_edge: ; preds = %if.else.i111.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_usage_mapping.exit.i.i

if.else.i111.i.i.if.end50.i.i.i_crit_edge:        ; preds = %if.else.i111.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50.i.i.i

if.end50.i.i.i:                                   ; preds = %if.else.i111.i.i.if.end50.i.i.i_crit_edge, %if.then.i110.i.i
  %.sink149.i.i.i = phi i32 [ 1, %if.then.i110.i.i ], [ 2, %if.else.i111.i.i.if.end50.i.i.i_crit_edge ]
  %call44147.i.i.i = phi i32 [ %call44146.i.i.i, %if.then.i110.i.i ], [ %call44.i.i.i, %if.else.i111.i.i.if.end50.i.i.i_crit_edge ]
  %314 = phi i1 [ true, %if.then.i110.i.i ], [ false, %if.else.i111.i.i.if.end50.i.i.i_crit_edge ]
  %315 = phi i1 [ %.ph.i.i.i, %if.then.i110.i.i ], [ true, %if.else.i111.i.i.if.end50.i.i.i_crit_edge ]
  %device_type47.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 13
  %316 = ptrtoint ptr %device_type47.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %device_type47.i.i.i, align 4
  %or48.i.i.i = or i32 %317, %.sink149.i.i.i
  store i32 %or48.i.i.i, ptr %device_type47.i.i.i, align 4
  tail call fastcc void @wacom_hid_usage_quirk(ptr noundef %1, ptr noundef %290, ptr noundef %add.ptr58.i.i) #17
  %318 = zext i32 %call44147.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %318, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call44147.i.i.i, label %if.end50.i.i.i.sw.epilog.i.i.i_crit_edge [
    i32 65584, label %sw.bb.i112.i.i
    i32 65585, label %sw.bb60.i.i.i
    i32 852016, label %sw.bb77.i.i.i
  ]

if.end50.i.i.i.sw.epilog.i.i.i_crit_edge:         ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i.i

sw.bb.i112.i.i:                                   ; preds = %if.end50.i.i.i
  %logical_maximum.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 12
  %319 = ptrtoint ptr %logical_maximum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %logical_maximum.i.i.i, align 4
  %x_max.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 1
  %321 = ptrtoint ptr %x_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %x_max.i.i.i, align 4
  br i1 %315, label %if.then52.i.i.i, label %sw.bb.i112.i.i.sw.epilog.i.i.i_crit_edge

sw.bb.i112.i.i.sw.epilog.i.i.i_crit_edge:         ; preds = %sw.bb.i112.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i.i

if.then52.i.i.i:                                  ; preds = %sw.bb.i112.i.i
  %physical_maximum.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 14
  %322 = ptrtoint ptr %physical_maximum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %physical_maximum.i.i.i, align 4
  %x_phy.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 14
  %324 = ptrtoint ptr %x_phy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %x_phy.i.i.i, align 4
  %type.i113.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 5
  %325 = ptrtoint ptr %type.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %type.i113.i.i, align 4
  %327 = and i32 %326, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %327)
  %switch.i.i.i = icmp eq i32 %327, 40
  br i1 %switch.i.i.i, label %if.then52.i.i.i.sw.epilog.i.i.i_crit_edge, label %if.then56.i.i.i

if.then52.i.i.i.sw.epilog.i.i.i_crit_edge:        ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i.i

if.then56.i.i.i:                                  ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %unit.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 16
  %328 = ptrtoint ptr %unit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %unit.i.i.i, align 4
  %unit57.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 16
  %330 = ptrtoint ptr %unit57.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %unit57.i.i.i, align 4
  %unit_exponent.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 15
  %331 = ptrtoint ptr %unit_exponent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %unit_exponent.i.i.i, align 4
  %unitExpo.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 17
  %333 = ptrtoint ptr %unitExpo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %unitExpo.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb60.i.i.i:                                    ; preds = %if.end50.i.i.i
  %logical_maximum61.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 12
  %334 = ptrtoint ptr %logical_maximum61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %logical_maximum61.i.i.i, align 4
  %y_max.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 2
  %336 = ptrtoint ptr %y_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %y_max.i.i.i, align 4
  br i1 %315, label %if.then63.i.i.i, label %sw.bb60.i.i.i.sw.epilog.i.i.i_crit_edge

sw.bb60.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %sw.bb60.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i.i

if.then63.i.i.i:                                  ; preds = %sw.bb60.i.i.i
  %physical_maximum64.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 14
  %337 = ptrtoint ptr %physical_maximum64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %physical_maximum64.i.i.i, align 4
  %y_phy.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 15
  %339 = ptrtoint ptr %y_phy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %y_phy.i.i.i, align 4
  %type65.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 5
  %340 = ptrtoint ptr %type65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %type65.i.i.i, align 4
  %342 = and i32 %341, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %342)
  %switch144.i.i.i = icmp eq i32 %342, 40
  br i1 %switch144.i.i.i, label %if.then63.i.i.i.sw.epilog.i.i.i_crit_edge, label %if.then70.i.i.i

if.then63.i.i.i.sw.epilog.i.i.i_crit_edge:        ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i.i

if.then70.i.i.i:                                  ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %unit71.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 16
  %343 = ptrtoint ptr %unit71.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %unit71.i.i.i, align 4
  %unit72.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 16
  %345 = ptrtoint ptr %unit72.i.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %unit72.i.i.i, align 4
  %unit_exponent73.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 15
  %346 = ptrtoint ptr %unit_exponent73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %unit_exponent73.i.i.i, align 4
  %unitExpo74.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 17
  %348 = ptrtoint ptr %unitExpo74.i.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %unitExpo74.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb77.i.i.i:                                    ; preds = %if.end50.i.i.i
  br i1 %314, label %if.then79.i.i.i, label %sw.bb77.i.i.i.sw.epilog.i.i.i_crit_edge

sw.bb77.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %sw.bb77.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i.i

if.then79.i.i.i:                                  ; preds = %sw.bb77.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %logical_maximum80.i.i.i = getelementptr inbounds %struct.hid_field, ptr %290, i32 0, i32 12
  %349 = ptrtoint ptr %logical_maximum80.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %logical_maximum80.i.i.i, align 4
  %pressure_max.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 3
  %351 = ptrtoint ptr %pressure_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %pressure_max.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.then79.i.i.i, %sw.bb77.i.i.i.sw.epilog.i.i.i_crit_edge, %if.then70.i.i.i, %if.then63.i.i.i.sw.epilog.i.i.i_crit_edge, %sw.bb60.i.i.i.sw.epilog.i.i.i_crit_edge, %if.then56.i.i.i, %if.then52.i.i.i.sw.epilog.i.i.i_crit_edge, %sw.bb.i112.i.i.sw.epilog.i.i.i_crit_edge, %if.end50.i.i.i.sw.epilog.i.i.i_crit_edge
  %type82.i.i.i = getelementptr inbounds %struct.wacom, ptr %294, i32 0, i32 2, i32 10, i32 5
  %352 = ptrtoint ptr %type82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %type82.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %353)
  %cmp83.i.i.i = icmp eq i32 %353, 53
  br i1 %cmp83.i.i.i, label %if.then84.i.i.i, label %sw.epilog.i.i.i.wacom_usage_mapping.exit.i.i_crit_edge

sw.epilog.i.i.i.wacom_usage_mapping.exit.i.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_usage_mapping.exit.i.i

if.then84.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @wacom_wac_usage_mapping(ptr noundef %1, ptr noundef %290, ptr noundef %add.ptr58.i.i) #17
  br label %wacom_usage_mapping.exit.i.i

wacom_usage_mapping.exit.i.i:                     ; preds = %if.then84.i.i.i, %sw.epilog.i.i.i.wacom_usage_mapping.exit.i.i_crit_edge, %if.else.i111.i.i.wacom_usage_mapping.exit.i.i_crit_edge
  %inc60.i.i = add nuw i32 %j.1137.i.i, 1
  %354 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx49.i.i, align 4
  %maxusage50.i.i = getelementptr inbounds %struct.hid_field, ptr %355, i32 0, i32 4
  %356 = ptrtoint ptr %maxusage50.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %maxusage50.i.i, align 4
  %cmp51.i.i = icmp ult i32 %inc60.i.i, %357
  br i1 %cmp51.i.i, label %wacom_usage_mapping.exit.i.i.for.body52.i.i_crit_edge, label %wacom_usage_mapping.exit.i.i.for.inc62.i.i_crit_edge

wacom_usage_mapping.exit.i.i.for.inc62.i.i_crit_edge: ; preds = %wacom_usage_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc62.i.i

wacom_usage_mapping.exit.i.i.for.body52.i.i_crit_edge: ; preds = %wacom_usage_mapping.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body52.i.i

for.inc62.i.i:                                    ; preds = %wacom_usage_mapping.exit.i.i.for.inc62.i.i_crit_edge, %for.cond47.preheader.i.i.for.inc62.i.i_crit_edge
  %inc63.i.i = add nuw i32 %i.1139.i.i, 1
  %358 = ptrtoint ptr %maxfield40.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %maxfield40.i.i, align 4
  %cmp45.i.i = icmp ult i32 %inc63.i.i, %359
  br i1 %cmp45.i.i, label %for.inc62.i.i.for.cond47.preheader.i.i_crit_edge, label %for.inc62.i.i.for.inc65.i.i_crit_edge

for.inc62.i.i.for.inc65.i.i_crit_edge:            ; preds = %for.inc62.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc65.i.i

for.inc62.i.i.for.cond47.preheader.i.i_crit_edge: ; preds = %for.inc62.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond47.preheader.i.i

for.inc65.i.i:                                    ; preds = %for.inc62.i.i.for.inc65.i.i_crit_edge, %for.body39.i.i.for.inc65.i.i_crit_edge
  %360 = ptrtoint ptr %hreport.1142.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %hreport.1.i.i = load ptr, ptr %hreport.1142.i.i, align 4
  %cmp37.not.i.i = icmp eq ptr %hreport.1.i.i, %report_list.i
  br i1 %cmp37.not.i.i, label %for.inc65.i.i.for.end71.i.i_crit_edge, label %for.inc65.i.i.for.body39.i.i_crit_edge

for.inc65.i.i.for.body39.i.i_crit_edge:           ; preds = %for.inc65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body39.i.i

for.inc65.i.i.for.end71.i.i_crit_edge:            ; preds = %for.inc65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end71.i.i

for.end71.i.i:                                    ; preds = %for.inc65.i.i.for.end71.i.i_crit_edge, %for.end26.i.i.for.end71.i.i_crit_edge
  %361 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %driver_data.i.i.i, align 4
  %363 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %364)
  %cmp.i116.i.i = icmp eq i32 %364, 53
  br i1 %cmp.i116.i.i, label %if.then.i118.i.i, label %for.end71.i.i.wacom_retrieve_hid_descriptor.exit_crit_edge

for.end71.i.i.wacom_retrieve_hid_descriptor.exit_crit_edge: ; preds = %for.end71.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_retrieve_hid_descriptor.exit

if.then.i118.i.i:                                 ; preds = %for.end71.i.i
  %has_mode_change.i.i.i = getelementptr inbounds %struct.wacom, ptr %362, i32 0, i32 2, i32 25
  %365 = ptrtoint ptr %has_mode_change.i.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %has_mode_change.i.i.i, align 2, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool.not.i117.i.i = icmp eq i8 %366, 0
  br i1 %tobool.not.i117.i.i, label %if.then.i118.i.i.if.end6.i.i.i_crit_edge, label %if.then2.i.i.i

if.then.i118.i.i.if.end6.i.i.i_crit_edge:         ; preds = %if.then.i118.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i118.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %is_direct_mode.i.i.i = getelementptr inbounds %struct.wacom, ptr %362, i32 0, i32 2, i32 26
  %367 = ptrtoint ptr %is_direct_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %is_direct_mode.i.i.i, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool3.not.i.i.i = icmp eq i8 %368, 0
  %device_type5.i.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 13
  %369 = ptrtoint ptr %device_type5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %device_type5.i.i.i, align 4
  %and.i.i.i = and i32 %370, -17
  %masksel.i.i.i = select i1 %tobool3.not.i.i.i, i32 0, i32 16
  %or.sink.i.i.i = or i32 %and.i.i.i, %masksel.i.i.i
  store i32 %or.sink.i.i.i, ptr %device_type5.i.i.i, align 4
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.then.i118.i.i.if.end6.i.i.i_crit_edge
  %touch_max.i119.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 24
  %371 = ptrtoint ptr %touch_max.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %touch_max.i119.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %372)
  %cmp7.i.i.i = icmp ugt i32 %372, 1
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %if.end6.i.i.i.wacom_retrieve_hid_descriptor.exit_crit_edge

if.end6.i.i.i.wacom_retrieve_hid_descriptor.exit_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_retrieve_hid_descriptor.exit

if.then8.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %device_type9.i.i.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 13
  %373 = ptrtoint ptr %device_type9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %device_type9.i.i.i, align 4
  %and10.i.i.i = and i32 %374, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  %touch_input17.i.i.i = getelementptr inbounds %struct.wacom, ptr %362, i32 0, i32 2, i32 13
  %375 = ptrtoint ptr %touch_input17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %touch_input17.i.i.i, align 4
  %touch_max19.i.i.i = getelementptr inbounds %struct.wacom, ptr %362, i32 0, i32 2, i32 10, i32 24
  %377 = ptrtoint ptr %touch_max19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %touch_max19.i.i.i, align 4
  %..i.i.i = select i1 %tobool11.not.i.i.i, i32 1, i32 2
  %call20.i.i.i = tail call i32 @input_mt_init_slots(ptr noundef %376, i32 noundef %378, i32 noundef %..i.i.i) #17
  br label %wacom_retrieve_hid_descriptor.exit

wacom_retrieve_hid_descriptor.exit:               ; preds = %if.then8.i.i.i, %if.end6.i.i.i.wacom_retrieve_hid_descriptor.exit_crit_edge, %for.end71.i.i.wacom_retrieve_hid_descriptor.exit_crit_edge, %if.else.i, %if.then4.i
  tail call void @wacom_setup_device_quirks(ptr noundef %wacom) #17
  %device_type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 13
  %379 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp26 = icmp eq i32 %380, 0
  br i1 %cmp26, label %land.lhs.true27, label %wacom_retrieve_hid_descriptor.exit.if.end40_crit_edge

wacom_retrieve_hid_descriptor.exit.if.end40_crit_edge: ; preds = %wacom_retrieve_hid_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

land.lhs.true27:                                  ; preds = %wacom_retrieve_hid_descriptor.exit
  %381 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %382)
  %cmp29.not = icmp eq i32 %382, 45
  br i1 %cmp29.not, label %land.lhs.true27.if.end40_crit_edge, label %if.then30

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %382)
  %cmp32 = icmp eq i32 %382, 53
  %name = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 39
  %cond35 = select i1 %cmp32, ptr @.str.86, ptr @.str.87
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef %name, ptr noundef nonnull %cond35) #20
  br i1 %cmp32, label %if.then30.fail_crit_edge, label %if.end38

if.then30.fail_crit_edge:                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end38:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  %383 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %device_type, align 4
  %or = or i32 %384, 1
  store i32 %or, ptr %device_type, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %land.lhs.true27.if.end40_crit_edge, %wacom_retrieve_hid_descriptor.exit.if.end40_crit_edge
  %unit.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 16
  %385 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %unit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool.not.i194 = icmp eq i32 %386, 0
  br i1 %tobool.not.i194, label %if.then.i195, label %if.end40.wacom_calculate_res.exit_crit_edge

if.end40.wacom_calculate_res.exit_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_calculate_res.exit

if.then.i195:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %387 = ptrtoint ptr %unit.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 17, ptr %unit.i, align 4
  %unitExpo.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 17
  %388 = ptrtoint ptr %unitExpo.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 -3, ptr %unitExpo.i, align 4
  br label %wacom_calculate_res.exit

wacom_calculate_res.exit:                         ; preds = %if.then.i195, %if.end40.wacom_calculate_res.exit_crit_edge
  %x_max.i196 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 1
  %389 = ptrtoint ptr %x_max.i196 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %x_max.i196, align 4
  %x_phy.i197 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 14
  %391 = ptrtoint ptr %x_phy.i197 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %x_phy.i197, align 4
  %393 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %unit.i, align 4
  %unitExpo3.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 17
  %395 = ptrtoint ptr %unitExpo3.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %unitExpo3.i, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %field.i.i) #17
  %397 = call ptr @memset(ptr %field.i.i, i32 0, i32 84)
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %field.i.i, i32 0, i32 12
  %398 = ptrtoint ptr %logical_maximum.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %390, ptr %logical_maximum.i.i, align 4
  %physical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %field.i.i, i32 0, i32 14
  %399 = ptrtoint ptr %physical_maximum.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %392, ptr %physical_maximum.i.i, align 4
  %unit_exponent.i.i = getelementptr inbounds %struct.hid_field, ptr %field.i.i, i32 0, i32 15
  %400 = ptrtoint ptr %unit_exponent.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %396, ptr %unit_exponent.i.i, align 4
  %unit1.i.i = getelementptr inbounds %struct.hid_field, ptr %field.i.i, i32 0, i32 16
  %401 = ptrtoint ptr %unit1.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %394, ptr %unit1.i.i, align 4
  %call.i.i198 = call i32 @hidinput_calc_abs_res(ptr noundef nonnull %field.i.i, i16 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %field.i.i) #17
  %402 = ptrtoint ptr %x_resolution.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %call.i.i198, ptr %x_resolution.i, align 4
  %y_max.i200 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 2
  %403 = ptrtoint ptr %y_max.i200 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %y_max.i200, align 4
  %y_phy.i201 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 15
  %405 = ptrtoint ptr %y_phy.i201 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %y_phy.i201, align 4
  %407 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %unit.i, align 4
  %409 = ptrtoint ptr %unitExpo3.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %unitExpo3.i, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %field.i19.i) #17
  %411 = call ptr @memset(ptr %field.i19.i, i32 0, i32 84)
  %logical_maximum.i20.i = getelementptr inbounds %struct.hid_field, ptr %field.i19.i, i32 0, i32 12
  %412 = ptrtoint ptr %logical_maximum.i20.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %404, ptr %logical_maximum.i20.i, align 4
  %physical_maximum.i21.i = getelementptr inbounds %struct.hid_field, ptr %field.i19.i, i32 0, i32 14
  %413 = ptrtoint ptr %physical_maximum.i21.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %406, ptr %physical_maximum.i21.i, align 4
  %unit_exponent.i22.i = getelementptr inbounds %struct.hid_field, ptr %field.i19.i, i32 0, i32 15
  %414 = ptrtoint ptr %unit_exponent.i22.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %410, ptr %unit_exponent.i22.i, align 4
  %unit1.i23.i = getelementptr inbounds %struct.hid_field, ptr %field.i19.i, i32 0, i32 16
  %415 = ptrtoint ptr %unit1.i23.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %408, ptr %unit1.i23.i, align 4
  %call.i24.i = call i32 @hidinput_calc_abs_res(ptr noundef nonnull %field.i19.i, i16 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %field.i19.i) #17
  %y_resolution.i202 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 7
  %416 = ptrtoint ptr %y_resolution.i202 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %call.i24.i, ptr %y_resolution.i202, align 4
  %cond42 = select i1 %wireless, ptr @.str.88, ptr @.str.89
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %name.i) #17
  %417 = call ptr @memset(ptr %name.i, i32 255, i32 44)
  %418 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %419)
  %cmp.i205 = icmp eq i32 %419, 53
  br i1 %cmp.i205, label %land.lhs.true.i, label %wacom_calculate_res.exit.if.else54.i_crit_edge

wacom_calculate_res.exit.if.else54.i_crit_edge:   ; preds = %wacom_calculate_res.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else54.i

land.lhs.true.i:                                  ; preds = %wacom_calculate_res.exit
  %420 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %features2, align 4
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.101, ptr noundef %421) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i206 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i206, label %if.then.i208, label %land.lhs.true.i.if.else54.i_crit_edge

land.lhs.true.i.if.else54.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else54.i

if.then.i208:                                     ; preds = %land.lhs.true.i
  %422 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %hdev3, align 8
  %name4.i = getelementptr inbounds %struct.hid_device, ptr %423, i32 0, i32 39
  %ll_driver.i.i.i = getelementptr inbounds %struct.hid_device, ptr %423, i32 0, i32 20
  %424 = ptrtoint ptr %ll_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ll_driver.i.i.i, align 4
  %cmp.i.i.i207 = icmp eq ptr %425, @usb_hid_driver
  br i1 %cmp.i.i.i207, label %if.then7.i, label %if.then.i208.if.end.i210_crit_edge

if.then.i208.if.end.i210_crit_edge:               ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i210

if.then7.i:                                       ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %423, i32 0, i32 18, i32 1
  %426 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %parent.i, align 8
  %parent.i.i209 = getelementptr i8, ptr %427, i32 136
  %428 = ptrtoint ptr %parent.i.i209 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %parent.i.i209, align 8
  %product.i = getelementptr i8, ptr %429, i32 1104
  %430 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %product.i, align 8
  br label %if.end.i210

if.end.i210:                                      ; preds = %if.then7.i, %if.then.i208.if.end.i210_crit_edge
  %product_name.0.i = phi ptr [ %431, %if.then7.i ], [ %name4.i, %if.then.i208.if.end.i210_crit_edge ]
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %423, i32 0, i32 8
  %432 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %bus.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %433)
  %cmp12.i = icmp eq i16 %433, 24
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i211

if.then14.i:                                      ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #19
  %product18.i = getelementptr inbounds %struct.hid_device, ptr %423, i32 0, i32 11
  %434 = ptrtoint ptr %product18.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %product18.i, align 8
  %call19.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 44, ptr noundef nonnull @.str.102, ptr noundef %421, i32 noundef %435) #17
  br label %if.end34.i

if.else.i211:                                     ; preds = %if.end.i210
  %call20.i = call ptr @strstr(ptr noundef %product_name.0.i, ptr noundef nonnull @.str.103) #17
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %lor.lhs.false.i212, label %if.else.i211.if.then27.i_crit_edge

if.else.i211.if.then27.i_crit_edge:               ; preds = %if.else.i211
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

lor.lhs.false.i212:                               ; preds = %if.else.i211
  %call22.i = call ptr @strstr(ptr noundef %product_name.0.i, ptr noundef nonnull @.str.19) #17
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %lor.lhs.false.i212.if.then27.i_crit_edge

lor.lhs.false.i212.if.then27.i_crit_edge:         ; preds = %lor.lhs.false.i212
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i212
  %call25.i = call ptr @strstr(ptr noundef %product_name.0.i, ptr noundef nonnull @.str.104) #17
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.else30.i, label %lor.lhs.false24.i.if.then27.i_crit_edge

lor.lhs.false24.i.if.then27.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false24.i.if.then27.i_crit_edge, %lor.lhs.false.i212.if.then27.i_crit_edge, %if.else.i211.if.then27.i_crit_edge
  %call29.i = call i32 @strlcpy(ptr noundef nonnull %name.i, ptr noundef %product_name.0.i, i32 noundef 44) #17
  br label %if.end34.i

if.else30.i:                                      ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #19
  %call32.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 44, ptr noundef nonnull @.str.105, ptr noundef %product_name.0.i) #17
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else30.i, %if.then27.i, %if.then14.i
  %call3696.i = call ptr @strstr(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.106) #17
  %cmp3797.i = icmp eq ptr %call3696.i, null
  br i1 %cmp3797.i, label %if.end34.i.while.end.i_crit_edge, label %if.end34.i.cleanup.i_crit_edge

if.end34.i.cleanup.i_crit_edge:                   ; preds = %if.end34.i
  br label %cleanup.i

if.end34.i.while.end.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end34.i.cleanup.i_crit_edge
  %call3698.i = phi ptr [ %call36.i, %cleanup.i.cleanup.i_crit_edge ], [ %call3696.i, %if.end34.i.cleanup.i_crit_edge ]
  %add.ptr41.i = getelementptr i8, ptr %call3698.i, i32 1
  %call42.i = call i32 @strlen(ptr noundef nonnull %call3698.i) #22
  %436 = call ptr @memmove(ptr %call3698.i, ptr %add.ptr41.i, i32 %call42.i)
  %call36.i = call ptr @strstr(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.106) #17
  %cmp37.i = icmp eq ptr %call36.i, null
  br i1 %cmp37.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end34.i.while.end.i_crit_edge
  %call44.i = call i32 @strlen(ptr noundef nonnull %name.i) #22
  %sub.i = add i32 %call44.i, -1
  %arrayidx.i = getelementptr [44 x i8], ptr %name.i, i32 0, i32 %sub.i
  %437 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %438)
  %cmp46.i = icmp eq i8 %438, 32
  br i1 %cmp46.i, label %if.then48.i, label %while.end.i.wacom_update_name.exit_crit_edge

while.end.i.wacom_update_name.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_update_name.exit

if.then48.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %439 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 0, ptr %arrayidx.i, align 1
  br label %wacom_update_name.exit

if.else54.i:                                      ; preds = %land.lhs.true.i.if.else54.i_crit_edge, %wacom_calculate_res.exit.if.else54.i_crit_edge
  %440 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %features2, align 4
  %call57.i = call i32 @strlcpy(ptr noundef nonnull %name.i, ptr noundef %441, i32 noundef 44) #17
  br label %wacom_update_name.exit

wacom_update_name.exit:                           ; preds = %if.else54.i, %if.then48.i, %while.end.i.wacom_update_name.exit_crit_edge
  %call62.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wacom_wac1, i32 noundef 64, ptr noundef nonnull @.str.107, ptr noundef nonnull %name.i, ptr noundef nonnull %cond42) #17
  %call65.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pen_name.i, i32 noundef 64, ptr noundef nonnull @.str.108, ptr noundef nonnull %name.i, ptr noundef nonnull %cond42) #17
  %call68.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %touch_name.i, i32 noundef 64, ptr noundef nonnull @.str.109, ptr noundef nonnull %name.i, ptr noundef nonnull %cond42) #17
  %call71.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pad_name.i, i32 noundef 64, ptr noundef nonnull @.str.110, ptr noundef nonnull %name.i, ptr noundef nonnull %cond42) #17
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %name.i) #17
  %442 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %443)
  %cmp44 = icmp eq i32 %443, 37
  br i1 %cmp44, label %land.lhs.true45, label %wacom_update_name.exit.if.end52_crit_edge

wacom_update_name.exit.if.end52_crit_edge:        ; preds = %wacom_update_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

land.lhs.true45:                                  ; preds = %wacom_update_name.exit
  %444 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %device_type, align 4
  %446 = and i32 %445, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %446)
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %land.lhs.true45.if.end52_crit_edge, label %land.lhs.true45.fail_crit_edge

land.lhs.true45.fail_crit_edge:                   ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

land.lhs.true45.if.end52_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true45.if.end52_crit_edge, %wacom_update_name.exit.if.end52_crit_edge
  %448 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @wacom_udev_list_lock, i32 noundef 0) #17
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end52
  %data.0.in.i.i = phi ptr [ @wacom_udev_list, %if.end52 ], [ %data.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %450 = ptrtoint ptr %data.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %data.0.i.i = load ptr, ptr %data.0.in.i.i, align 4
  %cmp.not.i.i217 = icmp eq ptr %data.0.i.i, @wacom_udev_list
  br i1 %cmp.not.i.i217, label %for.cond8.preheader.i.i, label %for.body.i.i

for.cond8.preheader.i.i:                          ; preds = %for.cond.i.i
  %data.148.i.i = load ptr, ptr @wacom_udev_list, align 4
  %cmp10.not49.i.i = icmp eq ptr %data.148.i.i, @wacom_udev_list
  br i1 %cmp10.not49.i.i, label %for.cond8.preheader.i.i.if.then.i227_crit_edge, label %for.body12.lr.ph.i.i

for.cond8.preheader.i.i.if.then.i227_crit_edge:   ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i227

for.body12.lr.ph.i.i:                             ; preds = %for.cond8.preheader.i.i
  %vendor.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 10
  %product.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 11
  br label %for.body12.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev.i.i218 = getelementptr inbounds %struct.wacom_hdev_data, ptr %data.0.i.i, i32 0, i32 2
  %451 = ptrtoint ptr %dev.i.i218 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dev.i.i218, align 4
  %call.i.i219 = call zeroext i1 @hid_compare_device_paths(ptr noundef %1, ptr noundef %452, i8 noundef zeroext 47) #17
  br i1 %call.i.i219, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %kref.i.i = getelementptr inbounds %struct.wacom_hdev_data, ptr %data.0.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #17
  %453 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #17, !srcloc !329
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %453, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !323

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %454 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %454)
  %.not.i.i.i.i.i.i = icmp sgt i32 %454, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.wacom_get_hdev_data.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !330

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.wacom_get_hdev_data.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_get_hdev_data.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #17
  br label %wacom_get_hdev_data.exit.i

for.body12.i.i:                                   ; preds = %wacom_are_sibling.exit.i.i.for.body12.i.i_crit_edge, %for.body12.lr.ph.i.i
  %data.150.i.i = phi ptr [ %data.148.i.i, %for.body12.lr.ph.i.i ], [ %data.1.i.i, %wacom_are_sibling.exit.i.i.for.body12.i.i_crit_edge ]
  %dev13.i.i = getelementptr inbounds %struct.wacom_hdev_data, ptr %data.150.i.i, i32 0, i32 2
  %455 = ptrtoint ptr %dev13.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dev13.i.i, align 4
  %457 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %driver_data.i.i.i, align 4
  %driver_data.i.i107.i.i.i = getelementptr inbounds %struct.hid_device, ptr %456, i32 0, i32 18, i32 8
  %459 = ptrtoint ptr %driver_data.i.i107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %driver_data.i.i107.i.i.i, align 4
  %oVid5.i.i.i = getelementptr inbounds %struct.wacom, ptr %458, i32 0, i32 2, i32 10, i32 25
  %461 = ptrtoint ptr %oVid5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %oVid5.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %tobool.not.i.i.i220 = icmp eq i32 %462, 0
  br i1 %tobool.not.i.i.i220, label %cond.false.i.i.i, label %for.body12.i.i.cond.end.i.i.i_crit_edge

for.body12.i.i.cond.end.i.i.i_crit_edge:          ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %463 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %vendor.i.i.i, align 4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %for.body12.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %464, %cond.false.i.i.i ], [ %462, %for.body12.i.i.cond.end.i.i.i_crit_edge ]
  %oPid7.i.i.i = getelementptr inbounds %struct.wacom, ptr %458, i32 0, i32 2, i32 10, i32 26
  %465 = ptrtoint ptr %oPid7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %oPid7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %tobool8.not.i.i.i = icmp eq i32 %466, 0
  br i1 %tobool8.not.i.i.i, label %cond.false11.i.i.i, label %cond.end.i.i.i.cond.end12.i.i.i_crit_edge

cond.end.i.i.i.cond.end12.i.i.i_crit_edge:        ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end12.i.i.i

cond.false11.i.i.i:                               ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %467 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %product.i.i.i, align 8
  br label %cond.end12.i.i.i

cond.end12.i.i.i:                                 ; preds = %cond.false11.i.i.i, %cond.end.i.i.i.cond.end12.i.i.i_crit_edge
  %cond13.i.i.i = phi i32 [ %468, %cond.false11.i.i.i ], [ %466, %cond.end.i.i.i.cond.end12.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %462)
  %cmp.not.i.i.i = icmp eq i32 %462, -1
  br i1 %cmp.not.i.i.i, label %cond.end12.i.i.i.if.end.i.i.i222_crit_edge, label %land.lhs.true.i.i.i221

cond.end12.i.i.i.if.end.i.i.i222_crit_edge:       ; preds = %cond.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i222

land.lhs.true.i.i.i221:                           ; preds = %cond.end12.i.i.i
  %vendor15.i.i.i = getelementptr inbounds %struct.hid_device, ptr %456, i32 0, i32 10
  %469 = ptrtoint ptr %vendor15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %vendor15.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %470, i32 %cond.i.i.i)
  %cmp16.not.i.i.i = icmp eq i32 %470, %cond.i.i.i
  br i1 %cmp16.not.i.i.i, label %land.lhs.true.i.i.i221.if.end.i.i.i222_crit_edge, label %land.lhs.true.i.i.i221.wacom_are_sibling.exit.i.i_crit_edge

land.lhs.true.i.i.i221.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i221
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

land.lhs.true.i.i.i221.if.end.i.i.i222_crit_edge: ; preds = %land.lhs.true.i.i.i221
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i222

if.end.i.i.i222:                                  ; preds = %land.lhs.true.i.i.i221.if.end.i.i.i222_crit_edge, %cond.end12.i.i.i.if.end.i.i.i222_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %466)
  %cmp18.not.i.i.i = icmp eq i32 %466, -1
  br i1 %cmp18.not.i.i.i, label %if.end.i.i.i222.if.end23.i.i.i_crit_edge, label %land.lhs.true19.i.i.i

if.end.i.i.i222.if.end23.i.i.i_crit_edge:         ; preds = %if.end.i.i.i222
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i.i.i

land.lhs.true19.i.i.i:                            ; preds = %if.end.i.i.i222
  %product20.i.i.i = getelementptr inbounds %struct.hid_device, ptr %456, i32 0, i32 11
  %471 = ptrtoint ptr %product20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %product20.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %472, i32 %cond13.i.i.i)
  %cmp21.not.i.i.i = icmp eq i32 %472, %cond13.i.i.i
  br i1 %cmp21.not.i.i.i, label %land.lhs.true19.i.i.i.if.end23.i.i.i_crit_edge, label %land.lhs.true19.i.i.i.wacom_are_sibling.exit.i.i_crit_edge

land.lhs.true19.i.i.i.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %land.lhs.true19.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

land.lhs.true19.i.i.i.if.end23.i.i.i_crit_edge:   ; preds = %land.lhs.true19.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %land.lhs.true19.i.i.i.if.end23.i.i.i_crit_edge, %if.end.i.i.i222.if.end23.i.i.i_crit_edge
  %473 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %vendor.i.i.i, align 4
  %vendor25.i.i.i = getelementptr inbounds %struct.hid_device, ptr %456, i32 0, i32 10
  %475 = ptrtoint ptr %vendor25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %vendor25.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %474, i32 %476)
  %cmp26.i.i.i = icmp eq i32 %474, %476
  br i1 %cmp26.i.i.i, label %land.lhs.true27.i.i.i, label %if.end23.i.i.i.if.else.i.i.i223_crit_edge

if.end23.i.i.i.if.else.i.i.i223_crit_edge:        ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i223

land.lhs.true27.i.i.i:                            ; preds = %if.end23.i.i.i
  %477 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %product.i.i.i, align 8
  %product29.i.i.i = getelementptr inbounds %struct.hid_device, ptr %456, i32 0, i32 11
  %479 = ptrtoint ptr %product29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %product29.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %478, i32 %480)
  %cmp30.i.i.i = icmp eq i32 %478, %480
  br i1 %cmp30.i.i.i, label %if.then31.i.i.i, label %land.lhs.true27.i.i.i.if.else.i.i.i223_crit_edge

land.lhs.true27.i.i.i.if.else.i.i.i223_crit_edge: ; preds = %land.lhs.true27.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i223

if.then31.i.i.i:                                  ; preds = %land.lhs.true27.i.i.i
  %call32.i.i.i = call zeroext i1 @hid_compare_device_paths(ptr noundef %1, ptr noundef %456, i8 noundef zeroext 47) #17
  br i1 %call32.i.i.i, label %if.then31.i.i.i.if.end38.i.i.i_crit_edge, label %if.then31.i.i.i.wacom_are_sibling.exit.i.i_crit_edge

if.then31.i.i.i.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

if.then31.i.i.i.if.end38.i.i.i_crit_edge:         ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38.i.i.i

if.else.i.i.i223:                                 ; preds = %land.lhs.true27.i.i.i.if.else.i.i.i223_crit_edge, %if.end23.i.i.i.if.else.i.i.i223_crit_edge
  %call35.i.i.i = call zeroext i1 @hid_compare_device_paths(ptr noundef %1, ptr noundef %456, i8 noundef zeroext 46) #17
  br i1 %call35.i.i.i, label %if.else.i.i.i223.if.end38.i.i.i_crit_edge, label %if.else.i.i.i223.wacom_are_sibling.exit.i.i_crit_edge

if.else.i.i.i223.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %if.else.i.i.i223
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

if.else.i.i.i223.if.end38.i.i.i_crit_edge:        ; preds = %if.else.i.i.i223
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i.i223.if.end38.i.i.i_crit_edge, %if.then31.i.i.i.if.end38.i.i.i_crit_edge
  %type.i.i.i224 = getelementptr inbounds %struct.wacom, ptr %458, i32 0, i32 2, i32 10, i32 5
  %481 = ptrtoint ptr %type.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %type.i.i.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %482)
  %cmp39.not.i.i.i = icmp eq i32 %482, 53
  br i1 %cmp39.not.i.i.i, label %if.end41.i.i.i, label %if.end38.i.i.i.if.then15.i.i_crit_edge

if.end38.i.i.i.if.then15.i.i_crit_edge:           ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15.i.i

if.end41.i.i.i:                                   ; preds = %if.end38.i.i.i
  %device_type.i.i.i = getelementptr inbounds %struct.wacom, ptr %458, i32 0, i32 2, i32 10, i32 13
  %483 = ptrtoint ptr %device_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %device_type.i.i.i, align 4
  %and.i.i.i225 = and i32 %484, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i225)
  %tobool42.not.i.i.i = icmp eq i32 %and.i.i.i225, 0
  %device_type53.i.i.i = getelementptr inbounds %struct.wacom, ptr %460, i32 0, i32 2, i32 10, i32 13
  %485 = ptrtoint ptr %device_type53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %device_type53.i.i.i, align 4
  %and54.i.i.i = and i32 %486, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i.i)
  %tobool55.not.i.i.i = icmp eq i32 %and54.i.i.i, 0
  br i1 %tobool42.not.i.i.i, label %land.lhs.true52.i.i.i, label %land.lhs.true43.i.i.i

land.lhs.true43.i.i.i:                            ; preds = %if.end41.i.i.i
  br i1 %tobool55.not.i.i.i, label %land.lhs.true43.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, label %land.lhs.true43.i.i.i.if.end57.i.i.i_crit_edge

land.lhs.true43.i.i.i.if.end57.i.i.i_crit_edge:   ; preds = %land.lhs.true43.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57.i.i.i

land.lhs.true43.i.i.i.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %land.lhs.true43.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

land.lhs.true52.i.i.i:                            ; preds = %if.end41.i.i.i
  br i1 %tobool55.not.i.i.i, label %land.lhs.true52.i.i.i.if.end57.i.i.i_crit_edge, label %land.lhs.true52.i.i.i.wacom_are_sibling.exit.i.i_crit_edge

land.lhs.true52.i.i.i.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

land.lhs.true52.i.i.i.if.end57.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %land.lhs.true52.i.i.i.if.end57.i.i.i_crit_edge, %land.lhs.true43.i.i.i.if.end57.i.i.i_crit_edge
  %and59.i.i.i = and i32 %484, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i.i)
  %tobool60.not.i.i.i = icmp ne i32 %and59.i.i.i, 0
  %and63.i.i.i = and i32 %486, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i.i)
  %tobool64.not.i.i.i = icmp eq i32 %and63.i.i.i, 0
  %or.cond.i.i = select i1 %tobool60.not.i.i.i, i1 %tobool64.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end57.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, label %if.end66.i.i.i

if.end57.i.i.i.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

if.end66.i.i.i:                                   ; preds = %if.end57.i.i.i
  %and68.i.i.i = and i32 %484, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i.i)
  %tobool69.not.i.i.i = icmp ne i32 %and68.i.i.i, 0
  %and72.i.i.i = and i32 %486, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i.i.i)
  %tobool73.not.i.i.i = icmp eq i32 %and72.i.i.i, 0
  %or.cond45.i.i = select i1 %tobool69.not.i.i.i, i1 %tobool73.not.i.i.i, i1 false
  br i1 %or.cond45.i.i, label %if.end66.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, label %if.end66.i.i.i.if.then15.i.i_crit_edge

if.end66.i.i.i.if.then15.i.i_crit_edge:           ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15.i.i

if.end66.i.i.i.wacom_are_sibling.exit.i.i_crit_edge: ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_are_sibling.exit.i.i

wacom_are_sibling.exit.i.i:                       ; preds = %if.end66.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, %if.end57.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, %land.lhs.true52.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, %land.lhs.true43.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, %if.else.i.i.i223.wacom_are_sibling.exit.i.i_crit_edge, %if.then31.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, %land.lhs.true19.i.i.i.wacom_are_sibling.exit.i.i_crit_edge, %land.lhs.true.i.i.i221.wacom_are_sibling.exit.i.i_crit_edge
  %487 = ptrtoint ptr %data.150.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %data.1.i.i = load ptr, ptr %data.150.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %data.1.i.i, @wacom_udev_list
  br i1 %cmp10.not.i.i, label %wacom_are_sibling.exit.i.i.if.then.i227_crit_edge, label %wacom_are_sibling.exit.i.i.for.body12.i.i_crit_edge

wacom_are_sibling.exit.i.i.for.body12.i.i_crit_edge: ; preds = %wacom_are_sibling.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body12.i.i

wacom_are_sibling.exit.i.i.if.then.i227_crit_edge: ; preds = %wacom_are_sibling.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i227

if.then15.i.i:                                    ; preds = %if.end66.i.i.i.if.then15.i.i_crit_edge, %if.end38.i.i.i.if.then15.i.i_crit_edge
  %kref16.i.i = getelementptr inbounds %struct.wacom_hdev_data, ptr %data.150.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i35.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref16.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %kref16.i.i, i32 1, i32 3, i32 1) #17
  %488 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref16.i.i, ptr %kref16.i.i, i32 1, ptr elementtype(i32) %kref16.i.i) #17, !srcloc !329
  %asmresult.i.i.i.i.i.i36.i.i = extractvalue { i32, i32, i32 } %488, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i36.i.i)
  %tobool1.not.i.i.i.i37.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i36.i.i, 0
  br i1 %tobool1.not.i.i.i.i37.i.i, label %if.then15.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge, label %if.else.i.i.i.i40.i.i, !prof !323

if.then15.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i42.i.i

if.else.i.i.i.i40.i.i:                            ; preds = %if.then15.i.i
  %add.i.i.i.i38.i.i = add i32 %asmresult.i.i.i.i.i.i36.i.i, 1
  %489 = or i32 %add.i.i.i.i38.i.i, %asmresult.i.i.i.i.i.i36.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %489)
  %.not.i.i.i.i39.i.i = icmp sgt i32 %489, -1
  br i1 %.not.i.i.i.i39.i.i, label %if.else.i.i.i.i40.i.i.wacom_get_hdev_data.exit.i_crit_edge, label %if.else.i.i.i.i40.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge, !prof !330

if.else.i.i.i.i40.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge: ; preds = %if.else.i.i.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i42.i.i

if.else.i.i.i.i40.i.i.wacom_get_hdev_data.exit.i_crit_edge: ; preds = %if.else.i.i.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_get_hdev_data.exit.i

if.end15.sink.split.i.i.i.i42.i.i:                ; preds = %if.else.i.i.i.i40.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge, %if.then15.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge
  %.sink.i.i.i.i41.i.i = phi i32 [ 2, %if.then15.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge ], [ 1, %if.else.i.i.i.i40.i.i.if.end15.sink.split.i.i.i.i42.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref16.i.i, i32 noundef %.sink.i.i.i.i41.i.i) #17
  br label %wacom_get_hdev_data.exit.i

wacom_get_hdev_data.exit.i:                       ; preds = %if.end15.sink.split.i.i.i.i42.i.i, %if.else.i.i.i.i40.i.i.wacom_get_hdev_data.exit.i_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.wacom_get_hdev_data.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %data.0.i.i, %if.else.i.i.i.i.i.i.wacom_get_hdev_data.exit.i_crit_edge ], [ %data.0.i.i, %if.end15.sink.split.i.i.i.i.i.i ], [ %data.150.i.i, %if.else.i.i.i.i40.i.i.wacom_get_hdev_data.exit.i_crit_edge ], [ %data.150.i.i, %if.end15.sink.split.i.i.i.i42.i.i ]
  %tobool.not.i226 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i226, label %wacom_get_hdev_data.exit.i.if.then.i227_crit_edge, label %wacom_get_hdev_data.exit.i.if.end7.i_crit_edge

wacom_get_hdev_data.exit.i.if.end7.i_crit_edge:   ; preds = %wacom_get_hdev_data.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.i

wacom_get_hdev_data.exit.i.if.then.i227_crit_edge: ; preds = %wacom_get_hdev_data.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i227

if.then.i227:                                     ; preds = %wacom_get_hdev_data.exit.i.if.then.i227_crit_edge, %wacom_are_sibling.exit.i.i.if.then.i227_crit_edge, %for.cond8.preheader.i.i.if.then.i227_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %490 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %490, i32 noundef 3520, i32 noundef 44) #23
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i229

if.then6.i:                                       ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #19
  call void @mutex_unlock(ptr noundef nonnull @wacom_udev_list_lock) #17
  br label %fail

if.end.i229:                                      ; preds = %if.then.i227
  %kref.i = getelementptr inbounds %struct.wacom_hdev_data, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #17
  %491 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store volatile i32 1, ptr %kref.i, align 8
  %dev.i = getelementptr inbounds %struct.wacom_hdev_data, ptr %call7.i.i.i, i32 0, i32 2
  %492 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr %1, ptr %dev.i, align 4
  %493 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @wacom_udev_list, i32 0, i32 1), align 4
  %call.i.i.i228 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %493, ptr noundef nonnull @wacom_udev_list) #17
  br i1 %call.i.i.i228, label %if.end.i.i46.i, label %if.end.i229.if.end7.i_crit_edge

if.end.i229.if.end7.i_crit_edge:                  ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7.i

if.end.i.i46.i:                                   ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @wacom_udev_list, i32 0, i32 1), align 4
  %494 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr @wacom_udev_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %495 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %493, ptr %prev3.i.i.i, align 4
  %496 = ptrtoint ptr %493 to i32
  call void @__asan_store4_noabort(i32 %496)
  store volatile ptr %call7.i.i.i, ptr %493, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i.i46.i, %if.end.i229.if.end7.i_crit_edge, %wacom_get_hdev_data.exit.i.if.end7.i_crit_edge
  %data.0.i = phi ptr [ %retval.0.i.i, %wacom_get_hdev_data.exit.i.if.end7.i_crit_edge ], [ %call7.i.i.i, %if.end.i229.if.end7.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i46.i ]
  call void @mutex_unlock(ptr noundef nonnull @wacom_udev_list_lock) #17
  %shared.i = getelementptr inbounds %struct.wacom_hdev_data, ptr %data.0.i, i32 0, i32 3
  %shared8.i = getelementptr inbounds %struct.wacom, ptr %449, i32 0, i32 2, i32 11
  %497 = ptrtoint ptr %shared8.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %shared.i, ptr %shared8.i, align 4
  %call.i47.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @wacom_remove_shared_data, ptr noundef %449) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i.i230 = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i.i230, label %if.end13.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @wacom_remove_shared_data(ptr noundef %449) #17, !callees !331
  br label %fail

if.end13.i:                                       ; preds = %if.end7.i
  %device_type.i231 = getelementptr inbounds %struct.wacom, ptr %449, i32 0, i32 2, i32 10, i32 13
  %498 = ptrtoint ptr %device_type.i231 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %device_type.i231, align 4
  %and.i = and i32 %499, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.else.i232, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %500 = ptrtoint ptr %shared8.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %shared8.i, align 4
  %touch.i = getelementptr inbounds %struct.wacom_shared, ptr %501, i32 0, i32 6
  br label %if.end56.sink.split

if.else.i232:                                     ; preds = %if.end13.i
  %and19.i = and i32 %499, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else.i232.if.end56_crit_edge, label %if.then21.i

if.else.i232.if.end56_crit_edge:                  ; preds = %if.else.i232
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then21.i:                                      ; preds = %if.else.i232
  call void @__sanitizer_cov_trace_pc() #19
  %502 = ptrtoint ptr %shared8.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %shared8.i, align 4
  %pen.i = getelementptr inbounds %struct.wacom_shared, ptr %503, i32 0, i32 5
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %if.then21.i, %if.then15.i
  %pen.i.sink = phi ptr [ %pen.i, %if.then21.i ], [ %touch.i, %if.then15.i ]
  %504 = ptrtoint ptr %pen.i.sink to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr %1, ptr %pen.i.sink, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %if.else.i232.if.end56_crit_edge
  %505 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %device_type, align 4
  %and58 = and i32 %506, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %land.lhs.true60, label %if.end56.if.end68_crit_edge

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

land.lhs.true60:                                  ; preds = %if.end56
  %quirks = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 23
  %507 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %quirks, align 4
  %and61 = and i32 %508, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %land.lhs.true60.if.end68_crit_edge, label %wacom_initialize_battery.exit

land.lhs.true60.if.end68_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

wacom_initialize_battery.exit:                    ; preds = %land.lhs.true60
  %battery.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 13
  %call.i237 = call fastcc i32 @__wacom_initialize_battery(ptr noundef %wacom, ptr noundef %battery.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool65.not = icmp eq i32 %call.i237, 0
  br i1 %tobool65.not, label %wacom_initialize_battery.exit.if.end68_crit_edge, label %wacom_initialize_battery.exit.fail_crit_edge

wacom_initialize_battery.exit.fail_crit_edge:     ; preds = %wacom_initialize_battery.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

wacom_initialize_battery.exit.if.end68_crit_edge: ; preds = %wacom_initialize_battery.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

if.end68:                                         ; preds = %wacom_initialize_battery.exit.if.end68_crit_edge, %land.lhs.true60.if.end68_crit_edge, %if.end56.if.end68_crit_edge
  %509 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %pen_input.i, align 8
  %511 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %touch_input.i, align 4
  %513 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %pad_input.i, align 8
  %tobool.not.i244 = icmp eq ptr %510, null
  %tobool2.not.i = icmp eq ptr %512, null
  %or.cond.i245 = select i1 %tobool.not.i244, i1 true, i1 %tobool2.not.i
  %tobool4.not.i = icmp eq ptr %514, null
  %or.cond68.i = select i1 %or.cond.i245, i1 true, i1 %tobool4.not.i
  br i1 %or.cond68.i, label %if.end68.fail_crit_edge, label %if.end.i248

if.end68.fail_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end.i248:                                      ; preds = %if.end68
  %call.i246 = call i32 @wacom_setup_pen_input_capabilities(ptr noundef nonnull %510, ptr noundef %wacom_wac1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool5.not.i247 = icmp eq i32 %call.i246, 0
  br i1 %tobool5.not.i247, label %if.else.i250, label %if.then6.i249

if.then6.i249:                                    ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #19
  call void @input_free_device(ptr noundef nonnull %510) #17
  %515 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr null, ptr %pen_input.i, align 8
  br label %if.end12.i

if.else.i250:                                     ; preds = %if.end.i248
  %call8.i = call i32 @input_register_device(ptr noundef nonnull %510) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.else.i250.if.end12.i_crit_edge, label %if.else.i250.wacom_register_inputs.exit_crit_edge

if.else.i250.wacom_register_inputs.exit_crit_edge: ; preds = %if.else.i250
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_register_inputs.exit

if.else.i250.if.end12.i_crit_edge:                ; preds = %if.else.i250
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i250.if.end12.i_crit_edge, %if.then6.i249
  %call13.i = call i32 @wacom_setup_touch_input_capabilities(ptr noundef nonnull %512, ptr noundef %wacom_wac1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i251 = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i251, label %if.else17.i, label %if.then15.i252

if.then15.i252:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @input_free_device(ptr noundef nonnull %512) #17
  %516 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store ptr null, ptr %touch_input.i, align 4
  br label %if.end22.i

if.else17.i:                                      ; preds = %if.end12.i
  %call18.i = call i32 @input_register_device(ptr noundef nonnull %512) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.if.end22.i_crit_edge, label %if.else17.i.wacom_register_inputs.exit_crit_edge

if.else17.i.wacom_register_inputs.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_register_inputs.exit

if.else17.i.if.end22.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else17.i.if.end22.i_crit_edge, %if.then15.i252
  %call23.i = call i32 @wacom_setup_pad_input_capabilities(ptr noundef nonnull %514, ptr noundef %wacom_wac1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.else27.i, label %wacom_register_inputs.exit.thread277

wacom_register_inputs.exit.thread277:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @input_free_device(ptr noundef nonnull %514) #17
  %517 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr null, ptr %pad_input.i, align 8
  br label %if.end72

if.else27.i:                                      ; preds = %if.end22.i
  %call28.i = call i32 @input_register_device(ptr noundef nonnull %514) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.else27.i.if.end72_crit_edge, label %if.else27.i.wacom_register_inputs.exit_crit_edge

if.else27.i.wacom_register_inputs.exit_crit_edge: ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_register_inputs.exit

if.else27.i.if.end72_crit_edge:                   ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

wacom_register_inputs.exit:                       ; preds = %if.else27.i.wacom_register_inputs.exit_crit_edge, %if.else17.i.wacom_register_inputs.exit_crit_edge, %if.else.i250.wacom_register_inputs.exit_crit_edge
  %error.0.i = phi i32 [ %call28.i, %if.else27.i.wacom_register_inputs.exit_crit_edge ], [ %call18.i, %if.else17.i.wacom_register_inputs.exit_crit_edge ], [ %call8.i, %if.else.i250.wacom_register_inputs.exit_crit_edge ]
  %518 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store ptr null, ptr %pad_input.i, align 8
  %519 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr null, ptr %touch_input.i, align 4
  %520 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store ptr null, ptr %pen_input.i, align 8
  br label %fail

if.end72:                                         ; preds = %if.else27.i.if.end72_crit_edge, %wacom_register_inputs.exit.thread277
  %521 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %device_type, align 4
  %and76 = and i32 %522, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end72.if.end87_crit_edge, label %if.then78

if.end72.if.end87_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.then78:                                        ; preds = %if.end72
  %call79 = call i32 @wacom_initialize_leds(ptr noundef %wacom)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.then78.fail_crit_edge

if.then78.fail_crit_edge:                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end82:                                         ; preds = %if.then78
  %call83 = call fastcc i32 @wacom_initialize_remotes(ptr noundef %wacom)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.if.end87_crit_edge, label %if.end82.fail_crit_edge

if.end82.fail_crit_edge:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.end87:                                         ; preds = %if.end82.if.end87_crit_edge, %if.end72.if.end87_crit_edge
  %523 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %524)
  %cmp89 = icmp eq i32 %524, 53
  %spec.select = select i1 %cmp89, i32 68, i32 4
  %call93 = call i32 @hid_hw_start(ptr noundef %1, i32 noundef %spec.select) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #20
  br label %fail

if.end100:                                        ; preds = %if.end87
  br i1 %wireless, label %if.end100.if.end103_crit_edge, label %if.then102

if.end100.if.end103_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  %init_work.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %525 = load ptr, ptr @system_wq, align 4
  %call.i.i.i255 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %525, ptr noundef %init_work.i, i32 noundef 100) #17
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end100.if.end103_crit_edge
  %526 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %527)
  %cmp105 = icmp eq i32 %527, 40
  br i1 %cmp105, label %land.lhs.true106, label %if.end103.if.end113_crit_edge

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113

land.lhs.true106:                                 ; preds = %if.end103
  %528 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %device_type, align 4
  %and108 = and i32 %529, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %land.lhs.true106.if.end113_crit_edge, label %if.then110

land.lhs.true106.if.end113_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113

if.then110:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #19
  %init_work = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 8
  %call111 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %init_work) #17
  call fastcc void @_wacom_query_tablet_data(ptr noundef %wacom)
  call void @hid_hw_stop(ptr noundef %1) #17
  br label %fail

if.end113:                                        ; preds = %land.lhs.true106.if.end113_crit_edge, %if.end103.if.end113_crit_edge
  %530 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %device_type, align 4
  %and115 = and i32 %531, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end113.if.end119_crit_edge, label %if.then117

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  %call118 = call i32 @hid_hw_open(ptr noundef %1) #17
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end113.if.end119_crit_edge
  call fastcc void @wacom_set_shared_values(ptr noundef %wacom_wac1)
  call void @devres_close_group(ptr noundef %dev, ptr noundef %wacom) #17
  br label %cleanup

fail:                                             ; preds = %if.then110, %do.end98, %if.end82.fail_crit_edge, %if.then78.fail_crit_edge, %wacom_register_inputs.exit, %if.end68.fail_crit_edge, %wacom_initialize_battery.exit.fail_crit_edge, %devm_add_action_or_reset.exit.i, %if.then6.i, %land.lhs.true45.fail_crit_edge, %if.then30.fail_crit_edge, %if.then13.fail_crit_edge, %lor.lhs.false.i.fail_crit_edge, %wacom_allocate_input.exit92.i.fail_crit_edge
  %error.0 = phi i32 [ -19, %if.then30.fail_crit_edge ], [ %error.0.i, %wacom_register_inputs.exit ], [ %call79, %if.then78.fail_crit_edge ], [ %call83, %if.end82.fail_crit_edge ], [ %call93, %do.end98 ], [ -19, %if.then110 ], [ %call.i237, %wacom_initialize_battery.exit.fail_crit_edge ], [ -19, %if.then13.fail_crit_edge ], [ -19, %land.lhs.true45.fail_crit_edge ], [ -12, %if.then6.i ], [ %call.i47.i, %devm_add_action_or_reset.exit.i ], [ -12, %lor.lhs.false.i.fail_crit_edge ], [ -12, %wacom_allocate_input.exit92.i.fail_crit_edge ], [ -22, %if.end68.fail_crit_edge ]
  %532 = ptrtoint ptr %resources to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %resources, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %533)
  %tobool.not.i256 = icmp eq i8 %533, 0
  br i1 %tobool.not.i256, label %fail.cleanup_crit_edge, label %if.end.i262

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i262:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #19
  %534 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %hdev3, align 8
  %dev.i257 = getelementptr inbounds %struct.hid_device, ptr %535, i32 0, i32 18
  %call.i258 = call i32 @devres_release_group(ptr noundef %dev.i257, ptr noundef %wacom) #17
  %536 = ptrtoint ptr %resources to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 0, ptr %resources, align 4
  %537 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr null, ptr %pen_input.i, align 8
  %538 = ptrtoint ptr %touch_input.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr null, ptr %touch_input.i, align 4
  %539 = ptrtoint ptr %pad_input.i to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr null, ptr %pad_input.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i262, %fail.cleanup_crit_edge, %if.end119, %if.end.cleanup_crit_edge, %wacom_compute_pktlen.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end119 ], [ -22, %wacom_compute_pktlen.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %error.0, %fail.cleanup_crit_edge ], [ %error.0, %if.end.i262 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_devm_kfifo_release(ptr nocapture noundef readnone %dev, ptr noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__kfifo_free(ptr noundef %res) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_wacom_query_tablet_data(ptr nocapture noundef %wacom) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp = icmp eq i16 %3, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %features3 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10
  tail call fastcc void @wacom_bt_query_tablet_data(ptr noundef %1, i8 noundef zeroext 1, ptr noundef %features3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %5)
  %cmp5.not = icmp eq i32 %5, 53
  br i1 %cmp5.not, label %if.end.if.end51_crit_edge, label %if.then7

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.then7:                                         ; preds = %if.end
  %device_type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 13
  %6 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_type, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else37, label %if.then8

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %5)
  %cmp10 = icmp sgt i32 %5, 47
  br i1 %cmp10, label %if.then8.if.end51.sink.split_crit_edge, label %if.else

if.then8.if.end51.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51.sink.split

if.else:                                          ; preds = %if.then8
  %switch.tableidx = add i32 %5, -42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.else37:                                        ; preds = %if.then7
  %and39 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp ne i32 %and39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %5)
  %cmp43 = icmp slt i32 %5, 42
  %or.cond = select i1 %tobool40.not, i1 %cmp43, i1 false
  br i1 %or.cond, label %if.else37.if.end51.sink.split_crit_edge, label %if.else37.if.end51_crit_edge

if.else37.if.end51_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.else37.if.end51.sink.split_crit_edge:          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51.sink.split

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table._wacom_query_tablet_data, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %switch.lookup, %if.else37.if.end51.sink.split_crit_edge, %if.then8.if.end51.sink.split_crit_edge
  %.sink13 = phi i32 [ 3, %if.then8.if.end51.sink.split_crit_edge ], [ 2, %if.else37.if.end51.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %.sink = phi i32 [ 4, %if.then8.if.end51.sink.split_crit_edge ], [ 2, %if.else37.if.end51.sink.split_crit_edge ], [ 2, %switch.lookup ]
  %mode_report17 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 20
  %10 = ptrtoint ptr %mode_report17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink13, ptr %mode_report17, align 4
  %mode_value18 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 21
  %11 = ptrtoint ptr %mode_value18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %mode_value18, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else37.if.end51_crit_edge, %if.else.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %mode_report.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 20
  %12 = ptrtoint ptr %mode_report.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_report.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp slt i32 %13, 0
  br i1 %cmp.i, label %if.end51.wacom_set_device_mode.exit_crit_edge, label %if.end.i

if.end51.wacom_set_device_mode.exit_crit_edge:    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_device_mode.exit

if.end.i:                                         ; preds = %if.end51
  %arrayidx2.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 2, i32 2, i32 %13
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.wacom_set_device_mode.exit_crit_edge, label %if.end4.i

if.end.i.wacom_set_device_mode.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_device_mode.exit

if.end4.i:                                        ; preds = %if.end.i
  %call.i = tail call ptr @hid_alloc_report_buf(ptr noundef nonnull %15, i32 noundef 3264) #17
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.end4.i.wacom_set_device_mode.exit_crit_edge, label %if.end7.i

if.end4.i.wacom_set_device_mode.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_device_mode.exit

if.end7.i:                                        ; preds = %if.end4.i
  %size.i.i = getelementptr inbounds %struct.hid_report, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i, align 4
  %sub.i.i = add i32 %17, 7
  %div3.i.i = lshr i32 %sub.i.i, 3
  %id.i.i = getelementptr inbounds %struct.hid_report, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp ne i32 %19, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add nuw nsw i32 %div3.i.i, %conv.i.i
  %mode_value.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 21
  %arrayidx12.i = getelementptr i8, ptr %call.i, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i.do.body.i_crit_edge, %if.end7.i
  %limit.0.i = phi i32 [ 0, %if.end7.i ], [ %inc.i, %land.lhs.true.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %mode_report.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode_report.i, align 4
  %conv.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %call.i, align 1
  %23 = ptrtoint ptr %mode_value.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode_value.i, align 8
  %conv11.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %call.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %conv.i, ptr noundef nonnull %call.i, i32 noundef %add1.i.i, i8 noundef zeroext 2, i32 noundef 9) #17
  %26 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %call.i.i, label %do.end.i.i [
    i32 -110, label %do.body.i.wacom_set_report.exit.i_crit_edge
    i32 -11, label %do.body.i.wacom_set_report.exit.i_crit_edge23
  ]

do.body.i.wacom_set_report.exit.i_crit_edge23:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit.i

do.body.i.wacom_set_report.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit.i

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i.wacom_set_report.exit.i_crit_edge, label %do.body.i3.preheader.i

do.end.i.i.wacom_set_report.exit.i_crit_edge:     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit.i

do.body.i3.preheader.i:                           ; preds = %do.end.i.i
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call.i, align 1
  %call.i2.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %28, ptr noundef nonnull %call.i, i32 noundef %add1.i.i, i8 noundef zeroext 2, i32 noundef 1) #17
  %29 = zext i32 %call.i2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %call.i2.i, label %do.end.i8.i [
    i32 -110, label %do.body.i3.preheader.i.do.end6.i10.i_crit_edge
    i32 -11, label %do.body.i3.preheader.i.do.end6.i10.i_crit_edge24
  ]

do.body.i3.preheader.i.do.end6.i10.i_crit_edge24: ; preds = %do.body.i3.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i10.i

do.body.i3.preheader.i.do.end6.i10.i_crit_edge:   ; preds = %do.body.i3.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i10.i

wacom_set_report.exit.i:                          ; preds = %do.end.i.i.wacom_set_report.exit.i_crit_edge, %do.body.i.wacom_set_report.exit.i_crit_edge, %do.body.i.wacom_set_report.exit.i_crit_edge23
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %call.i.i) #20
  br label %do.end.i

do.end.i8.i:                                      ; preds = %do.body.i3.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp3.i7.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp3.i7.i, label %do.end.i8.i.do.end6.i10.i_crit_edge, label %land.lhs.true.i

do.end.i8.i.do.end6.i10.i_crit_edge:              ; preds = %do.end.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i10.i

do.end6.i10.i:                                    ; preds = %do.end.i8.i.do.end6.i10.i_crit_edge, %do.body.i3.preheader.i.do.end6.i10.i_crit_edge, %do.body.i3.preheader.i.do.end6.i10.i_crit_edge24
  %dev.i9.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i9.i, ptr noundef nonnull @.str.27, i32 noundef %call.i2.i) #20
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.end.i8.i
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12.i, align 1
  %conv22.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %mode_report.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode_report.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv22.i)
  %cmp24.not.i = icmp ne i32 %33, %conv22.i
  %inc.i = add nuw nsw i32 %limit.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %limit.0.i)
  %cmp26.i = icmp ult i32 %limit.0.i, 5
  %or.cond.i = select i1 %cmp24.not.i, i1 %cmp26.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %do.end6.i10.i, %wacom_set_report.exit.i
  tail call void @kfree(ptr noundef nonnull %call.i) #17
  br label %wacom_set_device_mode.exit

wacom_set_device_mode.exit:                       ; preds = %do.end.i, %if.end4.i.wacom_set_device_mode.exit_crit_edge, %if.end.i.wacom_set_device_mode.exit_crit_edge, %if.end51.wacom_set_device_mode.exit_crit_edge
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %35)
  %cmp54 = icmp eq i32 %35, 53
  br i1 %cmp54, label %if.then56, label %wacom_set_device_mode.exit.cleanup_crit_edge

wacom_set_device_mode.exit.cleanup_crit_edge:     ; preds = %wacom_set_device_mode.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then56:                                        ; preds = %wacom_set_device_mode.exit
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i, align 4
  %hid_data1.i = getelementptr inbounds %struct.wacom, ptr %37, i32 0, i32 2, i32 22
  %38 = ptrtoint ptr %hid_data1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hid_data1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.i1 = icmp slt i16 %39, 0
  br i1 %cmp.i1, label %if.then56.cleanup_crit_edge, label %if.end.i3

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i3:                                        ; preds = %if.then56
  %conv1.i = zext i16 %39 to i32
  %arrayidx4.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 2, i32 2, i32 %conv1.i
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i2 = icmp eq ptr %41, null
  br i1 %tobool.not.i2, label %if.end.i3.cleanup_crit_edge, label %if.then5.i

if.end.i3.cleanup_crit_edge:                      ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #19
  %field.i = getelementptr inbounds %struct.hid_report, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value.i, align 4
  %inputmode_index.i = getelementptr inbounds %struct.wacom, ptr %37, i32 0, i32 2, i32 22, i32 1
  %46 = ptrtoint ptr %inputmode_index.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %inputmode_index.i, align 2
  %idxprom7.i = sext i16 %47 to i32
  %arrayidx8.i = getelementptr i32, ptr %45, i32 %idxprom7.i
  %48 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %arrayidx8.i, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef nonnull %41, i32 noundef 9) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i3.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %wacom_set_device_mode.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wacom_bt_query_tablet_data(ptr noundef %hdev, i8 noundef zeroext %speed, ptr nocapture noundef readonly %features) unnamed_addr #3 align 64 {
entry:
  %rep_data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rep_data) #17
  %2 = getelementptr inbounds [2 x i8], ptr %rep_data, i32 0, i32 1
  %type = getelementptr inbounds %struct.wacom_features, ptr %features, i32 0, i32 5
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 15, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %rep_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %rep_data, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %2, align 1
  %call.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 3, ptr noundef nonnull %rep_data, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %call.i, label %sw.bb.do.end.i_crit_edge [
    i32 -110, label %sw.bb.land.rhs.i_crit_edge
    i32 -11, label %sw.bb.land.rhs.i_crit_edge38
  ]

sw.bb.land.rhs.i_crit_edge38:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

sw.bb.land.rhs.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i:                                       ; preds = %sw.bb.land.rhs.i_crit_edge, %sw.bb.land.rhs.i_crit_edge38
  %9 = ptrtoint ptr %rep_data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rep_data, align 1
  %call.i.1 = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %10, ptr noundef nonnull %rep_data, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %11 = zext i32 %call.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %call.i.1, label %land.rhs.i.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.land.rhs.i.1_crit_edge
    i32 -11, label %land.rhs.i.land.rhs.i.1_crit_edge39
  ]

land.rhs.i.land.rhs.i.1_crit_edge39:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1

land.rhs.i.land.rhs.i.1_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.rhs.i.1:                                     ; preds = %land.rhs.i.land.rhs.i.1_crit_edge, %land.rhs.i.land.rhs.i.1_crit_edge39
  %12 = ptrtoint ptr %rep_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rep_data, align 1
  %call.i.2 = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %13, ptr noundef nonnull %rep_data, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %14 = zext i32 %call.i.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %call.i.2, label %land.rhs.i.1.do.end.i_crit_edge [
    i32 -110, label %land.rhs.i.1.do.end_crit_edge
    i32 -11, label %land.rhs.i.1.do.end_crit_edge40
  ]

land.rhs.i.1.do.end_crit_edge40:                  ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.rhs.i.1.do.end_crit_edge:                    ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.rhs.i.1.do.end.i_crit_edge:                  ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.1.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %sw.bb.do.end.i_crit_edge ], [ %call.i.1, %land.rhs.i.do.end.i_crit_edge ], [ %call.i.2, %land.rhs.i.1.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp3.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp3.i, label %do.end.i.do.end_crit_edge, label %if.then

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %speed)
  %cmp3 = icmp eq i8 %speed, 0
  %conv5 = select i1 %cmp3, i8 5, i8 6
  %15 = ptrtoint ptr %rep_data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv5, ptr %rep_data, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %2, align 1
  %call.i2 = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %conv5, ptr noundef nonnull %rep_data, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %17 = zext i32 %call.i2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %call.i2, label %if.then.do.end.i8_crit_edge [
    i32 -110, label %if.then.land.rhs.i6_crit_edge
    i32 -11, label %if.then.land.rhs.i6_crit_edge41
  ]

if.then.land.rhs.i6_crit_edge41:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i6

if.then.land.rhs.i6_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i6

if.then.do.end.i8_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i8

land.rhs.i6:                                      ; preds = %if.then.land.rhs.i6_crit_edge, %if.then.land.rhs.i6_crit_edge41
  %18 = ptrtoint ptr %rep_data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rep_data, align 1
  %call.i2.1 = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %19, ptr noundef nonnull %rep_data, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %20 = zext i32 %call.i2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %call.i2.1, label %land.rhs.i6.do.end.i8_crit_edge [
    i32 -110, label %land.rhs.i6.land.rhs.i6.1_crit_edge
    i32 -11, label %land.rhs.i6.land.rhs.i6.1_crit_edge42
  ]

land.rhs.i6.land.rhs.i6.1_crit_edge42:            ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i6.1

land.rhs.i6.land.rhs.i6.1_crit_edge:              ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i6.1

land.rhs.i6.do.end.i8_crit_edge:                  ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i8

land.rhs.i6.1:                                    ; preds = %land.rhs.i6.land.rhs.i6.1_crit_edge, %land.rhs.i6.land.rhs.i6.1_crit_edge42
  %21 = ptrtoint ptr %rep_data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rep_data, align 1
  %call.i2.2 = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %22, ptr noundef nonnull %rep_data, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %23 = zext i32 %call.i2.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %call.i2.2, label %land.rhs.i6.1.do.end.i8_crit_edge [
    i32 -110, label %land.rhs.i6.1.do.end_crit_edge
    i32 -11, label %land.rhs.i6.1.do.end_crit_edge43
  ]

land.rhs.i6.1.do.end_crit_edge43:                 ; preds = %land.rhs.i6.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.rhs.i6.1.do.end_crit_edge:                   ; preds = %land.rhs.i6.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.rhs.i6.1.do.end.i8_crit_edge:                ; preds = %land.rhs.i6.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i8

do.end.i8:                                        ; preds = %land.rhs.i6.1.do.end.i8_crit_edge, %land.rhs.i6.do.end.i8_crit_edge, %if.then.do.end.i8_crit_edge
  %call.i2.lcssa = phi i32 [ %call.i2, %if.then.do.end.i8_crit_edge ], [ %call.i2.1, %land.rhs.i6.do.end.i8_crit_edge ], [ %call.i2.2, %land.rhs.i6.1.do.end.i8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.lcssa)
  %cmp3.i7 = icmp slt i32 %call.i2.lcssa, 0
  br i1 %cmp3.i7, label %do.end.i8.do.end_crit_edge, label %if.then12

do.end.i8.do.end_crit_edge:                       ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then12:                                        ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #19
  %bt_high_speed = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 19
  %24 = ptrtoint ptr %bt_high_speed to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %speed, ptr %bt_high_speed, align 1
  br label %cleanup

do.end:                                           ; preds = %do.end.i8.do.end_crit_edge, %land.rhs.i6.1.do.end_crit_edge, %land.rhs.i6.1.do.end_crit_edge43, %do.end.i.do.end_crit_edge, %land.rhs.i.1.do.end_crit_edge, %land.rhs.i.1.do.end_crit_edge40
  %call.i233.sink = phi i32 [ %call.i.lcssa, %do.end.i.do.end_crit_edge ], [ %call.i.2, %land.rhs.i.1.do.end_crit_edge ], [ %call.i.2, %land.rhs.i.1.do.end_crit_edge40 ], [ %call.i2.lcssa, %do.end.i8.do.end_crit_edge ], [ %call.i2.2, %land.rhs.i6.1.do.end_crit_edge ], [ %call.i2.2, %land.rhs.i6.1.do.end_crit_edge43 ]
  %dev.i9 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i9, ptr noundef nonnull @.str.29, i32 noundef %call.i233.sink) #20
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %25 = ptrtoint ptr %rep_data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rep_data, align 1
  %conv15 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %conv15, i32 noundef %call.i233.sink) #20
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %speed)
  %cmp18 = icmp eq i8 %speed, 1
  %bt_features = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 18
  %27 = ptrtoint ptr %bt_features to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bt_features, align 8
  %29 = and i8 %28, -33
  %masksel = select i1 %cmp18, i8 0, i8 32
  %.sink = or i8 %29, %masksel
  store i8 %.sink, ptr %bt_features, align 8
  %30 = ptrtoint ptr %rep_data to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %rep_data, align 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %2, align 1
  %call.i13 = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 3, ptr noundef nonnull %rep_data, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #17
  %32 = zext i32 %call.i13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %call.i13, label %do.end.i19 [
    i32 -110, label %sw.bb16.wacom_set_report.exit22_crit_edge
    i32 -11, label %sw.bb16.wacom_set_report.exit22_crit_edge44
  ]

sw.bb16.wacom_set_report.exit22_crit_edge44:      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit22

sw.bb16.wacom_set_report.exit22_crit_edge:        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit22

do.end.i19:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp3.i18 = icmp slt i32 %call.i13, 0
  br i1 %cmp3.i18, label %do.end.i19.wacom_set_report.exit22_crit_edge, label %if.then37

do.end.i19.wacom_set_report.exit22_crit_edge:     ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_set_report.exit22

wacom_set_report.exit22:                          ; preds = %do.end.i19.wacom_set_report.exit22_crit_edge, %sw.bb16.wacom_set_report.exit22_crit_edge, %sw.bb16.wacom_set_report.exit22_crit_edge44
  %dev.i20 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i20, ptr noundef nonnull @.str.29, i32 noundef %call.i13) #20
  br label %cleanup

if.then37:                                        ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #19
  %bt_high_speed39 = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 19
  %33 = ptrtoint ptr %bt_high_speed39 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %speed, ptr %bt_high_speed39, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %wacom_set_report.exit22, %do.end, %if.then12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rep_data) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wacom_release_resources(ptr noundef %wacom) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %resources = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 14
  %0 = ptrtoint ptr %resources to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %resources, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hdev1 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %call = tail call i32 @devres_release_group(ptr noundef %dev, ptr noundef %wacom) #17
  %4 = ptrtoint ptr %resources to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %resources, align 4
  %pen_input = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 12
  %5 = ptrtoint ptr %pen_input to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pen_input, align 8
  %touch_input = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 13
  %6 = ptrtoint ptr %touch_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %touch_input, align 4
  %pad_input = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 14
  %7 = ptrtoint ptr %pad_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pad_input, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wacom_remote_destroy_one(ptr nocapture noundef readonly %wacom, i32 noundef %index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %remote1 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 9
  %0 = ptrtoint ptr %remote1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote1, align 8
  %serial2 = getelementptr %struct.wacom_remote, ptr %1, i32 0, i32 3, i32 %index, i32 1
  %2 = ptrtoint ptr %serial2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serial2, align 4
  %hdev = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %led = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.wacom_remote, ptr %1, i32 0, i32 3, i32 %i.071
  %serial5 = getelementptr %struct.wacom_remote, ptr %1, i32 0, i32 3, i32 %i.071, i32 1
  %4 = ptrtoint ptr %serial5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %serial5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp6 = icmp eq i32 %5, %3
  br i1 %cmp6, label %do.body7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.body7:                                         ; preds = %for.body
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %registered = getelementptr %struct.wacom_remote, ptr %1, i32 0, i32 3, i32 %i.071, i32 3
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %registered, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call9) #17
  %battery17 = getelementptr %struct.wacom_remote, ptr %1, i32 0, i32 3, i32 %i.071, i32 4, i32 2
  %7 = ptrtoint ptr %battery17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %battery17, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.body7.if.end_crit_edge, label %if.then18

do.body7.if.end_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  %bat_desc = getelementptr %struct.wacom_remote, ptr %1, i32 0, i32 3, i32 %i.071, i32 4, i32 1
  %call22 = tail call i32 @devres_release_group(ptr noundef %dev, ptr noundef %bat_desc) #17
  br label %if.end

if.end:                                           ; preds = %if.then18, %do.body7.if.end_crit_edge
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.end.if.end32_crit_edge, label %if.then26

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 8
  %dev28 = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  %call31 = tail call i32 @devres_release_group(ptr noundef %dev28, ptr noundef %arrayidx4) #17
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end.if.end32_crit_edge
  %15 = ptrtoint ptr %serial5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %serial5, align 4
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx4, align 4
  %17 = ptrtoint ptr %battery17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %battery17, align 4
  %18 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %led, align 4
  %arrayidx44 = getelementptr %struct.wacom_group_leds, ptr %19, i32 %i.071
  %20 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wacom_setup_pad_input_capabilities(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_open(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdev = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %call1 = tail call i32 @hid_hw_open(ptr noundef %3) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_close(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdev = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @hid_hw_close(ptr noundef nonnull %3) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wacom_setup_device_quirks(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wacom_initialize_remotes(ptr noundef %wacom) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2, i32 10, i32 5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %1)
  %cmp.not = icmp eq i32 %1, 46
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 948, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %remote3 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 9
  %4 = ptrtoint ptr %remote3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %remote3, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @wacom_initialize_remotes.__key, i16 noundef signext 3) #17
  %remote_fifo = getelementptr inbounds %struct.wacom_remote, ptr %call.i, i32 0, i32 1
  %call5 = tail call i32 @__kfifo_alloc(ptr noundef %remote_fifo, i32 noundef 200, i32 noundef 1, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 8
  %dev13 = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.114) #20
  br label %cleanup

if.end14:                                         ; preds = %if.end2
  %remotes = getelementptr inbounds %struct.wacom_remote, ptr %call.i, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %remotes, ptr @remote0_serial_group, i32 20)
  %arrayidx16 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 1
  %8 = call ptr @memcpy(ptr %arrayidx16, ptr @remote1_serial_group, i32 20)
  %arrayidx19 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 2
  %9 = call ptr @memcpy(ptr %arrayidx19, ptr @remote2_serial_group, i32 20)
  %arrayidx22 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 3
  %10 = call ptr @memcpy(ptr %arrayidx22, ptr @remote3_serial_group, i32 20)
  %arrayidx25 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 4
  %11 = call ptr @memcpy(ptr %arrayidx25, ptr @remote4_serial_group, i32 20)
  %12 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev, align 8
  %dev28 = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  %call29 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.116, ptr noundef %dev28) #17
  %remote_dir = getelementptr inbounds %struct.wacom_remote, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %remote_dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %remote_dir, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end14.cleanup_crit_edge, label %if.end33

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end33:                                         ; preds = %if.end14
  %call35 = tail call i32 @sysfs_create_files(ptr noundef nonnull %call29, ptr noundef nonnull @remote_unpair_attrs) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.cond.preheader, label %do.end40

for.cond.preheader:                               ; preds = %if.end33
  %led = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 12
  %15 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %led, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 4
  %serial = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %serial, align 4
  %19 = load ptr, ptr %led, align 4
  %arrayidx45.1 = getelementptr %struct.wacom_group_leds, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %arrayidx45.1, align 4
  %serial.1 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %21 = ptrtoint ptr %serial.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %serial.1, align 4
  %22 = load ptr, ptr %led, align 4
  %arrayidx45.2 = getelementptr %struct.wacom_group_leds, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %arrayidx45.2, align 4
  %serial.2 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %24 = ptrtoint ptr %serial.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %serial.2, align 4
  %25 = load ptr, ptr %led, align 4
  %arrayidx45.3 = getelementptr %struct.wacom_group_leds, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %arrayidx45.3, align 4
  %serial.3 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %27 = ptrtoint ptr %serial.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %serial.3, align 4
  %28 = load ptr, ptr %led, align 4
  %arrayidx45.4 = getelementptr %struct.wacom_group_leds, ptr %28, i32 4
  %29 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %arrayidx45.4, align 4
  %serial.4 = getelementptr %struct.wacom_remote, ptr %call.i, i32 0, i32 3, i32 4, i32 1
  %30 = ptrtoint ptr %serial.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %serial.4, align 4
  %31 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hdev, align 8
  %dev49 = getelementptr inbounds %struct.hid_device, ptr %32, i32 0, i32 18
  %call.i84 = tail call i32 @devm_add_action(ptr noundef %dev49, ptr noundef nonnull @wacom_remotes_destroy, ptr noundef %wacom) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i, label %for.cond.preheader.cleanup_crit_edge, label %if.then.i

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev, align 8
  %dev42 = getelementptr inbounds %struct.hid_device, ptr %34, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.16, i32 noundef %call35) #20
  br label %cleanup

if.then.i:                                        ; preds = %for.cond.preheader
  %35 = ptrtoint ptr %remote3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remote3, align 8
  %tobool.not.i85 = icmp eq ptr %36, null
  br i1 %tobool.not.i85, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %remote_dir.i = getelementptr inbounds %struct.wacom_remote, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %remote_dir.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remote_dir.i, align 4
  tail call void @kobject_put(ptr noundef %38) #17
  %remote_fifo.i = getelementptr inbounds %struct.wacom_remote, ptr %36, i32 0, i32 1
  tail call void @__kfifo_free(ptr noundef %remote_fifo.i) #17
  %39 = ptrtoint ptr %remote3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %remote3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i.cleanup_crit_edge, %do.end40, %for.cond.preheader.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end11 ], [ %call35, %do.end40 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ %call.i84, %if.end.i ], [ %call.i84, %if.then.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wacom_set_shared_values(ptr nocapture noundef readonly %wacom_wac) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device_type = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 10, i32 13
  %0 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_type, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %type = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 10, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %shared = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 11
  %4 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared, align 4
  %type2 = getelementptr inbounds %struct.wacom_shared, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %type2, align 4
  %touch_input = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 13
  %7 = ptrtoint ptr %touch_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %touch_input, align 4
  %9 = load ptr, ptr %shared, align 4
  %touch_input4 = getelementptr inbounds %struct.wacom_shared, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %touch_input4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %touch_input4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_mute_touch_switch = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 23
  %11 = ptrtoint ptr %has_mute_touch_switch to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_mute_touch_switch, align 8, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %shared7 = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 11
  %13 = ptrtoint ptr %shared7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shared7, align 4
  %has_mute_touch_switch8 = getelementptr inbounds %struct.wacom_shared, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %has_mute_touch_switch8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %has_mute_touch_switch8, align 4
  %is_soft_touch_switch = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 24
  %16 = ptrtoint ptr %is_soft_touch_switch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_soft_touch_switch, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.then6.if.end13_crit_edge, label %if.then10

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %shared7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shared7, align 4
  %is_touch_on = getelementptr inbounds %struct.wacom_shared, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %is_touch_on to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %is_touch_on, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %shared14 = getelementptr inbounds %struct.wacom_wac, ptr %wacom_wac, i32 0, i32 11
  %21 = ptrtoint ptr %shared14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shared14, align 4
  %has_mute_touch_switch15 = getelementptr inbounds %struct.wacom_shared, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %has_mute_touch_switch15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_mute_touch_switch15, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  br i1 %tobool16.not, label %if.end13.if.end25_crit_edge, label %land.lhs.true

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end13
  %touch_input18 = getelementptr inbounds %struct.wacom_shared, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %touch_input18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %touch_input18, align 4
  %tobool19.not = icmp eq ptr %26, null
  br i1 %tobool19.not, label %land.lhs.true.if.end25_crit_edge, label %if.then20

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %evbit = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %evbit) #17
  %27 = ptrtoint ptr %shared14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shared14, align 4
  %touch_input24 = getelementptr inbounds %struct.wacom_shared, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %touch_input24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %touch_input24, align 4
  tail call void @input_set_capability(ptr noundef %30, i32 noundef 5, i32 noundef 14) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wacom_equivalent_usage(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wacom_hid_usage_quirk(ptr nocapture noundef readonly %hdev, ptr nocapture noundef %field, ptr nocapture noundef %usage) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usage, align 4
  %call2 = tail call i32 @wacom_equivalent_usage(i32 noundef %3) #17
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1386, i32 %5)
  %cmp = icmp eq i32 %5, 1386
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16896, i32 %7)
  %cmp3 = icmp eq i32 %7, 16896
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %8 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %9)
  %cmp5 = icmp eq i32 %9, -16777216
  br i1 %cmp5, label %if.then, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %10 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %report, align 4
  %id = getelementptr inbounds %struct.hid_report, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %mode_report = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 20
  %14 = ptrtoint ptr %mode_report to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mode_report, align 4
  %mode_value = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 21
  %15 = ptrtoint ptr %mode_value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %mode_value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 10, i32 5
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %17)
  %cmp8 = icmp eq i32 %17, 53
  br i1 %cmp8, label %land.lhs.true9, label %if.end.if.end53thread-pre-split_crit_edge

if.end.if.end53thread-pre-split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true9:                                   ; preds = %if.end
  %18 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851968, i32 %19)
  %cmp11 = icmp eq i32 %19, 851968
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true9.if.end53_crit_edge

land.lhs.true9.if.end53_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %application13 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %20 = ptrtoint ptr %application13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %application13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %21)
  %cmp14 = icmp eq i32 %21, 851970
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true12.if.end53thread-pre-split_crit_edge

land.lhs.true12.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %22 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852000, i32 %23)
  %cmp16 = icmp eq i32 %23, 852000
  br i1 %cmp16, label %if.then17, label %land.lhs.true15.if.end53thread-pre-split_crit_edge

land.lhs.true15.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

if.then17:                                        ; preds = %land.lhs.true15
  %usage_index = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %24 = ptrtoint ptr %usage_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usage_index, align 4
  %sub = add i32 %25, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp18 = icmp sgt i32 %sub, -1
  br i1 %cmp18, label %land.lhs.true19, label %if.then17.if.end53thread-pre-split_crit_edge

if.then17.if.end53thread-pre-split_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true19:                                  ; preds = %if.then17
  %add = add nuw i32 %25, 1
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 4
  %26 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxusage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp20 = icmp ult i32 %add, %27
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true19.if.end53thread-pre-split_crit_edge

land.lhs.true19.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %usage22 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 3
  %28 = ptrtoint ptr %usage22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usage22, align 4
  %arrayidx = getelementptr %struct.hid_usage, ptr %29, i32 %sub
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852034, i32 %31)
  %cmp25 = icmp eq i32 %31, 852034
  br i1 %cmp25, label %land.lhs.true26, label %land.lhs.true21.if.end53thread-pre-split_crit_edge

land.lhs.true21.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %sub28 = add i32 %25, -3
  %arrayidx29 = getelementptr %struct.hid_usage, ptr %29, i32 %sub28
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852036, i32 %33)
  %cmp31 = icmp eq i32 %33, 852036
  br i1 %cmp31, label %land.lhs.true32, label %land.lhs.true26.if.end53thread-pre-split_crit_edge

land.lhs.true26.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %sub34 = add i32 %25, -2
  %arrayidx35 = getelementptr %struct.hid_usage, ptr %29, i32 %sub34
  %34 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852037, i32 %35)
  %cmp37 = icmp eq i32 %35, 852037
  br i1 %cmp37, label %land.lhs.true38, label %land.lhs.true32.if.end53thread-pre-split_crit_edge

land.lhs.true32.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true38:                                  ; preds = %land.lhs.true32
  %sub40 = add i32 %25, -1
  %arrayidx41 = getelementptr %struct.hid_usage, ptr %29, i32 %sub40
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852028, i32 %37)
  %cmp43 = icmp eq i32 %37, 852028
  br i1 %cmp43, label %land.lhs.true44, label %land.lhs.true38.if.end53thread-pre-split_crit_edge

land.lhs.true38.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

land.lhs.true44:                                  ; preds = %land.lhs.true38
  %arrayidx47 = getelementptr %struct.hid_usage, ptr %29, i32 %add
  %38 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852018, i32 %39)
  %cmp49 = icmp eq i32 %39, 852018
  br i1 %cmp49, label %if.end53.thread, label %land.lhs.true44.if.end53thread-pre-split_crit_edge

land.lhs.true44.if.end53thread-pre-split_crit_edge: ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53thread-pre-split

if.end53.thread:                                  ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 852058, ptr %usage, align 4
  br label %if.end104

if.end53thread-pre-split:                         ; preds = %land.lhs.true44.if.end53thread-pre-split_crit_edge, %land.lhs.true38.if.end53thread-pre-split_crit_edge, %land.lhs.true32.if.end53thread-pre-split_crit_edge, %land.lhs.true26.if.end53thread-pre-split_crit_edge, %land.lhs.true21.if.end53thread-pre-split_crit_edge, %land.lhs.true19.if.end53thread-pre-split_crit_edge, %if.then17.if.end53thread-pre-split_crit_edge, %land.lhs.true15.if.end53thread-pre-split_crit_edge, %land.lhs.true12.if.end53thread-pre-split_crit_edge, %if.end.if.end53thread-pre-split_crit_edge
  %41 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %usage, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53thread-pre-split, %land.lhs.true9.if.end53_crit_edge
  %42 = phi i32 [ %.pr, %if.end53thread-pre-split ], [ %19, %land.lhs.true9.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777125, i32 %42)
  %cmp55 = icmp eq i32 %42, -16777125
  br i1 %cmp55, label %land.lhs.true56, label %if.end53.if.end104_crit_edge

if.end53.if.end104_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true56:                                  ; preds = %if.end53
  %report_size = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 7
  %43 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp57 = icmp eq i32 %44, 16
  br i1 %cmp57, label %land.lhs.true58, label %land.lhs.true56.if.end104_crit_edge

land.lhs.true56.if.end104_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true58:                                  ; preds = %land.lhs.true56
  %index = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 18
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  %add59 = add i32 %46, 2
  %report60 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %47 = ptrtoint ptr %report60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %report60, align 4
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %50)
  %cmp61 = icmp ult i32 %add59, %50
  br i1 %cmp61, label %if.then62, label %land.lhs.true58.if.end104_crit_edge

land.lhs.true58.if.end104_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.then62:                                        ; preds = %land.lhs.true58
  %add66 = add i32 %46, 1
  %arrayidx67 = getelementptr %struct.hid_report, ptr %48, i32 0, i32 5, i32 %add66
  %51 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx67, align 4
  %arrayidx72 = getelementptr %struct.hid_report, ptr %48, i32 0, i32 5, i32 %add59
  %53 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx72, align 4
  %maxusage73 = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %maxusage73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %maxusage73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp74.not = icmp eq i32 %56, 0
  br i1 %cmp74.not, label %if.then62.if.end104_crit_edge, label %land.lhs.true75

if.then62.if.end104_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true75:                                  ; preds = %if.then62
  %usage76 = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %usage76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usage76, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852059, i32 %60)
  %cmp79 = icmp eq i32 %60, 852059
  br i1 %cmp79, label %land.lhs.true80, label %land.lhs.true75.if.end104_crit_edge

land.lhs.true75.if.end104_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true80:                                  ; preds = %land.lhs.true75
  %report_size81 = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 7
  %61 = ptrtoint ptr %report_size81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %report_size81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %62)
  %cmp82 = icmp eq i32 %62, 32
  br i1 %cmp82, label %land.lhs.true83, label %land.lhs.true80.if.end104_crit_edge

land.lhs.true80.if.end104_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %maxusage84 = getelementptr inbounds %struct.hid_field, ptr %54, i32 0, i32 4
  %63 = ptrtoint ptr %maxusage84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %maxusage84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp85.not = icmp eq i32 %64, 0
  br i1 %cmp85.not, label %land.lhs.true83.if.end104_crit_edge, label %land.lhs.true86

land.lhs.true83.if.end104_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true86:                                  ; preds = %land.lhs.true83
  %usage87 = getelementptr inbounds %struct.hid_field, ptr %54, i32 0, i32 3
  %65 = ptrtoint ptr %usage87 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usage87, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %68)
  %cmp90 = icmp eq i32 %68, -16777216
  br i1 %cmp90, label %land.lhs.true91, label %land.lhs.true86.if.end104_crit_edge

land.lhs.true86.if.end104_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true91:                                  ; preds = %land.lhs.true86
  %report_size92 = getelementptr inbounds %struct.hid_field, ptr %54, i32 0, i32 7
  %69 = ptrtoint ptr %report_size92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %report_size92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %70)
  %cmp93 = icmp eq i32 %70, 8
  br i1 %cmp93, label %if.then94, label %land.lhs.true91.if.end104_crit_edge

land.lhs.true91.if.end104_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.then94:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #19
  %quirks = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 10, i32 23
  %71 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %quirks, align 4
  %or = or i32 %72, 4
  store i32 %or, ptr %quirks, align 4
  %73 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -15925129, ptr %usage, align 4
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %74 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -32768, ptr %logical_minimum, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %75 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 32767, ptr %logical_maximum, align 4
  %logical_minimum96 = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 11
  %76 = ptrtoint ptr %logical_minimum96 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -2147483648, ptr %logical_minimum96, align 4
  %logical_maximum97 = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 12
  %77 = ptrtoint ptr %logical_maximum97 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2147483647, ptr %logical_maximum97, align 4
  %78 = ptrtoint ptr %usage87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usage87, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -15925156, ptr %79, align 4
  %logical_minimum101 = getelementptr inbounds %struct.hid_field, ptr %54, i32 0, i32 11
  %81 = ptrtoint ptr %logical_minimum101 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %logical_minimum101, align 4
  %logical_maximum102 = getelementptr inbounds %struct.hid_field, ptr %54, i32 0, i32 12
  %82 = ptrtoint ptr %logical_maximum102 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 255, ptr %logical_maximum102, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then94, %land.lhs.true91.if.end104_crit_edge, %land.lhs.true86.if.end104_crit_edge, %land.lhs.true83.if.end104_crit_edge, %land.lhs.true80.if.end104_crit_edge, %land.lhs.true75.if.end104_crit_edge, %if.then62.if.end104_crit_edge, %land.lhs.true58.if.end104_crit_edge, %land.lhs.true56.if.end104_crit_edge, %if.end53.if.end104_crit_edge, %if.end53.thread
  %83 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1386, i32 %84)
  %cmp106 = icmp eq i32 %84, 1386
  br i1 %cmp106, label %land.lhs.true107, label %if.end104.if.end139_crit_edge

if.end104.if.end139_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end139

land.lhs.true107:                                 ; preds = %if.end104
  %product108 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %85 = ptrtoint ptr %product108 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %product108, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 856, i32 %86)
  %cmp109 = icmp eq i32 %86, 856
  br i1 %cmp109, label %land.lhs.true110, label %land.lhs.true107.if.end139_crit_edge

land.lhs.true107.if.end139_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end139

land.lhs.true110:                                 ; preds = %land.lhs.true107
  %logical = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 1
  %87 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %logical, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 852000, i32 %88)
  %cmp111 = icmp eq i32 %88, 852000
  br i1 %cmp111, label %land.lhs.true110.land.lhs.true135_crit_edge, label %lor.lhs.false

land.lhs.true110.land.lhs.true135_crit_edge:      ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false:                                    ; preds = %land.lhs.true110
  %89 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %field, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %90, label %lor.lhs.false117 [
    i32 852000, label %lor.lhs.false.land.lhs.true135_crit_edge
    i32 851970, label %lor.lhs.false.land.lhs.true135_crit_edge197
  ]

lor.lhs.false.land.lhs.true135_crit_edge197:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false.land.lhs.true135_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false117:                                 ; preds = %lor.lhs.false
  %application118 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %92 = ptrtoint ptr %application118 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %application118, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %93, label %lor.lhs.false117.if.end139_crit_edge [
    i32 851970, label %lor.lhs.false117.land.lhs.true135_crit_edge
    i32 851969, label %lor.lhs.false117.land.lhs.true135_crit_edge198
    i32 -15925246, label %lor.lhs.false117.land.lhs.true135_crit_edge199
    i32 -15925247, label %lor.lhs.false117.land.lhs.true135_crit_edge200
    i32 -16187390, label %lor.lhs.false117.land.lhs.true135_crit_edge201
    i32 -15663102, label %lor.lhs.false117.land.lhs.true135_crit_edge202
  ]

lor.lhs.false117.land.lhs.true135_crit_edge202:   ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false117.land.lhs.true135_crit_edge201:   ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false117.land.lhs.true135_crit_edge200:   ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false117.land.lhs.true135_crit_edge199:   ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false117.land.lhs.true135_crit_edge198:   ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false117.land.lhs.true135_crit_edge:      ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true135

lor.lhs.false117.if.end139_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end139

land.lhs.true135:                                 ; preds = %lor.lhs.false117.land.lhs.true135_crit_edge, %lor.lhs.false117.land.lhs.true135_crit_edge198, %lor.lhs.false117.land.lhs.true135_crit_edge199, %lor.lhs.false117.land.lhs.true135_crit_edge200, %lor.lhs.false117.land.lhs.true135_crit_edge201, %lor.lhs.false117.land.lhs.true135_crit_edge202, %lor.lhs.false.land.lhs.true135_crit_edge, %lor.lhs.false.land.lhs.true135_crit_edge197, %land.lhs.true110.land.lhs.true135_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65585, i32 %call2)
  %cmp136 = icmp eq i32 %call2, 65585
  br i1 %cmp136, label %if.then137, label %land.lhs.true135.if.end139_crit_edge

land.lhs.true135.if.end139_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end139

if.then137:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #19
  %logical_maximum138 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %95 = ptrtoint ptr %logical_maximum138 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 43200, ptr %logical_maximum138, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %land.lhs.true135.if.end139_crit_edge, %lor.lhs.false117.if.end139_crit_edge, %land.lhs.true107.if.end139_crit_edge, %if.end104.if.end139_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_report_raw_event(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wacom_wac_usage_mapping(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidinput_calc_abs_res(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_remove_shared_data(ptr nocapture noundef %res) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.wacom, ptr %res, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then:                                          ; preds = %entry
  %touch = getelementptr inbounds %struct.wacom_shared, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touch, align 4
  %hdev = getelementptr inbounds %struct.wacom, ptr %res, i32 0, i32 3
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then.if.end13.sink.split_crit_edge, label %if.else

if.then.if.end13.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then
  %pen = getelementptr inbounds %struct.wacom_shared, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pen, align 4
  %cmp9 = icmp eq ptr %7, %5
  br i1 %cmp9, label %if.else.if.end13.sink.split_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.else.if.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else.if.end13.sink.split_crit_edge, %if.then.if.end13.sink.split_crit_edge
  %pen.sink = phi ptr [ %touch, %if.then.if.end13.sink.split_crit_edge ], [ %pen, %if.else.if.end13.sink.split_crit_edge ]
  %8 = ptrtoint ptr %pen.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pen.sink, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge
  %kref = getelementptr i8, ptr %1, i32 -8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !332
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #17
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #17, !srcloc !333
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !330

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !334
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -16
  tail call void @mutex_lock_nested(ptr noundef nonnull @wacom_udev_list_lock, i32 noundef 0) #17
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i.i) #17
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.wacom_release_shared_data.exit.i_crit_edge

if.then.i.wacom_release_shared_data.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_release_shared_data.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i.i = getelementptr i8, ptr %1, i32 -12
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %wacom_release_shared_data.exit.i

wacom_release_shared_data.exit.i:                 ; preds = %if.end.i.i.i.i, %if.then.i.wacom_release_shared_data.exit.i_crit_edge
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %1, i32 -12
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wacom_udev_list_lock) #17
  tail call void @kfree(ptr noundef %add.ptr.i.i) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %wacom_release_shared_data.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %18 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %shared, align 4
  br label %if.end15

if.end15:                                         ; preds = %kref_put.exit, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_compare_device_paths(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wacom_setup_pen_input_capabilities(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wacom_setup_touch_input_capabilities(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_remotes_destroy(ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %remote1 = getelementptr inbounds %struct.wacom, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %remote1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %remote_dir = getelementptr inbounds %struct.wacom_remote, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remote_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remote_dir, align 4
  tail call void @kobject_put(ptr noundef %3) #17
  %remote_fifo = getelementptr inbounds %struct.wacom_remote, ptr %1, i32 0, i32 1
  tail call void @__kfifo_free(ptr noundef %remote_fifo) #17
  %4 = ptrtoint ptr %remote1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %remote1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_show_remote0_mode(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %kattr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %led.i = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp ult i8 %7, 3
  %conv.i = zext i8 %7 to i32
  %spec.select.i = select i1 %cmp.i, i32 %conv.i, i32 -1
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i) #17
  ret i32 %call4.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_show_remote1_mode(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %kattr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %led.i = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led.i, align 4
  %arrayidx.i = getelementptr %struct.wacom_group_leds, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp ult i8 %7, 3
  %conv.i = zext i8 %7 to i32
  %spec.select.i = select i1 %cmp.i, i32 %conv.i, i32 -1
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i) #17
  ret i32 %call4.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_show_remote2_mode(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %kattr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %led.i = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led.i, align 4
  %arrayidx.i = getelementptr %struct.wacom_group_leds, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp ult i8 %7, 3
  %conv.i = zext i8 %7 to i32
  %spec.select.i = select i1 %cmp.i, i32 %conv.i, i32 -1
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i) #17
  ret i32 %call4.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_show_remote3_mode(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %kattr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %led.i = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led.i, align 4
  %arrayidx.i = getelementptr %struct.wacom_group_leds, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp ult i8 %7, 3
  %conv.i = zext i8 %7 to i32
  %spec.select.i = select i1 %cmp.i, i32 %conv.i, i32 -1
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i) #17
  ret i32 %call4.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_show_remote4_mode(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %kattr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %led.i = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led.i, align 4
  %arrayidx.i = getelementptr %struct.wacom_group_leds, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp ult i8 %7, 3
  %conv.i = zext i8 %7 to i32
  %spec.select.i = select i1 %cmp.i, i32 %conv.i, i32 -1
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i) #17
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_store_unpair_remote(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.121, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2) #23
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %wacom_cmd_unpair_remote.exit.thread, label %if.end.i

wacom_cmd_unpair_remote.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %lock) #17
  br label %37

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %call7.i.i.i, align 8
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %arrayidx2.i, align 1
  %hdev.i = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev.i, align 8
  %call.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext 32, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %9 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %call.i.i, label %if.end.i.do.end.i.i_crit_edge [
    i32 -110, label %if.end.i.land.rhs.i.i_crit_edge
    i32 -11, label %if.end.i.land.rhs.i.i_crit_edge19
  ]

if.end.i.land.rhs.i.i_crit_edge19:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i

if.end.i.do.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge19
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i.i.i, align 8
  %call.i.1.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %11, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %12 = zext i32 %call.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %call.i.1.i, label %land.rhs.i.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.i.land.rhs.i.1.i_crit_edge
    i32 -11, label %land.rhs.i.i.land.rhs.i.1.i_crit_edge20
  ]

land.rhs.i.i.land.rhs.i.1.i_crit_edge20:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i

land.rhs.i.i.land.rhs.i.1.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.1.i

land.rhs.i.i.do.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.1.i:                                   ; preds = %land.rhs.i.i.land.rhs.i.1.i_crit_edge, %land.rhs.i.i.land.rhs.i.1.i_crit_edge20
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i.i.i, align 8
  %call.i.2.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %14, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %15 = zext i32 %call.i.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %call.i.2.i, label %land.rhs.i.1.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge
    i32 -11, label %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge21
  ]

land.rhs.i.1.i.land.rhs.i.2.i_crit_edge21:        ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i

land.rhs.i.1.i.land.rhs.i.2.i_crit_edge:          ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.2.i

land.rhs.i.1.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.2.i:                                   ; preds = %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge, %land.rhs.i.1.i.land.rhs.i.2.i_crit_edge21
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i.i.i, align 8
  %call.i.3.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %17, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %18 = zext i32 %call.i.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %call.i.3.i, label %land.rhs.i.2.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge
    i32 -11, label %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge22
  ]

land.rhs.i.2.i.land.rhs.i.3.i_crit_edge22:        ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i

land.rhs.i.2.i.land.rhs.i.3.i_crit_edge:          ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.3.i

land.rhs.i.2.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.3.i:                                   ; preds = %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge, %land.rhs.i.2.i.land.rhs.i.3.i_crit_edge22
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7.i.i.i, align 8
  %call.i.4.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %20, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %21 = zext i32 %call.i.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %call.i.4.i, label %land.rhs.i.3.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge
    i32 -11, label %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge23
  ]

land.rhs.i.3.i.land.rhs.i.4.i_crit_edge23:        ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i

land.rhs.i.3.i.land.rhs.i.4.i_crit_edge:          ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.4.i

land.rhs.i.3.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.4.i:                                   ; preds = %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge, %land.rhs.i.3.i.land.rhs.i.4.i_crit_edge23
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call7.i.i.i, align 8
  %call.i.5.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %23, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %24 = zext i32 %call.i.5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %call.i.5.i, label %land.rhs.i.4.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge
    i32 -11, label %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge24
  ]

land.rhs.i.4.i.land.rhs.i.5.i_crit_edge24:        ; preds = %land.rhs.i.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i

land.rhs.i.4.i.land.rhs.i.5.i_crit_edge:          ; preds = %land.rhs.i.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.5.i

land.rhs.i.4.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.5.i:                                   ; preds = %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge, %land.rhs.i.4.i.land.rhs.i.5.i_crit_edge24
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call7.i.i.i, align 8
  %call.i.6.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %26, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %27 = zext i32 %call.i.6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %call.i.6.i, label %land.rhs.i.5.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge
    i32 -11, label %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge25
  ]

land.rhs.i.5.i.land.rhs.i.6.i_crit_edge25:        ; preds = %land.rhs.i.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i

land.rhs.i.5.i.land.rhs.i.6.i_crit_edge:          ; preds = %land.rhs.i.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.6.i

land.rhs.i.5.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.6.i:                                   ; preds = %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge, %land.rhs.i.5.i.land.rhs.i.6.i_crit_edge25
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %call7.i.i.i, align 8
  %call.i.7.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %29, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %30 = zext i32 %call.i.7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %call.i.7.i, label %land.rhs.i.6.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge
    i32 -11, label %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge26
  ]

land.rhs.i.6.i.land.rhs.i.7.i_crit_edge26:        ; preds = %land.rhs.i.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i

land.rhs.i.6.i.land.rhs.i.7.i_crit_edge:          ; preds = %land.rhs.i.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.7.i

land.rhs.i.6.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.7.i:                                   ; preds = %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge, %land.rhs.i.6.i.land.rhs.i.7.i_crit_edge26
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call7.i.i.i, align 8
  %call.i.8.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %32, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %33 = zext i32 %call.i.8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %call.i.8.i, label %land.rhs.i.7.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge
    i32 -11, label %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge27
  ]

land.rhs.i.7.i.land.rhs.i.8.i_crit_edge27:        ; preds = %land.rhs.i.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i

land.rhs.i.7.i.land.rhs.i.8.i_crit_edge:          ; preds = %land.rhs.i.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.8.i

land.rhs.i.7.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.rhs.i.8.i:                                   ; preds = %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge, %land.rhs.i.7.i.land.rhs.i.8.i_crit_edge27
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %call7.i.i.i, align 8
  %call.i.9.i = tail call i32 @hid_hw_raw_request(ptr noundef %8, i8 noundef zeroext %35, ptr noundef nonnull %call7.i.i.i, i32 noundef 2, i8 noundef zeroext 1, i32 noundef 9) #17
  %36 = zext i32 %call.i.9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %call.i.9.i, label %land.rhs.i.8.i.do.end.i.i_crit_edge [
    i32 -110, label %land.rhs.i.8.i.do.end6.i.i_crit_edge
    i32 -11, label %land.rhs.i.8.i.do.end6.i.i_crit_edge28
  ]

land.rhs.i.8.i.do.end6.i.i_crit_edge28:           ; preds = %land.rhs.i.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i

land.rhs.i.8.i.do.end6.i.i_crit_edge:             ; preds = %land.rhs.i.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i

land.rhs.i.8.i.do.end.i.i_crit_edge:              ; preds = %land.rhs.i.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.8.i.do.end.i.i_crit_edge, %land.rhs.i.7.i.do.end.i.i_crit_edge, %land.rhs.i.6.i.do.end.i.i_crit_edge, %land.rhs.i.5.i.do.end.i.i_crit_edge, %land.rhs.i.4.i.do.end.i.i_crit_edge, %land.rhs.i.3.i.do.end.i.i_crit_edge, %land.rhs.i.2.i.do.end.i.i_crit_edge, %land.rhs.i.1.i.do.end.i.i_crit_edge, %land.rhs.i.i.do.end.i.i_crit_edge, %if.end.i.do.end.i.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end.i.do.end.i.i_crit_edge ], [ %call.i.1.i, %land.rhs.i.i.do.end.i.i_crit_edge ], [ %call.i.2.i, %land.rhs.i.1.i.do.end.i.i_crit_edge ], [ %call.i.3.i, %land.rhs.i.2.i.do.end.i.i_crit_edge ], [ %call.i.4.i, %land.rhs.i.3.i.do.end.i.i_crit_edge ], [ %call.i.5.i, %land.rhs.i.4.i.do.end.i.i_crit_edge ], [ %call.i.6.i, %land.rhs.i.5.i.do.end.i.i_crit_edge ], [ %call.i.7.i, %land.rhs.i.6.i.do.end.i.i_crit_edge ], [ %call.i.8.i, %land.rhs.i.7.i.do.end.i.i_crit_edge ], [ %call.i.9.i, %land.rhs.i.8.i.do.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i)
  %cmp3.i.i = icmp slt i32 %call.i.lcssa.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i.do.end6.i.i_crit_edge, label %do.end.i.i.wacom_cmd_unpair_remote.exit_crit_edge

do.end.i.i.wacom_cmd_unpair_remote.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %wacom_cmd_unpair_remote.exit

do.end.i.i.do.end6.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i.do.end6.i.i_crit_edge, %land.rhs.i.8.i.do.end6.i.i_crit_edge, %land.rhs.i.8.i.do.end6.i.i_crit_edge28
  %call.i6.i = phi i32 [ %call.i.lcssa.i, %do.end.i.i.do.end6.i.i_crit_edge ], [ %call.i.9.i, %land.rhs.i.8.i.do.end6.i.i_crit_edge ], [ %call.i.9.i, %land.rhs.i.8.i.do.end6.i.i_crit_edge28 ]
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %call.i6.i) #20
  br label %wacom_cmd_unpair_remote.exit

wacom_cmd_unpair_remote.exit:                     ; preds = %do.end6.i.i, %do.end.i.i.wacom_cmd_unpair_remote.exit_crit_edge
  %call.i5.i = phi i32 [ %call.i.lcssa.i, %do.end.i.i.wacom_cmd_unpair_remote.exit_crit_edge ], [ %call.i6.i, %do.end6.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  tail call void @mutex_unlock(ptr noundef %lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %cmp = icmp slt i32 %call.i5.i, 0
  br i1 %cmp, label %wacom_cmd_unpair_remote.exit._crit_edge, label %wacom_cmd_unpair_remote.exit.cleanup_crit_edge

wacom_cmd_unpair_remote.exit.cleanup_crit_edge:   ; preds = %wacom_cmd_unpair_remote.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

wacom_cmd_unpair_remote.exit._crit_edge:          ; preds = %wacom_cmd_unpair_remote.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %37

37:                                               ; preds = %wacom_cmd_unpair_remote.exit._crit_edge, %wacom_cmd_unpair_remote.exit.thread
  %retval.0.i18 = phi i32 [ -12, %wacom_cmd_unpair_remote.exit.thread ], [ %call.i5.i, %wacom_cmd_unpair_remote.exit._crit_edge ]
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hdev3 = getelementptr inbounds %struct.wacom, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %hdev3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdev3, align 8
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.122, ptr noundef %buf) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %37, %wacom_cmd_unpair_remote.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %retval.0.i18, %37 ], [ %count, %wacom_cmd_unpair_remote.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_show_speed(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bt_high_speed = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 19
  %2 = ptrtoint ptr %bt_high_speed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_high_speed, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.125, i32 noundef %conv) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_store_speed(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %new_speed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_speed) #17
  %2 = ptrtoint ptr %new_speed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %new_speed, align 1, !annotation !325
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new_speed) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %new_speed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %new_speed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch = icmp ult i8 %4, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %features = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 2, i32 10
  call fastcc void @wacom_bt_query_tablet_data(ptr noundef %add.ptr, i8 noundef zeroext %4, ptr noundef %features)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_speed) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wacom_wac_irq(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_field_extract(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out_r(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_max_r(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_skip_r(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in_r(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !71, !73, !75, !77, !78, !79, !81, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !120, !122, !123, !125, !127, !129, !131, !133, !135, !137, !138, !140, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !199, !200, !201, !202, !203, !204, !206, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !251, !253, !254, !256, !257, !258, !259, !261, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !289, !291, !293, !295, !296, !297, !298, !300, !301, !303, !305, !306, !307, !308, !310, !311, !312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320}
!llvm.ident = !{!321}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/wacom_sys.c", i32 1593, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wacom_initialize_leds._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wacom_initialize_leds._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @wacom_initialize_leds._entry.5, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/hid/wacom_sys.c", i32 1614, i32 4}
!10 = !{ptr @wacom_initialize_leds._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @wacom_initialize_leds._entry.7, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../drivers/hid/wacom_sys.c", i32 1631, i32 4}
!13 = !{ptr @wacom_initialize_leds._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @wacom_initialize_leds._entry.9, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/hid/wacom_sys.c", i32 1651, i32 4}
!16 = !{ptr @wacom_initialize_leds._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @wacom_initialize_leds._entry.11, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/hid/wacom_sys.c", i32 1665, i32 4}
!19 = !{ptr @wacom_initialize_leds._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @wacom_initialize_leds._entry.13, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/hid/wacom_sys.c", i32 1676, i32 4}
!22 = !{ptr @wacom_initialize_leds._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/wacom_sys.c", i32 1687, i32 3}
!25 = !{ptr @wacom_initialize_leds._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @wacom_initialize_leds._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_wacom__238_2868_wacom_driver_init6, !28, !"__initcall__kmod_wacom__238_2868_wacom_driver_init6", i1 false, i1 false}
!28 = !{!"../drivers/hid/wacom_sys.c", i32 2868, i32 1}
!29 = !{ptr @__exitcall_wacom_driver_exit, !28, !"__exitcall_wacom_driver_exit", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_version239, !31, !"__UNIQUE_ID_version239", i1 false, i1 false}
!31 = !{!"../drivers/hid/wacom_sys.c", i32 2870, i32 1}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__modver_attr, !31, !"__modver_attr", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_author240, !37, !"__UNIQUE_ID_author240", i1 false, i1 false}
!37 = !{!"../drivers/hid/wacom_sys.c", i32 2871, i32 1}
!38 = !{ptr @__UNIQUE_ID_description241, !39, !"__UNIQUE_ID_description241", i1 false, i1 false}
!39 = !{!"../drivers/hid/wacom_sys.c", i32 2872, i32 1}
!40 = !{ptr @__UNIQUE_ID_file242, !41, !"__UNIQUE_ID_file242", i1 false, i1 false}
!41 = !{!"../drivers/hid/wacom_sys.c", i32 2873, i32 1}
!42 = !{ptr @__UNIQUE_ID_license243, !41, !"__UNIQUE_ID_license243", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/wacom_sys.c", i32 1368, i32 10}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/wacom_sys.c", i32 1379, i32 4}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wacom_led_register_one._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @wacom_led_register_one._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/wacom_sys.c", i32 1404, i32 3}
!52 = !{ptr @wacom_led_register_one._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wacom_led_register_one._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/wacom_sys.c", i32 33, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @wacom_get_report._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @wacom_get_report._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/wacom_sys.c", i32 50, i32 3}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @wacom_set_report._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @wacom_set_report._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/wacom_sys.c", i32 1243, i32 11}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/wacom_sys.c", i32 1231, i32 2}
!68 = !{ptr @wacom_devm_sysfs_group_release.__UNIQUE_ID_ddebug237, !67, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/wacom_sys.c", i32 1217, i32 10}
!71 = !{ptr @generic_led_attr_group, !72, !"generic_led_attr_group", i1 false, i1 false}
!72 = !{!"../drivers/hid/wacom_sys.c", i32 1216, i32 37}
!73 = !{ptr @generic_led_attrs, !74, !"generic_led_attrs", i1 false, i1 false}
!74 = !{!"../drivers/hid/wacom_sys.c", i32 1210, i32 26}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hid/wacom_sys.c", i32 1116, i32 1}
!77 = !{ptr @dev_attr_status0_luminance, !76, !"dev_attr_status0_luminance", i1 false, i1 false}
!78 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/wacom_sys.c", i32 1073, i32 1}
!81 = !{ptr @dev_attr_status_led0_select, !80, !"dev_attr_status_led0_select", i1 false, i1 false}
!82 = !{ptr @intuos4_led_attr_group, !83, !"intuos4_led_attr_group", i1 false, i1 false}
!83 = !{!"../drivers/hid/wacom_sys.c", i32 1194, i32 37}
!84 = !{ptr @intuos4_led_attrs, !85, !"intuos4_led_attrs", i1 false, i1 false}
!85 = !{!"../drivers/hid/wacom_sys.c", i32 1178, i32 26}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/wacom_sys.c", i32 1117, i32 1}
!88 = !{ptr @dev_attr_status1_luminance, !87, !"dev_attr_status1_luminance", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/wacom_sys.c", i32 1118, i32 1}
!91 = !{ptr @dev_attr_buttons_luminance, !90, !"dev_attr_buttons_luminance", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/wacom_sys.c", i32 1158, i32 1}
!94 = !{ptr @dev_attr_button0_rawimg, !93, !"dev_attr_button0_rawimg", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/wacom_sys.c", i32 1159, i32 1}
!97 = !{ptr @dev_attr_button1_rawimg, !96, !"dev_attr_button1_rawimg", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/wacom_sys.c", i32 1160, i32 1}
!100 = !{ptr @dev_attr_button2_rawimg, !99, !"dev_attr_button2_rawimg", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/wacom_sys.c", i32 1161, i32 1}
!103 = !{ptr @dev_attr_button3_rawimg, !102, !"dev_attr_button3_rawimg", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/wacom_sys.c", i32 1162, i32 1}
!106 = !{ptr @dev_attr_button4_rawimg, !105, !"dev_attr_button4_rawimg", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/wacom_sys.c", i32 1163, i32 1}
!109 = !{ptr @dev_attr_button5_rawimg, !108, !"dev_attr_button5_rawimg", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/wacom_sys.c", i32 1164, i32 1}
!112 = !{ptr @dev_attr_button6_rawimg, !111, !"dev_attr_button6_rawimg", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hid/wacom_sys.c", i32 1165, i32 1}
!115 = !{ptr @dev_attr_button7_rawimg, !114, !"dev_attr_button7_rawimg", i1 false, i1 false}
!116 = !{ptr @cintiq_led_attr_group, !117, !"cintiq_led_attr_group", i1 false, i1 false}
!117 = !{!"../drivers/hid/wacom_sys.c", i32 1173, i32 37}
!118 = !{ptr @cintiq_led_attrs, !119, !"cintiq_led_attrs", i1 false, i1 false}
!119 = !{!"../drivers/hid/wacom_sys.c", i32 1167, i32 26}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hid/wacom_sys.c", i32 1074, i32 1}
!122 = !{ptr @dev_attr_status_led1_select, !121, !"dev_attr_status_led1_select", i1 false, i1 false}
!123 = !{ptr @intuos5_led_attr_group, !124, !"intuos5_led_attr_group", i1 false, i1 false}
!124 = !{!"../drivers/hid/wacom_sys.c", i32 1205, i32 37}
!125 = !{ptr @intuos5_led_attrs, !126, !"intuos5_led_attrs", i1 false, i1 false}
!126 = !{!"../drivers/hid/wacom_sys.c", i32 1199, i32 26}
!127 = !{ptr @__wacom_initialize_battery.battery_no, !128, !"battery_no", i1 false, i1 false}
!128 = !{!"../drivers/hid/wacom_sys.c", i32 1760, i32 18}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/wacom_sys.c", i32 1778, i32 29}
!131 = !{ptr @wacom_battery_props, !132, !"wacom_battery_props", i1 false, i1 false}
!132 = !{!"../drivers/hid/wacom_sys.c", i32 1708, i32 35}
!133 = !{ptr @wacom_driver, !134, !"wacom_driver", i1 false, i1 false}
!134 = !{!"../drivers/hid/wacom_sys.c", i32 2856, i32 26}
!135 = !{ptr @wacom_probe.__key, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/hid/wacom_sys.c", i32 2778, i32 2}
!137 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @wacom_probe.__key.50, !139, !"__key", i1 false, i1 false}
!139 = !{!"../drivers/hid/wacom_sys.c", i32 2779, i32 2}
!140 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @wacom_probe.__key.52, !139, !"__key", i1 false, i1 false}
!142 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @wacom_probe.__key.54, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/hid/wacom_sys.c", i32 2780, i32 2}
!145 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @wacom_probe.__key.56, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/hid/wacom_sys.c", i32 2781, i32 2}
!148 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @wacom_probe.__key.58, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/hid/wacom_sys.c", i32 2782, i32 2}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @wacom_probe.__key.60, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/hid/wacom_sys.c", i32 2783, i32 2}
!154 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hid/wacom_sys.c", i32 2788, i32 3}
!157 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @wacom_probe._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @wacom_probe._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hid/wacom_sys.c", i32 2799, i32 4}
!162 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @wacom_probe._entry.64, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @wacom_probe._entry_ptr.67, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hid/wacom_sys.c", i32 1283, i32 13}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hid/wacom_sys.c", i32 640, i32 3}
!169 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @wacom_bt_query_tablet_data._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @wacom_bt_query_tablet_data._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hid/wacom_sys.c", i32 2470, i32 3}
!174 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @wacom_wireless_work._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @wacom_wireless_work._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hid/wacom_sys.c", i32 2474, i32 3}
!180 = !{ptr @wacom_wireless_work._entry.74, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @wacom_wireless_work._entry_ptr.76, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/wacom_sys.c", i32 2485, i32 4}
!184 = !{ptr @wacom_wireless_work._entry.77, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @wacom_wireless_work._entry_ptr.79, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hid/wacom_sys.c", i32 2662, i32 3}
!188 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @wacom_remote_work._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @wacom_remote_work._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hid/wacom_sys.c", i32 1898, i32 10}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hid/wacom_sys.c", i32 1906, i32 3}
!195 = !{ptr @wacom_remote_create_attr_group._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @wacom_remote_create_attr_group._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hid/wacom_sys.c", i32 2351, i32 3}
!199 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @wacom_parse_and_register._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @wacom_parse_and_register._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hid/wacom_sys.c", i32 2363, i32 38}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hid/wacom_sys.c", i32 2363, i32 48}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hid/wacom_sys.c", i32 2404, i32 3}
!210 = !{ptr @wacom_parse_and_register._entry.90, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @wacom_parse_and_register._entry_ptr.92, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hid/wacom_sys.c", i32 329, i32 5}
!214 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @wacom_feature_mapping._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @wacom_feature_mapping._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hid/wacom_sys.c", i32 340, i32 4}
!219 = !{ptr @wacom_feature_mapping._entry.95, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @wacom_feature_mapping._entry_ptr.97, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.99, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hid/wacom_sys.c", i32 387, i32 4}
!223 = !{ptr @wacom_feature_mapping._entry.98, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @wacom_feature_mapping._entry_ptr.100, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hid/wacom_sys.c", i32 2214, i32 49}
!227 = !{ptr @.str.102, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hid/wacom_sys.c", i32 2224, i32 33}
!229 = !{ptr @.str.103, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hid/wacom_sys.c", i32 2226, i32 35}
!231 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hid/wacom_sys.c", i32 2228, i32 28}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hid/wacom_sys.c", i32 2231, i32 33}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hid/wacom_sys.c", i32 2236, i32 29}
!237 = !{ptr @.str.107, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hid/wacom_sys.c", i32 2250, i32 53}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hid/wacom_sys.c", i32 2255, i32 3}
!241 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hid/wacom_sys.c", i32 2257, i32 3}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hid/wacom_sys.c", i32 2259, i32 3}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hid/wacom_sys.c", i32 748, i32 8}
!247 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @wacom_udev_list_lock, !246, !"wacom_udev_list_lock", i1 false, i1 false}
!249 = !{ptr @wacom_udev_list, !250, !"wacom_udev_list", i1 false, i1 false}
!250 = !{!"../drivers/hid/wacom_sys.c", i32 747, i32 8}
!251 = !{ptr @wacom_initialize_remotes.__key, !252, !"__key", i1 false, i1 false}
!252 = !{!"../drivers/hid/wacom_sys.c", i32 1999, i32 2}
!253 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.114, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hid/wacom_sys.c", i32 2005, i32 3}
!256 = !{ptr @.str.115, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @wacom_initialize_remotes._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @wacom_initialize_remotes._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.116, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hid/wacom_sys.c", i32 2015, i32 46}
!261 = !{ptr @wacom_initialize_remotes._entry.117, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../drivers/hid/wacom_sys.c", i32 2023, i32 3}
!263 = !{ptr @wacom_initialize_remotes._entry_ptr.118, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @remote0_serial_group, !265, !"remote0_serial_group", i1 false, i1 false}
!265 = !{!"../drivers/hid/wacom_sys.c", i32 1884, i32 1}
!266 = !{ptr @remote0_serial_attrs, !265, !"remote0_serial_attrs", i1 false, i1 false}
!267 = !{ptr @.str.119, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @remote0_mode_attr, !265, !"remote0_mode_attr", i1 false, i1 false}
!269 = !{ptr @remote1_serial_group, !270, !"remote1_serial_group", i1 false, i1 false}
!270 = !{!"../drivers/hid/wacom_sys.c", i32 1885, i32 1}
!271 = !{ptr @remote1_serial_attrs, !270, !"remote1_serial_attrs", i1 false, i1 false}
!272 = !{ptr @remote1_mode_attr, !270, !"remote1_mode_attr", i1 false, i1 false}
!273 = !{ptr @remote2_serial_group, !274, !"remote2_serial_group", i1 false, i1 false}
!274 = !{!"../drivers/hid/wacom_sys.c", i32 1886, i32 1}
!275 = !{ptr @remote2_serial_attrs, !274, !"remote2_serial_attrs", i1 false, i1 false}
!276 = !{ptr @remote2_mode_attr, !274, !"remote2_mode_attr", i1 false, i1 false}
!277 = !{ptr @remote3_serial_group, !278, !"remote3_serial_group", i1 false, i1 false}
!278 = !{!"../drivers/hid/wacom_sys.c", i32 1887, i32 1}
!279 = !{ptr @remote3_serial_attrs, !278, !"remote3_serial_attrs", i1 false, i1 false}
!280 = !{ptr @remote3_mode_attr, !278, !"remote3_mode_attr", i1 false, i1 false}
!281 = !{ptr @remote4_serial_group, !282, !"remote4_serial_group", i1 false, i1 false}
!282 = !{!"../drivers/hid/wacom_sys.c", i32 1888, i32 1}
!283 = !{ptr @remote4_serial_attrs, !282, !"remote4_serial_attrs", i1 false, i1 false}
!284 = !{ptr @remote4_mode_attr, !282, !"remote4_mode_attr", i1 false, i1 false}
!285 = !{ptr @remote_unpair_attrs, !286, !"remote_unpair_attrs", i1 false, i1 false}
!286 = !{!"../drivers/hid/wacom_sys.c", i32 1965, i32 32}
!287 = !{ptr @.str.120, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/hid/wacom_sys.c", i32 1961, i32 19}
!289 = !{ptr @unpair_remote_attr, !290, !"unpair_remote_attr", i1 false, i1 false}
!290 = !{!"../drivers/hid/wacom_sys.c", i32 1960, i32 30}
!291 = !{ptr @.str.121, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hid/wacom_sys.c", i32 1944, i32 20}
!293 = !{ptr @.str.122, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hid/wacom_sys.c", i32 1947, i32 3}
!295 = !{ptr @.str.123, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @wacom_store_unpair_remote._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @wacom_store_unpair_remote._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.124, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hid/wacom_sys.c", i32 1847, i32 8}
!300 = !{ptr @dev_attr_speed, !299, !"dev_attr_speed", i1 false, i1 false}
!301 = !{ptr @.str.125, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/hid/wacom_sys.c", i32 1825, i32 25}
!303 = !{ptr @.str.126, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hid/wacom_sys.c", i32 84, i32 4}
!305 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @wacom_wac_queue_flush._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @wacom_wac_queue_flush._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.128, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hid/wacom_sys.c", i32 64, i32 4}
!310 = !{ptr @.str.129, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @wacom_wac_queue_insert._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @wacom_wac_queue_insert._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 1, !"min_enum_size", i32 4}
!315 = !{i32 8, !"branch-target-enforcement", i32 0}
!316 = !{i32 8, !"sign-return-address", i32 0}
!317 = !{i32 8, !"sign-return-address-all", i32 0}
!318 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!319 = !{i32 7, !"uwtable", i32 1}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!322 = !{i8 0, i8 2}
!323 = !{!"branch_weights", i32 1, i32 2000}
!324 = !{i64 2148818962, i64 2148818967, i64 2148818980, i64 2148819024, i64 2148819058, i64 2148819079}
!325 = !{!"auto-init"}
!326 = !{i64 2148370401}
!327 = !{i64 2148285710, i64 2148285742, i64 2148285771, i64 2148285805, i64 2148285836, i64 2148285859}
!328 = !{i64 2148370630}
!329 = !{i64 2148286520, i64 2148286552, i64 2148286581, i64 2148286615, i64 2148286646, i64 2148286669}
!330 = !{!"branch_weights", i32 2000, i32 1}
!331 = !{ptr @wacom_led_groups_release, ptr @wacom_led_groups_release_one, ptr @wacom_remotes_destroy, ptr @wacom_remove_shared_data}
!332 = !{i64 2148374521}
!333 = !{i64 2148288985, i64 2148289017, i64 2148289046, i64 2148289080, i64 2148289111, i64 2148289134}
!334 = !{i64 2149990273}
