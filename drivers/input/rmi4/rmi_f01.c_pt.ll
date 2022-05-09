; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f01.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f01.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rmi_function = type { %struct.rmi_function_descriptor, ptr, %struct.device, %struct.list_head, i32, [6 x i32], i32, [0 x i32] }
%struct.rmi_function_descriptor = type { i16, i16, i16, i16, i8, i8, i8 }
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
%struct.f01_basic_properties = type { i8, i8, i8, i8, [11 x i8], [11 x i8], i16, i32, i32 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.f01_data = type { %struct.f01_basic_properties, %struct.f01_device_control, i16, i16, i16, i8, i8, i32 }
%struct.f01_device_control = type { i8, i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f01\00", [23 x i8] zeroinitializer }, align 32
@rmi_f01_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 1, ptr @rmi_f01_probe, ptr @rmi_f01_remove, ptr @rmi_f01_config, ptr null, ptr @rmi_f01_attention, ptr @rmi_f01_suspend, ptr @rmi_f01_resume }, [52 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read F01 control: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_f01_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f01.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr = internal global ptr @rmi_f01_probe._entry, section ".printk_index", align 4
@rmi_f01_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 438, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"WARNING: Non-zero sleep mode found. Clearing...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.9 = internal global ptr @rmi_f01_probe._entry.6, section ".printk_index", align 4
@rmi_f01_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write F01 control: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.12 = internal global ptr @rmi_f01_probe._entry.10, section ".printk_index", align 4
@rmi_f01_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read Interrupt Status.\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.15 = internal global ptr @rmi_f01_probe._entry.13, section ".printk_index", align 4
@rmi_f01_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read F01 properties.\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.18 = internal global ptr @rmi_f01_probe._entry.16, section ".printk_index", align 4
@rmi_f01_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 467, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"found RMI device, manufacturer: %s, product: %s, fw id: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.22 = internal global ptr @rmi_f01_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Synaptics\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to configure F01 doze interval register: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.27 = internal global ptr @rmi_f01_probe._entry.25, section ".printk_index", align 4
@rmi_f01_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to read F01 doze interval register: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.30 = internal global ptr @rmi_f01_probe._entry.28, section ".printk_index", align 4
@rmi_f01_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to configure F01 wakeup threshold register: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.33 = internal global ptr @rmi_f01_probe._entry.31, section ".printk_index", align 4
@rmi_f01_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to read F01 wakeup threshold register: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.36 = internal global ptr @rmi_f01_probe._entry.34, section ".printk_index", align 4
@rmi_f01_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to configure F01 doze holdoff register: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.39 = internal global ptr @rmi_f01_probe._entry.37, section ".printk_index", align 4
@rmi_f01_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read F01 doze holdoff register: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.42 = internal global ptr @rmi_f01_probe._entry.40, section ".printk_index", align 4
@rmi_f01_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read device status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.45 = internal global ptr @rmi_f01_probe._entry.43, section ".printk_index", align 4
@rmi_f01_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Device was reset during configuration process, status: %#02x!\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.48 = internal global ptr @rmi_f01_probe._entry.46, section ".printk_index", align 4
@rmi_f01_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rmi_f01_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 574, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create sysfs group: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f01_probe._entry_ptr.51 = internal global ptr @rmi_f01_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"syna,nosleep-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"syna,wakeup-threshold\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"syna,doze-holdoff-ms\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"syna,doze-interval-ms\00", [42 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to read device query registers: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_f01_read_properties\00", [40 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry_ptr = internal global ptr @rmi_f01_read_properties._entry, section ".printk_index", align 4
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"20%02d/%02d/%02d\00", [47 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read query 42 register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry_ptr.61 = internal global ptr @rmi_f01_read_properties._entry.59, section ".printk_index", align 4
@rmi_f01_read_properties._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read DS4 queries length: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry_ptr.64 = internal global ptr @rmi_f01_read_properties._entry.62, section ".printk_index", align 4
@rmi_f01_read_properties._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.57, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read DS4 queries: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry_ptr.67 = internal global ptr @rmi_f01_read_properties._entry.65, section ".printk_index", align 4
@rmi_f01_read_properties._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.57, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read package info: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry_ptr.70 = internal global ptr @rmi_f01_read_properties._entry.68, section ".printk_index", align 4
@rmi_f01_read_properties._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.57, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read product info: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_f01_read_properties._entry_ptr.73 = internal global ptr @rmi_f01_read_properties._entry.71, section ".printk_index", align 4
@rmi_f01_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_manufacturer_id, ptr @dev_attr_date_of_manufacture, ptr @dev_attr_product_id, ptr @dev_attr_firmware_id, ptr @dev_attr_package_id, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_manufacturer_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_manufacturer_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_date_of_manufacture = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_dom_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_product_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_firmware_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_package_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_package_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"manufacturer_id\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"date_of_manufacture\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"firmware_id\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"package_id\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x.%04x\0A\00", [21 x i8] zeroinitializer }, align 32
@rmi_f01_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to write device_control register: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_f01_config\00", [17 x i8] zeroinitializer }, align 32
@rmi_f01_config._entry_ptr = internal global ptr @rmi_f01_config._entry, section ".printk_index", align 4
@rmi_f01_config._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to write doze interval: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rmi_f01_config._entry_ptr.86 = internal global ptr @rmi_f01_config._entry.84, section ".printk_index", align 4
@rmi_f01_config._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.3, i32 614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write wakeup threshold: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rmi_f01_config._entry_ptr.89 = internal global ptr @rmi_f01_config._entry.87, section ".printk_index", align 4
@rmi_f01_config._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write doze holdoff: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f01_config._entry_ptr.92 = internal global ptr @rmi_f01_config._entry.90, section ".printk_index", align 4
@rmi_f01_attention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read device status: %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_f01_attention\00", [46 x i8] zeroinitializer }, align 32
@rmi_f01_attention._entry_ptr = internal global ptr @rmi_f01_attention._entry, section ".printk_index", align 4
@rmi_f01_attention._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 699, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Device in bootloader mode, please update firmware\0A\00", [45 x i8] zeroinitializer }, align 32
@rmi_f01_attention._entry_ptr.97 = internal global ptr @rmi_f01_attention._entry.95, section ".printk_index", align 4
@rmi_f01_attention._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.3, i32 702, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device reset detected.\0A\00", [40 x i8] zeroinitializer }, align 32
@rmi_f01_attention._entry_ptr.100 = internal global ptr @rmi_f01_attention._entry.98, section ".printk_index", align 4
@rmi_f01_attention._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device reset failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rmi_f01_attention._entry_ptr.103 = internal global ptr @rmi_f01_attention._entry.101, section ".printk_index", align 4
@rmi_f01_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 650, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write sleep mode: %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_f01_suspend\00", [16 x i8] zeroinitializer }, align 32
@rmi_f01_suspend._entry_ptr = internal global ptr @rmi_f01_suspend._entry, section ".printk_index", align 4
@rmi_f01_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 676, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to restore normal operation: %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_f01_resume\00", [17 x i8] zeroinitializer }, align 32
@rmi_f01_resume._entry_ptr = internal global ptr @rmi_f01_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 715, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"rmi_f01_handler\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 713, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 415, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 437, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 447, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 454, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 461, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 465, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 484, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 493, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 509, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 518, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 539, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 548, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 558, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 564, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"rmi_f01_attr_group\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 336, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 574, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 349, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 354, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 361, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 368, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 155, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 174, i32 43 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 193, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 205, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 214, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 228, i32 5 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 242, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant [14 x i8] c"rmi_f01_attrs\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 327, i32 26 }
@___asan_gen_.288 = private unnamed_addr constant [25 x i8] c"dev_attr_manufacturer_id\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [29 x i8] c"dev_attr_date_of_manufacture\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [21 x i8] c"dev_attr_firmware_id\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c"dev_attr_package_id\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 274, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 270, i32 35 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 286, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 283, i32 35 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 298, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 310, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 325, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 321, i32 35 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 593, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 602, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 612, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 623, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 692, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 698, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 702, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 705, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 650, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.397 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f01.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 675, i32 3 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @rmi_f01_attention._entry, ptr @rmi_f01_attention._entry.101, ptr @rmi_f01_attention._entry.95, ptr @rmi_f01_attention._entry.98, ptr @rmi_f01_attention._entry_ptr, ptr @rmi_f01_attention._entry_ptr.100, ptr @rmi_f01_attention._entry_ptr.103, ptr @rmi_f01_attention._entry_ptr.97, ptr @rmi_f01_config._entry, ptr @rmi_f01_config._entry.84, ptr @rmi_f01_config._entry.87, ptr @rmi_f01_config._entry.90, ptr @rmi_f01_config._entry_ptr, ptr @rmi_f01_config._entry_ptr.86, ptr @rmi_f01_config._entry_ptr.89, ptr @rmi_f01_config._entry_ptr.92, ptr @rmi_f01_probe._entry, ptr @rmi_f01_probe._entry.10, ptr @rmi_f01_probe._entry.13, ptr @rmi_f01_probe._entry.16, ptr @rmi_f01_probe._entry.19, ptr @rmi_f01_probe._entry.25, ptr @rmi_f01_probe._entry.28, ptr @rmi_f01_probe._entry.31, ptr @rmi_f01_probe._entry.34, ptr @rmi_f01_probe._entry.37, ptr @rmi_f01_probe._entry.40, ptr @rmi_f01_probe._entry.43, ptr @rmi_f01_probe._entry.46, ptr @rmi_f01_probe._entry.49, ptr @rmi_f01_probe._entry.6, ptr @rmi_f01_probe._entry_ptr, ptr @rmi_f01_probe._entry_ptr.12, ptr @rmi_f01_probe._entry_ptr.15, ptr @rmi_f01_probe._entry_ptr.18, ptr @rmi_f01_probe._entry_ptr.22, ptr @rmi_f01_probe._entry_ptr.27, ptr @rmi_f01_probe._entry_ptr.30, ptr @rmi_f01_probe._entry_ptr.33, ptr @rmi_f01_probe._entry_ptr.36, ptr @rmi_f01_probe._entry_ptr.39, ptr @rmi_f01_probe._entry_ptr.42, ptr @rmi_f01_probe._entry_ptr.45, ptr @rmi_f01_probe._entry_ptr.48, ptr @rmi_f01_probe._entry_ptr.51, ptr @rmi_f01_probe._entry_ptr.9, ptr @rmi_f01_read_properties._entry, ptr @rmi_f01_read_properties._entry.59, ptr @rmi_f01_read_properties._entry.62, ptr @rmi_f01_read_properties._entry.65, ptr @rmi_f01_read_properties._entry.68, ptr @rmi_f01_read_properties._entry.71, ptr @rmi_f01_read_properties._entry_ptr, ptr @rmi_f01_read_properties._entry_ptr.61, ptr @rmi_f01_read_properties._entry_ptr.64, ptr @rmi_f01_read_properties._entry_ptr.67, ptr @rmi_f01_read_properties._entry_ptr.70, ptr @rmi_f01_read_properties._entry_ptr.73, ptr @rmi_f01_resume._entry, ptr @rmi_f01_resume._entry_ptr, ptr @rmi_f01_suspend._entry, ptr @rmi_f01_suspend._entry_ptr, ptr @.str, ptr @rmi_f01_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @rmi_f01_attr_group, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @rmi_f01_attrs, ptr @dev_attr_manufacturer_id, ptr @dev_attr_date_of_manufacture, ptr @dev_attr_product_id, ptr @dev_attr_firmware_id, ptr @dev_attr_package_id, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_read_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_read_properties._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_read_properties._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_read_properties._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_read_properties._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_read_properties._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manufacturer_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_date_of_manufacture to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_package_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_config._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_config._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_config._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_attention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_attention._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_attention._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_attention._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f01_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rmi_f01_get_product_ID(ptr nocapture noundef readonly %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %product_id = getelementptr inbounds %struct.f01_basic_properties, ptr %1, i32 0, i32 5
  ret ptr %product_id
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f01_probe(ptr noundef %fn) #2 align 64 {
entry:
  %data.addr.i398 = alloca i8, align 1
  %data.addr.i390 = alloca i8, align 1
  %data.addr.i382 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  %val.i = alloca i32, align 4
  %device_status = alloca i8, align 1
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xport.i, align 8
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %6 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %control_base_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %device_status) #7
  %8 = ptrtoint ptr %device_status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %device_status, align 1, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #7
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %temp, align 1, !annotation !185
  %dev3 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !185
  %power_management.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4
  %call.i = tail call i32 @rmi_of_property_read_u32(ptr noundef %dev3, ptr noundef %power_management.i, ptr noundef nonnull @.str.52, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.rmi_f01_of_probe.exit.thread_crit_edge

if.then.rmi_f01_of_probe.exit.thread_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f01_of_probe.exit.thread

if.end.i:                                         ; preds = %if.then
  %call2.i = call i32 @rmi_of_property_read_u32(ptr noundef %dev3, ptr noundef nonnull %val.i, ptr noundef nonnull @.str.53, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.rmi_f01_of_probe.exit.thread_crit_edge

if.end.i.rmi_f01_of_probe.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f01_of_probe.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %14 to i8
  %wakeup_threshold.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4, i32 1
  %15 = ptrtoint ptr %wakeup_threshold.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %wakeup_threshold.i, align 4
  %call7.i = call i32 @rmi_of_property_read_u32(ptr noundef %dev3, ptr noundef nonnull %val.i, ptr noundef nonnull @.str.54, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.rmi_f01_of_probe.exit.thread_crit_edge

if.end5.i.rmi_f01_of_probe.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f01_of_probe.exit.thread

if.end10.i:                                       ; preds = %if.end5.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %18 = trunc i32 %17 to i8
  %conv11.i = mul i8 %18, 100
  %doze_holdoff.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4, i32 2
  %19 = ptrtoint ptr %doze_holdoff.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11.i, ptr %doze_holdoff.i, align 1
  %call13.i = call i32 @rmi_of_property_read_u32(ptr noundef %dev3, ptr noundef nonnull %val.i, ptr noundef nonnull @.str.55, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %rmi_f01_of_probe.exit, label %if.end10.i.rmi_f01_of_probe.exit.thread_crit_edge

if.end10.i.rmi_f01_of_probe.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f01_of_probe.exit.thread

rmi_f01_of_probe.exit.thread:                     ; preds = %if.end10.i.rmi_f01_of_probe.exit.thread_crit_edge, %if.end5.i.rmi_f01_of_probe.exit.thread_crit_edge, %if.end.i.rmi_f01_of_probe.exit.thread_crit_edge, %if.then.rmi_f01_of_probe.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call13.i, %if.end10.i.rmi_f01_of_probe.exit.thread_crit_edge ], [ %call7.i, %if.end5.i.rmi_f01_of_probe.exit.thread_crit_edge ], [ %call2.i, %if.end.i.rmi_f01_of_probe.exit.thread_crit_edge ], [ %call.i, %if.then.rmi_f01_of_probe.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

rmi_f01_of_probe.exit:                            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %div.i = udiv i32 %21, 10
  %conv17.i = trunc i32 %div.i to i8
  %doze_interval.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4, i32 3
  %22 = ptrtoint ptr %doze_interval.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv17.i, ptr %doze_interval.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end8

if.end8:                                          ; preds = %rmi_f01_of_probe.exit, %entry.if.end8_crit_edge
  %call.i372 = call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 52, i32 noundef 3520) #7
  %tobool11.not = icmp eq ptr %call.i372, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %num_of_irq_regs = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %num_of_irq_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_irq_regs, align 4
  %num_of_irq_regs14 = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 7
  %25 = ptrtoint ptr %num_of_irq_regs14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_of_irq_regs14, align 4
  %26 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %control_base_addr, align 4
  %device_control = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 1
  %28 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_block.i, align 4
  %call.i374 = call i32 %33(ptr noundef %29, i16 noundef zeroext %27, ptr noundef %device_control, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374)
  %tobool18.not = icmp eq i32 %call.i374, 0
  br i1 %tobool18.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.1, i32 noundef %call.i374) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %power_management = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %power_management to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %power_management, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %if.end21.sw.epilog_crit_edge [
    i32 2, label %sw.bb25
    i32 1, label %sw.bb
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %device_control, align 4
  %39 = and i8 %38, -5
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %device_control, align 4
  %42 = or i8 %41, 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb25, %sw.bb
  %.sink = phi i8 [ %42, %sw.bb25 ], [ %39, %sw.bb ]
  %43 = ptrtoint ptr %device_control to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %device_control, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end21.sw.epilog_crit_edge
  %44 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %device_control, align 4
  %46 = and i8 %45, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.not = icmp eq i8 %46, 0
  br i1 %cmp.not, label %sw.epilog.if.end45_crit_edge, label %do.end38

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.7) #10
  %47 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %device_control, align 4
  %49 = and i8 %48, -4
  store i8 %49, ptr %device_control, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.end38, %sw.epilog.if.end45_crit_edge
  %50 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %device_control, align 4
  %52 = or i8 %51, -128
  store i8 %52, ptr %device_control, align 4
  %53 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %control_base_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %55 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %data.addr.i, align 1
  %56 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xport.i, align 8
  %ops.i376 = getelementptr inbounds %struct.rmi_transport_dev, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %ops.i376 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i376, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call.i377 = call i32 %61(ptr noundef %57, i16 noundef zeroext %54, ptr noundef nonnull %data.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i377)
  %tobool56.not = icmp eq i32 %call.i377, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.11, i32 noundef %call.i377) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end45
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 3
  %62 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %data_base_addr, align 2
  %add = add i16 %63, 1
  %64 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xport.i, align 8
  %ops.i379 = getelementptr inbounds %struct.rmi_transport_dev, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %ops.i379 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i379, align 4
  %read_block.i380 = getelementptr inbounds %struct.rmi_transport_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %read_block.i380 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_block.i380, align 4
  %call.i381 = call i32 %69(ptr noundef %65, i16 noundef zeroext %add, ptr noundef nonnull %temp, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381)
  %cmp67 = icmp slt i32 %call.i381, 0
  br i1 %cmp67, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end74:                                         ; preds = %if.end62
  %70 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %fn, align 8
  %call76 = call fastcc i32 @rmi_f01_read_properties(ptr noundef %1, i16 noundef zeroext %71, ptr noundef nonnull %call.i372)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %do.end87

do.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.17) #10
  br label %cleanup

do.end87:                                         ; preds = %if.end74
  %72 = ptrtoint ptr %call.i372 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %call.i372, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp91 = icmp eq i8 %73, 1
  %cond = select i1 %cmp91, ptr @.str.23, ptr @.str.24
  %product_id = getelementptr inbounds %struct.f01_basic_properties, ptr %call.i372, i32 0, i32 5
  %firmware_id = getelementptr inbounds %struct.f01_basic_properties, ptr %call.i372, i32 0, i32 7
  %74 = ptrtoint ptr %firmware_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %firmware_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, ptr noundef %product_id, i32 noundef %75) #10
  %inc = add i16 %7, 1
  %76 = ptrtoint ptr %num_of_irq_regs14 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_of_irq_regs14, align 4
  %78 = trunc i32 %77 to i16
  %conv98 = add i16 %inc, %78
  %has_adjustable_doze = getelementptr inbounds %struct.f01_basic_properties, ptr %call.i372, i32 0, i32 2
  %79 = ptrtoint ptr %has_adjustable_doze to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %has_adjustable_doze, align 2, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool100.not = icmp eq i8 %80, 0
  br i1 %tobool100.not, label %do.end87.if.end166_crit_edge, label %if.then101

do.end87.if.end166_crit_edge:                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.then101:                                       ; preds = %do.end87
  %doze_interval_addr = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 2
  %81 = ptrtoint ptr %doze_interval_addr to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv98, ptr %doze_interval_addr, align 4
  %inc102 = add i16 %conv98, 1
  %doze_interval = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4, i32 3
  %82 = ptrtoint ptr %doze_interval to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %doze_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool104.not = icmp eq i8 %83, 0
  %doze_interval123 = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 1, i32 1
  br i1 %tobool104.not, label %if.else, label %if.then105

if.then105:                                       ; preds = %if.then101
  %84 = ptrtoint ptr %doze_interval123 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %doze_interval123, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i382)
  %85 = ptrtoint ptr %data.addr.i382 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %83, ptr %data.addr.i382, align 1
  %86 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xport.i, align 8
  %ops.i384 = getelementptr inbounds %struct.rmi_transport_dev, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %ops.i384 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i384, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %call.i385 = call i32 %91(ptr noundef %87, i16 noundef zeroext %conv98, ptr noundef nonnull %data.addr.i382, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i382)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %tobool114.not = icmp eq i32 %call.i385, 0
  br i1 %tobool114.not, label %if.then105.if.end132_crit_edge, label %do.end118

if.then105.if.end132_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

do.end118:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.26, i32 noundef %call.i385) #10
  br label %cleanup

if.else:                                          ; preds = %if.then101
  %92 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xport.i, align 8
  %ops.i387 = getelementptr inbounds %struct.rmi_transport_dev, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %ops.i387 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i387, align 4
  %read_block.i388 = getelementptr inbounds %struct.rmi_transport_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %read_block.i388 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read_block.i388, align 4
  %call.i389 = call i32 %97(ptr noundef %93, i16 noundef zeroext %conv98, ptr noundef %doze_interval123, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i389)
  %tobool125.not = icmp eq i32 %call.i389, 0
  br i1 %tobool125.not, label %if.else.if.end132_crit_edge, label %do.end129

if.else.if.end132_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

do.end129:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.29, i32 noundef %call.i389) #10
  br label %cleanup

if.end132:                                        ; preds = %if.else.if.end132_crit_edge, %if.then105.if.end132_crit_edge
  %wakeup_threshold_addr = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 3
  %98 = ptrtoint ptr %wakeup_threshold_addr to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %inc102, ptr %wakeup_threshold_addr, align 2
  %inc133 = add i16 %conv98, 2
  %wakeup_threshold = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4, i32 1
  %99 = ptrtoint ptr %wakeup_threshold to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %wakeup_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool135.not = icmp eq i8 %100, 0
  %wakeup_threshold155 = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 1, i32 2
  br i1 %tobool135.not, label %if.else152, label %if.then136

if.then136:                                       ; preds = %if.end132
  %101 = ptrtoint ptr %wakeup_threshold155 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %wakeup_threshold155, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i390)
  %102 = ptrtoint ptr %data.addr.i390 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %100, ptr %data.addr.i390, align 1
  %103 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %xport.i, align 8
  %ops.i392 = getelementptr inbounds %struct.rmi_transport_dev, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %ops.i392 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i392, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %call.i393 = call i32 %108(ptr noundef %104, i16 noundef zeroext %inc102, ptr noundef nonnull %data.addr.i390, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i390)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i393)
  %tobool145.not = icmp eq i32 %call.i393, 0
  br i1 %tobool145.not, label %if.then136.if.end166_crit_edge, label %do.end149

if.then136.if.end166_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

do.end149:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.32, i32 noundef %call.i393) #10
  br label %cleanup

if.else152:                                       ; preds = %if.end132
  %109 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %xport.i, align 8
  %ops.i395 = getelementptr inbounds %struct.rmi_transport_dev, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %ops.i395 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i395, align 4
  %read_block.i396 = getelementptr inbounds %struct.rmi_transport_ops, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %read_block.i396 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read_block.i396, align 4
  %call.i397 = call i32 %114(ptr noundef %110, i16 noundef zeroext %inc102, ptr noundef %wakeup_threshold155, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397)
  %cmp157 = icmp slt i32 %call.i397, 0
  br i1 %cmp157, label %do.end162, label %if.else152.if.end166_crit_edge

if.else152.if.end166_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

do.end162:                                        ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.35, i32 noundef %call.i397) #10
  br label %cleanup

if.end166:                                        ; preds = %if.else152.if.end166_crit_edge, %if.then136.if.end166_crit_edge, %do.end87.if.end166_crit_edge
  %ctrl_base_addr.0 = phi i16 [ %inc133, %if.then136.if.end166_crit_edge ], [ %inc133, %if.else152.if.end166_crit_edge ], [ %conv98, %do.end87.if.end166_crit_edge ]
  %has_lts = getelementptr inbounds %struct.f01_basic_properties, ptr %call.i372, i32 0, i32 1
  %115 = ptrtoint ptr %has_lts to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %has_lts, align 1, !range !186
  %117 = zext i8 %116 to i16
  %spec.select = add i16 %ctrl_base_addr.0, %117
  %has_adjustable_doze_holdoff = getelementptr inbounds %struct.f01_basic_properties, ptr %call.i372, i32 0, i32 3
  %118 = ptrtoint ptr %has_adjustable_doze_holdoff to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %has_adjustable_doze_holdoff, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool173.not = icmp eq i8 %119, 0
  br i1 %tobool173.not, label %if.end166.if.end207_crit_edge, label %if.then174

if.end166.if.end207_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then174:                                       ; preds = %if.end166
  %doze_holdoff_addr = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 4
  %120 = ptrtoint ptr %doze_holdoff_addr to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %spec.select, ptr %doze_holdoff_addr, align 4
  %doze_holdoff = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 4, i32 2
  %121 = ptrtoint ptr %doze_holdoff to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %doze_holdoff, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool177.not = icmp eq i8 %122, 0
  %doze_holdoff197 = getelementptr inbounds %struct.f01_data, ptr %call.i372, i32 0, i32 1, i32 3
  br i1 %tobool177.not, label %if.else194, label %if.then178

if.then178:                                       ; preds = %if.then174
  %123 = ptrtoint ptr %doze_holdoff197 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %doze_holdoff197, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i398)
  %124 = ptrtoint ptr %data.addr.i398 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %122, ptr %data.addr.i398, align 1
  %125 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xport.i, align 8
  %ops.i400 = getelementptr inbounds %struct.rmi_transport_dev, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %ops.i400 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops.i400, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %call.i401 = call i32 %130(ptr noundef %126, i16 noundef zeroext %spec.select, ptr noundef nonnull %data.addr.i398, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i398)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %tobool187.not = icmp eq i32 %call.i401, 0
  br i1 %tobool187.not, label %if.then178.if.end207_crit_edge, label %do.end191

if.then178.if.end207_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

do.end191:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.38, i32 noundef %call.i401) #10
  br label %cleanup

if.else194:                                       ; preds = %if.then174
  %131 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %xport.i, align 8
  %ops.i403 = getelementptr inbounds %struct.rmi_transport_dev, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %ops.i403 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i403, align 4
  %read_block.i404 = getelementptr inbounds %struct.rmi_transport_ops, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %read_block.i404 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read_block.i404, align 4
  %call.i405 = call i32 %136(ptr noundef %132, i16 noundef zeroext %spec.select, ptr noundef %doze_holdoff197, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i405)
  %tobool199.not = icmp eq i32 %call.i405, 0
  br i1 %tobool199.not, label %if.else194.if.end207_crit_edge, label %do.end203

if.else194.if.end207_crit_edge:                   ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

do.end203:                                        ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.41, i32 noundef %call.i405) #10
  br label %cleanup

if.end207:                                        ; preds = %if.else194.if.end207_crit_edge, %if.then178.if.end207_crit_edge, %if.end166.if.end207_crit_edge
  %137 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %data_base_addr, align 2
  %139 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %xport.i, align 8
  %ops.i407 = getelementptr inbounds %struct.rmi_transport_dev, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %ops.i407 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ops.i407, align 4
  %read_block.i408 = getelementptr inbounds %struct.rmi_transport_ops, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %read_block.i408 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read_block.i408, align 4
  %call.i409 = call i32 %144(ptr noundef %140, i16 noundef zeroext %138, ptr noundef nonnull %device_status, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i409)
  %cmp211 = icmp slt i32 %call.i409, 0
  br i1 %cmp211, label %do.end216, label %if.end218

do.end216:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.44, i32 noundef %call.i409) #10
  br label %cleanup

if.end218:                                        ; preds = %if.end207
  %145 = ptrtoint ptr %device_status to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %device_status, align 1
  %conv219 = zext i8 %146 to i32
  %and220 = and i32 %conv219, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.end229, label %do.end225

do.end225:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  %and228 = and i32 %conv219, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.47, i32 noundef %and228) #10
  br label %cleanup

if.end229:                                        ; preds = %if.end218
  %driver_data.i410 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %147 = ptrtoint ptr %driver_data.i410 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i372, ptr %driver_data.i410, align 4
  %148 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmi_dev1, align 4
  %call233 = call i32 @sysfs_create_group(ptr noundef %149, ptr noundef nonnull @rmi_f01_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end229.cleanup_crit_edge, label %do.end238

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end238:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.50, i32 noundef %call233) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end238, %if.end229.cleanup_crit_edge, %do.end225, %do.end216, %do.end203, %do.end191, %do.end162, %do.end149, %do.end129, %do.end118, %do.end82, %do.end72, %do.end60, %do.end, %if.end8.cleanup_crit_edge, %rmi_f01_of_probe.exit.thread
  %retval.0 = phi i32 [ %call.i374, %do.end ], [ %call.i377, %do.end60 ], [ %call.i381, %do.end72 ], [ %call76, %do.end82 ], [ %call.i385, %do.end118 ], [ %call.i393, %do.end149 ], [ %call.i401, %do.end191 ], [ %call.i409, %do.end216 ], [ -22, %do.end225 ], [ %call.i405, %do.end203 ], [ %call.i397, %do.end162 ], [ %call.i389, %do.end129 ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %do.end238 ], [ 0, %if.end229.cleanup_crit_edge ], [ %retval.0.i.ph, %rmi_f01_of_probe.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %device_status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_f01_remove(ptr nocapture noundef readonly %fn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev, align 4
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @rmi_f01_attr_group) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f01_config(ptr noundef %fn) #2 align 64 {
entry:
  %data.addr.i76 = alloca i8, align 1
  %data.addr.i69 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %4 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %control_base_addr, align 4
  %device_control = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device_control, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %8 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %data.addr.i, align 1
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i = call i32 %14(ptr noundef %10, i16 noundef zeroext %5, ptr noundef nonnull %data.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_adjustable_doze = getelementptr inbounds %struct.f01_basic_properties, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %has_adjustable_doze to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_adjustable_doze, align 2, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not = icmp eq i8 %16, 0
  br i1 %tobool3.not, label %if.end.if.end25_crit_edge, label %if.then4

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then4:                                         ; preds = %if.end
  %17 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmi_dev, align 4
  %doze_interval_addr = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %doze_interval_addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %doze_interval_addr, align 4
  %doze_interval = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %doze_interval to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %doze_interval, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i69)
  %23 = ptrtoint ptr %data.addr.i69 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %data.addr.i69, align 1
  %xport.i70 = getelementptr inbounds %struct.rmi_device, ptr %18, i32 0, i32 3
  %24 = ptrtoint ptr %xport.i70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xport.i70, align 8
  %ops.i71 = getelementptr inbounds %struct.rmi_transport_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops.i71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i71, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i72 = call i32 %29(ptr noundef %25, i16 noundef zeroext %20, ptr noundef nonnull %data.addr.i69, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool8.not = icmp eq i32 %call.i72, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %call.i72) #10
  br label %cleanup

if.end14:                                         ; preds = %if.then4
  %30 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmi_dev, align 4
  %wakeup_threshold_addr = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %wakeup_threshold_addr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %wakeup_threshold_addr, align 2
  %wakeup_threshold = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 1, i32 2
  %xport.i73 = getelementptr inbounds %struct.rmi_device, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %xport.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xport.i73, align 8
  %ops.i74 = getelementptr inbounds %struct.rmi_transport_dev, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ops.i74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i74, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call.i75 = call i32 %39(ptr noundef %35, i16 noundef zeroext %33, ptr noundef %wakeup_threshold, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool18.not = icmp eq i32 %call.i75, 0
  br i1 %tobool18.not, label %if.end14.if.end25_crit_edge, label %do.end22

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %call.i75) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end14.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %has_adjustable_doze_holdoff = getelementptr inbounds %struct.f01_basic_properties, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %has_adjustable_doze_holdoff to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_adjustable_doze_holdoff, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool27.not = icmp eq i8 %41, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.then28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  %42 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmi_dev, align 4
  %doze_holdoff_addr = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %doze_holdoff_addr to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %doze_holdoff_addr, align 4
  %doze_holdoff = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %doze_holdoff to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %doze_holdoff, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i76)
  %48 = ptrtoint ptr %data.addr.i76 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %data.addr.i76, align 1
  %xport.i77 = getelementptr inbounds %struct.rmi_device, ptr %43, i32 0, i32 3
  %49 = ptrtoint ptr %xport.i77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xport.i77, align 8
  %ops.i78 = getelementptr inbounds %struct.rmi_transport_dev, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i78, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call.i79 = call i32 %54(ptr noundef %50, i16 noundef zeroext %45, ptr noundef nonnull %data.addr.i76, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool32.not = icmp eq i32 %call.i79, 0
  br i1 %tobool32.not, label %if.then28.cleanup_crit_edge, label %do.end36

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %call.i79) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.then28.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end22, %do.end12, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i72, %do.end12 ], [ %call.i75, %do.end22 ], [ %call.i79, %do.end36 ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f01_attention(i32 noundef %irq, ptr noundef %ctx) #2 align 64 {
entry:
  %device_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %device_status) #7
  %2 = ptrtoint ptr %device_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %device_status, align 1, !annotation !185
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %ctx, i32 0, i32 3
  %3 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data_base_addr, align 2
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %10(ptr noundef %6, i16 noundef zeroext %4, ptr noundef nonnull %device_status, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %device_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %device_status, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %do.end7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.96) #10
  %14 = ptrtoint ptr %device_status to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %device_status, align 1
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %if.end.if.end9_crit_edge
  %15 = phi i8 [ %.pr, %do.end7 ], [ %12, %if.end.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool12.not = icmp sgt i8 %15, -1
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %do.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.end9
  %dev17 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.99) #10
  %driver = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %reset_handler = getelementptr inbounds %struct.rmi_driver, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %reset_handler to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_handler, align 4
  %call18 = call i32 %19(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end16.cleanup_crit_edge, label %do.end23

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.102, i32 noundef %call18) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %device_status) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f01_suspend(ptr noundef %fn) #2 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %device_control = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_control, align 4
  %old_nosleep = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 6
  %4 = lshr i8 %3, 2
  %.lobit = and i8 %4, 1
  %5 = ptrtoint ptr %old_nosleep to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.lobit, ptr %old_nosleep, align 1
  %6 = and i8 %3, -8
  store i8 %6, ptr %device_control, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %7 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmi_dev, align 4
  %xport = getelementptr inbounds %struct.rmi_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xport, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %15, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %device_may_wakeup.exit.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.else ], [ 3, %device_may_wakeup.exit.if.end_crit_edge ]
  %16 = or i8 %6, %.sink
  %17 = ptrtoint ptr %device_control to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %device_control, align 4
  %18 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmi_dev, align 4
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %20 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %control_base_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %22 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %16, ptr %data.addr.i, align 1
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %19, i32 0, i32 3
  %23 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i = call i32 %28(ptr noundef %24, i16 noundef zeroext %21, ptr noundef nonnull %data.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.104, i32 noundef %call.i) #10
  %29 = ptrtoint ptr %old_nosleep to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %old_nosleep, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  br i1 %tobool30.not, label %do.end.if.end37_crit_edge, label %if.then31

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %device_control, align 4
  %33 = or i8 %32, 4
  store i8 %33, ptr %device_control, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %do.end.if.end37_crit_edge
  %34 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %device_control, align 4
  %36 = and i8 %35, -4
  store i8 %36, ptr %device_control, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f01_resume(ptr noundef %fn) #2 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %old_nosleep = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %old_nosleep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %old_nosleep, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device_control = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_control, align 4
  %6 = or i8 %5, 4
  store i8 %6, ptr %device_control, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device_control2 = getelementptr inbounds %struct.f01_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %device_control2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %device_control2, align 4
  %9 = and i8 %8, -4
  store i8 %9, ptr %device_control2, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %10 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmi_dev, align 4
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %12 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %control_base_addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %14 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %data.addr.i, align 1
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = call i32 %20(ptr noundef %16, i16 noundef zeroext %13, ptr noundef nonnull %data.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.106, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f01_read_properties(ptr noundef %rmi_dev, i16 noundef zeroext %query_base_addr, ptr nocapture noundef writeonly %props) unnamed_addr #2 align 64 {
entry:
  %queries = alloca [21 x i8], align 8
  %ds4_query_len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %queries) #7
  %0 = getelementptr inbounds [21 x i8], ptr %queries, i32 0, i32 1
  %1 = getelementptr inbounds [21 x i8], ptr %queries, i32 0, i32 2
  %2 = call ptr @memset(ptr %queries, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ds4_query_len) #7
  %3 = ptrtoint ptr %ds4_query_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %ds4_query_len, align 1, !annotation !185
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %rmi_dev, i32 0, i32 3
  %4 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %9(ptr noundef %5, i16 noundef zeroext %query_base_addr, ptr noundef nonnull %queries, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.56, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds [21 x i8], ptr %queries, i32 0, i32 11
  %11 = getelementptr inbounds [21 x i8], ptr %queries, i32 0, i32 7
  %12 = getelementptr inbounds [21 x i8], ptr %queries, i32 0, i32 6
  %13 = getelementptr inbounds [21 x i8], ptr %queries, i32 0, i32 5
  %14 = getelementptr inbounds [21 x i8], ptr %queries, i32 0, i32 3
  %add = add i16 %query_base_addr, 17
  %15 = ptrtoint ptr %queries to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %queries, align 8
  %17 = ptrtoint ptr %props to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %props, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 1
  %has_lts = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 1
  %20 = lshr i8 %19, 2
  %.lobit = and i8 %20, 1
  %21 = ptrtoint ptr %has_lts to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.lobit, ptr %has_lts, align 1
  %has_adjustable_doze = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 2
  %22 = lshr i8 %19, 5
  %.lobit208 = and i8 %22, 1
  %23 = ptrtoint ptr %has_adjustable_doze to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.lobit208, ptr %has_adjustable_doze, align 2
  %has_adjustable_doze_holdoff = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 3
  %24 = lshr i8 %19, 6
  %.lobit209 = and i8 %24, 1
  %25 = ptrtoint ptr %has_adjustable_doze_holdoff to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.lobit209, ptr %has_adjustable_doze_holdoff, align 1
  %conv18 = zext i8 %19 to i32
  %and19 = and i32 %conv18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %dom = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 4
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %13, align 1
  %28 = and i8 %27, 31
  %and30 = zext i8 %28 to i32
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %12, align 2
  %31 = and i8 %30, 15
  %and33 = zext i8 %31 to i32
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %11, align 1
  %34 = and i8 %33, 31
  %and36 = zext i8 %34 to i32
  %call37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dom, i32 noundef 11, ptr noundef nonnull @.str.58, i32 noundef %and30, i32 noundef %and33, i32 noundef %and36)
  %product_id = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 5
  %35 = call ptr @memcpy(ptr %product_id, ptr %10, i32 10)
  %arrayidx41 = getelementptr %struct.f01_basic_properties, ptr %props, i32 0, i32 5, i32 10
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx41, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 2
  %39 = and i8 %38, 127
  %and44 = zext i8 %39 to i16
  %shl = shl nuw nsw i16 %and44, 7
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %14, align 1
  %42 = and i8 %41, 127
  %and47 = zext i8 %42 to i16
  %or = or i16 %shl, %and47
  %productinfo = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 6
  %43 = ptrtoint ptr %productinfo to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or, ptr %productinfo, align 2
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.then53

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then53:                                        ; preds = %if.end
  %and24 = and i32 %conv18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.select.v = select i1 %tobool25.not, i16 21, i16 22
  %spec.select = add i16 %spec.select.v, %query_base_addr
  %44 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xport.i, align 8
  %ops.i211 = getelementptr inbounds %struct.rmi_transport_dev, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ops.i211 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i211, align 4
  %read_block.i212 = getelementptr inbounds %struct.rmi_transport_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %read_block.i212 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_block.i212, align 4
  %call.i213 = call i32 %49(ptr noundef %45, i16 noundef zeroext %spec.select, ptr noundef nonnull %queries, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool57.not = icmp eq i32 %call.i213, 0
  br i1 %tobool57.not, label %if.end71, label %do.end61

do.end61:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.60, i32 noundef %call.i213) #10
  br label %cleanup

if.end71:                                         ; preds = %if.then53
  %50 = ptrtoint ptr %queries to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %queries, align 8
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool67.not = icmp eq i8 %52, 0
  br i1 %tobool67.not, label %if.end71.cleanup_crit_edge, label %if.then73

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  %conv74 = add i16 %spec.select, 1
  %53 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xport.i, align 8
  %ops.i215 = getelementptr inbounds %struct.rmi_transport_dev, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %ops.i215 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i215, align 4
  %read_block.i216 = getelementptr inbounds %struct.rmi_transport_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %read_block.i216 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_block.i216, align 4
  %call.i217 = call i32 %58(ptr noundef %54, i16 noundef zeroext %conv74, ptr noundef nonnull %ds4_query_len, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool76.not = icmp eq i32 %call.i217, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.63, i32 noundef %call.i217) #10
  br label %cleanup

if.end82:                                         ; preds = %if.then73
  %59 = ptrtoint ptr %ds4_query_len to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ds4_query_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp.not = icmp eq i8 %60, 0
  br i1 %cmp.not, label %if.end82.cleanup_crit_edge, label %if.then86

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then86:                                        ; preds = %if.end82
  %conv87 = add i16 %spec.select, 2
  %61 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xport.i, align 8
  %ops.i219 = getelementptr inbounds %struct.rmi_transport_dev, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %ops.i219 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i219, align 4
  %read_block.i220 = getelementptr inbounds %struct.rmi_transport_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %read_block.i220 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_block.i220, align 4
  %call.i221 = call i32 %66(ptr noundef %62, i16 noundef zeroext %conv87, ptr noundef nonnull %queries, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool90.not = icmp eq i32 %call.i221, 0
  br i1 %tobool90.not, label %if.end111, label %do.end94

do.end94:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.66, i32 noundef %call.i221) #10
  br label %cleanup

if.end111:                                        ; preds = %if.then86
  %67 = ptrtoint ptr %queries to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %queries, align 8
  %conv98 = zext i8 %68 to i32
  %and99 = and i32 %conv98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %and106 = and i32 %conv98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool100.not, label %if.end127, label %if.then113

if.then113:                                       ; preds = %if.end111
  %69 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xport.i, align 8
  %ops.i223 = getelementptr inbounds %struct.rmi_transport_dev, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %ops.i223 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i223, align 4
  %read_block.i224 = getelementptr inbounds %struct.rmi_transport_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %read_block.i224 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read_block.i224, align 4
  %call.i225 = call i32 %74(ptr noundef %70, i16 noundef zeroext %add, ptr noundef nonnull %queries, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool116.not = icmp eq i32 %call.i225, 0
  br i1 %tobool116.not, label %if.end122, label %do.end120

do.end120:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.69, i32 noundef %call.i225) #10
  br label %cleanup

if.end122:                                        ; preds = %if.then113
  %75 = ptrtoint ptr %queries to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %queries, align 8
  %77 = call i64 @llvm.bswap.i64(i64 %76) #7
  %conv125 = trunc i64 %77 to i32
  %package_id = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 8
  %78 = ptrtoint ptr %package_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv125, ptr %package_id, align 4
  %inc126 = add i16 %query_base_addr, 18
  br i1 %tobool107.not, label %if.end122.cleanup_crit_edge, label %if.end122.if.then129_crit_edge

if.end122.if.then129_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then129

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end127:                                        ; preds = %if.end111
  br i1 %tobool107.not, label %if.end127.cleanup_crit_edge, label %if.end127.if.then129_crit_edge

if.end127.if.then129_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then129

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then129:                                       ; preds = %if.end127.if.then129_crit_edge, %if.end122.if.then129_crit_edge
  %prod_info_addr.0237 = phi i16 [ %inc126, %if.end122.if.then129_crit_edge ], [ %add, %if.end127.if.then129_crit_edge ]
  %79 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xport.i, align 8
  %ops.i227 = getelementptr inbounds %struct.rmi_transport_dev, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %ops.i227 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i227, align 4
  %read_block.i228 = getelementptr inbounds %struct.rmi_transport_ops, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %read_block.i228 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read_block.i228, align 4
  %call.i229 = call i32 %84(ptr noundef %80, i16 noundef zeroext %prod_info_addr.0237, ptr noundef nonnull %queries, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool132.not = icmp eq i32 %call.i229, 0
  br i1 %tobool132.not, label %if.end138, label %do.end136

do.end136:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rmi_dev, ptr noundef nonnull @.str.72, i32 noundef %call.i229) #10
  br label %cleanup

if.end138:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %0, align 1
  %conv140 = zext i8 %86 to i32
  %shl141 = shl nuw nsw i32 %conv140, 8
  %87 = ptrtoint ptr %queries to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %queries, align 8
  %conv143 = zext i8 %88 to i32
  %or144 = or i32 %shl141, %conv143
  %firmware_id = getelementptr inbounds %struct.f01_basic_properties, ptr %props, i32 0, i32 7
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %1, align 2
  %conv146 = zext i8 %90 to i32
  %mul = shl nuw nsw i32 %conv146, 16
  %add148 = or i32 %mul, %or144
  %91 = ptrtoint ptr %firmware_id to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add148, ptr %firmware_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %do.end136, %if.end127.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %do.end120, %do.end94, %if.end82.cleanup_crit_edge, %do.end80, %if.end71.cleanup_crit_edge, %do.end61, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i213, %do.end61 ], [ %call.i217, %do.end80 ], [ %call.i221, %do.end94 ], [ %call.i225, %do.end120 ], [ %call.i229, %do.end136 ], [ 0, %if.end127.cleanup_crit_edge ], [ 0, %if.end138 ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %if.end122.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ds4_query_len) #7
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %queries) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_of_property_read_u32(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_manufacturer_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f01_container, align 4
  %driver_data.i4 = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i4, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.75, i32 noundef %conv) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_dom_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f01_container, align 4
  %driver_data.i4 = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i4, align 4
  %dom = getelementptr inbounds %struct.f01_basic_properties, ptr %5, i32 0, i32 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.77, ptr noundef %dom) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_product_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f01_container, align 4
  %driver_data.i4 = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i4, align 4
  %product_id = getelementptr inbounds %struct.f01_basic_properties, ptr %5, i32 0, i32 5
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.77, ptr noundef %product_id) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_firmware_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f01_container, align 4
  %driver_data.i4 = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i4, align 4
  %firmware_id = getelementptr inbounds %struct.f01_basic_properties, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %firmware_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %firmware_id, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.75, i32 noundef %7) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_package_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f01_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f01_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f01_container, align 4
  %driver_data.i7 = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i7, align 4
  %package_id3 = getelementptr inbounds %struct.f01_basic_properties, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %package_id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %package_id3, align 4
  %and = and i32 %7, 65535
  %shr = lshr i32 %7, 16
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.81, i32 noundef %and, i32 noundef %shr) #7
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !114, !116, !118, !119, !121, !123, !124, !126, !127, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 715, i32 11}
!2 = !{ptr @rmi_f01_handler, !3, !"rmi_f01_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 713, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 415, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rmi_f01_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rmi_f01_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 437, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rmi_f01_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rmi_f01_probe._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 447, i32 3}
!19 = !{ptr @rmi_f01_probe._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @rmi_f01_probe._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 454, i32 3}
!23 = !{ptr @rmi_f01_probe._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rmi_f01_probe._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 461, i32 3}
!27 = !{ptr @rmi_f01_probe._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rmi_f01_probe._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 465, i32 2}
!31 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rmi_f01_probe._entry.19, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rmi_f01_probe._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.24, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 484, i32 5}
!38 = !{ptr @rmi_f01_probe._entry.25, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rmi_f01_probe._entry_ptr.27, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 493, i32 5}
!42 = !{ptr @rmi_f01_probe._entry.28, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rmi_f01_probe._entry_ptr.30, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 509, i32 5}
!46 = !{ptr @rmi_f01_probe._entry.31, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rmi_f01_probe._entry_ptr.33, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 518, i32 5}
!50 = !{ptr @rmi_f01_probe._entry.34, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rmi_f01_probe._entry_ptr.36, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 539, i32 5}
!54 = !{ptr @rmi_f01_probe._entry.37, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rmi_f01_probe._entry_ptr.39, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.41, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 548, i32 5}
!58 = !{ptr @rmi_f01_probe._entry.40, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rmi_f01_probe._entry_ptr.42, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.44, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 558, i32 3}
!62 = !{ptr @rmi_f01_probe._entry.43, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rmi_f01_probe._entry_ptr.45, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.47, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 564, i32 3}
!66 = !{ptr @rmi_f01_probe._entry.46, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rmi_f01_probe._entry_ptr.48, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.50, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 574, i32 3}
!70 = !{ptr @rmi_f01_probe._entry.49, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rmi_f01_probe._entry_ptr.51, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.52, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 349, i32 4}
!74 = !{ptr @.str.53, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 354, i32 4}
!76 = !{ptr @.str.54, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 361, i32 4}
!78 = !{ptr @.str.55, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 368, i32 4}
!80 = !{ptr @.str.56, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 155, i32 3}
!82 = !{ptr @.str.57, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rmi_f01_read_properties._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @rmi_f01_read_properties._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.58, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 174, i32 43}
!87 = !{ptr @.str.60, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 193, i32 4}
!89 = !{ptr @rmi_f01_read_properties._entry.59, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rmi_f01_read_properties._entry_ptr.61, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.63, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 205, i32 4}
!93 = !{ptr @rmi_f01_read_properties._entry.62, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rmi_f01_read_properties._entry_ptr.64, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.66, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 214, i32 5}
!97 = !{ptr @rmi_f01_read_properties._entry.65, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rmi_f01_read_properties._entry_ptr.67, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.69, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 228, i32 5}
!101 = !{ptr @rmi_f01_read_properties._entry.68, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @rmi_f01_read_properties._entry_ptr.70, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.72, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 242, i32 5}
!105 = !{ptr @rmi_f01_read_properties._entry.71, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rmi_f01_read_properties._entry_ptr.73, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @rmi_f01_attr_group, !108, !"rmi_f01_attr_group", i1 false, i1 false}
!108 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 336, i32 37}
!109 = !{ptr @rmi_f01_attrs, !110, !"rmi_f01_attrs", i1 false, i1 false}
!110 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 327, i32 26}
!111 = !{ptr @.str.74, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 274, i32 8}
!113 = !{ptr @dev_attr_manufacturer_id, !112, !"dev_attr_manufacturer_id", i1 false, i1 false}
!114 = !{ptr @.str.75, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 270, i32 35}
!116 = !{ptr @.str.76, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 286, i32 8}
!118 = !{ptr @dev_attr_date_of_manufacture, !117, !"dev_attr_date_of_manufacture", i1 false, i1 false}
!119 = !{ptr @.str.77, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 283, i32 35}
!121 = !{ptr @.str.78, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 298, i32 8}
!123 = !{ptr @dev_attr_product_id, !122, !"dev_attr_product_id", i1 false, i1 false}
!124 = !{ptr @.str.79, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 310, i32 8}
!126 = !{ptr @dev_attr_firmware_id, !125, !"dev_attr_firmware_id", i1 false, i1 false}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 325, i32 8}
!129 = !{ptr @dev_attr_package_id, !128, !"dev_attr_package_id", i1 false, i1 false}
!130 = !{ptr @.str.81, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 321, i32 35}
!132 = !{ptr @.str.82, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 593, i32 3}
!134 = !{ptr @.str.83, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @rmi_f01_config._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @rmi_f01_config._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 602, i32 4}
!139 = !{ptr @rmi_f01_config._entry.84, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @rmi_f01_config._entry_ptr.86, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 612, i32 4}
!143 = !{ptr @rmi_f01_config._entry.87, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @rmi_f01_config._entry_ptr.89, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.91, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 623, i32 4}
!147 = !{ptr @rmi_f01_config._entry.90, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @rmi_f01_config._entry_ptr.92, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.93, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 692, i32 3}
!151 = !{ptr @.str.94, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @rmi_f01_attention._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @rmi_f01_attention._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.96, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 698, i32 3}
!156 = !{ptr @rmi_f01_attention._entry.95, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @rmi_f01_attention._entry_ptr.97, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.99, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 702, i32 3}
!160 = !{ptr @rmi_f01_attention._entry.98, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @rmi_f01_attention._entry_ptr.100, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.102, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 705, i32 4}
!164 = !{ptr @rmi_f01_attention._entry.101, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @rmi_f01_attention._entry_ptr.103, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.104, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 650, i32 3}
!168 = !{ptr @.str.105, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @rmi_f01_suspend._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @rmi_f01_suspend._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.106, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/rmi4/rmi_f01.c", i32 675, i32 3}
!173 = !{ptr @.str.107, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @rmi_f01_resume._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @rmi_f01_resume._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
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
