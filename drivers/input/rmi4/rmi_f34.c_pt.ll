; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f34.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f34.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rmi_function_descriptor = type { i16, i16, i16, i16, i8, i8, i8 }
%struct.rmi_function = type { %struct.rmi_function_descriptor, ptr, %struct.device, %struct.list_head, i32, [6 x i32], i32, [0 x i32] }
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
%struct.f34_data = type { ptr, i8, [5 x i8], [65 x i8], i32, i32, i32, %union.anon.74 }
%union.anon.74 = type { %struct.f34v7_data }
%struct.f34v7_data = type { i8, i8, i8, i8, ptr, i32, i8, i8, i16, i16, i16, i16, i16, i16, i8, i16, i8, %struct.register_offset, %struct.block_count, %struct.physical_address, %struct.image_metadata, ptr, ptr, %struct.completion }
%struct.register_offset = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.block_count = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.physical_address = type { i16, i16, i16, i16 }
%struct.image_metadata = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, [11 x i8], [11 x i8], %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_count, %struct.physical_address }
%struct.block_data = type { ptr, i32 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.f34v5_data = type { i16, i16, i16, i16, i8, %struct.completion, %struct.mutex }
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.rmi_f34_firmware = type { i32, [3 x i8], i8, i32, i32, [10 x i8], [2 x i8], [228 x i8], [0 x i8] }

@rmi_firmware_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rmi_firmware_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f34\00", [23 x i8] zeroinitializer }, align 32
@rmi_f34_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 52, ptr @rmi_f34_probe, ptr null, ptr null, ptr null, ptr @rmi_f34_attention, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rmi_firmware_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_bootloader_id, ptr @dev_attr_configuration_id, ptr @dev_attr_update_fw, ptr @dev_attr_update_fw_status, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_bootloader_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_bootloader_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_configuration_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_configuration_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @rmi_driver_update_fw_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rmi_driver_update_fw_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bootloader_id\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%c%c\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V%d.%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"configuration_id\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@rmi_driver_update_fw_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 481, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flashing %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rmi_driver_update_fw_store\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f34.c\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_driver_update_fw_store._entry_ptr = internal global ptr @rmi_driver_update_fw_store._entry, section ".printk_index", align 4
@rmi_firmware_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 367, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: No F34 present!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmi_firmware_update\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry_ptr = internal global ptr @rmi_firmware_update._entry, section ".printk_index", align 4
@rmi_firmware_update._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.9, i32 375, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: LTS not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry_ptr.18 = internal global ptr @rmi_firmware_update._entry.15, section ".printk_index", align 4
@rmi_firmware_update._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.9, i32 380, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"F34 V%d not supported!\0A\00", [40 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry_ptr.21 = internal global ptr @rmi_firmware_update._entry.19, section ".printk_index", align 4
@rmi_firmware_update._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.9, i32 407, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: No F34 present or not in bootloader!\0A\00", [54 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry_ptr.24 = internal global ptr @rmi_firmware_update._entry.22, section ".printk_index", align 4
@rmi_firmware_update._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.9, i32 424, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Firmware update failed, status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry_ptr.27 = internal global ptr @rmi_firmware_update._entry.25, section ".printk_index", align 4
@rmi_firmware_update._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.9, i32 426, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Firmware update complete\0A\00", [38 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry_ptr.30 = internal global ptr @rmi_firmware_update._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Re-probing device\0A\00", [45 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.13, ptr @.str.9, i32 437, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RMI reset failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@rmi_firmware_update._entry_ptr.34 = internal global ptr @rmi_firmware_update._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s complete\0A\00", [19 x i8] zeroinitializer }, align 32
@rmi_f34_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.9, i32 64, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed to read cmd register: %d (command %#02x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_f34_command\00", [16 x i8] zeroinitializer }, align 32
@rmi_f34_command._entry_ptr = internal global ptr @rmi_f34_command._entry, section ".printk_index", align 4
@rmi_f34_command._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.9, i32 74, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to write F34 command %#02x: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rmi_f34_command._entry_ptr.40 = internal global ptr @rmi_f34_command._entry.38, section ".printk_index", align 4
@rmi_f34_command._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.9, i32 85, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cmd %#02x timed out: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rmi_f34_command._entry_ptr.43 = internal global ptr @rmi_f34_command._entry.41, section ".printk_index", align 4
@rmi_f34_command._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.9, i32 92, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: cmd %#02x timed out, status: %#02x\0A\00", [56 x i8] zeroinitializer }, align 32
@rmi_f34_command._entry_ptr.46 = internal global ptr @rmi_f34_command._entry.44, section ".printk_index", align 4
@rmi_f34_write_bootloader_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.9, i32 27, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Reading bootloader ID failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rmi_f34_write_bootloader_id\00", [36 x i8] zeroinitializer }, align 32
@rmi_f34_write_bootloader_id._entry_ptr = internal global ptr @rmi_f34_write_bootloader_id._entry, section ".printk_index", align 4
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: writing bootloader id '%c%c'\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f34_write_bootloader_id._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.9, i32 38, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to write bootloader ID: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rmi_f34_write_bootloader_id._entry_ptr.52 = internal global ptr @rmi_f34_write_bootloader_id._entry.50, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FW size:%zd, checksum:%08x, image_size:%d, config_size:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"FW bootloader_id:%02x, product_id:%.*s, info: %02x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@rmi_f34_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.9, i32 269, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bad firmware image: fw size %d, expected %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_f34_update_firmware\00", [40 x i8] zeroinitializer }, align 32
@rmi_f34_update_firmware._entry_ptr = internal global ptr @rmi_f34_update_firmware._entry, section ".printk_index", align 4
@rmi_f34_update_firmware._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.9, i32 279, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Bad firmware image: config size %d, expected %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rmi_f34_update_firmware._entry_ptr.60 = internal global ptr @rmi_f34_update_firmware._entry.58, section ".printk_index", align 4
@rmi_f34_update_firmware._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.9, i32 285, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Bad firmware image: no config data\0A\00", [60 x i8] zeroinitializer }, align 32
@rmi_f34_update_firmware._entry_ptr.63 = internal global ptr @rmi_f34_update_firmware._entry.61, section ".printk_index", align 4
@rmi_f34_update_firmware._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.9, i32 290, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware image OK\0A\00", [45 x i8] zeroinitializer }, align 32
@rmi_f34_update_firmware._entry_ptr.66 = internal global ptr @rmi_f34_update_firmware._entry.64, section ".printk_index", align 4
@rmi_f34_flash_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.9, i32 206, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Erasing firmware...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmi_f34_flash_firmware\00", [41 x i8] zeroinitializer }, align 32
@rmi_f34_flash_firmware._entry_ptr = internal global ptr @rmi_f34_flash_firmware._entry, section ".printk_index", align 4
@rmi_f34_flash_firmware._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.9, i32 213, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Writing firmware (%d bytes)...\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_f34_flash_firmware._entry_ptr.71 = internal global ptr @rmi_f34_flash_firmware._entry.69, section ".printk_index", align 4
@rmi_f34_flash_firmware._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.9, i32 225, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Erasing config...\0A\00", [45 x i8] zeroinitializer }, align 32
@rmi_f34_flash_firmware._entry_ptr.74 = internal global ptr @rmi_f34_flash_firmware._entry.72, section ".printk_index", align 4
@rmi_f34_flash_firmware._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.9, i32 233, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Writing config (%d bytes)...\0A\00", [34 x i8] zeroinitializer }, align 32
@rmi_f34_flash_firmware._entry_ptr.77 = internal global ptr @rmi_f34_flash_firmware._entry.75, section ".printk_index", align 4
@rmi_f34_write_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.9, i32 143, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to write initial zeros: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rmi_f34_write_blocks\00", [43 x i8] zeroinitializer }, align 32
@rmi_f34_write_blocks._entry_ptr = internal global ptr @rmi_f34_write_blocks._entry, section ".printk_index", align 4
@rmi_f34_write_blocks._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.9, i32 152, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write block #%d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34_write_blocks._entry_ptr.82 = internal global ptr @rmi_f34_write_blocks._entry.80, section ".printk_index", align 4
@rmi_f34_write_blocks._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.9, i32 160, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to write command for block #%d: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rmi_f34_write_blocks._entry_ptr.85 = internal global ptr @rmi_f34_write_blocks._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wrote block %d of %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"update_fw_status\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@rmi_f34_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.9, i32 545, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Failed to query properties\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_f34_probe\00", [18 x i8] zeroinitializer }, align 32
@rmi_f34_probe._entry_ptr = internal global ptr @rmi_f34_probe._entry, section ".printk_index", align 4
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%c\00", [27 x i8] zeroinitializer }, align 32
@rmi_f34_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&f34->v5.flash_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bootloader ID: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Block size: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW blocks: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CFG blocks: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rmi_f34_probe._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.9, i32 575, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read F34 config ID\0A\00", [34 x i8] zeroinitializer }, align 32
@rmi_f34_probe._entry_ptr.99 = internal global ptr @rmi_f34_probe._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%02x%02x%02x%02x\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Configuration ID: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: status: %#02x, ret: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rmi_f34_attention = private unnamed_addr constant [18 x i8] c"rmi_f34_attention\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"rmi_firmware_attr_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 516, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 603, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"rmi_f34_handler\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 601, i32 29 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"rmi_firmware_attrs\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 508, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"dev_attr_bootloader_id\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"dev_attr_configuration_id\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"dev_attr_update_fw_status\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 336, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 324, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 328, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 355, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 349, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 490, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 481, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 367, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 375, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 379, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 406, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 423, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 426, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 432, i32 29 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 437, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 453, i32 29 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 62, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 72, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 83, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 90, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 26, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 31, i32 34 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 38, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 87, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 255, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 261, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 267, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 276, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 285, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 290, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 206, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 212, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 225, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 232, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 143, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 151, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 158, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 164, i32 35 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 505, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 502, i32 35 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 544, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 550, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 552, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 562, i32 34 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 564, i32 34 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 566, i32 34 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 568, i32 34 }
@___asan_gen_.392 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 575, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 580, i32 5 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 584, i32 35 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.405 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f34.c\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 110, i32 35 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @rmi_driver_update_fw_store._entry, ptr @rmi_driver_update_fw_store._entry_ptr, ptr @rmi_f34_command._entry, ptr @rmi_f34_command._entry.38, ptr @rmi_f34_command._entry.41, ptr @rmi_f34_command._entry.44, ptr @rmi_f34_command._entry_ptr, ptr @rmi_f34_command._entry_ptr.40, ptr @rmi_f34_command._entry_ptr.43, ptr @rmi_f34_command._entry_ptr.46, ptr @rmi_f34_flash_firmware._entry, ptr @rmi_f34_flash_firmware._entry.69, ptr @rmi_f34_flash_firmware._entry.72, ptr @rmi_f34_flash_firmware._entry.75, ptr @rmi_f34_flash_firmware._entry_ptr, ptr @rmi_f34_flash_firmware._entry_ptr.71, ptr @rmi_f34_flash_firmware._entry_ptr.74, ptr @rmi_f34_flash_firmware._entry_ptr.77, ptr @rmi_f34_probe._entry, ptr @rmi_f34_probe._entry.97, ptr @rmi_f34_probe._entry_ptr, ptr @rmi_f34_probe._entry_ptr.99, ptr @rmi_f34_update_firmware._entry, ptr @rmi_f34_update_firmware._entry.58, ptr @rmi_f34_update_firmware._entry.61, ptr @rmi_f34_update_firmware._entry.64, ptr @rmi_f34_update_firmware._entry_ptr, ptr @rmi_f34_update_firmware._entry_ptr.60, ptr @rmi_f34_update_firmware._entry_ptr.63, ptr @rmi_f34_update_firmware._entry_ptr.66, ptr @rmi_f34_write_blocks._entry, ptr @rmi_f34_write_blocks._entry.80, ptr @rmi_f34_write_blocks._entry.83, ptr @rmi_f34_write_blocks._entry_ptr, ptr @rmi_f34_write_blocks._entry_ptr.82, ptr @rmi_f34_write_blocks._entry_ptr.85, ptr @rmi_f34_write_bootloader_id._entry, ptr @rmi_f34_write_bootloader_id._entry.50, ptr @rmi_f34_write_bootloader_id._entry_ptr, ptr @rmi_f34_write_bootloader_id._entry_ptr.52, ptr @rmi_firmware_update._entry, ptr @rmi_firmware_update._entry.15, ptr @rmi_firmware_update._entry.19, ptr @rmi_firmware_update._entry.22, ptr @rmi_firmware_update._entry.25, ptr @rmi_firmware_update._entry.28, ptr @rmi_firmware_update._entry.32, ptr @rmi_firmware_update._entry_ptr, ptr @rmi_firmware_update._entry_ptr.18, ptr @rmi_firmware_update._entry_ptr.21, ptr @rmi_firmware_update._entry_ptr.24, ptr @rmi_firmware_update._entry_ptr.27, ptr @rmi_firmware_update._entry_ptr.30, ptr @rmi_firmware_update._entry_ptr.34, ptr @rmi_firmware_attr_group, ptr @.str, ptr @rmi_f34_handler, ptr @rmi_firmware_attrs, ptr @dev_attr_bootloader_id, ptr @dev_attr_configuration_id, ptr @dev_attr_update_fw, ptr @dev_attr_update_fw_status, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @init_completion.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @rmi_f34_probe.__key, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bootloader_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_configuration_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver_update_fw_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_update._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_update._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_update._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_update._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_update._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_firmware_update._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_command._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_command._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_command._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_write_bootloader_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_write_bootloader_id._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_update_firmware._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_update_firmware._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_update_firmware._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_flash_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_flash_firmware._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_flash_firmware._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_flash_firmware._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_write_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_write_blocks._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_write_blocks._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34_probe._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_f34_create_sysfs(ptr noundef %rmi_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_create_group(ptr noundef %rmi_dev, ptr noundef nonnull @rmi_firmware_attr_group) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_f34_remove_sysfs(ptr noundef %rmi_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_remove_group(ptr noundef %rmi_dev, ptr noundef nonnull @rmi_firmware_attr_group) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f34_probe(ptr noundef %fn) #0 align 64 {
entry:
  %f34_queries = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %f34_queries) #7
  %0 = getelementptr inbounds [9 x i8], ptr %f34_queries, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %f34_queries, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %f34_queries, i32 0, i32 3
  %3 = getelementptr inbounds [9 x i8], ptr %f34_queries, i32 0, i32 5
  %4 = getelementptr inbounds [9 x i8], ptr %f34_queries, i32 0, i32 7
  %function_version = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 6
  %5 = call ptr @memset(ptr %f34_queries, i32 255, i32 9)
  %6 = ptrtoint ptr %function_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %function_version, align 2
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 356, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fn, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @rmi_f34v7_probe(ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %bl_version = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %bl_version to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %bl_version, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %11 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmi_dev, align 4
  %13 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fn, align 8
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_block.i, align 4
  %call.i115 = call i32 %20(ptr noundef %16, i16 noundef zeroext %14, ptr noundef nonnull %f34_queries, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool9.not = icmp eq i32 %call.i115, 0
  br i1 %tobool9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %bootloader_id = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %f34_queries to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %f34_queries, align 1
  %conv14 = zext i8 %22 to i32
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 1
  %conv16 = zext i8 %24 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bootloader_id, i32 noundef 5, ptr noundef nonnull @.str.91, i32 noundef %conv14, i32 noundef %conv16)
  %25 = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 7
  %flash_mutex = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 7, i32 0, i32 20
  call void @__mutex_init(ptr noundef %flash_mutex, ptr noundef nonnull @.str.92, ptr noundef nonnull @rmi_f34_probe.__key) #7
  %cmd_done = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 7, i32 0, i32 6
  %26 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 7, i32 0, i32 9
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_completion.__key) #7
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %2, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #7
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %25, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %3, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32) #7
  %fw_blocks = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %34 = ptrtoint ptr %fw_blocks to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %fw_blocks, align 2
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %4, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #7
  %config_blocks = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 7, i32 0, i32 4
  %38 = ptrtoint ptr %config_blocks to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %config_blocks, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 3
  %39 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data_base_addr, align 2
  %add = add i16 %29, 2
  %add31 = add i16 %add, %40
  %ctrl_address = getelementptr inbounds %struct.f34v5_data, ptr %25, i32 0, i32 3
  %41 = ptrtoint ptr %ctrl_address to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %add31, ptr %ctrl_address, align 2
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %1, align 1
  %44 = and i8 %43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool35.not = icmp eq i8 %44, 0
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef %bootloader_id) #7
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %25, align 4
  %conv41 = zext i16 %46 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %conv41) #7
  %47 = ptrtoint ptr %fw_blocks to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %fw_blocks, align 2
  %conv44 = zext i16 %48 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %conv44) #7
  %49 = ptrtoint ptr %config_blocks to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %config_blocks, align 4
  %conv47 = zext i16 %50 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.96, i32 noundef %conv47) #7
  br i1 %tobool35.not, label %if.end12.cleanup_crit_edge, label %if.then49

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end12
  %51 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmi_dev, align 4
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %53 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %control_base_addr, align 4
  %xport.i116 = getelementptr inbounds %struct.rmi_device, ptr %52, i32 0, i32 3
  %55 = ptrtoint ptr %xport.i116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xport.i116, align 8
  %ops.i117 = getelementptr inbounds %struct.rmi_transport_dev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %ops.i117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i117, align 4
  %read_block.i118 = getelementptr inbounds %struct.rmi_transport_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %read_block.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_block.i118, align 4
  %call.i119 = call i32 %60(ptr noundef %56, i16 noundef zeroext %54, ptr noundef nonnull %f34_queries, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool54.not = icmp eq i32 %call.i119, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98) #10
  br label %cleanup

if.end60:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %configuration_id = getelementptr inbounds %struct.f34_data, ptr %call.i, i32 0, i32 3
  %61 = ptrtoint ptr %f34_queries to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %f34_queries, align 1
  %conv63 = zext i8 %62 to i32
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %0, align 1
  %conv65 = zext i8 %64 to i32
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %1, align 1
  %conv67 = zext i8 %66 to i32
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %2, align 1
  %conv69 = zext i8 %68 to i32
  %call70 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %configuration_id, i32 noundef 65, ptr noundef nonnull @.str.100, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv69)
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.101, ptr noundef %configuration_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end58, %if.end12.cleanup_crit_edge, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call.i115, %do.end ], [ %call.i119, %do.end58 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end60 ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %f34_queries) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f34_attention(i32 noundef %irq, ptr noundef %ctx) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !194
  %bl_version = getelementptr inbounds %struct.f34_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %bl_version to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bl_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp = icmp eq i8 %4, 5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmi_dev, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = getelementptr inbounds %struct.f34_data, ptr %1, i32 0, i32 7
  %ctrl_address = getelementptr inbounds %struct.f34v5_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl_address to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ctrl_address, align 2
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %17(ptr noundef %13, i16 noundef zeroext %11, ptr noundef nonnull %status, i32 noundef 1) #7
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 1
  %conv5 = zext i8 %19 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.rmi_f34_attention, i32 noundef %conv5, i32 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 1
  %22 = and i8 %21, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not = icmp eq i8 %22, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_done = getelementptr inbounds %struct.f34_data, ptr %1, i32 0, i32 7, i32 0, i32 6
  br label %if.end26.sink.split

if.else:                                          ; preds = %entry
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %6, i32 0, i32 3
  %23 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data_base_addr, align 2
  %flash_status = getelementptr inbounds %struct.f34_data, ptr %1, i32 0, i32 7, i32 0, i32 17, i32 5
  %25 = ptrtoint ptr %flash_status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flash_status, align 1
  %conv13 = zext i8 %26 to i16
  %add = add i16 %24, %conv13
  %xport.i39 = getelementptr inbounds %struct.rmi_device, ptr %8, i32 0, i32 3
  %27 = ptrtoint ptr %xport.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xport.i39, align 8
  %ops.i40 = getelementptr inbounds %struct.rmi_transport_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i40, align 4
  %read_block.i41 = getelementptr inbounds %struct.rmi_transport_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %read_block.i41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_block.i41, align 4
  %call.i42 = call i32 %32(ptr noundef %28, i16 noundef zeroext %add, ptr noundef nonnull %status, i32 noundef 1) #7
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %status, align 1
  %conv17 = zext i8 %34 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.rmi_f34_attention, i32 noundef %conv17, i32 noundef %call.i42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool18.not = icmp eq i32 %call.i42, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true19:                                  ; preds = %if.else
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status, align 1
  %37 = and i8 %36, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool22.not = icmp eq i8 %37, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true19.if.end26_crit_edge

land.lhs.true19.if.end26_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_done24 = getelementptr inbounds %struct.f34_data, ptr %1, i32 0, i32 7, i32 0, i32 23
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.then23, %if.then8
  %cmd_done24.sink = phi ptr [ %cmd_done24, %if.then23 ], [ %cmd_done, %if.then8 ]
  call void @complete(ptr noundef %cmd_done24.sink) #7
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true19.if.end26_crit_edge, %if.else.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.then.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_bootloader_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f34_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f34_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f34_container, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %driver_data.i25 = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i25, align 4
  %bl_version = getelementptr inbounds %struct.f34_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bl_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bl_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp = icmp eq i8 %7, 5
  %bootloader_id = getelementptr inbounds %struct.f34_data, ptr %5, i32 0, i32 2
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %bootloader_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bootloader_id, align 1
  %conv5 = zext i8 %9 to i32
  %arrayidx7 = getelementptr %struct.f34_data, ptr %5, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.2, i32 noundef %conv5, i32 noundef %conv8) #7
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11 = getelementptr %struct.f34_data, ptr %5, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %14 = ptrtoint ptr %bootloader_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bootloader_id, align 1
  %conv15 = zext i8 %15 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %conv12, i32 noundef %conv15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then4 ], [ %call16, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_configuration_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f34_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f34_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f34_container, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i7 = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i7, align 4
  %configuration_id = getelementptr inbounds %struct.f34_data, ptr %5, i32 0, i32 3
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef %configuration_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_update_fw_store(ptr noundef %dev, ptr nocapture noundef readnone %dattr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %fw_name = alloca [255 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %fw_name) #7
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !194
  %4 = add i32 %count, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254, i32 %4)
  %5 = icmp ult i32 %4, -254
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end.if.end12_crit_edge [
    i8 0, label %if.end.if.then10_crit_edge
    i8 10, label %if.end.if.then10_crit_edge44
  ]

if.end.if.then10_crit_edge44:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.if.then10_crit_edge44
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %copy_count.0 = phi i32 [ %sub, %if.then10 ], [ %count, %if.end.if.end12_crit_edge ]
  %call13 = call ptr @strncpy(ptr noundef nonnull %fw_name, ptr noundef %buf, i32 noundef %copy_count.0)
  %arrayidx14 = getelementptr [255 x i8], ptr %fw_name, i32 0, i32 %copy_count.0
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx14, align 1
  %call16 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fw_name, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %do.end, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %fw_name) #10
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmi_dev1.i, align 4
  %f34_container.i = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %f34_container.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f34_container.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #10
  br label %rmi_firmware_update.exit.thread

if.end.i:                                         ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.rmi_function, ptr %15, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %bl_version.i = getelementptr inbounds %struct.f34_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bl_version.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bl_version.i, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %19, label %do.end21.i [
    i8 7, label %if.then6.i
    i8 5, label %if.else32.i
  ]

if.then6.i:                                       ; preds = %if.end.i
  %pdt_props.i = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %pdt_props.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pdt_props.i, align 4
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not.i = icmp eq i8 %23, 0
  br i1 %tobool8.not.i, label %if.then30.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #10
  br label %rmi_firmware_update.exit.thread

do.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %function_version.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %15, i32 0, i32 6
  %24 = ptrtoint ptr %function_version.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %function_version.i, align 2
  %conv23.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %conv23.i) #10
  br label %rmi_firmware_update.exit.thread

if.then30.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i = call i32 @rmi_f34v7_start_reflash(ptr noundef %17, ptr noundef %11) #7
  br label %if.end34.i

if.else32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call fastcc i32 @rmi_f34_command(ptr noundef %17, i8 noundef zeroext 15, i32 noundef 300, i1 noundef zeroext true) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else32.i, %if.then30.i
  %ret.0.i = phi i32 [ %call31.i, %if.then30.i ], [ %call.i.i, %if.else32.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool35.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end34.i.rmi_firmware_update.exit.thread_crit_edge

if.end34.i.rmi_firmware_update.exit.thread_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_firmware_update.exit.thread

if.end37.i:                                       ; preds = %if.end34.i
  call void @rmi_disable_irq(ptr noundef %13, i1 noundef zeroext false) #7
  call void @rmi_free_function_list(ptr noundef %13) #7
  %call38.i = call i32 @rmi_probe_interrupts(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.rmi_firmware_update.exit.thread_crit_edge

if.end37.i.rmi_firmware_update.exit.thread_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_firmware_update.exit.thread

if.end41.i:                                       ; preds = %if.end37.i
  %call42.i = call i32 @rmi_init_functions(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.rmi_firmware_update.exit.thread_crit_edge

if.end41.i.rmi_firmware_update.exit.thread_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_firmware_update.exit.thread

if.end45.i:                                       ; preds = %if.end41.i
  %bootloader_mode.i = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %bootloader_mode.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bootloader_mode.i, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool46.not.i = icmp eq i8 %27, 0
  br i1 %tobool46.not.i, label %if.end45.i.do.end52.i_crit_edge, label %lor.lhs.false.i

if.end45.i.do.end52.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52.i

lor.lhs.false.i:                                  ; preds = %if.end45.i
  %28 = ptrtoint ptr %f34_container.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f34_container.i, align 4
  %tobool48.not.i = icmp eq ptr %29, null
  br i1 %tobool48.not.i, label %lor.lhs.false.i.do.end52.i_crit_edge, label %if.end53.i

lor.lhs.false.i.do.end52.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52.i

do.end52.i:                                       ; preds = %lor.lhs.false.i.do.end52.i_crit_edge, %if.end45.i.do.end52.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.13) #10
  br label %rmi_firmware_update.exit.thread

if.end53.i:                                       ; preds = %lor.lhs.false.i
  call void @rmi_enable_irq(ptr noundef %13, i1 noundef zeroext false) #7
  %30 = ptrtoint ptr %f34_container.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f34_container.i, align 4
  %driver_data.i155.i = getelementptr inbounds %struct.rmi_function, ptr %31, i32 0, i32 2, i32 8
  %32 = ptrtoint ptr %driver_data.i155.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i155.i, align 4
  %bl_version57.i = getelementptr inbounds %struct.f34_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bl_version57.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bl_version57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %35)
  %cmp59.i = icmp eq i8 %35, 7
  br i1 %cmp59.i, label %if.then61.i, label %if.else63.i

if.then61.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %call62.i = call i32 @rmi_f34v7_do_reflash(ptr noundef %33, ptr noundef %11) #7
  br label %if.end65.i

if.else63.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %call64.i = call fastcc i32 @rmi_f34_update_firmware(ptr noundef %33, ptr noundef %11) #7
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else63.i, %if.then61.i
  %ret.1.i = phi i32 [ %call62.i, %if.then61.i ], [ %call64.i, %if.else63.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool66.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool66.not.i, label %do.end75.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %update_status.i = getelementptr inbounds %struct.f34_data, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %update_status.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %ret.1.i, ptr %update_status.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %33, align 4
  %dev71.i = getelementptr inbounds %struct.rmi_function, ptr %38, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71.i, ptr noundef nonnull @.str.26, i32 noundef %ret.1.i) #10
  br label %if.end78.i

do.end75.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %33, align 4
  %dev77.i = getelementptr inbounds %struct.rmi_function, ptr %40, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.i, ptr noundef nonnull @.str.29) #10
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end75.i, %if.then67.i
  call void @rmi_disable_irq(ptr noundef %13, i1 noundef zeroext false) #7
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %13, ptr noundef nonnull @.str.31) #7
  call void @rmi_free_function_list(ptr noundef %13) #7
  %call79.i = call i32 @rmi_scan_pdt(ptr noundef %13, ptr noundef null, ptr noundef nonnull @rmi_initial_reset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %do.end85.i, label %if.end78.i.if.end86.i_crit_edge

if.end78.i.if.end86.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

do.end85.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.33) #10
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end85.i, %if.end78.i.if.end86.i_crit_edge
  %call87.i = call i32 @rmi_probe_interrupts(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.end86.i.rmi_firmware_update.exit.thread_crit_edge

if.end86.i.rmi_firmware_update.exit.thread_crit_edge: ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_firmware_update.exit.thread

if.end90.i:                                       ; preds = %if.end86.i
  %call91.i = call i32 @rmi_init_functions(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.end94.i, label %if.end90.i.rmi_firmware_update.exit.thread_crit_edge

if.end90.i.rmi_firmware_update.exit.thread_crit_edge: ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_firmware_update.exit.thread

if.end94.i:                                       ; preds = %if.end90.i
  call void @rmi_enable_irq(ptr noundef %13, i1 noundef zeroext false) #7
  %f01_container.i = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %f01_container.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f01_container.i, align 4
  %driver.i = getelementptr inbounds %struct.rmi_function, ptr %42, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver.i, align 4
  %tobool96.not.i = icmp eq ptr %44, null
  br i1 %tobool96.not.i, label %rmi_firmware_update.exit.thread41, label %rmi_firmware_update.exit

rmi_firmware_update.exit.thread41:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %13, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.13) #7
  %45 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %46) #7
  br label %51

rmi_firmware_update.exit.thread:                  ; preds = %if.end90.i.rmi_firmware_update.exit.thread_crit_edge, %if.end86.i.rmi_firmware_update.exit.thread_crit_edge, %do.end52.i, %if.end41.i.rmi_firmware_update.exit.thread_crit_edge, %if.end37.i.rmi_firmware_update.exit.thread_crit_edge, %if.end34.i.rmi_firmware_update.exit.thread_crit_edge, %do.end21.i, %do.end12.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call91.i, %if.end90.i.rmi_firmware_update.exit.thread_crit_edge ], [ %call87.i, %if.end86.i.rmi_firmware_update.exit.thread_crit_edge ], [ %call42.i, %if.end41.i.rmi_firmware_update.exit.thread_crit_edge ], [ %call38.i, %if.end37.i.rmi_firmware_update.exit.thread_crit_edge ], [ %ret.0.i, %if.end34.i.rmi_firmware_update.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -19, %do.end21.i ], [ -22, %do.end52.i ], [ -19, %do.end12.i ]
  %47 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %48) #7
  br label %cleanup

rmi_firmware_update.exit:                         ; preds = %if.end94.i
  %call98.i = call i32 @rmi_enable_sensor(ptr noundef %13) #7
  %49 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool21.not = icmp eq i32 %call98.i, 0
  br i1 %tobool21.not, label %rmi_firmware_update.exit._crit_edge, label %rmi_firmware_update.exit.cleanup_crit_edge

rmi_firmware_update.exit.cleanup_crit_edge:       ; preds = %rmi_firmware_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rmi_firmware_update.exit._crit_edge:              ; preds = %rmi_firmware_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %51

51:                                               ; preds = %rmi_firmware_update.exit._crit_edge, %rmi_firmware_update.exit.thread41
  br label %cleanup

cleanup:                                          ; preds = %51, %rmi_firmware_update.exit.cleanup_crit_edge, %rmi_firmware_update.exit.thread, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ], [ %count, %51 ], [ %call98.i, %rmi_firmware_update.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %rmi_firmware_update.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %fw_name) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_f34v7_start_reflash(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_disable_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_free_function_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_probe_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_init_functions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_enable_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_f34v7_do_reflash(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34_update_firmware(ptr noundef %f34, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %image_size1 = getelementptr inbounds %struct.rmi_f34_firmware, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %image_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %image_size1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %config_size2 = getelementptr inbounds %struct.rmi_f34_firmware, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %config_size2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config_size2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %11, i32 noundef %14, i32 noundef %4, i32 noundef %7) #7
  %15 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f34, align 4
  %dev4 = getelementptr inbounds %struct.rmi_function, ptr %16, i32 0, i32 2
  %bootloader_version = getelementptr inbounds %struct.rmi_f34_firmware, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %bootloader_version to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bootloader_version, align 1
  %conv = zext i8 %18 to i32
  %product_id = getelementptr inbounds %struct.rmi_f34_firmware, ptr %1, i32 0, i32 5
  %product_info = getelementptr inbounds %struct.rmi_f34_firmware, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %product_info to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %product_info, align 2
  %conv5 = zext i8 %20 to i32
  %arrayidx7 = getelementptr %struct.rmi_f34_firmware, ptr %1, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %22 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev4, ptr noundef nonnull @.str.55, i32 noundef %conv, i32 noundef 10, ptr noundef %product_id, i32 noundef %conv5, i32 noundef %conv8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %23 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7
  %fw_blocks = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 2
  %24 = ptrtoint ptr %fw_blocks to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fw_blocks, align 2
  %conv9 = zext i16 %25 to i32
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %23, align 4
  %conv10 = zext i16 %27 to i32
  %mul = mul nuw i32 %conv10, %conv9
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %mul)
  %cmp.not = icmp eq i32 %4, %mul
  br i1 %cmp.not, label %if.end.thread, label %do.end14

do.end14:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f34, align 4
  %dev16 = getelementptr inbounds %struct.rmi_function, ptr %29, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.56, i32 noundef %4, i32 noundef %mul) #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool22.not = icmp eq i32 %6, 0
  br i1 %tobool22.not, label %if.end.do.end54_crit_edge, label %if.end.land.lhs.true23_crit_edge

if.end.land.lhs.true23_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true23

if.end.do.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool22.not93 = icmp eq i32 %6, 0
  br i1 %tobool22.not93, label %do.end48, label %if.end.thread.land.lhs.true23_crit_edge

if.end.thread.land.lhs.true23_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.end.thread.land.lhs.true23_crit_edge, %if.end.land.lhs.true23_crit_edge
  %30 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7
  %config_blocks = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 4
  %31 = ptrtoint ptr %config_blocks to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %config_blocks, align 4
  %conv24 = zext i16 %32 to i32
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %30, align 4
  %conv26 = zext i16 %34 to i32
  %mul27 = mul nuw i32 %conv26, %conv24
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul27)
  %cmp28.not = icmp eq i32 %7, %mul27
  br i1 %cmp28.not, label %land.lhs.true23.do.end54_crit_edge, label %do.end33

land.lhs.true23.do.end54_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

do.end33:                                         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f34, align 4
  %dev35 = getelementptr inbounds %struct.rmi_function, ptr %36, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.59, i32 noundef %7, i32 noundef %mul27) #10
  br label %out

do.end48:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %f34, align 4
  %dev50 = getelementptr inbounds %struct.rmi_function, ptr %38, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.62) #10
  br label %out

do.end54:                                         ; preds = %land.lhs.true23.do.end54_crit_edge, %if.end.do.end54_crit_edge
  %39 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f34, align 4
  %dev56 = getelementptr inbounds %struct.rmi_function, ptr %40, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev56, ptr noundef nonnull @.str.65) #10
  %flash_mutex = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %flash_mutex, i32 noundef 0) #7
  %41 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f34, align 4
  %43 = ptrtoint ptr %image_size1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %image_size1, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %config_size2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config_size2, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %update_progress.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 5
  %49 = ptrtoint ptr %update_progress.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %update_progress.i, align 4
  %add.i = add i32 %48, %45
  %update_size.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 6
  %50 = ptrtoint ptr %update_size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i, ptr %update_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %do.end54
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %42, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.67) #10
  %call.i = tail call fastcc i32 @rmi_f34_command(ptr noundef %f34, i8 noundef zeroext 3, i32 noundef 5000, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %do.end8.i, label %do.end.i.rmi_f34_flash_firmware.exit_crit_edge

do.end.i.rmi_f34_flash_firmware.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f34_flash_firmware.exit

do.end8.i:                                        ; preds = %do.end.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef %45) #10
  %data.i = getelementptr inbounds %struct.rmi_f34_firmware, ptr %1, i32 0, i32 8
  %fw_blocks.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 2
  %51 = ptrtoint ptr %fw_blocks.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fw_blocks.i.i, align 2
  %conv.i.i = zext i16 %52 to i32
  %call.i.i = tail call fastcc i32 @rmi_f34_write_blocks(ptr noundef %f34, ptr noundef %data.i, i32 noundef %conv.i.i, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end14.thread.i, label %do.end8.i.rmi_f34_flash_firmware.exit_crit_edge

do.end8.i.rmi_f34_flash_firmware.exit_crit_edge:  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f34_flash_firmware.exit

if.end14.i:                                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool15.not.i = icmp eq i32 %47, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end37.i_crit_edge, label %do.end21.i

if.end14.i.if.end37.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.end14.thread.i:                                ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool15.not69.i = icmp eq i32 %47, 0
  br i1 %tobool15.not69.i, label %if.end14.thread.i.if.end37.i_crit_edge, label %if.end14.thread.i.do.end30.i_crit_edge

if.end14.thread.i.do.end30.i_crit_edge:           ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

if.end14.thread.i.if.end37.i_crit_edge:           ; preds = %if.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

do.end21.i:                                       ; preds = %if.end14.i
  %dev22.i = getelementptr inbounds %struct.rmi_function, ptr %42, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i, ptr noundef nonnull @.str.73) #10
  %call23.i = tail call fastcc i32 @rmi_f34_command(ptr noundef %f34, i8 noundef zeroext 7, i32 noundef 5000, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %do.end21.i.do.end30.i_crit_edge, label %do.end21.i.rmi_f34_flash_firmware.exit_crit_edge

do.end21.i.rmi_f34_flash_firmware.exit_crit_edge: ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f34_flash_firmware.exit

do.end21.i.do.end30.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end21.i.do.end30.i_crit_edge, %if.end14.thread.i.do.end30.i_crit_edge
  %dev31.i = getelementptr inbounds %struct.rmi_function, ptr %42, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31.i, ptr noundef nonnull @.str.76, i32 noundef %48) #10
  %arrayidx.i = getelementptr %struct.rmi_f34_firmware, ptr %1, i32 0, i32 8, i32 %45
  %config_blocks.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 4
  %53 = ptrtoint ptr %config_blocks.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %config_blocks.i.i, align 4
  %conv.i67.i = zext i16 %54 to i32
  %call.i68.i = tail call fastcc i32 @rmi_f34_write_blocks(ptr noundef %f34, ptr noundef %arrayidx.i, i32 noundef %conv.i67.i, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool34.not.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool34.not.i, label %do.end30.i.if.end37.i_crit_edge, label %do.end30.i.rmi_f34_flash_firmware.exit_crit_edge

do.end30.i.rmi_f34_flash_firmware.exit_crit_edge: ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_f34_flash_firmware.exit

do.end30.i.if.end37.i_crit_edge:                  ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end30.i.if.end37.i_crit_edge, %if.end14.thread.i.if.end37.i_crit_edge, %if.end14.i.if.end37.i_crit_edge
  br label %rmi_f34_flash_firmware.exit

rmi_f34_flash_firmware.exit:                      ; preds = %if.end37.i, %do.end30.i.rmi_f34_flash_firmware.exit_crit_edge, %do.end21.i.rmi_f34_flash_firmware.exit_crit_edge, %do.end8.i.rmi_f34_flash_firmware.exit_crit_edge, %do.end.i.rmi_f34_flash_firmware.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end37.i ], [ %call.i, %do.end.i.rmi_f34_flash_firmware.exit_crit_edge ], [ %call.i.i, %do.end8.i.rmi_f34_flash_firmware.exit_crit_edge ], [ %call23.i, %do.end21.i.rmi_f34_flash_firmware.exit_crit_edge ], [ %call.i68.i, %do.end30.i.rmi_f34_flash_firmware.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %flash_mutex) #7
  br label %out

out:                                              ; preds = %rmi_f34_flash_firmware.exit, %do.end48, %do.end33, %do.end14
  %ret.0 = phi i32 [ -84, %do.end14 ], [ -84, %do.end33 ], [ %retval.0.i, %rmi_f34_flash_firmware.exit ], [ -84, %do.end48 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_scan_pdt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_initial_reset(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_enable_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34_command(ptr noundef %f34, i8 noundef zeroext %command, i32 noundef %timeout, i1 noundef zeroext %write_bl_id) unnamed_addr #0 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  %bootloader_id.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f34, align 4
  %rmi_dev2 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev2, align 4
  br i1 %write_bl_id, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bootloader_id.i) #7
  %4 = ptrtoint ptr %bootloader_id.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %bootloader_id.i, align 1, !annotation !194
  %5 = getelementptr inbounds [2 x i8], ptr %bootloader_id.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !194
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 8
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %14(ptr noundef %10, i16 noundef zeroext %8, ptr noundef nonnull %bootloader_id.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %dev3.i = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  br i1 %tobool.not.i, label %if.end.i93, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call.i.i) #10
  br label %rmi_f34_write_bootloader_id.exit.thread

if.end.i93:                                       ; preds = %if.then
  %15 = ptrtoint ptr %bootloader_id.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bootloader_id.i, align 1
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %5, align 1
  %conv5.i = zext i8 %18 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev3.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %conv.i, i32 noundef %conv5.i) #7
  %data_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %data_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_base_addr.i, align 2
  %add.i = add i16 %20, 2
  %21 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xport.i.i, align 8
  %ops.i33.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ops.i33.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i33.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i34.i = call i32 %26(ptr noundef %22, i16 noundef zeroext %add.i, ptr noundef nonnull %bootloader_id.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool11.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool11.not.i, label %rmi_f34_write_bootloader_id.exit, label %do.end15.i

do.end15.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.51, i32 noundef %call.i34.i) #10
  br label %rmi_f34_write_bootloader_id.exit.thread

rmi_f34_write_bootloader_id.exit.thread:          ; preds = %do.end15.i, %do.end.i
  %retval.0.i94.ph = phi i32 [ %call.i34.i, %do.end15.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bootloader_id.i) #7
  br label %cleanup

rmi_f34_write_bootloader_id.exit:                 ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bootloader_id.i) #7
  br label %if.end5

if.end5:                                          ; preds = %rmi_f34_write_bootloader_id.exit, %entry.if.end5_crit_edge
  %27 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7
  %cmd_done = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %28 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 9
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_completion.__key) #7
  %ctrl_address = getelementptr inbounds %struct.f34v5_data, ptr %27, i32 0, i32 3
  %29 = ptrtoint ptr %ctrl_address to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ctrl_address, align 2
  %status = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 5
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %36(ptr noundef %32, i16 noundef zeroext %30, ptr noundef %status, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %38, i32 0, i32 2
  %conv = zext i8 %command to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %call.i, i32 noundef %conv) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %conv11 = zext i8 %command to i32
  %and = and i8 %command, 15
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status, align 4
  %or = or i8 %40, %and
  store i8 %or, ptr %status, align 4
  %41 = ptrtoint ptr %ctrl_address to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ctrl_address, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %43 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %or, ptr %data.addr.i, align 1
  %44 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xport.i, align 8
  %ops.i96 = getelementptr inbounds %struct.rmi_transport_dev, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ops.i96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i96, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call.i97 = call i32 %49(ptr noundef %45, i16 noundef zeroext %42, ptr noundef nonnull %data.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp = icmp slt i32 %call.i97, 0
  br i1 %cmp, label %do.end22, label %if.else.i

do.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f34, align 4
  %dev24 = getelementptr inbounds %struct.rmi_function, ptr %51, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.39, i32 noundef %conv11, i32 noundef %call.i97) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end10
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #7
  %call29 = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %if.else.i
  %52 = ptrtoint ptr %ctrl_address to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ctrl_address, align 2
  %54 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xport.i, align 8
  %ops.i99 = getelementptr inbounds %struct.rmi_transport_dev, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %ops.i99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i99, align 4
  %read_block.i100 = getelementptr inbounds %struct.rmi_transport_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %read_block.i100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_block.i100, align 4
  %call.i101 = call i32 %59(ptr noundef %55, i16 noundef zeroext %53, ptr noundef %status, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool35.not = icmp eq i32 %call.i101, 0
  br i1 %tobool35.not, label %if.end43, label %do.end39

do.end39:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f34, align 4
  %dev41 = getelementptr inbounds %struct.rmi_function, ptr %61, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef %conv11, i32 noundef %call.i101) #10
  br label %cleanup

if.end43:                                         ; preds = %if.then31
  %62 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %status, align 4
  %conv45 = zext i8 %63 to i32
  %and46 = and i32 %conv45, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.cleanup_crit_edge, label %do.end51

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %f34, align 4
  %dev53 = getelementptr inbounds %struct.rmi_function, ptr %65, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.37, i32 noundef %conv11, i32 noundef %conv45) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end43.cleanup_crit_edge, %do.end39, %if.else.i.cleanup_crit_edge, %do.end22, %do.end, %rmi_f34_write_bootloader_id.exit.thread
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i97, %do.end22 ], [ %call.i101, %do.end39 ], [ -110, %do.end51 ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ %retval.0.i94.ph, %rmi_f34_write_bootloader_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34_write_blocks(ptr noundef %f34, ptr noundef %data, i32 noundef %block_count, i8 noundef zeroext %command) unnamed_addr #0 align 64 {
entry:
  %start_address = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f34, align 4
  %rmi_dev2 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev2, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_base_addr, align 2
  %add = add i16 %5, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %start_address) #7
  %6 = ptrtoint ptr %start_address to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %start_address, align 2
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i = call i32 %12(ptr noundef %8, i16 noundef zeroext %5, ptr noundef nonnull %start_address, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_count)
  %cmp72 = icmp sgt i32 %block_count, 0
  br i1 %cmp72, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %13 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7
  %dev24 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  %update_progress = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 5
  %update_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 6
  %update_status = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %call.i) #10
  br label %cleanup

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %add25, %if.end23.for.body_crit_edge ]
  %data.addr.073 = phi ptr [ %data, %for.body.lr.ph ], [ %add.ptr, %if.end23.for.body_crit_edge ]
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 4
  %conv7 = zext i16 %15 to i32
  %16 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xport.i, align 8
  %ops.i67 = getelementptr inbounds %struct.rmi_transport_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i67, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i68 = call i32 %21(ptr noundef %17, i16 noundef zeroext %add, ptr noundef %data.addr.073, i32 noundef %conv7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool9.not = icmp eq i32 %call.i68, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.81, i32 noundef %i.074, i32 noundef %call.i68) #10
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %call16 = call fastcc i32 @rmi_f34_command(ptr noundef %f34, i8 noundef zeroext %command, i32 noundef 500, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.84, i32 noundef %i.074, i32 noundef %call16) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %add25 = add nuw nsw i32 %i.074, 1
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev24, ptr noundef nonnull @.str.86, i32 noundef %add25, i32 noundef %block_count) #7
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %13, align 4
  %conv27 = zext i16 %23 to i32
  %add.ptr = getelementptr i8, ptr %data.addr.073, i32 %conv27
  %24 = ptrtoint ptr %update_progress to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %update_progress, align 4
  %add30 = add i32 %25, %conv27
  store i32 %add30, ptr %update_progress, align 4
  %mul = mul i32 %add30, 100
  %26 = ptrtoint ptr %update_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %update_size, align 4
  %div = sdiv i32 %mul, %27
  %28 = ptrtoint ptr %update_status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %update_status, align 4
  %exitcond.not = icmp eq i32 %add25, %block_count
  br i1 %exitcond.not, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %do.end21, %do.end13, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i68, %do.end13 ], [ %call16, %do.end21 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %start_address) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_update_fw_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dattr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %f34_container = getelementptr inbounds %struct.rmi_driver_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f34_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f34_container, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %update_status.i = getelementptr inbounds %struct.f34_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %update_status.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %update_status.0 = phi i32 [ %7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.88, i32 noundef %update_status.0) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_f34v7_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !152, !153, !155, !157, !158, !159, !160, !162, !164, !165, !167, !169, !171, !173, !175, !176, !177, !179, !181, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 603, i32 11}
!2 = !{ptr @rmi_f34_handler, !3, !"rmi_f34_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 601, i32 29}
!4 = !{ptr @rmi_firmware_attr_group, !5, !"rmi_firmware_attr_group", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 516, i32 37}
!6 = !{ptr @rmi_firmware_attrs, !7, !"rmi_firmware_attrs", i1 false, i1 false}
!7 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 508, i32 26}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 336, i32 8}
!10 = !{ptr @dev_attr_bootloader_id, !9, !"dev_attr_bootloader_id", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 324, i32 37}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 328, i32 37}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 355, i32 8}
!17 = !{ptr @dev_attr_configuration_id, !16, !"dev_attr_configuration_id", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 349, i32 36}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 490, i32 8}
!22 = !{ptr @dev_attr_update_fw, !21, !"dev_attr_update_fw", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 481, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rmi_driver_update_fw_store._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @rmi_driver_update_fw_store._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 367, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rmi_firmware_update._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @rmi_firmware_update._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 375, i32 4}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rmi_firmware_update._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rmi_firmware_update._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 379, i32 3}
!44 = !{ptr @rmi_firmware_update._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rmi_firmware_update._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 406, i32 3}
!48 = !{ptr @rmi_firmware_update._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rmi_firmware_update._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 423, i32 3}
!52 = !{ptr @rmi_firmware_update._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rmi_firmware_update._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 426, i32 3}
!56 = !{ptr @rmi_firmware_update._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rmi_firmware_update._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 432, i32 29}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 437, i32 3}
!62 = !{ptr @rmi_firmware_update._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rmi_firmware_update._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 453, i32 29}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 62, i32 3}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rmi_f34_command._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rmi_f34_command._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 72, i32 3}
!73 = !{ptr @rmi_f34_command._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rmi_f34_command._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 83, i32 4}
!77 = !{ptr @rmi_f34_command._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rmi_f34_command._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 90, i32 4}
!81 = !{ptr @rmi_f34_command._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rmi_f34_command._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 26, i32 3}
!85 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rmi_f34_write_bootloader_id._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @rmi_f34_write_bootloader_id._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 31, i32 34}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 38, i32 3}
!92 = !{ptr @rmi_f34_write_bootloader_id._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @rmi_f34_write_bootloader_id._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @init_completion.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../include/linux/completion.h", i32 87, i32 2}
!96 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 255, i32 3}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 261, i32 3}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 267, i32 3}
!103 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rmi_f34_update_firmware._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @rmi_f34_update_firmware._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 276, i32 3}
!108 = !{ptr @rmi_f34_update_firmware._entry.58, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rmi_f34_update_firmware._entry_ptr.60, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 285, i32 3}
!112 = !{ptr @rmi_f34_update_firmware._entry.61, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @rmi_f34_update_firmware._entry_ptr.63, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 290, i32 2}
!116 = !{ptr @rmi_f34_update_firmware._entry.64, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @rmi_f34_update_firmware._entry_ptr.66, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 206, i32 3}
!120 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rmi_f34_flash_firmware._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @rmi_f34_flash_firmware._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 212, i32 3}
!125 = !{ptr @rmi_f34_flash_firmware._entry.69, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @rmi_f34_flash_firmware._entry_ptr.71, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 225, i32 4}
!129 = !{ptr @rmi_f34_flash_firmware._entry.72, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rmi_f34_flash_firmware._entry_ptr.74, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 232, i32 3}
!133 = !{ptr @rmi_f34_flash_firmware._entry.75, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rmi_f34_flash_firmware._entry_ptr.77, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 143, i32 3}
!137 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rmi_f34_write_blocks._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @rmi_f34_write_blocks._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 151, i32 4}
!142 = !{ptr @rmi_f34_write_blocks._entry.80, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rmi_f34_write_blocks._entry_ptr.82, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.84, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 158, i32 4}
!146 = !{ptr @rmi_f34_write_blocks._entry.83, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @rmi_f34_write_blocks._entry_ptr.85, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 164, i32 35}
!150 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 505, i32 8}
!152 = !{ptr @dev_attr_update_fw_status, !151, !"dev_attr_update_fw_status", i1 false, i1 false}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 502, i32 35}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 544, i32 3}
!157 = !{ptr @.str.90, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @rmi_f34_probe._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @rmi_f34_probe._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 550, i32 4}
!162 = !{ptr @rmi_f34_probe.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 552, i32 2}
!164 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.93, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 562, i32 34}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 564, i32 34}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 566, i32 34}
!171 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 568, i32 34}
!173 = !{ptr @.str.98, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 575, i32 4}
!175 = !{ptr @rmi_f34_probe._entry.97, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @rmi_f34_probe._entry_ptr.99, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 580, i32 5}
!179 = !{ptr @.str.101, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 584, i32 35}
!181 = !{ptr @.str.102, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 110, i32 35}
!183 = !{ptr @__func__.rmi_f34_attention, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/rmi4/rmi_f34.c", i32 111, i32 4}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{!"auto-init"}
!195 = !{i8 0, i8 2}
