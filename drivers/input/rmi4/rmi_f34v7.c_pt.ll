; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f34v7.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f34v7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.f34v7_data_1_5 = type <{ i8, i16, i16, i8, [2 x i8] }>
%struct.f34v7_query_1_7 = type <{ i8, i8, i32, i8, i16, i16, i16, i16, i16, [4 x i8] }>
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
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.f34_data = type { ptr, i8, [5 x i8], [65 x i8], i32, i32, i32, %union.anon.68 }
%union.anon.68 = type { %struct.f34v7_data }
%struct.f34v7_data = type { i8, i8, i8, i8, ptr, i32, i8, i8, i16, i16, i16, i16, i16, i16, i8, i16, i8, %struct.register_offset, %struct.block_count, %struct.physical_address, %struct.image_metadata, ptr, ptr, %struct.completion }
%struct.register_offset = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.block_count = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.physical_address = type { i16, i16, i16, i16 }
%struct.image_metadata = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, [11 x i8], [11 x i8], %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_data, %struct.block_count, %struct.physical_address }
%struct.block_data = type { ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.image_header_10 = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.container_descriptor = type { i32, i16, i8, i8, i8, i8, i8, i8, [4 x i8], i32, i32, i32, i32 }
%struct.partition_table = type { i8, i8, i16, i16, i16 }

@rmi_f34v7_do_reflash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Partition table programmed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rmi_f34v7_do_reflash\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/rmi4/rmi_f34v7.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f34v7_do_reflash._entry_ptr = internal global ptr @rmi_f34v7_do_reflash._entry, section ".printk_index", align 4
@rmi_f34v7_do_reflash._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Writing firmware (%d bytes)...\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_f34v7_do_reflash._entry_ptr.7 = internal global ptr @rmi_f34v7_do_reflash._entry.5, section ".printk_index", align 4
@rmi_f34v7_do_reflash._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Writing config (%d bytes)...\0A\00", [34 x i8] zeroinitializer }, align 32
@rmi_f34v7_do_reflash._entry_ptr.10 = internal global ptr @rmi_f34v7_do_reflash._entry.8, section ".printk_index", align 4
@rmi_f34v7_do_reflash._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Writing display config...\0A\00", [37 x i8] zeroinitializer }, align 32
@rmi_f34v7_do_reflash._entry_ptr.13 = internal global ptr @rmi_f34v7_do_reflash._entry.11, section ".printk_index", align 4
@rmi_f34v7_do_reflash._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1269, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Writing guest code...\0A\00", [41 x i8] zeroinitializer }, align 32
@rmi_f34v7_do_reflash._entry_ptr.16 = internal global ptr @rmi_f34v7_do_reflash._entry.14, section ".printk_index", align 4
@rmi_f34v7_start_reflash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1322, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Partition table mismatch\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_f34v7_start_reflash\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rmi_f34v7_start_reflash._entry_ptr = internal global ptr @rmi_f34v7_start_reflash._entry, section ".printk_index", align 4
@rmi_f34v7_start_reflash._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 1327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware image OK\0A\00", [45 x i8] zeroinitializer }, align 32
@rmi_f34v7_start_reflash._entry_ptr.22 = internal global ptr @rmi_f34v7_start_reflash._entry.20, section ".printk_index", align 4
@rmi_f34v7_start_reflash._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.2, i32 1335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Device in bootloader mode\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34v7_start_reflash._entry_ptr.25 = internal global ptr @rmi_f34v7_start_reflash._entry.23, section ".printk_index", align 4
@rmi_f34v7_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1357, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to read bootloader ID\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_f34v7_probe\00", [16 x i8] zeroinitializer }, align 32
@rmi_f34v7_probe._entry_ptr = internal global ptr @rmi_f34v7_probe._entry, section ".printk_index", align 4
@rmi_f34v7_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1374, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Unrecognized bootloader version: %d (%c) %d (%c)\0A\00", [42 x i8] zeroinitializer }, align 32
@rmi_f34v7_probe._entry_ptr.30 = internal global ptr @rmi_f34v7_probe._entry.28, section ".printk_index", align 4
@rmi_f34v7_read_queries_bl_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 437, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to read query 0\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rmi_f34v7_read_queries_bl_version\00", [62 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_queries_bl_version._entry_ptr = internal global ptr @rmi_f34v7_read_queries_bl_version._entry, section ".printk_index", align 4
@rmi_f34v7_read_queries_bl_version._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 449, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to read queries 1 to 7\0A\00", [61 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_queries_bl_version._entry_ptr.35 = internal global ptr @rmi_f34v7_read_queries_bl_version._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bootloader V%d.%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: header->major_header_version = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.rmi_f34v7_parse_image_info = private unnamed_addr constant [27 x i8] c"rmi_f34v7_parse_image_info\00", align 1
@rmi_f34v7_parse_image_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.rmi_f34v7_parse_image_info, ptr @.str.2, i32 1170, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported image file format %02X\0A\00", [60 x i8] zeroinitializer }, align 32
@rmi_f34v7_parse_image_info._entry_ptr = internal global ptr @rmi_f34v7_parse_image_info._entry, section ".printk_index", align 4
@rmi_f34v7_parse_image_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.rmi_f34v7_parse_image_info, ptr @.str.2, i32 1176, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: No flash config in fw image\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_f34v7_parse_image_info._entry_ptr.41 = internal global ptr @rmi_f34v7_parse_image_info._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: f34->v7.img.checksum=%X\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rmi_f34v7_parse_image_header_10 = private unnamed_addr constant [32 x i8] c"rmi_f34v7_parse_image_header_10\00", align 1
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: container_id=%d, length=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Partition entry %d: %*ph\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rmi_f34v7_parse_partition_table = private unnamed_addr constant [32 x i8] c"rmi_f34v7_parse_partition_table\00", align 1
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Core code block count: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Core config block count: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Display config block count: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Flash config block count: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Guest code block count: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Guest serialization block count: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Global parameters block count: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Device config block count: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rmi_f34v7_check_ui_firmware_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 584, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UI firmware size mismatch: %d != %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rmi_f34v7_check_ui_firmware_size\00", [63 x i8] zeroinitializer }, align 32
@rmi_f34v7_check_ui_firmware_size._entry_ptr = internal global ptr @rmi_f34v7_check_ui_firmware_size._entry, section ".printk_index", align 4
@rmi_f34v7_check_ui_config_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 599, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UI config size mismatch\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmi_f34v7_check_ui_config_size\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34v7_check_ui_config_size._entry_ptr = internal global ptr @rmi_f34v7_check_ui_config_size._entry, section ".printk_index", align 4
@rmi_f34v7_check_dp_config_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 614, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Display config size mismatch\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmi_f34v7_check_dp_config_size\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34v7_check_dp_config_size._entry_ptr = internal global ptr @rmi_f34v7_check_dp_config_size._entry, section ".printk_index", align 4
@rmi_f34v7_check_guest_code_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 629, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Guest code size mismatch\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rmi_f34v7_check_guest_code_size\00", [32 x i8] zeroinitializer }, align 32
@rmi_f34v7_check_guest_code_size._entry_ptr = internal global ptr @rmi_f34v7_check_guest_code_size._entry, section ".printk_index", align 4
@rmi_f34v7_check_bl_config_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 644, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bootloader config size mismatch\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmi_f34v7_check_bl_config_size\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34v7_check_bl_config_size._entry_ptr = internal global ptr @rmi_f34v7_check_bl_config_size._entry, section ".printk_index", align 4
@rmi_f34v7_erase_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 707, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Erasing firmware...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmi_f34v7_erase_all\00", [44 x i8] zeroinitializer }, align 32
@rmi_f34v7_erase_all._entry_ptr = internal global ptr @rmi_f34v7_erase_all._entry, section ".printk_index", align 4
@rmi_f34v7_write_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 170, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid command 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_f34v7_write_command\00", [40 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_command._entry_ptr = internal global ptr @rmi_f34v7_write_command._entry, section ".printk_index", align 4
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: writing cmd %02X\0A\00", [42 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_command._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.2, i32 202, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to write flash command\0A\00", [61 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_command._entry_ptr.70 = internal global ptr @rmi_f34v7_write_command._entry.68, section ".printk_index", align 4
@rmi_f34v7_write_command_single_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 130, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Failed to write single transaction command\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rmi_f34v7_write_command_single_transaction\00", [53 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_command_single_transaction._entry_ptr = internal global ptr @rmi_f34v7_write_command_single_transaction._entry, section ".printk_index", align 4
@rmi_f34v7_wait_for_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 68, ptr @.str.75, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Timed out waiting for idle status\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_f34v7_wait_for_idle\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_f34v7_wait_for_idle._entry_ptr = internal global ptr @rmi_f34v7_wait_for_idle._entry, section ".printk_index", align 4
@rmi_f34v7_erase_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 655, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Erasing config...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmi_f34v7_erase_config\00", [41 x i8] zeroinitializer }, align 32
@rmi_f34v7_erase_config._entry_ptr = internal global ptr @rmi_f34v7_erase_config._entry, section ".printk_index", align 4
@rmi_f34v7_erase_guest_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 688, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Erasing guest code...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rmi_f34v7_erase_guest_code\00", [37 x i8] zeroinitializer }, align 32
@rmi_f34v7_erase_guest_code._entry_ptr = internal global ptr @rmi_f34v7_erase_guest_code._entry, section ".printk_index", align 4
@rmi_f34v7_read_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 763, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to write block number\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rmi_f34v7_read_blocks\00", [42 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_blocks._entry_ptr = internal global ptr @rmi_f34v7_read_blocks._entry, section ".printk_index", align 4
@rmi_f34v7_read_blocks._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 780, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Write transfer length fail (%d remaining)\0A\00", [49 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_blocks._entry_ptr.84 = internal global ptr @rmi_f34v7_read_blocks._entry.82, section ".printk_index", align 4
@rmi_f34v7_read_blocks._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 801, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Read block failed (%d blks remaining)\0A\00", [53 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_blocks._entry_ptr.87 = internal global ptr @rmi_f34v7_read_blocks._entry.85, section ".printk_index", align 4
@rmi_f34v7_write_partition_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.88, ptr @.str.2, i32 260, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rmi_f34v7_write_partition_id\00", [35 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_partition_id._entry_ptr = internal global ptr @rmi_f34v7_write_partition_id._entry, section ".printk_index", align 4
@rmi_f34v7_write_partition_id._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 269, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to write partition ID\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_partition_id._entry_ptr.91 = internal global ptr @rmi_f34v7_write_partition_id._entry.89, section ".printk_index", align 4
@rmi_f34v7_write_flash_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 934, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Flash config size mismatch\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rmi_f34v7_write_flash_config\00", [35 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_flash_config._entry_ptr = internal global ptr @rmi_f34v7_write_flash_config._entry, section ".printk_index", align 4
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Erase flash config command written\0A\00", [56 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_f34v7_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.95, ptr @.str.2, i32 835, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rmi_f34v7_write_f34v7_blocks\00", [35 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_f34v7_blocks._entry_ptr = internal global ptr @rmi_f34v7_write_f34v7_blocks._entry, section ".printk_index", align 4
@rmi_f34v7_write_f34v7_blocks._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.95, ptr @.str.2, i32 856, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_f34v7_blocks._entry_ptr.97 = internal global ptr @rmi_f34v7_write_f34v7_blocks._entry.96, section ".printk_index", align 4
@rmi_f34v7_write_f34v7_blocks._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.95, ptr @.str.2, i32 870, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed writing data (%d blks remaining)\0A\00", [51 x i8] zeroinitializer }, align 32
@rmi_f34v7_write_f34v7_blocks._entry_ptr.100 = internal global ptr @rmi_f34v7_write_f34v7_blocks._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Error %d reading flash status\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.rmi_f34v7_read_flash_status = private unnamed_addr constant [28 x i8] c"rmi_f34v7_read_flash_status\00", align 1
@rmi_f34v7_read_flash_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @__func__.rmi_f34v7_read_flash_status, ptr @.str.2, i32 42, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: status=%d, command=0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_flash_status._entry_ptr = internal global ptr @rmi_f34v7_read_flash_status._entry, section ".printk_index", align 4
@rmi_f34v7_read_flash_status._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.rmi_f34v7_read_flash_status, ptr @.str.2, i32 51, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to read flash command\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_flash_status._entry_ptr.105 = internal global ptr @rmi_f34v7_read_flash_status._entry.103, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_queries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.107, ptr @.str.2, i32 480, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmi_f34v7_read_queries\00", [41 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_queries._entry_ptr = internal global ptr @rmi_f34v7_read_queries._entry, section ".printk_index", align 4
@rmi_f34v7_read_queries._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.107, ptr @.str.2, i32 492, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_queries._entry_ptr.109 = internal global ptr @rmi_f34v7_read_queries._entry.108, section ".printk_index", align 4
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: f34->v7.block_size = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*phN\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Configuration ID: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Supported partitions: %*ph\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_queries._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 564, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to read partition table\0A\00", [60 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_queries._entry_ptr.116 = internal global ptr @rmi_f34v7_read_queries._entry.114, section ".printk_index", align 4
@rmi_f34v7_read_partition_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.117, ptr @.str.2, i32 297, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmi_f34v7_read_partition_table\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_partition_table._entry_ptr = internal global ptr @rmi_f34v7_read_partition_table._entry, section ".printk_index", align 4
@rmi_f34v7_read_partition_table._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 308, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Failed to write transfer length\0A\00", [59 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_partition_table._entry_ptr.120 = internal global ptr @rmi_f34v7_read_partition_table._entry.118, section ".printk_index", align 4
@rmi_f34v7_read_partition_table._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.2, i32 317, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed to write command\0A\00", [35 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_partition_table._entry_ptr.123 = internal global ptr @rmi_f34v7_read_partition_table._entry.121, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rmi_f34v7_read_partition_table._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.2, i32 338, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to read block data\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_f34v7_read_partition_table._entry_ptr.126 = internal global ptr @rmi_f34v7_read_partition_table._entry.124, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 2, i64 3, i64 8, i64 13, i64 15, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 16, i64 5, i64 6, i64 14, i64 17]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 8, i64 7, i64 8, i64 53, i64 54]
@__sancov_gen_cov_switch_values.130 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.131 = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.132 = internal global [8 x i64] [i64 6, i64 8, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.135 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1240, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1244, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1251, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1260, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1269, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1321, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1327, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1334, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1356, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1370, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 436, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 448, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 456, i32 39 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1161, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1169, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1175, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1088, i32 39 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1108, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 362, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 369, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 376, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 383, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 389, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 396, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 402, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 408, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 414, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 582, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 599, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 614, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 629, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 644, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 707, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 169, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 194, i32 39 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 201, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 128, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 67, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 655, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 688, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 762, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 778, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 799, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 259, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 268, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 933, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 945, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 834, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 854, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 868, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 33, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 41, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 50, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 87, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 479, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 491, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 504, i32 39 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 533, i32 5 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 535, i32 40 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 543, i32 39 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 563, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 296, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 307, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 316, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [34 x i8] c"../drivers/input/rmi4/rmi_f34v7.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 337, i32 3 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @rmi_f34v7_check_bl_config_size._entry, ptr @rmi_f34v7_check_bl_config_size._entry_ptr, ptr @rmi_f34v7_check_dp_config_size._entry, ptr @rmi_f34v7_check_dp_config_size._entry_ptr, ptr @rmi_f34v7_check_guest_code_size._entry, ptr @rmi_f34v7_check_guest_code_size._entry_ptr, ptr @rmi_f34v7_check_ui_config_size._entry, ptr @rmi_f34v7_check_ui_config_size._entry_ptr, ptr @rmi_f34v7_check_ui_firmware_size._entry, ptr @rmi_f34v7_check_ui_firmware_size._entry_ptr, ptr @rmi_f34v7_do_reflash._entry, ptr @rmi_f34v7_do_reflash._entry.11, ptr @rmi_f34v7_do_reflash._entry.14, ptr @rmi_f34v7_do_reflash._entry.5, ptr @rmi_f34v7_do_reflash._entry.8, ptr @rmi_f34v7_do_reflash._entry_ptr, ptr @rmi_f34v7_do_reflash._entry_ptr.10, ptr @rmi_f34v7_do_reflash._entry_ptr.13, ptr @rmi_f34v7_do_reflash._entry_ptr.16, ptr @rmi_f34v7_do_reflash._entry_ptr.7, ptr @rmi_f34v7_erase_all._entry, ptr @rmi_f34v7_erase_all._entry_ptr, ptr @rmi_f34v7_erase_config._entry, ptr @rmi_f34v7_erase_config._entry_ptr, ptr @rmi_f34v7_erase_guest_code._entry, ptr @rmi_f34v7_erase_guest_code._entry_ptr, ptr @rmi_f34v7_parse_image_info._entry, ptr @rmi_f34v7_parse_image_info._entry.39, ptr @rmi_f34v7_parse_image_info._entry_ptr, ptr @rmi_f34v7_parse_image_info._entry_ptr.41, ptr @rmi_f34v7_probe._entry, ptr @rmi_f34v7_probe._entry.28, ptr @rmi_f34v7_probe._entry_ptr, ptr @rmi_f34v7_probe._entry_ptr.30, ptr @rmi_f34v7_read_blocks._entry, ptr @rmi_f34v7_read_blocks._entry.82, ptr @rmi_f34v7_read_blocks._entry.85, ptr @rmi_f34v7_read_blocks._entry_ptr, ptr @rmi_f34v7_read_blocks._entry_ptr.84, ptr @rmi_f34v7_read_blocks._entry_ptr.87, ptr @rmi_f34v7_read_flash_status._entry, ptr @rmi_f34v7_read_flash_status._entry.103, ptr @rmi_f34v7_read_flash_status._entry_ptr, ptr @rmi_f34v7_read_flash_status._entry_ptr.105, ptr @rmi_f34v7_read_partition_table._entry, ptr @rmi_f34v7_read_partition_table._entry.118, ptr @rmi_f34v7_read_partition_table._entry.121, ptr @rmi_f34v7_read_partition_table._entry.124, ptr @rmi_f34v7_read_partition_table._entry_ptr, ptr @rmi_f34v7_read_partition_table._entry_ptr.120, ptr @rmi_f34v7_read_partition_table._entry_ptr.123, ptr @rmi_f34v7_read_partition_table._entry_ptr.126, ptr @rmi_f34v7_read_queries._entry, ptr @rmi_f34v7_read_queries._entry.108, ptr @rmi_f34v7_read_queries._entry.114, ptr @rmi_f34v7_read_queries._entry_ptr, ptr @rmi_f34v7_read_queries._entry_ptr.109, ptr @rmi_f34v7_read_queries._entry_ptr.116, ptr @rmi_f34v7_read_queries_bl_version._entry, ptr @rmi_f34v7_read_queries_bl_version._entry.33, ptr @rmi_f34v7_read_queries_bl_version._entry_ptr, ptr @rmi_f34v7_read_queries_bl_version._entry_ptr.35, ptr @rmi_f34v7_start_reflash._entry, ptr @rmi_f34v7_start_reflash._entry.20, ptr @rmi_f34v7_start_reflash._entry.23, ptr @rmi_f34v7_start_reflash._entry_ptr, ptr @rmi_f34v7_start_reflash._entry_ptr.22, ptr @rmi_f34v7_start_reflash._entry_ptr.25, ptr @rmi_f34v7_wait_for_idle._entry, ptr @rmi_f34v7_wait_for_idle._entry_ptr, ptr @rmi_f34v7_write_command._entry, ptr @rmi_f34v7_write_command._entry.68, ptr @rmi_f34v7_write_command._entry_ptr, ptr @rmi_f34v7_write_command._entry_ptr.70, ptr @rmi_f34v7_write_command_single_transaction._entry, ptr @rmi_f34v7_write_command_single_transaction._entry_ptr, ptr @rmi_f34v7_write_f34v7_blocks._entry, ptr @rmi_f34v7_write_f34v7_blocks._entry.96, ptr @rmi_f34v7_write_f34v7_blocks._entry.98, ptr @rmi_f34v7_write_f34v7_blocks._entry_ptr, ptr @rmi_f34v7_write_f34v7_blocks._entry_ptr.100, ptr @rmi_f34v7_write_f34v7_blocks._entry_ptr.97, ptr @rmi_f34v7_write_flash_config._entry, ptr @rmi_f34v7_write_flash_config._entry_ptr, ptr @rmi_f34v7_write_partition_id._entry, ptr @rmi_f34v7_write_partition_id._entry.89, ptr @rmi_f34v7_write_partition_id._entry_ptr, ptr @rmi_f34v7_write_partition_id._entry_ptr.91, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @init_completion.__key, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_do_reflash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_do_reflash._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_do_reflash._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_do_reflash._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_do_reflash._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_start_reflash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_start_reflash._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_start_reflash._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_queries_bl_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_queries_bl_version._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_parse_image_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_parse_image_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_check_ui_firmware_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_check_ui_config_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_check_dp_config_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_check_guest_code_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_check_bl_config_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_erase_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_command._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_command_single_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_wait_for_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_erase_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_erase_guest_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_blocks._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_blocks._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_partition_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_partition_id._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_flash_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_f34v7_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_f34v7_blocks._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_write_f34v7_blocks._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_flash_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_flash_status._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_queries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_queries._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_queries._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_partition_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_partition_table._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_partition_table._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f34v7_read_partition_table._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_f34v7_do_reflash(ptr noundef %f34, ptr nocapture noundef readonly %fw) local_unnamed_addr #0 align 64 {
entry:
  %data_1_5.i.i.i.i210 = alloca %struct.f34v7_data_1_5, align 8
  %command.i.i.i = alloca i8, align 1
  %partition.i.i.i = alloca i8, align 1
  %length.i.i = alloca i16, align 2
  %block_number.i.i = alloca i16, align 2
  %data_1_5.i.i.i.i = alloca %struct.f34v7_data_1_5, align 8
  %data_1_5.i.i.i = alloca %struct.f34v7_data_1_5, align 8
  %query_0.i = alloca i8, align 1
  %query_1_7.i = alloca %struct.f34v7_query_1_7, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f34, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %set_irq_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_irq_bits, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 7
  %call = tail call i32 %7(ptr noundef %3, ptr noundef %irq_mask) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %query_0.i) #6
  %8 = ptrtoint ptr %query_0.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %query_0.i, align 1, !annotation !256
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %query_1_7.i) #6
  %9 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 1
  %10 = call ptr @memset(ptr %query_1_7.i, i32 255, i32 21)
  %11 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f34, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 8
  %rmi_dev.i = getelementptr inbounds %struct.rmi_function, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmi_dev.i, align 4
  %conv2.i = and i16 %14, 255
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %22(ptr noundef %18, i16 noundef zeroext %conv2.i, ptr noundef nonnull %query_0.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f34, align 4
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %24, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #9
  br label %rmi_f34v7_read_queries_bl_version.exit

if.end.i:                                         ; preds = %entry
  %25 = ptrtoint ptr %query_0.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %query_0.i, align 1
  %27 = and i8 %26, 7
  %narrow.i = add nuw nsw i8 %27, 1
  %add.i = zext i8 %narrow.i to i16
  %28 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f34, align 4
  %rmi_dev7.i = getelementptr inbounds %struct.rmi_function, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %rmi_dev7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmi_dev7.i, align 4
  %add9.i = add nuw nsw i16 %conv2.i, %add.i
  %xport.i1.i = getelementptr inbounds %struct.rmi_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %xport.i1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xport.i1.i, align 8
  %ops.i2.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ops.i2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i2.i, align 4
  %read_block.i3.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %read_block.i3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_block.i3.i, align 4
  %call.i4.i = call i32 %37(ptr noundef %33, i16 noundef zeroext %add9.i, ptr noundef nonnull %query_1_7.i, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp12.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f34, align 4
  %dev19.i = getelementptr inbounds %struct.rmi_function, ptr %39, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #9
  br label %rmi_f34v7_read_queries_bl_version.exit

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %query_1_7.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %query_1_7.i, align 1
  %bootloader_id.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %42 = ptrtoint ptr %bootloader_id.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %bootloader_id.i, align 1
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %9, align 1
  %arrayidx22.i = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx22.i, align 1
  %46 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f34, align 4
  %dev24.i = getelementptr inbounds %struct.rmi_function, ptr %47, i32 0, i32 2
  %conv27.i = zext i8 %44 to i32
  %conv30.i = zext i8 %41 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev24.i, ptr noundef nonnull @.str.36, i32 noundef %conv27.i, i32 noundef %conv30.i) #6
  br label %rmi_f34v7_read_queries_bl_version.exit

rmi_f34v7_read_queries_bl_version.exit:           ; preds = %if.end20.i, %do.end17.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %query_1_7.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %query_0.i) #6
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7
  %image = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 22
  %51 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %image, align 4
  %update_progress = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 5
  %52 = ptrtoint ptr %update_progress to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %update_progress, align 4
  %update_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 6
  %53 = ptrtoint ptr %update_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %update_size, align 4
  %call5 = call fastcc i32 @rmi_f34v7_parse_image_info(ptr noundef %f34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %rmi_f34v7_read_queries_bl_version.exit.fail_crit_edge, label %if.end

rmi_f34v7_read_queries_bl_version.exit.fail_crit_edge: ; preds = %rmi_f34v7_read_queries_bl_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end:                                           ; preds = %rmi_f34v7_read_queries_bl_version.exit
  %new_partition_table = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 16
  %54 = ptrtoint ptr %new_partition_table to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %new_partition_table, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not = icmp eq i8 %55, 0
  br i1 %tobool.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %size.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 13, i32 1
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 4
  %block_size.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %58 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %block_size.i, align 2
  %conv.i = zext i16 %59 to i32
  %div.i = sdiv i32 %57, %conv.i
  %conv2.i158 = and i32 %div.i, 65535
  %60 = ptrtoint ptr %update_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %update_size, align 4
  %add.i159 = add i32 %61, %conv2.i158
  store i32 %add.i159, ptr %update_size, align 4
  %blkcount.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18
  %62 = ptrtoint ptr %blkcount.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %blkcount.i, align 2
  %conv5.i = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i158, i32 %conv5.i)
  %cmp.not.i = icmp eq i32 %conv2.i158, %conv5.i
  br i1 %cmp.not.i, label %if.end10, label %rmi_f34v7_check_ui_firmware_size.exit.thread

rmi_f34v7_check_ui_firmware_size.exit.thread:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %f34, align 4
  %dev.i160 = getelementptr inbounds %struct.rmi_function, ptr %65, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i160, ptr noundef nonnull @.str.53, i32 noundef %conv2.i158, i32 noundef %conv5.i) #9
  br label %fail

if.end10:                                         ; preds = %if.then6
  %size.i162 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 14, i32 1
  %66 = ptrtoint ptr %size.i162 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i162, align 4
  %68 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %block_size.i, align 2
  %conv.i164 = zext i16 %69 to i32
  %div.i165 = sdiv i32 %67, %conv.i164
  %conv2.i166 = and i32 %div.i165, 65535
  %70 = ptrtoint ptr %update_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %update_size, align 4
  %add.i168 = add i32 %71, %conv2.i166
  store i32 %add.i168, ptr %update_size, align 4
  %ui_config4.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18, i32 1
  %72 = ptrtoint ptr %ui_config4.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ui_config4.i, align 2
  %74 = trunc i32 %div.i165 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %74)
  %cmp.not.i169 = icmp eq i16 %73, %74
  br i1 %cmp.not.i169, label %if.end14, label %rmi_f34v7_check_ui_config_size.exit.thread

rmi_f34v7_check_ui_config_size.exit.thread:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %f34, align 4
  %dev.i170 = getelementptr inbounds %struct.rmi_function, ptr %76, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i170, ptr noundef nonnull @.str.55) #9
  br label %fail

if.end14:                                         ; preds = %if.end10
  %77 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %50, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool15.not = icmp eq i8 %78, 0
  br i1 %tobool15.not, label %if.end14.if.end22_crit_edge, label %land.lhs.true

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end14
  %contains_display_cfg = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 2
  %79 = ptrtoint ptr %contains_display_cfg to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %contains_display_cfg, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool16.not = icmp eq i8 %80, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end22_crit_edge, label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  %size.i173 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 15, i32 1
  %81 = ptrtoint ptr %size.i173 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size.i173, align 4
  %83 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %block_size.i, align 2
  %conv.i175 = zext i16 %84 to i32
  %div.i176 = sdiv i32 %82, %conv.i175
  %conv2.i177 = and i32 %div.i176, 65535
  %85 = ptrtoint ptr %update_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %update_size, align 4
  %add.i179 = add i32 %86, %conv2.i177
  store i32 %add.i179, ptr %update_size, align 4
  %dp_config4.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18, i32 2
  %87 = ptrtoint ptr %dp_config4.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %dp_config4.i, align 2
  %89 = trunc i32 %div.i176 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %89)
  %cmp.not.i180 = icmp eq i16 %88, %89
  br i1 %cmp.not.i180, label %if.then17.if.end22_crit_edge, label %rmi_f34v7_check_dp_config_size.exit.thread

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

rmi_f34v7_check_dp_config_size.exit.thread:       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %f34, align 4
  %dev.i181 = getelementptr inbounds %struct.rmi_function, ptr %91, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i181, ptr noundef nonnull @.str.57) #9
  br label %fail

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %has_guest_code = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 1
  %92 = ptrtoint ptr %has_guest_code to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %has_guest_code, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool23.not = icmp eq i8 %93, 0
  br i1 %tobool23.not, label %if.end22.if.end37_crit_edge, label %land.lhs.true24

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true24:                                  ; preds = %if.end22
  %contains_guest_code = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 3
  %94 = ptrtoint ptr %contains_guest_code to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %contains_guest_code, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool26.not = icmp eq i8 %95, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end37_crit_edge, label %if.then27

land.lhs.true24.if.end37_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then27:                                        ; preds = %land.lhs.true24
  %size.i184 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 18, i32 1
  %96 = ptrtoint ptr %size.i184 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size.i184, align 4
  %98 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %block_size.i, align 2
  %conv.i186 = zext i16 %99 to i32
  %div.i187 = sdiv i32 %97, %conv.i186
  %conv2.i188 = and i32 %div.i187, 65535
  %100 = ptrtoint ptr %update_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %update_size, align 4
  %add.i190 = add i32 %101, %conv2.i188
  store i32 %add.i190, ptr %update_size, align 4
  %guest_code4.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18, i32 7
  %102 = ptrtoint ptr %guest_code4.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %guest_code4.i, align 2
  %104 = trunc i32 %div.i187 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %104)
  %cmp.not.i191 = icmp eq i16 %103, %104
  br i1 %cmp.not.i191, label %if.then27.if.end37_crit_edge, label %rmi_f34v7_check_guest_code_size.exit.thread

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

rmi_f34v7_check_guest_code_size.exit.thread:      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %f34, align 4
  %dev.i192 = getelementptr inbounds %struct.rmi_function, ptr %106, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i192, ptr noundef nonnull @.str.59) #9
  br label %fail

if.else:                                          ; preds = %if.end
  %size.i195 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 17, i32 1
  %107 = ptrtoint ptr %size.i195 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size.i195, align 4
  %block_size.i196 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %109 = ptrtoint ptr %block_size.i196 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %block_size.i196, align 2
  %conv.i197 = zext i16 %110 to i32
  %div.i198 = sdiv i32 %108, %conv.i197
  %conv2.i199 = and i32 %div.i198, 65535
  %111 = ptrtoint ptr %update_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %update_size, align 4
  %add.i201 = add i32 %112, %conv2.i199
  store i32 %add.i201, ptr %update_size, align 4
  %bl_config4.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18, i32 5
  %113 = ptrtoint ptr %bl_config4.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %bl_config4.i, align 2
  %115 = trunc i32 %div.i198 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %115)
  %cmp.not.i202 = icmp eq i16 %114, %115
  br i1 %cmp.not.i202, label %if.else.if.end37_crit_edge, label %rmi_f34v7_check_bl_config_size.exit.thread

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

rmi_f34v7_check_bl_config_size.exit.thread:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %f34, align 4
  %dev.i203 = getelementptr inbounds %struct.rmi_function, ptr %117, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i203, ptr noundef nonnull @.str.61) #9
  br label %fail

if.end37:                                         ; preds = %if.else.if.end37_crit_edge, %if.then27.if.end37_crit_edge, %land.lhs.true24.if.end37_crit_edge, %if.end22.if.end37_crit_edge
  %118 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %f34, align 4
  %dev.i206 = getelementptr inbounds %struct.rmi_function, ptr %119, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i206, ptr noundef nonnull @.str.63) #9
  %cmd_done.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23
  %120 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  %121 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %f34, align 4
  %data_base_addr.i.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %122, i32 0, i32 3
  %command845.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %123 = ptrtoint ptr %command845.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 4, ptr %command845.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i.i.i) #6
  %124 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i, i32 0, i32 4
  %125 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %data_base_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %data_base_addr.i.i, align 2
  %128 = ptrtoint ptr %data_1_5.i.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 504403158265757696, ptr %data_1_5.i.i.i, align 8
  %bootloader_id.i.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %129 = ptrtoint ptr %bootloader_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bootloader_id.i.i.i, align 1
  %131 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %124, align 2
  %arrayidx25.i.i.i = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %132 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx25.i.i.i, align 1
  %134 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %125, align 1
  %rmi_dev.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %122, i32 0, i32 1
  %135 = ptrtoint ptr %rmi_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rmi_dev.i.i.i, align 4
  %137 = and i16 %127, 255
  %partition_id30.i.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %138 = ptrtoint ptr %partition_id30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %partition_id30.i.i.i, align 1
  %conv31.i.i.i = zext i8 %139 to i16
  %add.i.i.i = add nuw nsw i16 %137, %conv31.i.i.i
  %xport.i.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %136, i32 0, i32 3
  %140 = ptrtoint ptr %xport.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %xport.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i.i.i.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %call.i.i.i.i = call i32 %145(ptr noundef %141, i16 noundef zeroext %add.i.i.i, ptr noundef nonnull %data_1_5.i.i.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %rmi_f34v7_write_command.exit.thread.i, label %if.end.i207

rmi_f34v7_write_command.exit.thread.i:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %f34, align 4
  %dev.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %147, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i) #6
  br label %fail

if.end.i207:                                      ; preds = %if.end37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i) #6
  %call1.i.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %rmi_f34v7_wait_for_idle.exit.thread.i, label %if.end4.i

rmi_f34v7_wait_for_idle.exit.thread.i:            ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %f34, align 4
  %dev.i.i = getelementptr inbounds %struct.rmi_function, ptr %149, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %fail

if.end4.i:                                        ; preds = %if.end.i207
  %config_area.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 11
  %150 = ptrtoint ptr %config_area.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %config_area.i, align 4
  %call5.i = call fastcc i32 @rmi_f34v7_erase_config(ptr noundef %f34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.fail_crit_edge, label %if.end8.i

if.end4.i.fail_crit_edge:                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end8.i:                                        ; preds = %if.end4.i
  %151 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %50, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then9.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end8.i
  %153 = ptrtoint ptr %config_area.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 3, ptr %config_area.i, align 4
  %call11.i = call fastcc i32 @rmi_f34v7_erase_config(ptr noundef %f34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i208 = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i208, label %if.then9.i.fail_crit_edge, label %if.then9.i.if.end15.i_crit_edge

if.then9.i.if.end15.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then9.i.fail_crit_edge:                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end15.i:                                       ; preds = %if.then9.i.if.end15.i_crit_edge, %if.end8.i.if.end15.i_crit_edge
  %154 = ptrtoint ptr %new_partition_table to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %new_partition_table, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool16.not.i = icmp eq i8 %155, 0
  br i1 %tobool16.not.i, label %if.end15.i.do.end53_crit_edge, label %land.lhs.true.i

if.end15.i.do.end53_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

land.lhs.true.i:                                  ; preds = %if.end15.i
  %has_guest_code.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 1
  %156 = ptrtoint ptr %has_guest_code.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %has_guest_code.i, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool17.not.i = icmp eq i8 %157, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.if.end41_crit_edge, label %if.then18.i

land.lhs.true.i.if.end41_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then18.i:                                      ; preds = %land.lhs.true.i
  %158 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %f34, align 4
  %dev.i45.i = getelementptr inbounds %struct.rmi_function, ptr %159, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i45.i, ptr noundef nonnull @.str.78) #9
  %160 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %cmd_done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  %161 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %f34, align 4
  %data_base_addr.i.i.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %command845.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 4, ptr %command845.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i.i.i.i) #6
  %164 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i.i, i32 0, i32 4
  %165 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i.i, i32 0, i32 4, i32 1
  %166 = ptrtoint ptr %data_base_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %data_base_addr.i.i.i, align 2
  %168 = ptrtoint ptr %data_1_5.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 648518346341613568, ptr %data_1_5.i.i.i.i, align 8
  %169 = ptrtoint ptr %bootloader_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bootloader_id.i.i.i, align 1
  %171 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %164, align 2
  %172 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx25.i.i.i, align 1
  %174 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %165, align 1
  %rmi_dev.i.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %162, i32 0, i32 1
  %175 = ptrtoint ptr %rmi_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmi_dev.i.i.i.i, align 4
  %177 = and i16 %167, 255
  %178 = ptrtoint ptr %partition_id30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %partition_id30.i.i.i, align 1
  %conv31.i.i.i.i = zext i8 %179 to i16
  %add.i.i.i.i = add nuw nsw i16 %177, %conv31.i.i.i.i
  %xport.i.i.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %176, i32 0, i32 3
  %180 = ptrtoint ptr %xport.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %xport.i.i.i.i.i, align 8
  %ops.i.i.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops.i.i.i.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %call.i.i.i.i.i = call i32 %185(ptr noundef %181, i16 noundef zeroext %add.i.i.i.i, ptr noundef nonnull %data_1_5.i.i.i.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %rmi_f34v7_write_command.exit.thread.i.i, label %if.end.i.i

rmi_f34v7_write_command.exit.thread.i.i:          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %f34, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %187, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i.i) #6
  br label %fail

if.end.i.i:                                       ; preds = %if.then18.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i.i) #6
  %call1.i.i.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %188, label %if.end.i.i.if.end41_crit_edge

if.end.i.i.if.end41_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

188:                                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %189 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %f34, align 4
  %dev.i.i47.i = getelementptr inbounds %struct.rmi_function, ptr %190, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i47.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %fail

if.end41:                                         ; preds = %if.end.i.i.if.end41_crit_edge, %land.lhs.true.i.if.end41_crit_edge
  %191 = ptrtoint ptr %new_partition_table to i32
  call void @__asan_load1_noabort(i32 %191)
  %.pr = load i8, ptr %new_partition_table, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool43.not = icmp eq i8 %.pr, 0
  br i1 %tobool43.not, label %if.end41.do.end53_crit_edge, label %if.then44

if.end41.do.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

if.then44:                                        ; preds = %if.end41
  %bl_config.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18, i32 5
  %192 = ptrtoint ptr %bl_config.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %bl_config.i, align 2
  %194 = ptrtoint ptr %config_area.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 2, ptr %config_area.i, align 4
  %block_size.i212 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %195 = ptrtoint ptr %block_size.i212 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %block_size.i212, align 2
  %mul.i = mul i16 %196, %193
  %config_size.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 10
  %197 = ptrtoint ptr %config_size.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %mul.i, ptr %config_size.i, align 2
  %198 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %f34, align 4
  %dev.i213 = getelementptr inbounds %struct.rmi_function, ptr %199, i32 0, i32 2
  %read_config_buf.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 4
  %200 = ptrtoint ptr %read_config_buf.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read_config_buf.i, align 4
  call void @devm_kfree(ptr noundef %dev.i213, ptr noundef %201) #6
  %202 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %f34, align 4
  %dev4.i = getelementptr inbounds %struct.rmi_function, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %config_size.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %config_size.i, align 2
  %conv6.i = zext i16 %205 to i32
  %call.i.i214 = call noalias ptr @devm_kmalloc(ptr noundef %dev4.i, i32 noundef %conv6.i, i32 noundef 3520) #6
  %206 = ptrtoint ptr %read_config_buf.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call.i.i214, ptr %read_config_buf.i, align 4
  %tobool.not.i215 = icmp eq ptr %call.i.i214, null
  br i1 %tobool.not.i215, label %if.then.i, label %if.end.i217

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %read_config_buf_size.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 5
  %207 = ptrtoint ptr %read_config_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %read_config_buf_size.i, align 4
  br label %fail

if.end.i217:                                      ; preds = %if.then44
  %208 = ptrtoint ptr %config_size.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %config_size.i, align 2
  %conv10.i = zext i16 %209 to i32
  %read_config_buf_size11.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 5
  %210 = ptrtoint ptr %read_config_buf_size11.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %conv10.i, ptr %read_config_buf_size11.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %block_number.i.i) #6
  %211 = ptrtoint ptr %block_number.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %block_number.i.i, align 2
  %212 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %f34, align 4
  %data_base_addr.i.i216 = getelementptr inbounds %struct.rmi_function_descriptor, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %data_base_addr.i.i216 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %data_base_addr.i.i216, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %partition.i.i.i) #6
  %216 = ptrtoint ptr %partition.i.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -1, ptr %partition.i.i.i, align 1, !annotation !256
  %217 = ptrtoint ptr %config_area.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %config_area.i, align 4
  %219 = zext i16 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values)
  switch i16 %218, label %if.end.i217.sw.epilog.i.i.i_crit_edge [
    i16 0, label %if.then.i.i.i
    i16 3, label %if.then9.i.i.i
    i16 1, label %if.then15.i.i.i
    i16 2, label %if.then21.i.i.i
    i16 4, label %if.then27.i.i.i
  ]

if.end.i217.sw.epilog.i.i.i_crit_edge:            ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #8
  %220 = ptrtoint ptr %partition.i.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 8, ptr %partition.i.i.i, align 1
  br label %sw.epilog.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #8
  %221 = ptrtoint ptr %partition.i.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 10, ptr %partition.i.i.i, align 1
  br label %sw.epilog.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %partition.i.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 5, ptr %partition.i.i.i, align 1
  br label %sw.epilog.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #8
  %223 = ptrtoint ptr %partition.i.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 6, ptr %partition.i.i.i, align 1
  br label %sw.epilog.i.i.i

if.then27.i.i.i:                                  ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %partition.i.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 3, ptr %partition.i.i.i, align 1
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.then27.i.i.i, %if.then21.i.i.i, %if.then15.i.i.i, %if.then9.i.i.i, %if.then.i.i.i, %if.end.i217.sw.epilog.i.i.i_crit_edge
  %rmi_dev.i.i.i218 = getelementptr inbounds %struct.rmi_function, ptr %213, i32 0, i32 1
  %225 = ptrtoint ptr %rmi_dev.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rmi_dev.i.i.i218, align 4
  %227 = and i16 %215, 255
  %228 = ptrtoint ptr %partition_id30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %partition_id30.i.i.i, align 1
  %conv44.i.i.i = zext i8 %229 to i16
  %add.i.i.i219 = add nuw nsw i16 %227, %conv44.i.i.i
  %xport.i.i.i.i220 = getelementptr inbounds %struct.rmi_device, ptr %226, i32 0, i32 3
  %230 = ptrtoint ptr %xport.i.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %xport.i.i.i.i220, align 8
  %ops.i.i.i.i221 = getelementptr inbounds %struct.rmi_transport_dev, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %ops.i.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ops.i.i.i.i221, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %call.i.i.i.i222 = call i32 %235(ptr noundef %231, i16 noundef zeroext %add.i.i.i219, ptr noundef nonnull %partition.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i222)
  %cmp46.i.i.i = icmp slt i32 %call.i.i.i.i222, 0
  br i1 %cmp46.i.i.i, label %rmi_f34v7_write_partition_id.exit.thread.i.i, label %if.end.i.i223

rmi_f34v7_write_partition_id.exit.thread.i.i:     ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %236 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %f34, align 4
  %dev53.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %237, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i.i.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %partition.i.i.i) #6
  br label %rmi_f34v7_read_blocks.exit.thread.i

if.end.i.i223:                                    ; preds = %sw.epilog.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %partition.i.i.i) #6
  %238 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %f34, align 4
  %rmi_dev.i.i = getelementptr inbounds %struct.rmi_function, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %rmi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rmi_dev.i.i, align 4
  %block_number4.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 7
  %242 = ptrtoint ptr %block_number4.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %block_number4.i.i, align 1
  %conv5.i.i = zext i8 %243 to i16
  %add.i.i = add nuw nsw i16 %227, %conv5.i.i
  %xport.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %241, i32 0, i32 3
  %244 = ptrtoint ptr %xport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %xport.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %245, i32 0, i32 3
  %246 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ops.i.i.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 4
  %call.i.i.i = call i32 %249(ptr noundef %245, i16 noundef zeroext %add.i.i, ptr noundef nonnull %block_number.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.end12.i.i

do.end.i.i:                                       ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #8
  %250 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %f34, align 4
  %dev.i.i224 = getelementptr inbounds %struct.rmi_function, ptr %251, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i224, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #9
  br label %rmi_f34v7_read_blocks.exit.thread.i

if.end12.i.i:                                     ; preds = %if.end.i.i223
  %payload_length.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 13
  %252 = ptrtoint ptr %payload_length.i.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %payload_length.i.i, align 4
  %254 = ptrtoint ptr %block_size.i212 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %block_size.i212, align 2
  %256 = udiv i16 4096, %255
  %257 = call i16 @llvm.umin.i16(i16 %253, i16 %256) #6
  %transfer_length.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 8
  %flash_cmd.i.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 9
  %payload.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 10
  br label %do.body22.i.i

do.body22.i.i:                                    ; preds = %if.end83.i.i.do.body22.i.i_crit_edge, %if.end12.i.i
  %remaining.0.i.i = phi i16 [ %193, %if.end12.i.i ], [ %sub.i.i, %if.end83.i.i.do.body22.i.i_crit_edge ]
  %index.0.i.i = phi i32 [ 0, %if.end12.i.i ], [ %add89.i.i, %if.end83.i.i.do.body22.i.i_crit_edge ]
  %258 = call i16 @llvm.umin.i16(i16 %remaining.0.i.i, i16 %257) #6
  %259 = call i16 @llvm.bswap.i16(i16 %258) #6
  %260 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %259, ptr %length.i.i, align 2
  %261 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %f34, align 4
  %rmi_dev36.i.i = getelementptr inbounds %struct.rmi_function, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %rmi_dev36.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmi_dev36.i.i, align 4
  %265 = ptrtoint ptr %transfer_length.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %transfer_length.i.i, align 1
  %conv39.i.i = zext i8 %266 to i16
  %add40.i.i = add nuw nsw i16 %227, %conv39.i.i
  %xport.i1.i.i = getelementptr inbounds %struct.rmi_device, ptr %264, i32 0, i32 3
  %267 = ptrtoint ptr %xport.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %xport.i1.i.i, align 8
  %ops.i2.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %268, i32 0, i32 3
  %269 = ptrtoint ptr %ops.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops.i2.i.i, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 4
  %call.i3.i.i = call i32 %272(ptr noundef %268, i16 noundef zeroext %add40.i.i, ptr noundef nonnull %length.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.i)
  %cmp43.i.i = icmp slt i32 %call.i3.i.i, 0
  br i1 %cmp43.i.i, label %do.end48.i.i, label %if.end52.i.i

do.end48.i.i:                                     ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.le33.i.i = zext i16 %remaining.0.i.i to i32
  %273 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %f34, align 4
  %dev50.i.i = getelementptr inbounds %struct.rmi_function, ptr %274, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50.i.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, i32 noundef %conv24.le33.i.i) #9
  br label %rmi_f34v7_read_blocks.exit.thread.i

if.end52.i.i:                                     ; preds = %do.body22.i.i
  %275 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %cmd_done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command.i.i.i) #6
  %276 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %f34, align 4
  %data_base_addr.i4.i.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %277, i32 0, i32 3
  %278 = ptrtoint ptr %data_base_addr.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %data_base_addr.i4.i.i, align 2
  %280 = ptrtoint ptr %command.i.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 2, ptr %command.i.i.i, align 1
  %281 = ptrtoint ptr %command845.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 2, ptr %command845.i.i, align 4
  %dev15.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %277, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev15.i.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 2) #6
  %282 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %f34, align 4
  %rmi_dev.i5.i.i = getelementptr inbounds %struct.rmi_function, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %rmi_dev.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %rmi_dev.i5.i.i, align 4
  %286 = and i16 %279, 255
  %287 = ptrtoint ptr %flash_cmd.i.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %flash_cmd.i.i.i, align 1
  %conv19.i.i.i = zext i8 %288 to i16
  %add.i6.i.i = add nuw nsw i16 %286, %conv19.i.i.i
  %xport.i.i7.i.i = getelementptr inbounds %struct.rmi_device, ptr %285, i32 0, i32 3
  %289 = ptrtoint ptr %xport.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %xport.i.i7.i.i, align 8
  %ops.i.i8.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %290, i32 0, i32 3
  %291 = ptrtoint ptr %ops.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %ops.i.i8.i.i, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 4
  %call.i.i9.i.i = call i32 %294(ptr noundef %290, i16 noundef zeroext %add.i6.i.i, ptr noundef nonnull %command.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9.i.i)
  %cmp22.i.i.i = icmp slt i32 %call.i.i9.i.i, 0
  br i1 %cmp22.i.i.i, label %rmi_f34v7_write_command.exit.thread.i.i225, label %if.end57.i.i

rmi_f34v7_write_command.exit.thread.i.i225:       ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %295 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %f34, align 4
  %dev29.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %296, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i.i.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command.i.i.i) #6
  br label %rmi_f34v7_read_blocks.exit.thread.i

if.end57.i.i:                                     ; preds = %if.end52.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command.i.i.i) #6
  %call1.i.i.i226 = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i226)
  %tobool.not.i.i.i227 = icmp eq i32 %call1.i.i.i226, 0
  %297 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %f34, align 4
  br i1 %tobool.not.i.i.i227, label %rmi_f34v7_wait_for_idle.exit.thread.i.i, label %if.end62.i.i

rmi_f34v7_wait_for_idle.exit.thread.i.i:          ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i228 = getelementptr inbounds %struct.rmi_function, ptr %298, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i228, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %rmi_f34v7_read_blocks.exit.thread.i

if.end62.i.i:                                     ; preds = %if.end57.i.i
  %rmi_dev64.i.i = getelementptr inbounds %struct.rmi_function, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %rmi_dev64.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rmi_dev64.i.i, align 4
  %301 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %payload.i.i, align 1
  %conv67.i.i = zext i8 %302 to i16
  %add68.i.i = add nuw nsw i16 %227, %conv67.i.i
  %303 = ptrtoint ptr %read_config_buf.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %read_config_buf.i, align 4
  %idxprom.i.i = and i32 %index.0.i.i, 65535
  %arrayidx.i.i = getelementptr i8, ptr %304, i32 %idxprom.i.i
  %conv70.i.i = zext i16 %258 to i32
  %305 = ptrtoint ptr %block_size.i212 to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %block_size.i212, align 2
  %conv72.i.i = zext i16 %306 to i32
  %mul.i.i = mul nuw nsw i32 %conv72.i.i, %conv70.i.i
  %xport.i12.i.i = getelementptr inbounds %struct.rmi_device, ptr %300, i32 0, i32 3
  %307 = ptrtoint ptr %xport.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %xport.i12.i.i, align 8
  %ops.i13.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %308, i32 0, i32 3
  %309 = ptrtoint ptr %ops.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %ops.i13.i.i, align 4
  %read_block.i.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %read_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %read_block.i.i.i, align 4
  %call.i14.i.i = call i32 %312(ptr noundef %308, i16 noundef zeroext %add68.i.i, ptr noundef %arrayidx.i.i, i32 noundef %mul.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i)
  %cmp74.i.i = icmp slt i32 %call.i14.i.i, 0
  br i1 %cmp74.i.i, label %do.end79.i.i, label %if.end83.i.i

do.end79.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.le.i.i = zext i16 %remaining.0.i.i to i32
  %313 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %f34, align 4
  %dev81.i.i = getelementptr inbounds %struct.rmi_function, ptr %314, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81.i.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.81, i32 noundef %conv24.le.i.i) #9
  br label %rmi_f34v7_read_blocks.exit.thread.i

if.end83.i.i:                                     ; preds = %if.end62.i.i
  %315 = ptrtoint ptr %block_size.i212 to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %block_size.i212, align 2
  %conv86.i.i = zext i16 %316 to i32
  %mul87.i.i = mul nuw nsw i32 %conv86.i.i, %conv70.i.i
  %add89.i.i = add nuw nsw i32 %mul87.i.i, %idxprom.i.i
  %sub.i.i = sub i16 %remaining.0.i.i, %258
  %tobool.not.i.i229 = icmp eq i16 %sub.i.i, 0
  br i1 %tobool.not.i.i229, label %if.end15.i230, label %if.end83.i.i.do.body22.i.i_crit_edge

if.end83.i.i.do.body22.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22.i.i

rmi_f34v7_read_blocks.exit.thread.i:              ; preds = %do.end79.i.i, %rmi_f34v7_wait_for_idle.exit.thread.i.i, %rmi_f34v7_write_command.exit.thread.i.i225, %do.end48.i.i, %do.end.i.i, %rmi_f34v7_write_partition_id.exit.thread.i.i
  %retval.0.i.ph.i = phi i32 [ -110, %rmi_f34v7_wait_for_idle.exit.thread.i.i ], [ %call.i.i9.i.i, %rmi_f34v7_write_command.exit.thread.i.i225 ], [ %call.i.i.i.i222, %rmi_f34v7_write_partition_id.exit.thread.i.i ], [ %call.i14.i.i, %do.end79.i.i ], [ %call.i3.i.i, %do.end48.i.i ], [ %call.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block_number.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length.i.i) #6
  br label %fail

if.end15.i230:                                    ; preds = %if.end83.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block_number.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length.i.i) #6
  %call16.i = call fastcc i32 @rmi_f34v7_erase_config(ptr noundef %f34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end15.i230.fail_crit_edge, label %if.end20.i231

if.end15.i230.fail_crit_edge:                     ; preds = %if.end15.i230
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end20.i231:                                    ; preds = %if.end15.i230
  %317 = ptrtoint ptr %config_area.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 4, ptr %config_area.i, align 4
  %fl_config.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 16
  %318 = ptrtoint ptr %fl_config.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %fl_config.i.i, align 4
  %config_data.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 21
  %320 = ptrtoint ptr %config_data.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %319, ptr %config_data.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 16, i32 1
  %321 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %size.i.i, align 4
  %conv.i.i = trunc i32 %322 to i16
  %323 = ptrtoint ptr %config_size.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %conv.i.i, ptr %config_size.i, align 2
  %324 = ptrtoint ptr %block_size.i212 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %block_size.i212, align 2
  %div53.i.i = udiv i16 %conv.i.i, %325
  %config_block_count.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 9
  %326 = ptrtoint ptr %config_block_count.i.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %div53.i.i, ptr %config_block_count.i.i, align 4
  %fl_config9.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18, i32 3
  %327 = ptrtoint ptr %fl_config9.i.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %fl_config9.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %div53.i.i, i16 %328)
  %cmp.not.i.i = icmp eq i16 %div53.i.i, %328
  br i1 %cmp.not.i.i, label %if.end.i79.i, label %do.end.i76.i

do.end.i76.i:                                     ; preds = %if.end20.i231
  call void @__sanitizer_cov_trace_pc() #8
  %329 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %f34, align 4
  %dev.i75.i = getelementptr inbounds %struct.rmi_function, ptr %330, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i75.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #9
  br label %fail

if.end.i79.i:                                     ; preds = %if.end20.i231
  %331 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %cmd_done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  %332 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %f34, align 4
  %data_base_addr.i.i.i232 = getelementptr inbounds %struct.rmi_function_descriptor, ptr %333, i32 0, i32 3
  %334 = ptrtoint ptr %command845.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 4, ptr %command845.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i.i.i.i210) #6
  %335 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i.i210, i32 0, i32 4
  %336 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i.i210, i32 0, i32 4, i32 1
  %337 = ptrtoint ptr %data_base_addr.i.i.i232 to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %data_base_addr.i.i.i232, align 2
  %339 = ptrtoint ptr %data_1_5.i.i.i.i210 to i32
  call void @__asan_store8_noabort(i32 %339)
  store i64 216172782114045952, ptr %data_1_5.i.i.i.i210, align 8
  %340 = ptrtoint ptr %bootloader_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %bootloader_id.i.i.i, align 1
  %342 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %335, align 2
  %343 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx25.i.i.i, align 1
  %345 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %336, align 1
  %rmi_dev.i.i.i.i233 = getelementptr inbounds %struct.rmi_function, ptr %333, i32 0, i32 1
  %346 = ptrtoint ptr %rmi_dev.i.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %rmi_dev.i.i.i.i233, align 4
  %348 = and i16 %338, 255
  %349 = ptrtoint ptr %partition_id30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %partition_id30.i.i.i, align 1
  %conv31.i.i.i.i234 = zext i8 %350 to i16
  %add.i.i.i.i235 = add nuw nsw i16 %348, %conv31.i.i.i.i234
  %xport.i.i.i.i.i236 = getelementptr inbounds %struct.rmi_device, ptr %347, i32 0, i32 3
  %351 = ptrtoint ptr %xport.i.i.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %xport.i.i.i.i.i236, align 8
  %ops.i.i.i.i.i237 = getelementptr inbounds %struct.rmi_transport_dev, ptr %352, i32 0, i32 3
  %353 = ptrtoint ptr %ops.i.i.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %ops.i.i.i.i.i237, align 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %354, align 4
  %call.i.i.i.i.i238 = call i32 %356(ptr noundef %352, i16 noundef zeroext %add.i.i.i.i235, ptr noundef nonnull %data_1_5.i.i.i.i210, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i238)
  %cmp.i.i.i.i239 = icmp slt i32 %call.i.i.i.i.i238, 0
  br i1 %cmp.i.i.i.i239, label %rmi_f34v7_write_command.exit.thread.i80.i, label %if.end15.i.i

rmi_f34v7_write_command.exit.thread.i80.i:        ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %357 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %f34, align 4
  %dev.i.i.i.i240 = getelementptr inbounds %struct.rmi_function, ptr %358, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i240, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i.i210) #6
  br label %fail

if.end15.i.i:                                     ; preds = %if.end.i79.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i.i210) #6
  %359 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %f34, align 4
  %dev17.i.i = getelementptr inbounds %struct.rmi_function, ptr %360, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev17.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #6
  %call1.i.i81.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 300) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i81.i)
  %tobool.not.i.i82.i = icmp eq i32 %call1.i.i81.i, 0
  br i1 %tobool.not.i.i82.i, label %rmi_f34v7_wait_for_idle.exit.thread.i84.i, label %rmi_f34v7_write_flash_config.exit.i

rmi_f34v7_wait_for_idle.exit.thread.i84.i:        ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %361 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %f34, align 4
  %dev.i.i83.i = getelementptr inbounds %struct.rmi_function, ptr %362, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i83.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %fail

rmi_f34v7_write_flash_config.exit.i:              ; preds = %if.end15.i.i
  %363 = ptrtoint ptr %config_data.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %config_data.i.i, align 4
  %365 = ptrtoint ptr %config_block_count.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %config_block_count.i.i, align 4
  %call.i.i85.i = call fastcc i32 @rmi_f34v7_write_f34v7_blocks(ptr noundef %f34, ptr noundef %364, i16 noundef zeroext %366, i8 noundef zeroext 2) #6
  %367 = call i32 @llvm.smin.i32(i32 %call.i.i85.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp22.i = icmp slt i32 %call.i.i85.i, 0
  br i1 %cmp22.i, label %rmi_f34v7_write_flash_config.exit.i.rmi_f34v7_write_partition_table.exit_crit_edge, label %if.end25.i

rmi_f34v7_write_flash_config.exit.i.rmi_f34v7_write_partition_table.exit_crit_edge: ; preds = %rmi_f34v7_write_flash_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_f34v7_write_partition_table.exit

if.end25.i:                                       ; preds = %rmi_f34v7_write_flash_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %368 = ptrtoint ptr %config_area.i to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 2, ptr %config_area.i, align 4
  %369 = ptrtoint ptr %read_config_buf.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %read_config_buf.i, align 4
  %371 = ptrtoint ptr %config_data.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %370, ptr %config_data.i.i, align 4
  %size.i241 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 17, i32 1
  %372 = ptrtoint ptr %size.i241 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %size.i241, align 4
  %conv29.i = trunc i32 %373 to i16
  %374 = ptrtoint ptr %config_size.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 %conv29.i, ptr %config_size.i, align 2
  %375 = ptrtoint ptr %block_size.i212 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %block_size.i212, align 2
  %div94.i = udiv i16 %conv29.i, %376
  %377 = ptrtoint ptr %config_block_count.i.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %div94.i, ptr %config_block_count.i.i, align 4
  %call.i89.i = call fastcc i32 @rmi_f34v7_write_f34v7_blocks(ptr noundef %f34, ptr noundef %370, i16 noundef zeroext %div94.i, i8 noundef zeroext 2) #6
  %378 = call i32 @llvm.smin.i32(i32 %call.i89.i, i32 0) #6
  br label %rmi_f34v7_write_partition_table.exit

rmi_f34v7_write_partition_table.exit:             ; preds = %if.end25.i, %rmi_f34v7_write_flash_config.exit.i.rmi_f34v7_write_partition_table.exit_crit_edge
  %retval.0.i242 = phi i32 [ %367, %rmi_f34v7_write_flash_config.exit.i.rmi_f34v7_write_partition_table.exit_crit_edge ], [ %378, %if.end25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i242)
  %cmp46 = icmp slt i32 %retval.0.i242, 0
  br i1 %cmp46, label %rmi_f34v7_write_partition_table.exit.fail_crit_edge, label %do.end

rmi_f34v7_write_partition_table.exit.fail_crit_edge: ; preds = %rmi_f34v7_write_partition_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end:                                           ; preds = %rmi_f34v7_write_partition_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %379 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %380, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end53

do.end53:                                         ; preds = %do.end, %if.end41.do.end53_crit_edge, %if.end15.i.do.end53_crit_edge
  %381 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %f34, align 4
  %dev55 = getelementptr inbounds %struct.rmi_function, ptr %382, i32 0, i32 2
  %size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 13, i32 1
  %383 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55, ptr noundef nonnull @.str.6, i32 noundef %384) #9
  %ui_firmware.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 13
  %385 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %size, align 4
  %block_size.i244 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %387 = ptrtoint ptr %block_size.i244 to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %block_size.i244, align 2
  %conv.i245 = zext i16 %388 to i32
  %div.i246 = sdiv i32 %386, %conv.i245
  %conv1.i = trunc i32 %div.i246 to i16
  %389 = ptrtoint ptr %ui_firmware.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ui_firmware.i, align 4
  %call.i = call fastcc i32 @rmi_f34v7_write_f34v7_blocks(ptr noundef %f34, ptr noundef %390, i16 noundef zeroext %conv1.i, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp58 = icmp slt i32 %call.i, 0
  br i1 %cmp58, label %do.end53.fail_crit_edge, label %do.end63

do.end53.fail_crit_edge:                          ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end63:                                         ; preds = %do.end53
  %391 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %f34, align 4
  %dev65 = getelementptr inbounds %struct.rmi_function, ptr %392, i32 0, i32 2
  %size67 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 14, i32 1
  %393 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %size67, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev65, ptr noundef nonnull @.str.9, i32 noundef %394) #9
  %395 = ptrtoint ptr %config_area.i to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 0, ptr %config_area.i, align 4
  %call68 = call fastcc i32 @rmi_f34v7_write_ui_config(ptr noundef %f34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end63.fail_crit_edge, label %if.end71

do.end63.fail_crit_edge:                          ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end71:                                         ; preds = %do.end63
  %396 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %50, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %397)
  %tobool73.not = icmp eq i8 %397, 0
  br i1 %tobool73.not, label %if.end71.if.end88_crit_edge, label %land.lhs.true74

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

land.lhs.true74:                                  ; preds = %if.end71
  %contains_display_cfg76 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 2
  %398 = ptrtoint ptr %contains_display_cfg76 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %contains_display_cfg76, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %399)
  %tobool77.not = icmp eq i8 %399, 0
  br i1 %tobool77.not, label %land.lhs.true74.if.end88_crit_edge, label %do.end81

land.lhs.true74.if.end88_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

do.end81:                                         ; preds = %land.lhs.true74
  %400 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %f34, align 4
  %dev83 = getelementptr inbounds %struct.rmi_function, ptr %401, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev83, ptr noundef nonnull @.str.12) #9
  %call84 = call fastcc i32 @rmi_f34v7_write_dp_config(ptr noundef %f34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end81.fail_crit_edge, label %do.end81.if.end88_crit_edge

do.end81.if.end88_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

do.end81.fail_crit_edge:                          ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end88:                                         ; preds = %do.end81.if.end88_crit_edge, %land.lhs.true74.if.end88_crit_edge, %if.end71.if.end88_crit_edge
  %ret.0 = phi i32 [ %call84, %do.end81.if.end88_crit_edge ], [ %call68, %land.lhs.true74.if.end88_crit_edge ], [ %call68, %if.end71.if.end88_crit_edge ]
  %402 = ptrtoint ptr %new_partition_table to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %new_partition_table, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %tobool90.not = icmp eq i8 %403, 0
  br i1 %tobool90.not, label %if.end88.fail_crit_edge, label %if.then91

if.end88.fail_crit_edge:                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then91:                                        ; preds = %if.end88
  %has_guest_code92 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 1
  %404 = ptrtoint ptr %has_guest_code92 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %has_guest_code92, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %tobool93.not = icmp eq i8 %405, 0
  br i1 %tobool93.not, label %if.then91.fail_crit_edge, label %land.lhs.true94

if.then91.fail_crit_edge:                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true94:                                  ; preds = %if.then91
  %contains_guest_code96 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 3
  %406 = ptrtoint ptr %contains_guest_code96 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %contains_guest_code96, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %407)
  %tobool97.not = icmp eq i8 %407, 0
  br i1 %tobool97.not, label %land.lhs.true94.fail_crit_edge, label %do.end101

land.lhs.true94.fail_crit_edge:                   ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end101:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #8
  %408 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %f34, align 4
  %dev103 = getelementptr inbounds %struct.rmi_function, ptr %409, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev103, ptr noundef nonnull @.str.15) #9
  %guest_code.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 18
  %410 = ptrtoint ptr %guest_code.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %guest_code.i, align 4
  %size.i247 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 18, i32 1
  %412 = ptrtoint ptr %size.i247 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %size.i247, align 4
  %414 = ptrtoint ptr %block_size.i244 to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %block_size.i244, align 2
  %conv.i249 = zext i16 %415 to i32
  %div.i250 = sdiv i32 %413, %conv.i249
  %conv3.i = trunc i32 %div.i250 to i16
  %call.i251 = call fastcc i32 @rmi_f34v7_write_f34v7_blocks(ptr noundef %f34, ptr noundef %411, i16 noundef zeroext %conv3.i, i8 noundef zeroext 4) #6
  br label %fail

fail:                                             ; preds = %do.end101, %land.lhs.true94.fail_crit_edge, %if.then91.fail_crit_edge, %if.end88.fail_crit_edge, %do.end81.fail_crit_edge, %do.end63.fail_crit_edge, %do.end53.fail_crit_edge, %rmi_f34v7_write_partition_table.exit.fail_crit_edge, %rmi_f34v7_wait_for_idle.exit.thread.i84.i, %rmi_f34v7_write_command.exit.thread.i80.i, %do.end.i76.i, %if.end15.i230.fail_crit_edge, %rmi_f34v7_read_blocks.exit.thread.i, %if.then.i, %188, %rmi_f34v7_write_command.exit.thread.i.i, %if.then9.i.fail_crit_edge, %if.end4.i.fail_crit_edge, %rmi_f34v7_wait_for_idle.exit.thread.i, %rmi_f34v7_write_command.exit.thread.i, %rmi_f34v7_check_bl_config_size.exit.thread, %rmi_f34v7_check_guest_code_size.exit.thread, %rmi_f34v7_check_dp_config_size.exit.thread, %rmi_f34v7_check_ui_config_size.exit.thread, %rmi_f34v7_check_ui_firmware_size.exit.thread, %rmi_f34v7_read_queries_bl_version.exit.fail_crit_edge
  %ret.1 = phi i32 [ %call5, %rmi_f34v7_read_queries_bl_version.exit.fail_crit_edge ], [ %retval.0.i242, %rmi_f34v7_write_partition_table.exit.fail_crit_edge ], [ %call.i, %do.end53.fail_crit_edge ], [ %call68, %do.end63.fail_crit_edge ], [ %call84, %do.end81.fail_crit_edge ], [ %call.i251, %do.end101 ], [ %ret.0, %land.lhs.true94.fail_crit_edge ], [ %ret.0, %if.then91.fail_crit_edge ], [ %ret.0, %if.end88.fail_crit_edge ], [ -22, %rmi_f34v7_check_ui_firmware_size.exit.thread ], [ -22, %rmi_f34v7_check_ui_config_size.exit.thread ], [ -22, %rmi_f34v7_check_dp_config_size.exit.thread ], [ -22, %rmi_f34v7_check_guest_code_size.exit.thread ], [ -22, %rmi_f34v7_check_bl_config_size.exit.thread ], [ %call.i.i.i.i.i, %rmi_f34v7_write_command.exit.thread.i.i ], [ -110, %188 ], [ -110, %rmi_f34v7_wait_for_idle.exit.thread.i ], [ %call.i.i.i.i, %rmi_f34v7_write_command.exit.thread.i ], [ %call11.i, %if.then9.i.fail_crit_edge ], [ %call5.i, %if.end4.i.fail_crit_edge ], [ -22, %do.end.i76.i ], [ %call.i.i.i.i.i238, %rmi_f34v7_write_command.exit.thread.i80.i ], [ -110, %rmi_f34v7_wait_for_idle.exit.thread.i84.i ], [ %retval.0.i.ph.i, %rmi_f34v7_read_blocks.exit.thread.i ], [ %call16.i, %if.end15.i230.fail_crit_edge ], [ -12, %if.then.i ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_parse_image_info(ptr noundef %f34) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %image = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 22
  %0 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %image, align 4
  %img = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20
  %2 = call ptr @memset(ptr %img, i32 0, i32 136)
  %3 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %4, i32 0, i32 2
  %major_header_version = getelementptr inbounds %struct.image_header_10, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %major_header_version to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %major_header_version, align 1
  %conv = zext i8 %6 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.rmi_f34v7_parse_image_info, i32 noundef %conv) #6
  %7 = ptrtoint ptr %major_header_version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %major_header_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cond = icmp eq i8 %8, 16
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %9 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %image, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %checksum2.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 6
  %14 = ptrtoint ptr %checksum2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %checksum2.i, align 4
  %15 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f34, align 4
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %16, i32 0, i32 2
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.rmi_f34v7_parse_image_header_10, i32 noundef %13) #6
  %top_level_container_start_addr.i = getelementptr inbounds %struct.image_header_10, ptr %10, i32 0, i32 9
  %17 = ptrtoint ptr %top_level_container_start_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top_level_container_start_addr.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %add.ptr.i = getelementptr i8, ptr %10, i32 %19
  %content_length.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr.i, i32 0, i32 11
  %20 = ptrtoint ptr %content_length.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %content_length.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp106.not.i = icmp ult i32 %22, 4
  br i1 %cmp106.not.i, label %sw.bb.rmi_f34v7_parse_image_header_10.exit_crit_edge, label %for.body.lr.ph.i

sw.bb.rmi_f34v7_parse_image_header_10.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_f34v7_parse_image_header_10.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %div105.i = lshr i32 %22, 2
  %content_address.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr.i, i32 0, i32 12
  %23 = ptrtoint ptr %content_address.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %content_address.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %firmware_id.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 5
  %contains_flash_config.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 4
  %fl_config.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 16
  %size49.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 16, i32 1
  %contains_display_cfg.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 2
  %dp_config.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 15
  %size42.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 15, i32 1
  %contains_guest_code.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 3
  %guest_code.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 18
  %size35.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 18, i32 1
  %bl_version.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 9
  %bootloader.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 12
  %size28.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 12, i32 1
  %lockdown.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 19
  %size16.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 19, i32 1
  %bl_config.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 17
  %size10.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 17, i32 1
  %ui_config.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 14
  %size21.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 14, i32 1
  %ui_firmware.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 13
  %size.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 13, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0108.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %offset.0107.i = phi i32 [ %25, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr5.i = getelementptr i8, ptr %10, i32 %offset.0107.i
  %26 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %add.ptr5.i, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %add.i = add i32 %offset.0107.i, 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 %28
  %container_id7.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr6.i, i32 0, i32 1
  %29 = ptrtoint ptr %container_id7.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %container_id7.i, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #6
  %conv.i = zext i16 %31 to i32
  %content_address8.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr6.i, i32 0, i32 12
  %32 = ptrtoint ptr %content_address8.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %content_address8.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  %add.ptr9.i = getelementptr i8, ptr %10, i32 %34
  %content_length10.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr6.i, i32 0, i32 11
  %35 = ptrtoint ptr %content_length10.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %content_length10.i, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %38 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f34, align 4
  %dev12.i = getelementptr inbounds %struct.rmi_function, ptr %39, i32 0, i32 2
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev12.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.rmi_f34v7_parse_image_header_10, i32 noundef %conv.i, i32 noundef %37) #6
  %40 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.127)
  switch i16 %31, label %for.body.i.for.inc.i_crit_edge [
    i16 1, label %for.body.i.sw.bb.i_crit_edge
    i16 18, label %for.body.i.sw.bb.i_crit_edge32
    i16 2, label %for.body.i.sw.bb16.i_crit_edge
    i16 19, label %for.body.i.sw.bb16.i_crit_edge33
    i16 3, label %sw.bb22.i
    i16 8, label %sw.bb29.i
    i16 20, label %sw.bb36.i
    i16 15, label %sw.bb43.i
    i16 13, label %sw.bb50.i
  ]

for.body.i.sw.bb16.i_crit_edge33:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

for.body.i.sw.bb16.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

for.body.i.sw.bb.i_crit_edge32:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge32
  %41 = ptrtoint ptr %ui_firmware.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr9.i, ptr %ui_firmware.i, align 4
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %37, ptr %size.i, align 4
  br label %for.inc.i

sw.bb16.i:                                        ; preds = %for.body.i.sw.bb16.i_crit_edge, %for.body.i.sw.bb16.i_crit_edge33
  %43 = ptrtoint ptr %ui_config.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr9.i, ptr %ui_config.i, align 4
  %44 = ptrtoint ptr %size21.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %37, ptr %size21.i, align 4
  br label %for.inc.i

sw.bb22.i:                                        ; preds = %for.body.i
  %45 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr9.i, align 1
  %47 = ptrtoint ptr %bl_version.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %bl_version.i, align 4
  %48 = ptrtoint ptr %bootloader.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr9.i, ptr %bootloader.i, align 4
  %49 = ptrtoint ptr %size28.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %37, ptr %size28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %cmp.not.not29.i.i = icmp sgt i32 %37, 7
  br i1 %cmp.not.not29.i.i, label %for.body.lr.ph.i.i, label %sw.bb22.i.for.inc.i_crit_edge

sw.bb22.i.for.inc.i_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb22.i
  %div3132.i.i = lshr i32 %37, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.030.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.030.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr9.i, i32 %mul.i.i
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr.i.i, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  %add.ptr3.i.i = getelementptr i8, ptr %10, i32 %52
  %container_id4.i.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr3.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %container_id4.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %container_id4.i.i, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #6
  %content_address.i.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr3.i.i, i32 0, i32 12
  %56 = ptrtoint ptr %content_address.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %content_address.i.i, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  %add.ptr5.i.i = getelementptr i8, ptr %10, i32 %58
  %content_length.i.i = getelementptr inbounds %struct.container_descriptor, ptr %add.ptr3.i.i, i32 0, i32 11
  %59 = ptrtoint ptr %content_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %content_length.i.i, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  %62 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.128)
  switch i16 %55, label %for.body.i.i.for.inc.i.i_crit_edge [
    i16 5, label %for.body.i.i.for.inc.sink.split.i.i_crit_edge
    i16 17, label %for.body.i.i.for.inc.sink.split.i.i_crit_edge34
    i16 6, label %for.body.i.i.sw.bb11.i.i_crit_edge
    i16 14, label %for.body.i.i.sw.bb11.i.i_crit_edge35
  ]

for.body.i.i.sw.bb11.i.i_crit_edge35:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11.i.i

for.body.i.i.sw.bb11.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11.i.i

for.body.i.i.for.inc.sink.split.i.i_crit_edge34:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i.i

for.body.i.i.for.inc.sink.split.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

sw.bb11.i.i:                                      ; preds = %for.body.i.i.sw.bb11.i.i_crit_edge, %for.body.i.i.sw.bb11.i.i_crit_edge35
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %sw.bb11.i.i, %for.body.i.i.for.inc.sink.split.i.i_crit_edge, %for.body.i.i.for.inc.sink.split.i.i_crit_edge34
  %bl_config.sink.i.i = phi ptr [ %lockdown.i.i, %sw.bb11.i.i ], [ %bl_config.i.i, %for.body.i.i.for.inc.sink.split.i.i_crit_edge ], [ %bl_config.i.i, %for.body.i.i.for.inc.sink.split.i.i_crit_edge34 ]
  %size10.sink.i.i = phi ptr [ %size16.i.i, %sw.bb11.i.i ], [ %size10.i.i, %for.body.i.i.for.inc.sink.split.i.i_crit_edge ], [ %size10.i.i, %for.body.i.i.for.inc.sink.split.i.i_crit_edge34 ]
  %63 = ptrtoint ptr %bl_config.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr5.i.i, ptr %bl_config.sink.i.i, align 4
  %64 = ptrtoint ptr %size10.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %size10.sink.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div3132.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb29.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %contains_guest_code.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %contains_guest_code.i, align 1
  %66 = ptrtoint ptr %guest_code.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr9.i, ptr %guest_code.i, align 4
  %67 = ptrtoint ptr %size35.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %37, ptr %size35.i, align 4
  br label %for.inc.i

sw.bb36.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %contains_display_cfg.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %contains_display_cfg.i, align 2
  %69 = ptrtoint ptr %dp_config.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr9.i, ptr %dp_config.i, align 4
  %70 = ptrtoint ptr %size42.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %37, ptr %size42.i, align 4
  br label %for.inc.i

sw.bb43.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %contains_flash_config.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %contains_flash_config.i, align 4
  %72 = ptrtoint ptr %fl_config.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr9.i, ptr %fl_config.i, align 4
  %73 = ptrtoint ptr %size49.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %37, ptr %size49.i, align 4
  br label %for.inc.i

sw.bb50.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %img to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %img, align 4
  %add.ptr52.i = getelementptr i8, ptr %add.ptr9.i, i32 4
  %75 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %add.ptr52.i, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  %78 = ptrtoint ptr %firmware_id.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %firmware_id.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb50.i, %sw.bb43.i, %sw.bb36.i, %sw.bb29.i, %for.inc.i.i.for.inc.i_crit_edge, %sw.bb22.i.for.inc.i_crit_edge, %sw.bb16.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0108.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div105.i
  br i1 %exitcond.not.i, label %for.inc.i.rmi_f34v7_parse_image_header_10.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.rmi_f34v7_parse_image_header_10.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_f34v7_parse_image_header_10.exit

rmi_f34v7_parse_image_header_10.exit:             ; preds = %for.inc.i.rmi_f34v7_parse_image_header_10.exit_crit_edge, %sw.bb.rmi_f34v7_parse_image_header_10.exit_crit_edge
  %contains_flash_config = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 4
  %79 = ptrtoint ptr %contains_flash_config to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %contains_flash_config, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not = icmp eq i8 %80, 0
  br i1 %tobool.not, label %do.end10, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i8 %8 to i32
  %81 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %f34, align 4
  %dev4 = getelementptr inbounds %struct.rmi_function, ptr %82, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.38, i32 noundef %conv2) #9
  br label %cleanup

do.end10:                                         ; preds = %rmi_f34v7_parse_image_header_10.exit
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %f34, align 4
  %dev12 = getelementptr inbounds %struct.rmi_function, ptr %84, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.rmi_f34v7_parse_image_info) #9
  br label %cleanup

if.end:                                           ; preds = %rmi_f34v7_parse_image_header_10.exit
  %fl_config = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 16
  %85 = ptrtoint ptr %fl_config to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fl_config, align 4
  %blkcount = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 20
  %phyaddr = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 21
  tail call fastcc void @rmi_f34v7_parse_partition_table(ptr noundef %f34, ptr noundef %86, ptr noundef %blkcount, ptr noundef %phyaddr)
  %87 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7
  %phyaddr.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 19
  %88 = ptrtoint ptr %phyaddr.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %phyaddr.i, align 2
  %90 = ptrtoint ptr %phyaddr to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %phyaddr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %89, i16 %91)
  %cmp.not.i = icmp eq i16 %89, %91
  br i1 %cmp.not.i, label %if.end.i, label %if.end.rmi_f34v7_compare_partition_tables.exit_crit_edge

if.end.rmi_f34v7_compare_partition_tables.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_f34v7_compare_partition_tables.exit

if.end.i:                                         ; preds = %if.end
  %ui_config.i29 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 19, i32 1
  %92 = ptrtoint ptr %ui_config.i29 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %ui_config.i29, align 2
  %ui_config9.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 21, i32 1
  %94 = ptrtoint ptr %ui_config9.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %ui_config9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %95)
  %cmp11.not.i = icmp eq i16 %93, %95
  br i1 %cmp11.not.i, label %if.end15.i, label %if.end.i.rmi_f34v7_compare_partition_tables.exit_crit_edge

if.end.i.rmi_f34v7_compare_partition_tables.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_f34v7_compare_partition_tables.exit

if.end15.i:                                       ; preds = %if.end.i
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %87, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i, label %if.end15.i.if.end27.i_crit_edge, label %land.lhs.true.i

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %dp_config.i30 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 19, i32 2
  %98 = ptrtoint ptr %dp_config.i30 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %dp_config.i30, align 2
  %dp_config21.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 21, i32 2
  %100 = ptrtoint ptr %dp_config21.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %dp_config21.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %101)
  %cmp23.not.i = icmp eq i16 %99, %101
  br i1 %cmp23.not.i, label %land.lhs.true.i.if.end27.i_crit_edge, label %land.lhs.true.i.rmi_f34v7_compare_partition_tables.exit_crit_edge

land.lhs.true.i.rmi_f34v7_compare_partition_tables.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_f34v7_compare_partition_tables.exit

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %land.lhs.true.i.if.end27.i_crit_edge, %if.end15.i.if.end27.i_crit_edge
  %has_guest_code.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 1
  %102 = ptrtoint ptr %has_guest_code.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %has_guest_code.i, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool28.not.i = icmp eq i8 %103, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end41.i_crit_edge, label %land.lhs.true30.i

if.end27.i.if.end41.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

land.lhs.true30.i:                                ; preds = %if.end27.i
  %guest_code.i31 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 19, i32 3
  %104 = ptrtoint ptr %guest_code.i31 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %guest_code.i31, align 2
  %guest_code35.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 21, i32 3
  %106 = ptrtoint ptr %guest_code35.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %guest_code35.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %107)
  %cmp37.not.i = icmp eq i16 %105, %107
  br i1 %cmp37.not.i, label %land.lhs.true30.i.if.end41.i_crit_edge, label %land.lhs.true30.i.rmi_f34v7_compare_partition_tables.exit_crit_edge

land.lhs.true30.i.rmi_f34v7_compare_partition_tables.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmi_f34v7_compare_partition_tables.exit

land.lhs.true30.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %land.lhs.true30.i.if.end41.i_crit_edge, %if.end27.i.if.end41.i_crit_edge
  br label %rmi_f34v7_compare_partition_tables.exit

rmi_f34v7_compare_partition_tables.exit:          ; preds = %if.end41.i, %land.lhs.true30.i.rmi_f34v7_compare_partition_tables.exit_crit_edge, %land.lhs.true.i.rmi_f34v7_compare_partition_tables.exit_crit_edge, %if.end.i.rmi_f34v7_compare_partition_tables.exit_crit_edge, %if.end.rmi_f34v7_compare_partition_tables.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.end41.i ], [ 1, %if.end.rmi_f34v7_compare_partition_tables.exit_crit_edge ], [ 1, %if.end.i.rmi_f34v7_compare_partition_tables.exit_crit_edge ], [ 1, %land.lhs.true.i.rmi_f34v7_compare_partition_tables.exit_crit_edge ], [ 1, %land.lhs.true30.i.rmi_f34v7_compare_partition_tables.exit_crit_edge ]
  %new_partition_table42.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 16
  %108 = ptrtoint ptr %new_partition_table42.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %.sink.i, ptr %new_partition_table42.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %rmi_f34v7_compare_partition_tables.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ 0, %rmi_f34v7_compare_partition_tables.exit ], [ -22, %do.end10 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_write_ui_config(ptr noundef %f34) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_area = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 11
  %0 = ptrtoint ptr %config_area to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %config_area, align 4
  %ui_config = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 14
  %1 = ptrtoint ptr %ui_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ui_config, align 4
  %config_data = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 21
  %3 = ptrtoint ptr %config_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %config_data, align 4
  %size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 14, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %conv = trunc i32 %5 to i16
  %config_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 10
  %6 = ptrtoint ptr %config_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %config_size, align 2
  %block_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %block_size, align 2
  %div15 = udiv i16 %conv, %8
  %config_block_count = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 9
  %9 = ptrtoint ptr %config_block_count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %div15, ptr %config_block_count, align 4
  %call.i = tail call fastcc i32 @rmi_f34v7_write_f34v7_blocks(ptr noundef %f34, ptr noundef %2, i16 noundef zeroext %div15, i8 noundef zeroext 2) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_write_dp_config(ptr noundef %f34) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_area = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 11
  %0 = ptrtoint ptr %config_area to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 3, ptr %config_area, align 4
  %dp_config = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 15
  %1 = ptrtoint ptr %dp_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp_config, align 4
  %config_data = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 21
  %3 = ptrtoint ptr %config_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %config_data, align 4
  %size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 20, i32 15, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %conv = trunc i32 %5 to i16
  %config_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 10
  %6 = ptrtoint ptr %config_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %config_size, align 2
  %block_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %block_size, align 2
  %div15 = udiv i16 %conv, %8
  %config_block_count = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 9
  %9 = ptrtoint ptr %config_block_count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %div15, ptr %config_block_count, align 4
  %call.i = tail call fastcc i32 @rmi_f34v7_write_f34v7_blocks(ptr noundef %f34, ptr noundef %2, i16 noundef zeroext %div15, i8 noundef zeroext 2) #6
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_f34v7_start_reflash(ptr noundef %f34, ptr nocapture noundef readonly %fw) local_unnamed_addr #0 align 64 {
entry:
  %data_1_5.i.i.i = alloca %struct.f34v7_data_1_5, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f34, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %set_irq_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_irq_bits, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 7
  %call = tail call i32 %7(ptr noundef %3, ptr noundef %irq_mask) #6
  %config_area = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 11
  %8 = ptrtoint ptr %config_area to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %config_area, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %image = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 22
  %11 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %image, align 4
  %call4 = tail call fastcc i32 @rmi_f34v7_parse_image_info(ptr noundef %f34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %force_update = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %force_update to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %force_update, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %new_partition_table = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 16
  %14 = ptrtoint ptr %new_partition_table to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %new_partition_table, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %do.end

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %17, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9
  br label %cleanup

do.end11:                                         ; preds = %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %18 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f34, align 4
  %dev13 = getelementptr inbounds %struct.rmi_function, ptr %19, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.21) #9
  %call14 = tail call fastcc i32 @rmi_f34v7_read_flash_status(ptr noundef %f34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end11.cleanup_crit_edge, label %if.end17

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %do.end11
  %in_bl_mode = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 3
  %20 = ptrtoint ptr %in_bl_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_bl_mode, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  br i1 %tobool18.not, label %if.end17.if.end25_crit_edge, label %do.end22

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f34, align 4
  %dev24 = getelementptr inbounds %struct.rmi_function, ptr %23, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.end17.if.end25_crit_edge
  %24 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f34, align 4
  %rmi_dev.i = getelementptr inbounds %struct.rmi_function, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmi_dev.i, align 4
  %driver.i = getelementptr inbounds %struct.rmi_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver.i, align 4
  %set_irq_bits.i = getelementptr inbounds %struct.rmi_driver, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %set_irq_bits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_irq_bits.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.rmi_function, ptr %25, i32 0, i32 7
  %call.i = tail call i32 %31(ptr noundef %27, ptr noundef %irq_mask.i) #6
  %call4.i = tail call fastcc i32 @rmi_f34v7_read_flash_status(ptr noundef %f34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end25.cleanup_crit_edge, label %if.end.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end25
  %32 = ptrtoint ptr %in_bl_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %in_bl_mode, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %cmd_done.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23
  %34 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  %35 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f34, align 4
  %data_base_addr.i.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %36, i32 0, i32 3
  %command84550.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %37 = ptrtoint ptr %command84550.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %command84550.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i.i.i) #6
  %38 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i, i32 0, i32 4
  %39 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i.i, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %data_base_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %data_base_addr.i.i, align 2
  %42 = ptrtoint ptr %data_1_5.i.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 72057594037993472, ptr %data_1_5.i.i.i, align 8
  %bootloader_id.i.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %43 = ptrtoint ptr %bootloader_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bootloader_id.i.i.i, align 1
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %38, align 2
  %arrayidx25.i.i.i = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx25.i.i.i, align 1
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %39, align 1
  %rmi_dev.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %36, i32 0, i32 1
  %49 = ptrtoint ptr %rmi_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmi_dev.i.i.i, align 4
  %51 = and i16 %41, 255
  %partition_id30.i.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %52 = ptrtoint ptr %partition_id30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %partition_id30.i.i.i, align 1
  %conv31.i.i.i = zext i8 %53 to i16
  %add.i.i.i = add nuw nsw i16 %51, %conv31.i.i.i
  %xport.i.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %50, i32 0, i32 3
  %54 = ptrtoint ptr %xport.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xport.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %call.i.i.i.i = call i32 %59(ptr noundef %55, i16 noundef zeroext %add.i.i.i, ptr noundef nonnull %data_1_5.i.i.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %rmi_f34v7_write_command.exit.thread.i, label %if.end10.i

rmi_f34v7_write_command.exit.thread.i:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f34, align 4
  %dev.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %61, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i) #6
  br label %cleanup

if.end10.i:                                       ; preds = %if.end6.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i.i) #6
  %call1.i.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %f34, align 4
  %dev.i.i = getelementptr inbounds %struct.rmi_function, ptr %63, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.end10.i.cleanup_crit_edge, %rmi_f34v7_write_command.exit.thread.i, %if.end.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ %call14, %do.end11.cleanup_crit_edge ], [ -22, %do.end ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %rmi_f34v7_write_command.exit.thread.i ], [ 0, %if.end10.i.cleanup_crit_edge ], [ 0, %do.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_read_flash_status(ptr nocapture noundef %f34) unnamed_addr #0 align 64 {
entry:
  %status = alloca i8, align 1
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !256
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #6
  %1 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %command, align 1, !annotation !256
  %2 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f34, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmi_dev, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_base_addr, align 2
  %flash_status = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 5
  %8 = ptrtoint ptr %flash_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flash_status, align 1
  %conv2 = zext i8 %9 to i16
  %add = add i16 %7, %conv2
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %15(ptr noundef %11, i16 noundef zeroext %add, ptr noundef nonnull %status, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %17, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.rmi_f34v7_read_flash_status, i32 noundef %call.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 1
  %in_bl_mode = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 3
  %.lobit = lshr i8 %19, 7
  %20 = ptrtoint ptr %in_bl_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit, ptr %in_bl_mode, align 1
  %21 = and i8 %19, 31
  %flash_status9 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 7
  %22 = ptrtoint ptr %flash_status9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %flash_status9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp12.not = icmp eq i8 %21, 0
  br i1 %cmp12.not, label %if.end.if.end21_crit_edge, label %do.end

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv11 = zext i8 %21 to i32
  %23 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f34, align 4
  %dev16 = getelementptr inbounds %struct.rmi_function, ptr %24, i32 0, i32 2
  %command19 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %25 = ptrtoint ptr %command19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %command19, align 4
  %conv20 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.rmi_f34v7_read_flash_status, i32 noundef %conv11, i32 noundef %conv20) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end.if.end21_crit_edge
  %27 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f34, align 4
  %rmi_dev23 = getelementptr inbounds %struct.rmi_function, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %rmi_dev23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmi_dev23, align 4
  %data_base_addr26 = getelementptr inbounds %struct.rmi_function_descriptor, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %data_base_addr26 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data_base_addr26, align 2
  %flash_cmd = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 9
  %33 = ptrtoint ptr %flash_cmd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flash_cmd, align 1
  %conv29 = zext i8 %34 to i16
  %add30 = add i16 %32, %conv29
  %xport.i63 = getelementptr inbounds %struct.rmi_device, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %xport.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xport.i63, align 8
  %ops.i64 = getelementptr inbounds %struct.rmi_transport_dev, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ops.i64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i64, align 4
  %read_block.i65 = getelementptr inbounds %struct.rmi_transport_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %read_block.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_block.i65, align 4
  %call.i66 = call i32 %40(ptr noundef %36, i16 noundef zeroext %add30, ptr noundef nonnull %command, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp33 = icmp slt i32 %call.i66, 0
  br i1 %cmp33, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f34, align 4
  %dev40 = getelementptr inbounds %struct.rmi_function, ptr %42, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.rmi_f34v7_read_flash_status) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %command, align 1
  %command42 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %45 = ptrtoint ptr %command42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %command42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end38, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call.i66, %do.end38 ], [ 0, %if.end41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_f34v7_probe(ptr noundef %f34) local_unnamed_addr #0 align 64 {
entry:
  %command.i.i.i = alloca i8, align 1
  %partition.i.i.i = alloca i8, align 1
  %length.i.i = alloca i16, align 2
  %block_number.i.i = alloca i16, align 2
  %query_0.i = alloca i8, align 1
  %query_1_7.i = alloca %struct.f34v7_query_1_7, align 1
  %f34_ctrl.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f34, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %add = add i16 %5, 1
  %bootloader_id = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_block.i, align 4
  %call.i = tail call i32 %11(ptr noundef %7, i16 noundef zeroext %add, ptr noundef %bootloader_id, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %13, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %15, label %do.end36 [
    i8 53, label %if.end.if.end54_crit_edge
    i8 54, label %if.then15
    i8 7, label %if.then23
    i8 8, label %if.then31
  ]

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = zext i8 %15 to i32
  %17 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f34, align 4
  %dev38 = getelementptr inbounds %struct.rmi_function, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bootloader_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bootloader_id, align 1
  %conv41 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv41, i32 noundef %conv41, i32 noundef %conv6, i32 noundef %conv6) #9
  br label %cleanup

if.end54:                                         ; preds = %if.then31, %if.then23, %if.then15, %if.end.if.end54_crit_edge
  %.sink = phi i8 [ 6, %if.then15 ], [ %15, %if.then31 ], [ %15, %if.then23 ], [ 5, %if.end.if.end54_crit_edge ]
  %bl_version16 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 1
  %21 = ptrtoint ptr %bl_version16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %bl_version16, align 4
  %blkcount = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 18
  %phyaddr = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 19
  %cmd_done = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23
  %22 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23, i32 1
  %23 = call ptr @memset(ptr %blkcount, i32 0, i32 24)
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %query_0.i) #6
  %24 = ptrtoint ptr %query_0.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %query_0.i, align 1, !annotation !256
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %query_1_7.i) #6
  %25 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 4
  %27 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 7
  %28 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 8
  %29 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 9
  %30 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 9, i32 1
  %31 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 9, i32 2
  %32 = getelementptr inbounds %struct.f34v7_query_1_7, ptr %query_1_7.i, i32 0, i32 9, i32 3
  %33 = call ptr @memset(ptr %query_1_7.i, i32 255, i32 21)
  %34 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f34, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %35, align 8
  %rmi_dev.i = getelementptr inbounds %struct.rmi_function, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmi_dev.i, align 4
  %conv2.i = and i16 %37, 255
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %45(ptr noundef %41, i16 noundef zeroext %conv2.i, ptr noundef nonnull %query_0.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f34, align 4
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %47, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.107) #9
  br label %rmi_f34v7_read_queries.exit.thread

if.end.i:                                         ; preds = %if.end54
  %48 = ptrtoint ptr %query_0.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %query_0.i, align 1
  %50 = and i8 %49, 7
  %narrow.i = add nuw nsw i8 %50, 1
  %add.i = zext i8 %narrow.i to i16
  %51 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %f34, align 4
  %rmi_dev7.i = getelementptr inbounds %struct.rmi_function, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %rmi_dev7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmi_dev7.i, align 4
  %add9.i = add nuw nsw i16 %conv2.i, %add.i
  %xport.i275.i = getelementptr inbounds %struct.rmi_device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %xport.i275.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xport.i275.i, align 8
  %ops.i276.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %ops.i276.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i276.i, align 4
  %read_block.i277.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %read_block.i277.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_block.i277.i, align 4
  %call.i278.i = call i32 %60(ptr noundef %56, i16 noundef zeroext %add9.i, ptr noundef nonnull %query_1_7.i, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278.i)
  %cmp12.i = icmp slt i32 %call.i278.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f34, align 4
  %dev19.i = getelementptr inbounds %struct.rmi_function, ptr %62, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.107) #9
  br label %rmi_f34v7_read_queries.exit.thread

if.end20.i:                                       ; preds = %if.end.i
  %63 = ptrtoint ptr %query_1_7.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %query_1_7.i, align 1
  %65 = ptrtoint ptr %bootloader_id to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %bootloader_id, align 1
  %66 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %25, align 1
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx, align 1
  %69 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %26, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70) #6
  %72 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7
  %block_size23.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %73 = ptrtoint ptr %block_size23.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %71, ptr %block_size23.i, align 2
  %74 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %27, align 1
  %76 = call i16 @llvm.bswap.i16(i16 %75) #6
  %flash_config_length24.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 12
  %77 = ptrtoint ptr %flash_config_length24.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %flash_config_length24.i, align 2
  %78 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %28, align 1
  %80 = call i16 @llvm.bswap.i16(i16 %79) #6
  %payload_length25.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 13
  %81 = ptrtoint ptr %payload_length25.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %payload_length25.i, align 4
  %82 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %f34, align 4
  %dev27.i = getelementptr inbounds %struct.rmi_function, ptr %83, i32 0, i32 2
  %conv29.i = zext i16 %71 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev27.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.107, i32 noundef %conv29.i) #6
  %flash_status.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 5
  %84 = ptrtoint ptr %flash_status.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %flash_status.i, align 1
  %partition_id.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %85 = ptrtoint ptr %partition_id.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %partition_id.i, align 1
  %block_number.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 7
  %86 = ptrtoint ptr %block_number.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %block_number.i, align 1
  %transfer_length.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 8
  %87 = ptrtoint ptr %transfer_length.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 3, ptr %transfer_length.i, align 1
  %flash_cmd.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 9
  %88 = ptrtoint ptr %flash_cmd.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 4, ptr %flash_cmd.i, align 1
  %payload.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 10
  %89 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 5, ptr %payload.i, align 1
  %90 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %30, align 1
  %92 = lshr i8 %91, 5
  %.lobit.i = and i8 %92, 1
  %93 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %.lobit.i, ptr %72, align 4
  %has_guest_code.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 1
  %94 = lshr i8 %91, 6
  %.lobit267.i = and i8 %94, 1
  %95 = ptrtoint ptr %has_guest_code.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %.lobit267.i, ptr %has_guest_code.i, align 1
  %96 = ptrtoint ptr %query_0.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %query_0.i, align 1
  %98 = and i8 %97, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool46.not.i = icmp eq i8 %98, 0
  br i1 %tobool46.not.i, label %if.end20.i.if.end67.i_crit_edge, label %if.then47.i

if.end20.i.if.end67.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

if.then47.i:                                      ; preds = %if.end20.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %f34_ctrl.i) #6
  %99 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 1
  %100 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 2
  %101 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 3
  %102 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 4
  %103 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 5
  %104 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 6
  %105 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 7
  %106 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 8
  %107 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 9
  %108 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 10
  %109 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 11
  %110 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 12
  %111 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 13
  %112 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 14
  %113 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 15
  %114 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 16
  %115 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 17
  %116 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 18
  %117 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 19
  %118 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 20
  %119 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 21
  %120 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 22
  %121 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 23
  %122 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 24
  %123 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 25
  %124 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 26
  %125 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 27
  %126 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 28
  %127 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 29
  %128 = getelementptr inbounds [32 x i8], ptr %f34_ctrl.i, i32 0, i32 30
  %129 = call ptr @memset(ptr %f34_ctrl.i, i32 255, i32 32)
  %130 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %f34, align 4
  %rmi_dev49.i = getelementptr inbounds %struct.rmi_function, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %rmi_dev49.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rmi_dev49.i, align 4
  %control_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %131, i32 0, i32 2
  %134 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %control_base_addr.i, align 4
  %xport.i279.i = getelementptr inbounds %struct.rmi_device, ptr %133, i32 0, i32 3
  %136 = ptrtoint ptr %xport.i279.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %xport.i279.i, align 8
  %ops.i280.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %ops.i280.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops.i280.i, align 4
  %read_block.i281.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %read_block.i281.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read_block.i281.i, align 4
  %call.i282.i = call i32 %141(ptr noundef %137, i16 noundef zeroext %135, ptr noundef nonnull %f34_ctrl.i, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.i)
  %tobool53.not.i = icmp eq i32 %call.i282.i, 0
  br i1 %tobool53.not.i, label %land.rhs.preheader.i, label %rmi_f34v7_read_queries.exit

land.rhs.preheader.i:                             ; preds = %if.then47.i
  %142 = ptrtoint ptr %f34_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %f34_ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool59.not.i = icmp eq i8 %143, 0
  br i1 %tobool59.not.i, label %for.inc.i, label %land.rhs.preheader.i.for.end.i_crit_edge

land.rhs.preheader.i.for.end.i_crit_edge:         ; preds = %land.rhs.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %land.rhs.preheader.i
  %144 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool59.not.1.i = icmp eq i8 %145, 0
  br i1 %tobool59.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %146 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool59.not.2.i = icmp eq i8 %147, 0
  br i1 %tobool59.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %148 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool59.not.3.i = icmp eq i8 %149, 0
  br i1 %tobool59.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %150 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool59.not.4.i = icmp eq i8 %151, 0
  br i1 %tobool59.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %152 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool59.not.5.i = icmp eq i8 %153, 0
  br i1 %tobool59.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %154 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool59.not.6.i = icmp eq i8 %155, 0
  br i1 %tobool59.not.6.i, label %for.inc.6.i, label %for.inc.5.i.for.end.i_crit_edge

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %156 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool59.not.7.i = icmp eq i8 %157, 0
  br i1 %tobool59.not.7.i, label %for.inc.7.i, label %for.inc.6.i.for.end.i_crit_edge

for.inc.6.i.for.end.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %158 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool59.not.8.i = icmp eq i8 %159, 0
  br i1 %tobool59.not.8.i, label %for.inc.8.i, label %for.inc.7.i.for.end.i_crit_edge

for.inc.7.i.for.end.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %160 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool59.not.9.i = icmp eq i8 %161, 0
  br i1 %tobool59.not.9.i, label %for.inc.9.i, label %for.inc.8.i.for.end.i_crit_edge

for.inc.8.i.for.end.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %162 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool59.not.10.i = icmp eq i8 %163, 0
  br i1 %tobool59.not.10.i, label %for.inc.10.i, label %for.inc.9.i.for.end.i_crit_edge

for.inc.9.i.for.end.i_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %164 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %109, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool59.not.11.i = icmp eq i8 %165, 0
  br i1 %tobool59.not.11.i, label %for.inc.11.i, label %for.inc.10.i.for.end.i_crit_edge

for.inc.10.i.for.end.i_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %166 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool59.not.12.i = icmp eq i8 %167, 0
  br i1 %tobool59.not.12.i, label %for.inc.12.i, label %for.inc.11.i.for.end.i_crit_edge

for.inc.11.i.for.end.i_crit_edge:                 ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %168 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool59.not.13.i = icmp eq i8 %169, 0
  br i1 %tobool59.not.13.i, label %for.inc.13.i, label %for.inc.12.i.for.end.i_crit_edge

for.inc.12.i.for.end.i_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %170 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool59.not.14.i = icmp eq i8 %171, 0
  br i1 %tobool59.not.14.i, label %for.inc.14.i, label %for.inc.13.i.for.end.i_crit_edge

for.inc.13.i.for.end.i_crit_edge:                 ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %172 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool59.not.15.i = icmp eq i8 %173, 0
  br i1 %tobool59.not.15.i, label %for.inc.15.i, label %for.inc.14.i.for.end.i_crit_edge

for.inc.14.i.for.end.i_crit_edge:                 ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.15.i:                                     ; preds = %for.inc.14.i
  %174 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool59.not.16.i = icmp eq i8 %175, 0
  br i1 %tobool59.not.16.i, label %for.inc.16.i, label %for.inc.15.i.for.end.i_crit_edge

for.inc.15.i.for.end.i_crit_edge:                 ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.16.i:                                     ; preds = %for.inc.15.i
  %176 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool59.not.17.i = icmp eq i8 %177, 0
  br i1 %tobool59.not.17.i, label %for.inc.17.i, label %for.inc.16.i.for.end.i_crit_edge

for.inc.16.i.for.end.i_crit_edge:                 ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.17.i:                                     ; preds = %for.inc.16.i
  %178 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool59.not.18.i = icmp eq i8 %179, 0
  br i1 %tobool59.not.18.i, label %for.inc.18.i, label %for.inc.17.i.for.end.i_crit_edge

for.inc.17.i.for.end.i_crit_edge:                 ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.18.i:                                     ; preds = %for.inc.17.i
  %180 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool59.not.19.i = icmp eq i8 %181, 0
  br i1 %tobool59.not.19.i, label %for.inc.19.i, label %for.inc.18.i.for.end.i_crit_edge

for.inc.18.i.for.end.i_crit_edge:                 ; preds = %for.inc.18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.19.i:                                     ; preds = %for.inc.18.i
  %182 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool59.not.20.i = icmp eq i8 %183, 0
  br i1 %tobool59.not.20.i, label %for.inc.20.i, label %for.inc.19.i.for.end.i_crit_edge

for.inc.19.i.for.end.i_crit_edge:                 ; preds = %for.inc.19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.20.i:                                     ; preds = %for.inc.19.i
  %184 = ptrtoint ptr %119 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool59.not.21.i = icmp eq i8 %185, 0
  br i1 %tobool59.not.21.i, label %for.inc.21.i, label %for.inc.20.i.for.end.i_crit_edge

for.inc.20.i.for.end.i_crit_edge:                 ; preds = %for.inc.20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.21.i:                                     ; preds = %for.inc.20.i
  %186 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool59.not.22.i = icmp eq i8 %187, 0
  br i1 %tobool59.not.22.i, label %for.inc.22.i, label %for.inc.21.i.for.end.i_crit_edge

for.inc.21.i.for.end.i_crit_edge:                 ; preds = %for.inc.21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.22.i:                                     ; preds = %for.inc.21.i
  %188 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool59.not.23.i = icmp eq i8 %189, 0
  br i1 %tobool59.not.23.i, label %for.inc.23.i, label %for.inc.22.i.for.end.i_crit_edge

for.inc.22.i.for.end.i_crit_edge:                 ; preds = %for.inc.22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.23.i:                                     ; preds = %for.inc.22.i
  %190 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool59.not.24.i = icmp eq i8 %191, 0
  br i1 %tobool59.not.24.i, label %for.inc.24.i, label %for.inc.23.i.for.end.i_crit_edge

for.inc.23.i.for.end.i_crit_edge:                 ; preds = %for.inc.23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.24.i:                                     ; preds = %for.inc.23.i
  %192 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %123, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool59.not.25.i = icmp eq i8 %193, 0
  br i1 %tobool59.not.25.i, label %for.inc.25.i, label %for.inc.24.i.for.end.i_crit_edge

for.inc.24.i.for.end.i_crit_edge:                 ; preds = %for.inc.24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.25.i:                                     ; preds = %for.inc.24.i
  %194 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool59.not.26.i = icmp eq i8 %195, 0
  br i1 %tobool59.not.26.i, label %for.inc.26.i, label %for.inc.25.i.for.end.i_crit_edge

for.inc.25.i.for.end.i_crit_edge:                 ; preds = %for.inc.25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.26.i:                                     ; preds = %for.inc.25.i
  %196 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool59.not.27.i = icmp eq i8 %197, 0
  br i1 %tobool59.not.27.i, label %for.inc.27.i, label %for.inc.26.i.for.end.i_crit_edge

for.inc.26.i.for.end.i_crit_edge:                 ; preds = %for.inc.26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.27.i:                                     ; preds = %for.inc.26.i
  %198 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool59.not.28.i = icmp eq i8 %199, 0
  br i1 %tobool59.not.28.i, label %for.inc.28.i, label %for.inc.27.i.for.end.i_crit_edge

for.inc.27.i.for.end.i_crit_edge:                 ; preds = %for.inc.27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.28.i:                                     ; preds = %for.inc.27.i
  %200 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool59.not.29.i = icmp eq i8 %201, 0
  br i1 %tobool59.not.29.i, label %for.inc.29.i, label %for.inc.28.i.for.end.i_crit_edge

for.inc.28.i.for.end.i_crit_edge:                 ; preds = %for.inc.28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.29.i:                                     ; preds = %for.inc.28.i
  call void @__sanitizer_cov_trace_pc() #8
  %202 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool59.not.30.i = icmp eq i8 %203, 0
  %spec.select.i = select i1 %tobool59.not.30.i, i32 31, i32 30
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.29.i, %for.inc.28.i.for.end.i_crit_edge, %for.inc.27.i.for.end.i_crit_edge, %for.inc.26.i.for.end.i_crit_edge, %for.inc.25.i.for.end.i_crit_edge, %for.inc.24.i.for.end.i_crit_edge, %for.inc.23.i.for.end.i_crit_edge, %for.inc.22.i.for.end.i_crit_edge, %for.inc.21.i.for.end.i_crit_edge, %for.inc.20.i.for.end.i_crit_edge, %for.inc.19.i.for.end.i_crit_edge, %for.inc.18.i.for.end.i_crit_edge, %for.inc.17.i.for.end.i_crit_edge, %for.inc.16.i.for.end.i_crit_edge, %for.inc.15.i.for.end.i_crit_edge, %for.inc.14.i.for.end.i_crit_edge, %for.inc.13.i.for.end.i_crit_edge, %for.inc.12.i.for.end.i_crit_edge, %for.inc.11.i.for.end.i_crit_edge, %for.inc.10.i.for.end.i_crit_edge, %for.inc.9.i.for.end.i_crit_edge, %for.inc.8.i.for.end.i_crit_edge, %for.inc.7.i.for.end.i_crit_edge, %for.inc.6.i.for.end.i_crit_edge, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %land.rhs.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %land.rhs.preheader.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ], [ 4, %for.inc.3.i.for.end.i_crit_edge ], [ 5, %for.inc.4.i.for.end.i_crit_edge ], [ 6, %for.inc.5.i.for.end.i_crit_edge ], [ 7, %for.inc.6.i.for.end.i_crit_edge ], [ 8, %for.inc.7.i.for.end.i_crit_edge ], [ 9, %for.inc.8.i.for.end.i_crit_edge ], [ 10, %for.inc.9.i.for.end.i_crit_edge ], [ 11, %for.inc.10.i.for.end.i_crit_edge ], [ 12, %for.inc.11.i.for.end.i_crit_edge ], [ 13, %for.inc.12.i.for.end.i_crit_edge ], [ 14, %for.inc.13.i.for.end.i_crit_edge ], [ 15, %for.inc.14.i.for.end.i_crit_edge ], [ 16, %for.inc.15.i.for.end.i_crit_edge ], [ 17, %for.inc.16.i.for.end.i_crit_edge ], [ 18, %for.inc.17.i.for.end.i_crit_edge ], [ 19, %for.inc.18.i.for.end.i_crit_edge ], [ 20, %for.inc.19.i.for.end.i_crit_edge ], [ 21, %for.inc.20.i.for.end.i_crit_edge ], [ 22, %for.inc.21.i.for.end.i_crit_edge ], [ 23, %for.inc.22.i.for.end.i_crit_edge ], [ 24, %for.inc.23.i.for.end.i_crit_edge ], [ 25, %for.inc.24.i.for.end.i_crit_edge ], [ 26, %for.inc.25.i.for.end.i_crit_edge ], [ 27, %for.inc.26.i.for.end.i_crit_edge ], [ 28, %for.inc.27.i.for.end.i_crit_edge ], [ 29, %for.inc.28.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.29.i ]
  %configuration_id.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 3
  %sub.i = sub nuw nsw i32 32, %i.0.lcssa.i
  %add.ptr.i = getelementptr i8, ptr %f34_ctrl.i, i32 %i.0.lcssa.i
  %call62.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %configuration_id.i, i32 noundef 65, ptr noundef nonnull @.str.111, i32 noundef %sub.i, ptr noundef %add.ptr.i) #6
  %204 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %f34, align 4
  %dev64.i = getelementptr inbounds %struct.rmi_function, ptr %205, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev64.i, ptr noundef nonnull @.str.112, ptr noundef %configuration_id.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f34_ctrl.i) #6
  br label %if.end67.i

if.end67.i:                                       ; preds = %for.end.i, %if.end20.i.if.end67.i_crit_edge
  %partitions.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 14
  %206 = ptrtoint ptr %partitions.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %partitions.i, align 2
  %207 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %29, align 1
  %conv153.i = zext i8 %208 to i32
  %call.i283.i = call i32 @__sw_hweight8(i32 noundef %conv153.i) #6
  %209 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %partitions.i, align 2
  %211 = trunc i32 %call.i283.i to i8
  %conv158.i = add i8 %210, %211
  store i8 %conv158.i, ptr %partitions.i, align 2
  %212 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %30, align 1
  %conv153.1.i = zext i8 %213 to i32
  %call.i283.1.i = call i32 @__sw_hweight8(i32 noundef %conv153.1.i) #6
  %214 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %partitions.i, align 2
  %216 = trunc i32 %call.i283.1.i to i8
  %conv158.1.i = add i8 %215, %216
  store i8 %conv158.1.i, ptr %partitions.i, align 2
  %217 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %31, align 1
  %conv153.2.i = zext i8 %218 to i32
  %call.i283.2.i = call i32 @__sw_hweight8(i32 noundef %conv153.2.i) #6
  %219 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %partitions.i, align 2
  %221 = trunc i32 %call.i283.2.i to i8
  %conv158.2.i = add i8 %220, %221
  store i8 %conv158.2.i, ptr %partitions.i, align 2
  %222 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %32, align 1
  %conv153.3.i = zext i8 %223 to i32
  %call.i283.3.i = call i32 @__sw_hweight8(i32 noundef %conv153.3.i) #6
  %224 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %partitions.i, align 2
  %226 = trunc i32 %call.i283.3.i to i8
  %conv158.3.i = add i8 %225, %226
  store i8 %conv158.3.i, ptr %partitions.i, align 2
  %227 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %f34, align 4
  %dev163.i = getelementptr inbounds %struct.rmi_function, ptr %228, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev163.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %29) #6
  %229 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %partitions.i, align 2
  %conv167.i = zext i8 %230 to i16
  %mul.i = shl nuw nsw i16 %conv167.i, 3
  %add168.i = or i16 %mul.i, 2
  %partition_table_bytes.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 15
  %231 = ptrtoint ptr %partition_table_bytes.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %add168.i, ptr %partition_table_bytes.i, align 4
  %232 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %f34, align 4
  %dev171.i = getelementptr inbounds %struct.rmi_function, ptr %233, i32 0, i32 2
  %conv173.i = zext i16 %add168.i to i32
  %call.i284.i = call noalias ptr @devm_kmalloc(ptr noundef %dev171.i, i32 noundef %conv173.i, i32 noundef 3520) #6
  %read_config_buf.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 4
  %234 = ptrtoint ptr %read_config_buf.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call.i284.i, ptr %read_config_buf.i, align 4
  %tobool176.not.i = icmp eq ptr %call.i284.i, null
  br i1 %tobool176.not.i, label %if.then177.i, label %if.end178.i

if.then177.i:                                     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  %read_config_buf_size.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 5
  %235 = ptrtoint ptr %read_config_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %read_config_buf_size.i, align 4
  br label %rmi_f34v7_read_queries.exit.thread

if.end178.i:                                      ; preds = %if.end67.i
  %236 = ptrtoint ptr %partition_table_bytes.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %partition_table_bytes.i, align 4
  %conv180.i = zext i16 %237 to i32
  %read_config_buf_size181.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 5
  %238 = ptrtoint ptr %read_config_buf_size181.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %conv180.i, ptr %read_config_buf_size181.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %block_number.i.i) #6
  %239 = ptrtoint ptr %block_number.i.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 0, ptr %block_number.i.i, align 2
  %240 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %f34, align 4
  %data_base_addr.i.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %241, i32 0, i32 3
  %242 = ptrtoint ptr %data_base_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %data_base_addr.i.i, align 2
  %config_area.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 11
  %244 = ptrtoint ptr %config_area.i.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 4, ptr %config_area.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %partition.i.i.i) #6
  %245 = ptrtoint ptr %data_base_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %data_base_addr.i.i, align 2
  %247 = ptrtoint ptr %partition.i.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 3, ptr %partition.i.i.i, align 1
  %rmi_dev.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %241, i32 0, i32 1
  %248 = ptrtoint ptr %rmi_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rmi_dev.i.i.i, align 4
  %250 = and i16 %246, 255
  %251 = ptrtoint ptr %partition_id.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %partition_id.i, align 1
  %conv44.i.i.i = zext i8 %252 to i16
  %add.i.i.i = add nuw nsw i16 %250, %conv44.i.i.i
  %xport.i.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %249, i32 0, i32 3
  %253 = ptrtoint ptr %xport.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %xport.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %254, i32 0, i32 3
  %255 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ops.i.i.i.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 4
  %call.i.i.i.i = call i32 %258(ptr noundef %254, i16 noundef zeroext %add.i.i.i, ptr noundef nonnull %partition.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp46.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp46.i.i.i, label %rmi_f34v7_write_partition_id.exit.thread.i.i, label %if.end.i.i

rmi_f34v7_write_partition_id.exit.thread.i.i:     ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #8
  %259 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %f34, align 4
  %dev53.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %260, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i.i.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %partition.i.i.i) #6
  br label %do.end189.i

if.end.i.i:                                       ; preds = %if.end178.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %partition.i.i.i) #6
  %261 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %f34, align 4
  %rmi_dev.i.i = getelementptr inbounds %struct.rmi_function, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %rmi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmi_dev.i.i, align 4
  %265 = and i16 %243, 255
  %266 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %block_number.i, align 1
  %conv5.i.i = zext i8 %267 to i16
  %add.i.i = add nuw nsw i16 %265, %conv5.i.i
  %xport.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %264, i32 0, i32 3
  %268 = ptrtoint ptr %xport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %xport.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %269, i32 0, i32 3
  %270 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ops.i.i.i, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %271, align 4
  %call.i.i.i = call i32 %273(ptr noundef %269, i16 noundef zeroext %add.i.i, ptr noundef nonnull %block_number.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.end12.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %274 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %f34, align 4
  %dev.i.i = getelementptr inbounds %struct.rmi_function, ptr %275, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.117) #9
  br label %do.end189.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %276 = ptrtoint ptr %flash_config_length24.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %flash_config_length24.i, align 2
  %278 = call i16 @llvm.bswap.i16(i16 %277) #6
  %279 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %278, ptr %length.i.i, align 2
  %280 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %f34, align 4
  %rmi_dev14.i.i = getelementptr inbounds %struct.rmi_function, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %rmi_dev14.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %rmi_dev14.i.i, align 4
  %284 = ptrtoint ptr %transfer_length.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %transfer_length.i, align 1
  %conv17.i.i = zext i8 %285 to i16
  %add18.i.i = add nuw nsw i16 %265, %conv17.i.i
  %xport.i105.i.i = getelementptr inbounds %struct.rmi_device, ptr %283, i32 0, i32 3
  %286 = ptrtoint ptr %xport.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %xport.i105.i.i, align 8
  %ops.i106.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %287, i32 0, i32 3
  %288 = ptrtoint ptr %ops.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ops.i106.i.i, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %289, align 4
  %call.i107.i.i = call i32 %291(ptr noundef %287, i16 noundef zeroext %add18.i.i, ptr noundef nonnull %length.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i.i)
  %cmp21.i.i = icmp slt i32 %call.i107.i.i, 0
  br i1 %cmp21.i.i, label %do.end26.i.i, label %if.end29.i.i

do.end26.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %292 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %f34, align 4
  %dev28.i.i = getelementptr inbounds %struct.rmi_function, ptr %293, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117) #9
  br label %do.end189.i

if.end29.i.i:                                     ; preds = %if.end12.i.i
  %294 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %cmd_done, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command.i.i.i) #6
  %295 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %f34, align 4
  %data_base_addr.i108.i.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %296, i32 0, i32 3
  %297 = ptrtoint ptr %data_base_addr.i108.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %data_base_addr.i108.i.i, align 2
  %299 = ptrtoint ptr %command.i.i.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 2, ptr %command.i.i.i, align 1
  %command8.i.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %300 = ptrtoint ptr %command8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 2, ptr %command8.i.i.i, align 4
  %dev15.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %296, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev15.i.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 2) #6
  %301 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %f34, align 4
  %rmi_dev.i109.i.i = getelementptr inbounds %struct.rmi_function, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %rmi_dev.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %rmi_dev.i109.i.i, align 4
  %305 = and i16 %298, 255
  %306 = ptrtoint ptr %flash_cmd.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %flash_cmd.i, align 1
  %conv19.i.i.i = zext i8 %307 to i16
  %add.i110.i.i = add nuw nsw i16 %305, %conv19.i.i.i
  %xport.i.i111.i.i = getelementptr inbounds %struct.rmi_device, ptr %304, i32 0, i32 3
  %308 = ptrtoint ptr %xport.i.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %xport.i.i111.i.i, align 8
  %ops.i.i112.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %309, i32 0, i32 3
  %310 = ptrtoint ptr %ops.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ops.i.i112.i.i, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  %call.i.i113.i.i = call i32 %313(ptr noundef %309, i16 noundef zeroext %add.i110.i.i, ptr noundef nonnull %command.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113.i.i)
  %cmp22.i.i.i = icmp slt i32 %call.i.i113.i.i, 0
  br i1 %cmp22.i.i.i, label %do.end36.i.i, label %if.end39.i.i

do.end36.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %314 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %f34, align 4
  %dev29.i.i.i = getelementptr inbounds %struct.rmi_function, ptr %315, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i.i.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command.i.i.i) #6
  %316 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %f34, align 4
  %dev38.i.i = getelementptr inbounds %struct.rmi_function, ptr %317, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.117) #9
  br label %do.end189.i

if.end39.i.i:                                     ; preds = %if.end29.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command.i.i.i) #6
  %flash_status.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %318 = load volatile i32, ptr @jiffies, align 128
  %sub123.i.i = add i32 %318, -300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub123.i.i)
  %cmp41124.i.i = icmp slt i32 %sub123.i.i, 0
  br i1 %cmp41124.i.i, label %if.end39.i.i.while.body.i.i_crit_edge, label %if.end39.i.i.while.end.i.i_crit_edge

if.end39.i.i.while.end.i.i_crit_edge:             ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end39.i.i.while.body.i.i_crit_edge:            ; preds = %if.end39.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end51.i.i.while.body.i.i_crit_edge, %if.end39.i.i.while.body.i.i_crit_edge
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %call43.i.i = call fastcc i32 @rmi_f34v7_read_flash_status(ptr noundef %f34) #6
  %319 = ptrtoint ptr %command8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %command8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %cmp45.i.i = icmp eq i8 %320, 0
  br i1 %cmp45.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end51.i.i_crit_edge

while.body.i.i.if.end51.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %321 = ptrtoint ptr %flash_status.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %flash_status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %cmp48.i.i = icmp eq i8 %322, 0
  br i1 %cmp48.i.i, label %land.lhs.true.i.i.while.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end51.i.i_crit_edge

land.lhs.true.i.i.if.end51.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i.i

land.lhs.true.i.i.while.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end51.i.i:                                     ; preds = %land.lhs.true.i.i.if.end51.i.i_crit_edge, %while.body.i.i.if.end51.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %323 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %323, -300
  %cmp41.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp41.i.i, label %if.end51.i.i.while.body.i.i_crit_edge, label %if.end51.i.i.while.end.i.i_crit_edge

if.end51.i.i.while.end.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end51.i.i.while.body.i.i_crit_edge:            ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end51.i.i.while.end.i.i_crit_edge, %land.lhs.true.i.i.while.end.i.i_crit_edge, %if.end39.i.i.while.end.i.i_crit_edge
  %324 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %f34, align 4
  %rmi_dev53.i.i = getelementptr inbounds %struct.rmi_function, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %rmi_dev53.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %rmi_dev53.i.i, align 4
  %328 = ptrtoint ptr %payload.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %payload.i, align 1
  %conv56.i.i = zext i8 %329 to i16
  %add57.i.i = add nuw nsw i16 %265, %conv56.i.i
  %330 = ptrtoint ptr %read_config_buf.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %read_config_buf.i, align 4
  %332 = ptrtoint ptr %partition_table_bytes.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %partition_table_bytes.i, align 4
  %conv59.i.i = zext i16 %333 to i32
  %xport.i115.i.i = getelementptr inbounds %struct.rmi_device, ptr %327, i32 0, i32 3
  %334 = ptrtoint ptr %xport.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %xport.i115.i.i, align 8
  %ops.i116.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %335, i32 0, i32 3
  %336 = ptrtoint ptr %ops.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ops.i116.i.i, align 4
  %read_block.i.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %read_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %read_block.i.i.i, align 4
  %call.i117.i.i = call i32 %339(ptr noundef %335, i16 noundef zeroext %add57.i.i, ptr noundef %331, i32 noundef %conv59.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i.i)
  %cmp61.i.i = icmp slt i32 %call.i117.i.i, 0
  br i1 %cmp61.i.i, label %do.end66.i.i, label %rmi_f34v7_read_queries.exit.thread86

do.end66.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %340 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %f34, align 4
  %dev68.i.i = getelementptr inbounds %struct.rmi_function, ptr %341, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68.i.i, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.117) #9
  br label %do.end189.i

do.end189.i:                                      ; preds = %do.end66.i.i, %do.end36.i.i, %do.end26.i.i, %do.end.i.i, %rmi_f34v7_write_partition_id.exit.thread.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i.i, %rmi_f34v7_write_partition_id.exit.thread.i.i ], [ %call.i117.i.i, %do.end66.i.i ], [ %call.i.i113.i.i, %do.end36.i.i ], [ %call.i107.i.i, %do.end26.i.i ], [ %call.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block_number.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length.i.i) #6
  %342 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %f34, align 4
  %dev191.i = getelementptr inbounds %struct.rmi_function, ptr %343, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev191.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.107) #9
  br label %rmi_f34v7_read_queries.exit.thread

rmi_f34v7_read_queries.exit.thread86:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block_number.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length.i.i) #6
  call fastcc void @rmi_f34v7_parse_partition_table(ptr noundef %f34, ptr noundef nonnull %call.i284.i, ptr noundef %blkcount, ptr noundef %phyaddr) #6
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %query_1_7.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %query_0.i) #6
  br label %if.end59

rmi_f34v7_read_queries.exit.thread:               ; preds = %do.end189.i, %if.then177.i, %do.end17.i, %do.end.i
  %retval.1.i.ph = phi i32 [ -12, %if.then177.i ], [ %retval.0.i.ph.i, %do.end189.i ], [ %call.i278.i, %do.end17.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %query_1_7.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %query_0.i) #6
  br label %cleanup

rmi_f34v7_read_queries.exit:                      ; preds = %if.then47.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f34_ctrl.i) #6
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %query_1_7.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %query_0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.i)
  %cmp56 = icmp slt i32 %call.i282.i, 0
  br i1 %cmp56, label %rmi_f34v7_read_queries.exit.cleanup_crit_edge, label %rmi_f34v7_read_queries.exit.if.end59_crit_edge

rmi_f34v7_read_queries.exit.if.end59_crit_edge:   ; preds = %rmi_f34v7_read_queries.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

rmi_f34v7_read_queries.exit.cleanup_crit_edge:    ; preds = %rmi_f34v7_read_queries.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %rmi_f34v7_read_queries.exit.if.end59_crit_edge, %rmi_f34v7_read_queries.exit.thread86
  %force_update = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 2
  %344 = ptrtoint ptr %force_update to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 1, ptr %force_update, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %rmi_f34v7_read_queries.exit.cleanup_crit_edge, %rmi_f34v7_read_queries.exit.thread, %do.end36, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end59 ], [ -22, %do.end36 ], [ %call.i282.i, %rmi_f34v7_read_queries.exit.cleanup_crit_edge ], [ %retval.1.i.ph, %rmi_f34v7_read_queries.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rmi_f34v7_parse_partition_table(ptr nocapture noundef readonly %f34, ptr noundef %partition_table, ptr nocapture noundef %blkcount, ptr nocapture noundef writeonly %phyaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %partitions = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 14
  %0 = ptrtoint ptr %partitions to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %partitions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp91.not = icmp eq i8 %1, 0
  br i1 %cmp91.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lockdown = getelementptr inbounds %struct.block_count, ptr %blkcount, i32 0, i32 6
  %bl_config = getelementptr inbounds %struct.block_count, ptr %blkcount, i32 0, i32 5
  %pm_config = getelementptr inbounds %struct.block_count, ptr %blkcount, i32 0, i32 4
  %guest_code = getelementptr inbounds %struct.block_count, ptr %blkcount, i32 0, i32 7
  %guest_code27 = getelementptr inbounds %struct.physical_address, ptr %phyaddr, i32 0, i32 3
  %fl_config = getelementptr inbounds %struct.block_count, ptr %blkcount, i32 0, i32 3
  %dp_config = getelementptr inbounds %struct.block_count, ptr %blkcount, i32 0, i32 2
  %dp_config16 = getelementptr inbounds %struct.physical_address, ptr %phyaddr, i32 0, i32 2
  %ui_config = getelementptr inbounds %struct.block_count, ptr %blkcount, i32 0, i32 1
  %ui_config10 = getelementptr inbounds %struct.physical_address, ptr %phyaddr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.092, 3
  %add = or i32 %mul, 2
  %add.ptr = getelementptr i8, ptr %partition_table, i32 %add
  %partition_length2 = getelementptr inbounds %struct.partition_table, ptr %add.ptr, i32 0, i32 2
  %2 = ptrtoint ptr %partition_length2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %partition_length2, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %start_physical_address = getelementptr inbounds %struct.partition_table, ptr %add.ptr, i32 0, i32 3
  %5 = ptrtoint ptr %start_physical_address to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %start_physical_address, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %9, i32 0, i32 2
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %i.092, i32 noundef 8, ptr noundef %add.ptr) #6
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %12 = and i8 %11, 31
  %and = zext i8 %12 to i32
  %13 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %and, label %for.body.for.inc_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb9
    i32 10, label %sw.bb15
    i32 3, label %sw.bb21
    i32 9, label %sw.bb26
    i32 5, label %sw.bb32
    i32 6, label %sw.bb37
    i32 2, label %sw.bb42
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %blkcount to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %4, ptr %blkcount, align 2
  %15 = ptrtoint ptr %phyaddr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %7, ptr %phyaddr, align 2
  %16 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f34, align 4
  %dev6 = getelementptr inbounds %struct.rmi_function, ptr %17, i32 0, i32 2
  %18 = load i16, ptr %blkcount, align 2
  %conv8 = zext i16 %18 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev6, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv8) #6
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ui_config to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %4, ptr %ui_config, align 2
  %20 = ptrtoint ptr %ui_config10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %7, ptr %ui_config10, align 2
  %21 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f34, align 4
  %dev12 = getelementptr inbounds %struct.rmi_function, ptr %22, i32 0, i32 2
  %23 = load i16, ptr %ui_config, align 2
  %conv14 = zext i16 %23 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev12, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv14) #6
  br label %for.inc

sw.bb15:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dp_config to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %4, ptr %dp_config, align 2
  %25 = ptrtoint ptr %dp_config16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %7, ptr %dp_config16, align 2
  %26 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f34, align 4
  %dev18 = getelementptr inbounds %struct.rmi_function, ptr %27, i32 0, i32 2
  %28 = load i16, ptr %dp_config, align 2
  %conv20 = zext i16 %28 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev18, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv20) #6
  br label %for.inc

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %fl_config to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %4, ptr %fl_config, align 2
  %30 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f34, align 4
  %dev23 = getelementptr inbounds %struct.rmi_function, ptr %31, i32 0, i32 2
  %conv25 = zext i16 %4 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev23, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv25) #6
  br label %for.inc

sw.bb26:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %guest_code to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %4, ptr %guest_code, align 2
  %33 = ptrtoint ptr %guest_code27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %7, ptr %guest_code27, align 2
  %34 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f34, align 4
  %dev29 = getelementptr inbounds %struct.rmi_function, ptr %35, i32 0, i32 2
  %36 = load i16, ptr %guest_code, align 2
  %conv31 = zext i16 %36 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev29, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv31) #6
  br label %for.inc

sw.bb32:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %pm_config to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %4, ptr %pm_config, align 2
  %38 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f34, align 4
  %dev34 = getelementptr inbounds %struct.rmi_function, ptr %39, i32 0, i32 2
  %conv36 = zext i16 %4 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev34, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv36) #6
  br label %for.inc

sw.bb37:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %bl_config to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %4, ptr %bl_config, align 2
  %41 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f34, align 4
  %dev39 = getelementptr inbounds %struct.rmi_function, ptr %42, i32 0, i32 2
  %conv41 = zext i16 %4 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev39, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv41) #6
  br label %for.inc

sw.bb42:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %lockdown to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %4, ptr %lockdown, align 2
  %44 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f34, align 4
  %dev44 = getelementptr inbounds %struct.rmi_function, ptr %45, i32 0, i32 2
  %conv46 = zext i16 %4 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev44, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.rmi_f34v7_parse_partition_table, i32 noundef %conv46) #6
  br label %for.inc

for.inc:                                          ; preds = %sw.bb42, %sw.bb37, %sw.bb32, %sw.bb26, %sw.bb21, %sw.bb15, %sw.bb9, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.092, 1
  %46 = ptrtoint ptr %partitions to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %partitions, align 2
  %conv = zext i8 %47 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_write_command(ptr nocapture noundef %f34, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %data_1_5.i = alloca %struct.f34v7_data_1_5, align 8
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #6
  %0 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f34, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data_base_addr, align 2
  %4 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %cmd, label %do.end [
    i8 1, label %entry.sw.epilog13_crit_edge
    i8 2, label %entry.sw.epilog13_crit_edge54
    i8 4, label %entry.sw.epilog13_crit_edge55
    i8 5, label %sw.bb2
    i8 6, label %sw.bb10.thread
    i8 7, label %entry.sw.bb10_crit_edge
    i8 9, label %entry.sw.bb10_crit_edge56
    i8 8, label %entry.sw.bb10_crit_edge57
    i8 10, label %entry.sw.bb10_crit_edge58
    i8 11, label %entry.sw.bb10_crit_edge59
    i8 12, label %entry.sw.bb10_crit_edge60
    i8 13, label %sw.bb10.thread49
  ]

entry.sw.bb10_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.epilog13_crit_edge55:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

entry.sw.epilog13_crit_edge54:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

entry.sw.epilog13_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

sw.bb10.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %command, align 1
  %command84548 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %6 = ptrtoint ptr %command84548 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %command84548, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i) #6
  %7 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_base_addr, align 2
  %12 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 504403158265495552, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb10.thread49:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %command, align 1
  %command84550 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %14 = ptrtoint ptr %command84550 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %command84550, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i) #6
  %15 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 4
  %17 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data_base_addr, align 2
  %20 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 72057594037927936, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = zext i8 %cmd to i32
  %dev = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %conv1) #9
  br label %cleanup

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge56, %entry.sw.bb10_crit_edge57, %entry.sw.bb10_crit_edge58, %entry.sw.bb10_crit_edge59, %entry.sw.bb10_crit_edge60
  %21 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %command, align 1
  %command845 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %22 = ptrtoint ptr %command845 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %command845, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i) #6
  %23 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 4
  %25 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data_base_addr, align 2
  %28 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %data_1_5.i, align 8
  %29 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %cmd, label %sw.bb10.sw.epilog.i_crit_edge [
    i8 12, label %sw.bb17.i
    i8 7, label %sw.bb2.i
    i8 9, label %sw.bb5.i
    i8 8, label %sw.bb8.i
    i8 10, label %sw.bb11.i
    i8 11, label %sw.bb14.i
  ]

sw.bb10.sw.epilog.i_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb11.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 10, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb14.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb17.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %data_1_5.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 9, ptr %data_1_5.i, align 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb17.i, %sw.bb14.i, %sw.bb11.i, %sw.bb8.i, %sw.bb5.i, %sw.bb2.i, %sw.bb10.thread49, %sw.bb10.thread
  %36 = phi i16 [ %19, %sw.bb10.thread49 ], [ %27, %sw.bb17.i ], [ %27, %sw.bb14.i ], [ %27, %sw.bb11.i ], [ %27, %sw.bb8.i ], [ %27, %sw.bb5.i ], [ %27, %sw.bb2.i ], [ %11, %sw.bb10.thread ]
  %37 = phi ptr [ %17, %sw.bb10.thread49 ], [ %25, %sw.bb17.i ], [ %25, %sw.bb14.i ], [ %25, %sw.bb11.i ], [ %25, %sw.bb8.i ], [ %25, %sw.bb5.i ], [ %25, %sw.bb2.i ], [ %9, %sw.bb10.thread ]
  %38 = phi ptr [ %16, %sw.bb10.thread49 ], [ %24, %sw.bb17.i ], [ %24, %sw.bb14.i ], [ %24, %sw.bb11.i ], [ %24, %sw.bb8.i ], [ %24, %sw.bb5.i ], [ %24, %sw.bb2.i ], [ %8, %sw.bb10.thread ]
  %39 = phi ptr [ %15, %sw.bb10.thread49 ], [ %23, %sw.bb17.i ], [ %23, %sw.bb14.i ], [ %23, %sw.bb11.i ], [ %23, %sw.bb8.i ], [ %23, %sw.bb5.i ], [ %23, %sw.bb2.i ], [ %7, %sw.bb10.thread ]
  %.sink.i = phi i8 [ 1, %sw.bb10.thread49 ], [ 4, %sw.bb17.i ], [ 4, %sw.bb14.i ], [ 4, %sw.bb11.i ], [ 4, %sw.bb8.i ], [ 4, %sw.bb5.i ], [ 4, %sw.bb2.i ], [ 5, %sw.bb10.thread ]
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink.i, ptr %39, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb10.sw.epilog.i_crit_edge
  %41 = phi i16 [ %36, %sw.epilog.sink.split.i ], [ %27, %sw.bb10.sw.epilog.i_crit_edge ]
  %42 = phi ptr [ %37, %sw.epilog.sink.split.i ], [ %25, %sw.bb10.sw.epilog.i_crit_edge ]
  %43 = phi ptr [ %38, %sw.epilog.sink.split.i ], [ %24, %sw.bb10.sw.epilog.i_crit_edge ]
  %bootloader_id.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %44 = ptrtoint ptr %bootloader_id.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bootloader_id.i, align 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %43, align 2
  %arrayidx25.i = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx25.i, align 1
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %42, align 1
  %rmi_dev.i = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmi_dev.i, align 4
  %52 = and i16 %41, 255
  %partition_id30.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %53 = ptrtoint ptr %partition_id30.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %partition_id30.i, align 1
  %conv31.i = zext i8 %54 to i16
  %add.i = add nuw nsw i16 %52, %conv31.i
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %51, i32 0, i32 3
  %55 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i.i = call i32 %60(ptr noundef %56, i16 noundef zeroext %add.i, ptr noundef nonnull %data_1_5.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %61, label %rmi_f34v7_write_command_single_transaction.exit

rmi_f34v7_write_command_single_transaction.exit:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i) #6
  br label %cleanup

61:                                               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %f34, align 4
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %63, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i) #6
  br label %cleanup

sw.epilog13:                                      ; preds = %sw.bb2, %entry.sw.epilog13_crit_edge, %entry.sw.epilog13_crit_edge54, %entry.sw.epilog13_crit_edge55
  %storemerge = phi i8 [ 2, %sw.bb2 ], [ 3, %entry.sw.epilog13_crit_edge ], [ 3, %entry.sw.epilog13_crit_edge54 ], [ 3, %entry.sw.epilog13_crit_edge55 ]
  %64 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %storemerge, ptr %command, align 1
  %command8 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %65 = ptrtoint ptr %command8 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %storemerge, ptr %command8, align 4
  %dev15 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  %conv16 = zext i8 %storemerge to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev15, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %conv16) #6
  %66 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %f34, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmi_dev, align 4
  %70 = and i16 %3, 255
  %flash_cmd = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 9
  %71 = ptrtoint ptr %flash_cmd to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %flash_cmd, align 1
  %conv19 = zext i8 %72 to i16
  %add = add nuw nsw i16 %70, %conv19
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %69, i32 0, i32 3
  %73 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call.i = call i32 %78(ptr noundef %74, i16 noundef zeroext %add, ptr noundef nonnull %command, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %do.end27, label %sw.epilog13.cleanup_crit_edge

sw.epilog13.cleanup_crit_edge:                    ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end27:                                         ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %f34, align 4
  %dev29 = getelementptr inbounds %struct.rmi_function, ptr %80, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %sw.epilog13.cleanup_crit_edge, %61, %rmi_f34v7_write_command_single_transaction.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end27 ], [ 0, %sw.epilog13.cleanup_crit_edge ], [ %call.i.i, %61 ], [ 0, %rmi_f34v7_write_command_single_transaction.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_erase_config(ptr noundef %f34) unnamed_addr #0 align 64 {
entry:
  %data_1_5.i.i50 = alloca %struct.f34v7_data_1_5, align 8
  %data_1_5.i.i32 = alloca %struct.f34v7_data_1_5, align 8
  %data_1_5.i.i = alloca %struct.f34v7_data_1_5, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.76) #9
  %cmd_done = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23
  %2 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  %config_area = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 11
  %3 = ptrtoint ptr %config_area to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %config_area, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %4, label %entry.sw.epilog_crit_edge [
    i16 0, label %sw.bb
    i16 3, label %sw.bb2
    i16 2, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f34, align 4
  %data_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %7, i32 0, i32 3
  %command845.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %8 = ptrtoint ptr %command845.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %command845.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i.i) #6
  %9 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i, i32 0, i32 4
  %10 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %data_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_base_addr.i, align 2
  %13 = ptrtoint ptr %data_1_5.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 576460752303685632, ptr %data_1_5.i.i, align 8
  %bootloader_id.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %14 = ptrtoint ptr %bootloader_id.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bootloader_id.i.i, align 1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %9, align 2
  %arrayidx25.i.i = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25.i.i, align 1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %10, align 1
  %rmi_dev.i.i = getelementptr inbounds %struct.rmi_function, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %rmi_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmi_dev.i.i, align 4
  %22 = and i16 %12, 255
  %partition_id30.i.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %23 = ptrtoint ptr %partition_id30.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %partition_id30.i.i, align 1
  %conv31.i.i = zext i8 %24 to i16
  %add.i.i = add nuw nsw i16 %22, %conv31.i.i
  %xport.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %21, i32 0, i32 3
  %25 = ptrtoint ptr %xport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xport.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i.i.i = call i32 %30(ptr noundef %26, i16 noundef zeroext %add.i.i, ptr noundef nonnull %data_1_5.i.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %rmi_f34v7_write_command.exit.thread, label %rmi_f34v7_write_command.exit

rmi_f34v7_write_command.exit.thread:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f34, align 4
  %dev.i.i = getelementptr inbounds %struct.rmi_function, ptr %32, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i) #6
  br label %cleanup

rmi_f34v7_write_command.exit:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %33 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f34, align 4
  %data_base_addr.i34 = getelementptr inbounds %struct.rmi_function_descriptor, ptr %34, i32 0, i32 3
  %command845.i35 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %35 = ptrtoint ptr %command845.i35 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %command845.i35, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i.i32) #6
  %36 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i32, i32 0, i32 4
  %37 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i32, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %data_base_addr.i34 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %data_base_addr.i34, align 2
  %40 = ptrtoint ptr %data_1_5.i.i32 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 720575940379541504, ptr %data_1_5.i.i32, align 8
  %bootloader_id.i.i36 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %41 = ptrtoint ptr %bootloader_id.i.i36 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bootloader_id.i.i36, align 1
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %36, align 2
  %arrayidx25.i.i37 = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx25.i.i37 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx25.i.i37, align 1
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %37, align 1
  %rmi_dev.i.i38 = getelementptr inbounds %struct.rmi_function, ptr %34, i32 0, i32 1
  %47 = ptrtoint ptr %rmi_dev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmi_dev.i.i38, align 4
  %49 = and i16 %39, 255
  %partition_id30.i.i39 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %50 = ptrtoint ptr %partition_id30.i.i39 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %partition_id30.i.i39, align 1
  %conv31.i.i40 = zext i8 %51 to i16
  %add.i.i41 = add nuw nsw i16 %49, %conv31.i.i40
  %xport.i.i.i42 = getelementptr inbounds %struct.rmi_device, ptr %48, i32 0, i32 3
  %52 = ptrtoint ptr %xport.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xport.i.i.i42, align 8
  %ops.i.i.i43 = getelementptr inbounds %struct.rmi_transport_dev, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %ops.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i.i43, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call.i.i.i44 = call i32 %57(ptr noundef %53, i16 noundef zeroext %add.i.i41, ptr noundef nonnull %data_1_5.i.i32, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i44)
  %cmp.i.i45 = icmp slt i32 %call.i.i.i44, 0
  br i1 %cmp.i.i45, label %rmi_f34v7_write_command.exit49.thread, label %rmi_f34v7_write_command.exit49

rmi_f34v7_write_command.exit49.thread:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %f34, align 4
  %dev.i.i47 = getelementptr inbounds %struct.rmi_function, ptr %59, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i47, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i32) #6
  br label %cleanup

rmi_f34v7_write_command.exit49:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i32) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %60 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f34, align 4
  %data_base_addr.i52 = getelementptr inbounds %struct.rmi_function_descriptor, ptr %61, i32 0, i32 3
  %command845.i53 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 6
  %62 = ptrtoint ptr %command845.i53 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %command845.i53, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_1_5.i.i50) #6
  %63 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i50, i32 0, i32 4
  %64 = getelementptr inbounds %struct.f34v7_data_1_5, ptr %data_1_5.i.i50, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %data_base_addr.i52 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %data_base_addr.i52, align 2
  %67 = ptrtoint ptr %data_1_5.i.i50 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 432345564227829760, ptr %data_1_5.i.i50, align 8
  %bootloader_id.i.i54 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 2
  %68 = ptrtoint ptr %bootloader_id.i.i54 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bootloader_id.i.i54, align 1
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %63, align 2
  %arrayidx25.i.i55 = getelementptr %struct.f34_data, ptr %f34, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %arrayidx25.i.i55 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx25.i.i55, align 1
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %64, align 1
  %rmi_dev.i.i56 = getelementptr inbounds %struct.rmi_function, ptr %61, i32 0, i32 1
  %74 = ptrtoint ptr %rmi_dev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmi_dev.i.i56, align 4
  %76 = and i16 %66, 255
  %partition_id30.i.i57 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %77 = ptrtoint ptr %partition_id30.i.i57 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %partition_id30.i.i57, align 1
  %conv31.i.i58 = zext i8 %78 to i16
  %add.i.i59 = add nuw nsw i16 %76, %conv31.i.i58
  %xport.i.i.i60 = getelementptr inbounds %struct.rmi_device, ptr %75, i32 0, i32 3
  %79 = ptrtoint ptr %xport.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xport.i.i.i60, align 8
  %ops.i.i.i61 = getelementptr inbounds %struct.rmi_transport_dev, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %ops.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i.i.i61, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %call.i.i.i62 = call i32 %84(ptr noundef %80, i16 noundef zeroext %add.i.i59, ptr noundef nonnull %data_1_5.i.i50, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i62)
  %cmp.i.i63 = icmp slt i32 %call.i.i.i62, 0
  br i1 %cmp.i.i63, label %rmi_f34v7_write_command.exit67.thread, label %rmi_f34v7_write_command.exit67

rmi_f34v7_write_command.exit67.thread:            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %f34, align 4
  %dev.i.i65 = getelementptr inbounds %struct.rmi_function, ptr %86, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i65, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i50) #6
  br label %cleanup

rmi_f34v7_write_command.exit67:                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_1_5.i.i50) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %rmi_f34v7_write_command.exit67, %rmi_f34v7_write_command.exit49, %rmi_f34v7_write_command.exit, %entry.sw.epilog_crit_edge
  %call1.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %87, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

87:                                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %f34, align 4
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %89, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %cleanup

cleanup:                                          ; preds = %87, %sw.epilog.cleanup_crit_edge, %rmi_f34v7_write_command.exit67.thread, %rmi_f34v7_write_command.exit49.thread, %rmi_f34v7_write_command.exit.thread
  %retval.0 = phi i32 [ %call.i.i.i, %rmi_f34v7_write_command.exit.thread ], [ %call.i.i.i44, %rmi_f34v7_write_command.exit49.thread ], [ %call.i.i.i62, %rmi_f34v7_write_command.exit67.thread ], [ -110, %87 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_write_partition_id(ptr nocapture noundef readonly %f34, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %partition = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %partition) #6
  %0 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %partition, align 1, !annotation !256
  %1 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f34, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data_base_addr, align 2
  %5 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %cmd, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb2_crit_edge
    i8 5, label %entry.sw.bb2_crit_edge68
    i8 4, label %sw.bb32
  ]

entry.sw.bb2_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 7, ptr %partition, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge68
  %config_area = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 11
  %7 = ptrtoint ptr %config_area to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %config_area, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %8, label %sw.bb2.sw.epilog_crit_edge [
    i16 0, label %if.then
    i16 3, label %if.then9
    i16 1, label %if.then15
    i16 2, label %if.then21
    i16 4, label %if.then27
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %partition, align 1
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %partition, align 1
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %partition, align 1
  br label %sw.epilog

if.then21:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %partition, align 1
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %partition, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %partition to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %partition, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = zext i8 %cmd to i32
  %dev = getelementptr inbounds %struct.rmi_function, ptr %2, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.88, i32 noundef %conv1) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb32, %if.then27, %if.then21, %if.then15, %if.then9, %if.then, %sw.bb2.sw.epilog_crit_edge, %sw.bb
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmi_dev, align 4
  %18 = and i16 %4, 255
  %partition_id = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 6
  %19 = ptrtoint ptr %partition_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %partition_id, align 1
  %conv44 = zext i8 %20 to i16
  %add = add nuw nsw i16 %18, %conv44
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i = call i32 %26(ptr noundef %22, i16 noundef zeroext %add, ptr noundef nonnull %partition, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46 = icmp slt i32 %call.i, 0
  br i1 %cmp46, label %do.end51, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end51:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f34, align 4
  %dev53 = getelementptr inbounds %struct.rmi_function, ptr %28, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end51 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %partition) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_f34v7_write_f34v7_blocks(ptr noundef %f34, ptr noundef %block_ptr, i16 noundef zeroext %block_cnt, i8 noundef zeroext %command) unnamed_addr #0 align 64 {
entry:
  %length = alloca i16, align 2
  %block_number = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %block_number) #6
  %0 = ptrtoint ptr %block_number to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %block_number, align 2
  %1 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f34, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data_base_addr, align 2
  %call = tail call fastcc i32 @rmi_f34v7_write_partition_id(ptr noundef %f34, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f34, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmi_dev, align 4
  %9 = and i16 %4, 255
  %block_number4 = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 7
  %10 = ptrtoint ptr %block_number4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %block_number4, align 1
  %conv5 = zext i8 %11 to i16
  %add = add nuw nsw i16 %9, %conv5
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i = call i32 %17(ptr noundef %13, i16 noundef zeroext %add, ptr noundef nonnull %block_number, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f34, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %19, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.95) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %payload_length = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 13
  %20 = ptrtoint ptr %payload_length to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %payload_length, align 4
  %block_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 8
  %22 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %block_size, align 2
  %24 = udiv i16 4096, %23
  %25 = call i16 @llvm.umin.i16(i16 %21, i16 %24)
  %cmd_done = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23
  %wait.i = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 23, i32 1
  %transfer_length = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 8
  %payload = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 7, i32 0, i32 17, i32 10
  %update_progress = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 5
  %update_size = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 6
  %update_status = getelementptr inbounds %struct.f34_data, ptr %f34, i32 0, i32 4
  br label %do.body24

do.body24:                                        ; preds = %if.end80.do.body24_crit_edge, %if.end12
  %block_ptr.addr.0 = phi ptr [ %block_ptr, %if.end12 ], [ %add.ptr, %if.end80.do.body24_crit_edge ]
  %remaining.0 = phi i16 [ %block_cnt, %if.end12 ], [ %sub, %if.end80.do.body24_crit_edge ]
  %26 = call i16 @llvm.umin.i16(i16 %remaining.0, i16 %25)
  %27 = call i16 @llvm.bswap.i16(i16 %26) #6
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %length, align 2
  %29 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cmd_done, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #6
  %30 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f34, align 4
  %rmi_dev33 = getelementptr inbounds %struct.rmi_function, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %rmi_dev33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmi_dev33, align 4
  %34 = ptrtoint ptr %transfer_length to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %transfer_length, align 1
  %conv36 = zext i8 %35 to i16
  %add37 = add nuw nsw i16 %9, %conv36
  %xport.i149 = getelementptr inbounds %struct.rmi_device, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %xport.i149 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xport.i149, align 8
  %ops.i150 = getelementptr inbounds %struct.rmi_transport_dev, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ops.i150 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i150, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i151 = call i32 %41(ptr noundef %37, i16 noundef zeroext %add37, ptr noundef nonnull %length, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp40 = icmp slt i32 %call.i151, 0
  br i1 %cmp40, label %do.end45, label %if.end49

do.end45:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %conv25.le164 = zext i16 %remaining.0 to i32
  %42 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f34, align 4
  %dev47 = getelementptr inbounds %struct.rmi_function, ptr %43, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.95, i32 noundef %conv25.le164) #9
  br label %cleanup

if.end49:                                         ; preds = %do.body24
  %call50 = call fastcc i32 @rmi_f34v7_write_command(ptr noundef %f34, i8 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %if.end54

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %44 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f34, align 4
  %rmi_dev56 = getelementptr inbounds %struct.rmi_function, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %rmi_dev56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmi_dev56, align 4
  %48 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %payload, align 1
  %conv59 = zext i8 %49 to i16
  %add60 = add nuw nsw i16 %9, %conv59
  %conv62 = zext i16 %26 to i32
  %50 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %block_size, align 2
  %conv64 = zext i16 %51 to i32
  %mul = mul nuw nsw i32 %conv64, %conv62
  %xport.i152 = getelementptr inbounds %struct.rmi_device, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %xport.i152 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xport.i152, align 8
  %ops.i153 = getelementptr inbounds %struct.rmi_transport_dev, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %ops.i153 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i153, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call.i154 = call i32 %57(ptr noundef %53, i16 noundef zeroext %add60, ptr noundef %block_ptr.addr.0, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp66 = icmp slt i32 %call.i154, 0
  br i1 %cmp66, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %conv25.le = zext i16 %remaining.0 to i32
  %58 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %f34, align 4
  %dev73 = getelementptr inbounds %struct.rmi_function, ptr %59, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.95, i32 noundef %conv25.le) #9
  br label %cleanup

if.end75:                                         ; preds = %if.end54
  %call1.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rmi_f34v7_wait_for_idle.exit.thread, label %if.end80

rmi_f34v7_wait_for_idle.exit.thread:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f34, align 4
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %61, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %62 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %block_size, align 2
  %conv83 = zext i16 %63 to i32
  %mul84 = mul nuw nsw i32 %conv83, %conv62
  %add.ptr = getelementptr i8, ptr %block_ptr.addr.0, i32 %mul84
  %sub = sub i16 %remaining.0, %26
  %64 = ptrtoint ptr %update_progress to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %update_progress, align 4
  %add89 = add i32 %65, %conv62
  store i32 %add89, ptr %update_progress, align 4
  %mul91 = mul i32 %add89, 100
  %66 = ptrtoint ptr %update_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %update_size, align 4
  %div92 = sdiv i32 %mul91, %67
  %68 = ptrtoint ptr %update_status to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div92, ptr %update_status, align 4
  %tobool.not = icmp eq i16 %sub, 0
  br i1 %tobool.not, label %if.end80.cleanup_crit_edge, label %if.end80.do.body24_crit_edge

if.end80.do.body24_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end80.cleanup_crit_edge, %rmi_f34v7_wait_for_idle.exit.thread, %do.end71, %if.end49.cleanup_crit_edge, %do.end45, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i151, %do.end45 ], [ %call.i154, %do.end71 ], [ %call, %entry.cleanup_crit_edge ], [ -110, %rmi_f34v7_wait_for_idle.exit.thread ], [ 0, %if.end80.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block_number) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !188, !189, !190, !192, !193, !195, !196, !197, !199, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !221, !223, !225, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1240, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rmi_f34v7_do_reflash._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rmi_f34v7_do_reflash._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1244, i32 2}
!10 = !{ptr @rmi_f34v7_do_reflash._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rmi_f34v7_do_reflash._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1251, i32 2}
!14 = !{ptr @rmi_f34v7_do_reflash._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rmi_f34v7_do_reflash._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1260, i32 3}
!18 = !{ptr @rmi_f34v7_do_reflash._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rmi_f34v7_do_reflash._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1269, i32 4}
!22 = !{ptr @rmi_f34v7_do_reflash._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rmi_f34v7_do_reflash._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1321, i32 3}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rmi_f34v7_start_reflash._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @rmi_f34v7_start_reflash._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1327, i32 2}
!32 = !{ptr @rmi_f34v7_start_reflash._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rmi_f34v7_start_reflash._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1334, i32 3}
!36 = !{ptr @rmi_f34v7_start_reflash._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rmi_f34v7_start_reflash._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1356, i32 3}
!40 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rmi_f34v7_probe._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rmi_f34v7_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1370, i32 3}
!45 = !{ptr @rmi_f34v7_probe._entry.28, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rmi_f34v7_probe._entry_ptr.30, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 436, i32 3}
!49 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rmi_f34v7_read_queries_bl_version._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rmi_f34v7_read_queries_bl_version._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 448, i32 3}
!54 = !{ptr @rmi_f34v7_read_queries_bl_version._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rmi_f34v7_read_queries_bl_version._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 456, i32 39}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1161, i32 3}
!60 = !{ptr @__func__.rmi_f34v7_parse_image_info, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1162, i32 3}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1169, i32 3}
!64 = !{ptr @rmi_f34v7_parse_image_info._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rmi_f34v7_parse_image_info._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1175, i32 3}
!68 = !{ptr @rmi_f34v7_parse_image_info._entry.39, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rmi_f34v7_parse_image_info._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1088, i32 39}
!72 = !{ptr @__func__.rmi_f34v7_parse_image_header_10, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1089, i32 3}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 1108, i32 4}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 362, i32 4}
!78 = !{ptr @__func__.rmi_f34v7_parse_partition_table, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 363, i32 4}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 369, i32 5}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 376, i32 5}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 383, i32 5}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 389, i32 5}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 396, i32 5}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 402, i32 5}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 408, i32 5}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 414, i32 5}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 582, i32 3}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rmi_f34v7_check_ui_firmware_size._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @rmi_f34v7_check_ui_firmware_size._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 599, i32 3}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rmi_f34v7_check_ui_config_size._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @rmi_f34v7_check_ui_config_size._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 614, i32 3}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rmi_f34v7_check_dp_config_size._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rmi_f34v7_check_dp_config_size._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 629, i32 3}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rmi_f34v7_check_guest_code_size._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rmi_f34v7_check_guest_code_size._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 644, i32 3}
!118 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rmi_f34v7_check_bl_config_size._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rmi_f34v7_check_bl_config_size._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 707, i32 2}
!123 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rmi_f34v7_erase_all._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @rmi_f34v7_erase_all._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 169, i32 3}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rmi_f34v7_write_command._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rmi_f34v7_write_command._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 194, i32 39}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 201, i32 3}
!135 = !{ptr @rmi_f34v7_write_command._entry.68, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @rmi_f34v7_write_command._entry_ptr.70, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 128, i32 3}
!139 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @rmi_f34v7_write_command_single_transaction._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @rmi_f34v7_write_command_single_transaction._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 67, i32 3}
!144 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rmi_f34v7_wait_for_idle._entry, !143, !"_entry", i1 false, i1 false}
!147 = !{ptr @rmi_f34v7_wait_for_idle._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 655, i32 2}
!150 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @rmi_f34v7_erase_config._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @rmi_f34v7_erase_config._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 688, i32 2}
!155 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @rmi_f34v7_erase_guest_code._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @rmi_f34v7_erase_guest_code._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 762, i32 3}
!160 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @rmi_f34v7_read_blocks._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @rmi_f34v7_read_blocks._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 778, i32 4}
!165 = !{ptr @rmi_f34v7_read_blocks._entry.82, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @rmi_f34v7_read_blocks._entry_ptr.84, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 799, i32 4}
!169 = !{ptr @rmi_f34v7_read_blocks._entry.85, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @rmi_f34v7_read_blocks._entry_ptr.87, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 259, i32 3}
!173 = !{ptr @rmi_f34v7_write_partition_id._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @rmi_f34v7_write_partition_id._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 268, i32 3}
!177 = !{ptr @rmi_f34v7_write_partition_id._entry.89, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @rmi_f34v7_write_partition_id._entry_ptr.91, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 933, i32 3}
!181 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @rmi_f34v7_write_flash_config._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @rmi_f34v7_write_flash_config._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 945, i32 3}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 834, i32 3}
!188 = !{ptr @rmi_f34v7_write_f34v7_blocks._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @rmi_f34v7_write_f34v7_blocks._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @rmi_f34v7_write_f34v7_blocks._entry.96, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 854, i32 4}
!192 = !{ptr @rmi_f34v7_write_f34v7_blocks._entry_ptr.97, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 868, i32 4}
!195 = !{ptr @rmi_f34v7_write_f34v7_blocks._entry.98, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @rmi_f34v7_write_f34v7_blocks._entry_ptr.100, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 33, i32 4}
!199 = !{ptr @__func__.rmi_f34v7_read_flash_status, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 33, i32 43}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 41, i32 3}
!203 = !{ptr @rmi_f34v7_read_flash_status._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @rmi_f34v7_read_flash_status._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 50, i32 3}
!207 = !{ptr @rmi_f34v7_read_flash_status._entry.103, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @rmi_f34v7_read_flash_status._entry_ptr.105, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @init_completion.__key, !210, !"__key", i1 false, i1 false}
!210 = !{!"../include/linux/completion.h", i32 87, i32 2}
!211 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 479, i32 3}
!214 = !{ptr @rmi_f34v7_read_queries._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @rmi_f34v7_read_queries._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @rmi_f34v7_read_queries._entry.108, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 491, i32 3}
!218 = !{ptr @rmi_f34v7_read_queries._entry_ptr.109, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 504, i32 39}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 533, i32 5}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 535, i32 40}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 543, i32 39}
!227 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 563, i32 3}
!229 = !{ptr @rmi_f34v7_read_queries._entry.114, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @rmi_f34v7_read_queries._entry_ptr.116, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 296, i32 3}
!233 = !{ptr @rmi_f34v7_read_partition_table._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @rmi_f34v7_read_partition_table._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 307, i32 3}
!237 = !{ptr @rmi_f34v7_read_partition_table._entry.118, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @rmi_f34v7_read_partition_table._entry_ptr.120, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.122, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 316, i32 3}
!241 = !{ptr @rmi_f34v7_read_partition_table._entry.121, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @rmi_f34v7_read_partition_table._entry_ptr.123, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.125, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/input/rmi4/rmi_f34v7.c", i32 337, i32 3}
!245 = !{ptr @rmi_f34v7_read_partition_table._entry.124, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @rmi_f34v7_read_partition_table._entry_ptr.126, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{!"auto-init"}
!257 = !{i8 0, i8 2}
