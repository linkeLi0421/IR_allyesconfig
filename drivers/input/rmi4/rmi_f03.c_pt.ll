; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f03.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f03.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.f03_data = type { ptr, ptr, i8, i32, i8, i8 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f03\00", [23 x i8] zeroinitializer }, align 32
@rmi_f03_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 3, ptr @rmi_f03_probe, ptr @rmi_f03_remove, ptr @rmi_f03_config, ptr null, ptr @rmi_f03_attention, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author232 = internal constant [50 x i8] c"rmi_core.author=Lyude Paul <thatslyude@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [36 x i8] c"rmi_core.description=RMI F03 module\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [42 x i8] c"rmi_core.file=drivers/input/rmi4/rmi_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"rmi_core.license=GPL\00", section ".modinfo", align 1
@rmi_f03_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"found %d devices on PS/2 passthrough\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_f03_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f03.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f03_probe._entry_ptr = internal global ptr @rmi_f03_probe._entry, section ".printk_index", align 4
@rmi_f03_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 106, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read query register (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmi_f03_initialize\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rmi_f03_initialize._entry_ptr = internal global ptr @rmi_f03_initialize._entry, section ".printk_index", align 4
@rmi_f03_initialize._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 129, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to read second set of query registers (%d).\0A\00", [44 x i8] zeroinitializer }, align 32
@rmi_f03_initialize._entry_ptr.11 = internal global ptr @rmi_f03_initialize._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RMI4 PS/2 pass-through\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/serio0\00", [22 x i8] zeroinitializer }, align 32
@rmi_f03_register_pt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016serio: %s port at %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmi_f03_register_pt\00", [44 x i8] zeroinitializer }, align 32
@rmi_f03_register_pt._entry_ptr = internal global ptr @rmi_f03_register_pt._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Wrote %.2hhx to PS/2 passthrough address\00", [51 x i8] zeroinitializer }, align 32
@__func__.rmi_f03_pt_write = private unnamed_addr constant [17 x i8] c"rmi_f03_pt_write\00", align 1
@rmi_f03_pt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.rmi_f03_pt_write, ptr @.str.3, i32 87, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Failed to write to F03 TX register (%d).\0A\00", [50 x i8] zeroinitializer }, align 32
@rmi_f03_pt_write._entry_ptr = internal global ptr @rmi_f03_pt_write._entry, section ".printk_index", align 4
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Consumed %*ph (%d) from PS2 guest\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.rmi_f03_pt_open = private unnamed_addr constant [16 x i8] c"rmi_f03_pt_open\00", align 1
@rmi_f03_attention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"F03 interrupted, but data is missing!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_f03_attention\00", [46 x i8] zeroinitializer }, align 32
@rmi_f03_attention._entry_ptr = internal global ptr @rmi_f03_attention._entry, section ".printk_index", align 4
@rmi_f03_attention._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 276, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to read F03 output buffers: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rmi_f03_attention._entry_ptr.23 = internal global ptr @rmi_f03_attention._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Received %.2hhx from PS2 guest T: %c P: %c\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 317, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"rmi_f03_handler\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 315, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 215, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 106, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 127, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 184, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 185, i32 45 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 191, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 80, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 85, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 156, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 262, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 274, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f03.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 296, i32 4 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @rmi_f03_attention._entry, ptr @rmi_f03_attention._entry.21, ptr @rmi_f03_attention._entry_ptr, ptr @rmi_f03_attention._entry_ptr.23, ptr @rmi_f03_initialize._entry, ptr @rmi_f03_initialize._entry.9, ptr @rmi_f03_initialize._entry_ptr, ptr @rmi_f03_initialize._entry_ptr.11, ptr @rmi_f03_probe._entry, ptr @rmi_f03_probe._entry_ptr, ptr @rmi_f03_pt_write._entry, ptr @rmi_f03_pt_write._entry_ptr, ptr @rmi_f03_register_pt._entry, ptr @rmi_f03_register_pt._entry_ptr, ptr @.str, ptr @rmi_f03_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_initialize._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_register_pt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_pt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_attention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f03_attention._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rmi_f03_overwrite_button(ptr nocapture noundef readonly %fn, i32 noundef %button, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = add i32 %button, -275
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %3 = icmp ult i32 %2, -3
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %button, -272
  %shl = shl nuw nsw i32 1, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %overwrite_buttons = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %overwrite_buttons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overwrite_buttons, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %overwrite_buttons, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %overwrite_buttons3 = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %overwrite_buttons3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overwrite_buttons3, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %overwrite_buttons3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_f03_commit_buttons(ptr nocapture noundef readonly %fn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serio1 = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serio1, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %drv = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %interrupt = getelementptr inbounds %struct.serio_driver, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt, align 4
  %call3 = tail call i32 %7(ptr noundef %3, i8 noundef zeroext 1, i32 noundef 8) #8
  %8 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv, align 4
  %interrupt5 = getelementptr inbounds %struct.serio_driver, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %interrupt5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt5, align 4
  %overwrite_buttons = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %overwrite_buttons to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overwrite_buttons, align 4
  %conv = trunc i32 %13 to i8
  %call6 = tail call i32 %11(ptr noundef %3, i8 noundef zeroext %conv, i32 noundef 8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f03_probe(ptr noundef %fn) #2 align 64 {
entry:
  %query1.i = alloca i8, align 1
  %query2.i = alloca [49 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %query1.i) #8
  %1 = ptrtoint ptr %query1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %query1.i, align 1, !annotation !70
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %query2.i) #8
  %2 = call ptr @memset(ptr %query2.i, i32 255, i32 49)
  %rmi_dev.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %3 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmi_dev.i, align 4
  %5 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fn, align 8
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %12(ptr noundef %8, i16 noundef zeroext %6, ptr noundef nonnull %query1.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #11
  br label %rmi_f03_initialize.exit

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %query1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %query1.i, align 1
  %15 = and i8 %14, 7
  %device_count.i = getelementptr inbounds %struct.f03_data, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %device_count.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %device_count.i, align 4
  %17 = lshr i8 %14, 4
  %18 = and i8 %17, 7
  %narrow.i = mul nuw nsw i8 %18, %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow.i)
  %cmp.i = icmp eq i8 %narrow.i, 0
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %device_count.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %device_count.i, align 4
  br label %rmi_f03_initialize.exit.thread

if.else.i:                                        ; preds = %if.end.i
  %mul.i = zext i8 %narrow.i to i32
  %20 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmi_dev.i, align 4
  %22 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %fn, align 8
  %add.i = add i16 %23, 1
  %xport.i52.i = getelementptr inbounds %struct.rmi_device, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %xport.i52.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xport.i52.i, align 8
  %ops.i53.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops.i53.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i53.i, align 4
  %read_block.i54.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %read_block.i54.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_block.i54.i, align 4
  %call.i55.i = call i32 %29(ptr noundef %25, i16 noundef zeroext %add.i, ptr noundef nonnull %query2.i, i32 noundef %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool19.not.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool19.not.i, label %if.end24.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i55.i) #11
  br label %rmi_f03_initialize.exit

if.end24.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %query2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %query2.i, align 1
  %32 = and i8 %31, 15
  br label %rmi_f03_initialize.exit.thread

rmi_f03_initialize.exit.thread:                   ; preds = %if.end24.i, %if.then11.i
  %.sink = phi i8 [ %32, %if.end24.i ], [ 7, %if.then11.i ]
  %rx_queue_length28.i = getelementptr inbounds %struct.f03_data, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %rx_queue_length28.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %rx_queue_length28.i, align 1
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %query2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %query1.i) #8
  br label %if.end5

rmi_f03_initialize.exit:                          ; preds = %do.end23.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i55.i, %do.end23.i ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %query2.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %query1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %rmi_f03_initialize.exit.cleanup_crit_edge, label %rmi_f03_initialize.exit.if.end5_crit_edge

rmi_f03_initialize.exit.if.end5_crit_edge:        ; preds = %rmi_f03_initialize.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

rmi_f03_initialize.exit.cleanup_crit_edge:        ; preds = %rmi_f03_initialize.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %rmi_f03_initialize.exit.if.end5_crit_edge, %rmi_f03_initialize.exit.thread
  %device_count = getelementptr inbounds %struct.f03_data, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %device_count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp6.not = icmp eq i8 %35, 1
  br i1 %cmp6.not, label %if.end5.if.end11_crit_edge, label %do.end

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end5.if.end11_crit_edge
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %rmi_f03_initialize.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %rmi_f03_initialize.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_f03_remove(ptr nocapture noundef readonly %fn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serio_registered = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %serio_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %serio_registered, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %serio = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 4
  tail call void @serio_unregister_port(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f03_config(ptr noundef %fn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serio_registered = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %serio_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %serio_registered, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1336) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %id.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %id.i, align 1
  %write.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rmi_f03_pt_write, ptr %write.i, align 8
  %open.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rmi_f03_pt_open, ptr %open.i, align 4
  %close.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rmi_f03_pt_close, ptr %close.i, align 8
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %call7.i.i.i, align 8
  %name.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 1
  %call1.i = tail call i32 @strlcpy(ptr noundef %name.i, ptr noundef nonnull @.str.12, i32 noundef 32) #8
  %phys.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %init_name.i.i = getelementptr inbounds %struct.rmi_function, ptr %11, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.end.i.dev_name.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev6.i = getelementptr inbounds %struct.rmi_function, ptr %17, i32 0, i32 2
  %parent.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev6.i, ptr %parent.i, align 8
  %serio8.i = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %serio8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %serio8.i, align 4
  %init_name.i30.i = getelementptr inbounds %struct.rmi_function, ptr %17, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %init_name.i30.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i30.i, align 8
  %tobool.not.i31.i = icmp eq ptr %21, null
  br i1 %tobool.not.i31.i, label %if.end.i32.i, label %dev_name.exit.i.if.end_crit_edge

dev_name.exit.i.if.end_crit_edge:                 ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i32.i:                                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev6.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i32.i, %dev_name.exit.i.if.end_crit_edge
  %retval.0.i33.i = phi ptr [ %23, %if.end.i32.i ], [ %21, %dev_name.exit.i.if.end_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, ptr noundef %retval.0.i33.i) #11
  tail call void @__serio_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #8
  %24 = ptrtoint ptr %serio_registered to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %serio_registered, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %25 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver, align 4
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %set_irq_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_irq_bits, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 7
  %call6 = tail call i32 %30(ptr noundef %26, ptr noundef %irq_mask) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.end ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f03_attention(i32 noundef %irq, ptr noundef %ctx) #2 align 64 {
entry:
  %obs = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev2 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2
  %driver_data.i105 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i105 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i105, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_base_addr, align 2
  %rx_queue_length = getelementptr inbounds %struct.f03_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %rx_queue_length to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_queue_length, align 1
  %mul = shl i8 %9, 1
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %obs) #8
  %data = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 20, i32 2
  %10 = call ptr @memset(ptr %obs, i32 255, i32 30)
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %conv8 = zext i8 %mul to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv8)
  %cmp = icmp ult i32 %14, %conv8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memcpy(ptr %obs, ptr %12, i32 %conv8)
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %conv8
  store ptr %add.ptr, ptr %data, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %sub = sub i32 %19, %conv8
  store i32 %sub, ptr %size, align 4
  br label %if.end33

if.else:                                          ; preds = %entry
  %add = add i16 %7, 2
  %conv22 = zext i8 %mul to i32
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %25(ptr noundef %21, i16 noundef zeroext %add, ptr noundef nonnull %obs, i32 noundef %conv22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.else.if.end33_crit_edge, label %do.end28

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %call.i) #11
  %serio = getelementptr inbounds %struct.f03_data, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serio, align 4
  %call30 = call i32 @serio_interrupt(ptr noundef %27, i8 noundef zeroext 0, i32 noundef 1) #8
  br label %cleanup

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.end
  %conv34.pre-phi = phi i32 [ %conv22, %if.else.if.end33_crit_edge ], [ %conv8, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mul)
  %cmp35106.not = icmp eq i8 %mul, 0
  br i1 %cmp35106.not, label %if.end33.cleanup_crit_edge, label %for.body.lr.ph

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end33
  %serio62 = getelementptr inbounds %struct.f03_data, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %add64, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x i8], ptr %obs, i32 0, i32 %i.0107
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %conv39 = zext i8 %29 to i32
  %and = and i32 %conv39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %for.body.for.inc_crit_edge, label %if.end42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end42:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add37 = or i32 %i.0107, 1
  %arrayidx38 = getelementptr [30 x i8], ptr %obs, i32 0, i32 %add37
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx38, align 1
  %and44 = and i32 %conv39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %not.tobool45.not = xor i1 %tobool45.not, true
  %spec.select = zext i1 %not.tobool45.not to i32
  %and49 = lshr i32 %conv39, 6
  %32 = and i32 %and49, 2
  %33 = or i32 %32, %spec.select
  %conv55 = zext i8 %31 to i32
  %cond58 = select i1 %tobool45.not, i32 78, i32 89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool60.not = icmp eq i32 %32, 0
  %cond61 = select i1 %tobool60.not, i32 78, i32 89
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef %conv55, i32 noundef %cond58, i32 noundef %cond61) #8
  %34 = ptrtoint ptr %serio62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serio62, align 4
  %call63 = call i32 @serio_interrupt(ptr noundef %35, i8 noundef zeroext %31, i32 noundef %33) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %for.body.for.inc_crit_edge
  %add64 = add nuw nsw i32 %i.0107, 2
  %cmp35 = icmp ult i32 %add64, %conv34.pre-phi
  br i1 %cmp35, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end28, %do.end
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %obs) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f03_pt_write(ptr nocapture noundef readonly %id, i8 noundef zeroext %val) #2 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2
  %conv = zext i8 %val to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rmi_f03_pt_write, i32 noundef %conv) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmi_dev, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data_base_addr, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %10 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %val, ptr %data.addr.i, align 1
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call.i = call i32 %16(ptr noundef %12, i16 noundef zeroext %9, ptr noundef nonnull %data.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.rmi_function, ptr %18, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rmi_f03_pt_write, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f03_pt_open(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  %obs = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rx_queue_length = getelementptr inbounds %struct.f03_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rx_queue_length to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_queue_length, align 1
  %mul = shl i8 %5, 1
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_base_addr, align 2
  %add = add i16 %7, 2
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %obs) #8
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 1
  %8 = call ptr @memset(ptr %obs, i32 255, i32 30)
  %9 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmi_dev, align 4
  %conv5 = zext i8 %mul to i32
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %16(ptr noundef %12, i16 noundef zeroext %add, ptr noundef nonnull %obs, i32 noundef %conv5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rmi_f03_pt_open, i32 noundef %conv5, ptr noundef nonnull %obs, i32 noundef %conv5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver, align 4
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %set_irq_bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_irq_bits, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 7
  %call11 = call i32 %22(ptr noundef %18, ptr noundef %irq_mask) #8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %obs) #8
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_f03_pt_close(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %clear_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %clear_irq_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clear_irq_bits, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 7
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %irq_mask) #8
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 317, i32 11}
!2 = !{ptr @rmi_f03_handler, !3, !"rmi_f03_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 315, i32 29}
!4 = !{ptr @__UNIQUE_ID_author232, !5, !"__UNIQUE_ID_author232", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 326, i32 1}
!6 = !{ptr @__UNIQUE_ID_description233, !7, !"__UNIQUE_ID_description233", i1 false, i1 false}
!7 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 327, i32 1}
!8 = !{ptr @__UNIQUE_ID_file234, !9, !"__UNIQUE_ID_file234", i1 false, i1 false}
!9 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 328, i32 1}
!10 = !{ptr @__UNIQUE_ID_license235, !9, !"__UNIQUE_ID_license235", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 215, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rmi_f03_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @rmi_f03_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 106, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rmi_f03_initialize._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @rmi_f03_initialize._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 127, i32 4}
!27 = !{ptr @rmi_f03_initialize._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rmi_f03_initialize._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 184, i32 23}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 185, i32 45}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 191, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rmi_f03_register_pt._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rmi_f03_register_pt._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 80, i32 3}
!40 = !{ptr @__func__.rmi_f03_pt_write, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 81, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 85, i32 3}
!44 = !{ptr @rmi_f03_pt_write._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rmi_f03_pt_write._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 156, i32 4}
!48 = !{ptr @__func__.rmi_f03_pt_open, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 157, i32 4}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 262, i32 4}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rmi_f03_attention._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rmi_f03_attention._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 274, i32 4}
!57 = !{ptr @rmi_f03_attention._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rmi_f03_attention._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/rmi4/rmi_f03.c", i32 296, i32 4}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{i8 0, i8 2}
