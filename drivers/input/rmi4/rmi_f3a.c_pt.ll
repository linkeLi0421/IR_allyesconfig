; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f3a.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f3a.c"
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
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.f3a_data = type { i8, i8, [16 x i8], ptr, ptr, ptr, i8 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f3a\00", [23 x i8] zeroinitializer }, align 32
@rmi_f3a_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 58, ptr @rmi_f3a_probe, ptr null, ptr @rmi_f3a_config, ptr null, ptr @rmi_f3a_attention, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rmi_f3a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"F3A: no input device found, ignoring\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_f3a_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f3a.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f3a_probe._entry_ptr = internal global ptr @rmi_f3a_probe._entry, section ".printk_index", align 4
@rmi_f3a_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 177, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read general info register: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmi_f3a_initialize\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rmi_f3a_initialize._entry_ptr = internal global ptr @rmi_f3a_initialize._entry, section ".printk_index", align 4
@rmi_f3a_initialize._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 188, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read query1 register\0A\00", [32 x i8] zeroinitializer }, align 32
@rmi_f3a_initialize._entry_ptr.11 = internal global ptr @rmi_f3a_initialize._entry.9, section ".printk_index", align 4
@rmi_f3a_initialize._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 196, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read control1 register\0A\00", [62 x i8] zeroinitializer }, align 32
@rmi_f3a_initialize._entry_ptr.14 = internal global ptr @rmi_f3a_initialize._entry.12, section ".printk_index", align 4
@rmi_f3a_map_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 139, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate gpio map memory.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_f3a_map_gpios\00", [46 x i8] zeroinitializer }, align 32
@rmi_f3a_map_gpios._entry_ptr = internal global ptr @rmi_f3a_map_gpios._entry, section ".printk_index", align 4
@rmi_f3a_attention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 67, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"F3A interrupted, but data is missing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_f3a_attention\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_f3a_attention._entry_ptr = internal global ptr @rmi_f3a_attention._entry, section ".printk_index", align 4
@rmi_f3a_attention._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 80, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to read F3a data registers: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rmi_f3a_attention._entry_ptr.22 = internal global ptr @rmi_f3a_attention._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: call input report key (0x%04x) value (0x%02x)\00", [46 x i8] zeroinitializer }, align 32
@__func__.rmi_f3a_report_button = private unnamed_addr constant [22 x i8] c"rmi_f3a_report_button\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 235, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"rmi_f3a_handler\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 233, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 215, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 176, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 188, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 196, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 139, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 66, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 78, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f3a.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 50, i32 4 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @rmi_f3a_attention._entry, ptr @rmi_f3a_attention._entry.20, ptr @rmi_f3a_attention._entry_ptr, ptr @rmi_f3a_attention._entry_ptr.22, ptr @rmi_f3a_initialize._entry, ptr @rmi_f3a_initialize._entry.12, ptr @rmi_f3a_initialize._entry.9, ptr @rmi_f3a_initialize._entry_ptr, ptr @rmi_f3a_initialize._entry_ptr.11, ptr @rmi_f3a_initialize._entry_ptr.14, ptr @rmi_f3a_map_gpios._entry, ptr @rmi_f3a_map_gpios._entry_ptr, ptr @rmi_f3a_probe._entry, ptr @rmi_f3a_probe._entry_ptr, ptr @.str, ptr @rmi_f3a_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_initialize._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_initialize._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_map_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_attention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f3a_attention._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f3a_probe(ptr noundef %fn) #0 align 64 {
entry:
  %query1.i = alloca [16 x i8], align 1
  %ctrl1.i = alloca [16 x i8], align 1
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %input = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %5, null
  %dev2 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 36, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %input9 = getelementptr inbounds %struct.f3a_data, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %input9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %input9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %query1.i) #5
  %9 = call ptr @memset(ptr %query1.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctrl1.i) #5
  %10 = call ptr @memset(ptr %ctrl1.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %buf.i, align 1, !annotation !54
  %12 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmi_dev1, align 4
  %14 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fn, align 8
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %21(ptr noundef %17, i16 noundef zeroext %15, ptr noundef nonnull %buf.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #8
  br label %rmi_f3a_initialize.exit.thread

if.end.i:                                         ; preds = %if.end7
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.i, align 1
  %24 = and i8 %23, 127
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %call.i, align 4
  %26 = add nuw i8 %24, 7
  %27 = lshr i8 %26, 3
  %register_count.i = getelementptr inbounds %struct.f3a_data, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %register_count.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %register_count.i, align 1
  %29 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmi_dev1, align 4
  %31 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fn, align 8
  %add9.i = add i16 %32, 1
  %conv12.i = zext i8 %27 to i32
  %xport.i66.i = getelementptr inbounds %struct.rmi_device, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %xport.i66.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xport.i66.i, align 8
  %ops.i67.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i67.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i67.i, align 4
  %read_block.i68.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %read_block.i68.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_block.i68.i, align 4
  %call.i69.i = call i32 %38(ptr noundef %34, i16 noundef zeroext %add9.i, ptr noundef nonnull %query1.i, i32 noundef %conv12.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool.not.i = icmp eq i32 %call.i69.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10) #8
  br label %rmi_f3a_initialize.exit.thread

if.end19.i:                                       ; preds = %if.end.i
  %39 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmi_dev1, align 4
  %control_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %41 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %control_base_addr.i, align 4
  %add23.i = add i16 %42, 1
  %43 = ptrtoint ptr %register_count.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %register_count.i, align 1
  %conv27.i = zext i8 %44 to i32
  %xport.i70.i = getelementptr inbounds %struct.rmi_device, ptr %40, i32 0, i32 3
  %45 = ptrtoint ptr %xport.i70.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xport.i70.i, align 8
  %ops.i71.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %ops.i71.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i71.i, align 4
  %read_block.i72.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %read_block.i72.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_block.i72.i, align 4
  %call.i73.i = call i32 %50(ptr noundef %46, i16 noundef zeroext %add23.i, ptr noundef nonnull %ctrl1.i, i32 noundef %conv27.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool29.not.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool29.not.i, label %if.end35.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.13) #8
  br label %rmi_f3a_initialize.exit.thread

if.end35.i:                                       ; preds = %if.end19.i
  %51 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmi_dev1, align 4
  %xport.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %xport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xport.i.i.i, align 8
  %55 = ptrtoint ptr %input9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input9, align 4
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %call.i, align 4
  %59 = call i8 @llvm.umin.i8(i8 %58, i8 6) #5
  %cond.i.i = zext i8 %59 to i32
  %60 = shl nuw nsw i32 %cond.i.i, 1
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %60, i32 noundef 3520) #5
  %gpio_key_map.i.i = getelementptr inbounds %struct.f3a_data, ptr %call.i, i32 0, i32 3
  %61 = ptrtoint ptr %gpio_key_map.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i.i.i, ptr %gpio_key_map.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp987.not.i.i = icmp eq i8 %59, 0
  br i1 %cmp987.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %trackstick_buttons.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %54, i32 0, i32 4, i32 5, i32 1
  %gpio_data.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %54, i32 0, i32 4, i32 5
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #8
  br label %rmi_f3a_initialize.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.091.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc34.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %button_mapped.0.off090.i.i = phi i1 [ false, %for.body.lr.ph.i.i ], [ %button_mapped.1.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %trackstick_button.089.i.i = phi i32 [ 272, %for.body.lr.ph.i.i ], [ %trackstick_button.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %button.088.i.i = phi i32 [ 272, %for.body.lr.ph.i.i ], [ %button.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %62 = ptrtoint ptr %query1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %query1.i, align 1
  %conv.i.i.i = zext i8 %63 to i32
  %shl.i.i.i = shl nuw i32 1, %i.091.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %rmi_f3a_is_valid_button.exit.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

rmi_f3a_is_valid_button.exit.i.i:                 ; preds = %for.body.i.i
  %64 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ctrl1.i, align 1
  %conv2.i.i.i = zext i8 %65 to i32
  %and4.i.i.i = and i32 %shl.i.i.i, %conv2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end13.i.i, label %rmi_f3a_is_valid_button.exit.i.i.for.inc.i.i_crit_edge

rmi_f3a_is_valid_button.exit.i.i.for.inc.i.i_crit_edge: ; preds = %rmi_f3a_is_valid_button.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %rmi_f3a_is_valid_button.exit.i.i
  %66 = ptrtoint ptr %trackstick_buttons.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %trackstick_buttons.i.i, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool14.not.i.i = icmp ne i8 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.091.i.i)
  %cmp16.i.i = icmp ugt i32 %i.091.i.i, 2
  %or.cond.i.i = select i1 %tobool14.not.i.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then21.i.i, label %if.else.i.i

if.then21.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i = add i32 %trackstick_button.089.i.i, 1
  %conv22.i.i = trunc i32 %trackstick_button.089.i.i to i16
  %68 = ptrtoint ptr %gpio_key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gpio_key_map.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %69, i32 %i.091.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv22.i.i, ptr %arrayidx.i.i, align 2
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end13.i.i
  %71 = ptrtoint ptr %gpio_data.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %gpio_data.i.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool25.not.i.i = icmp eq i8 %72, 0
  %button_mapped.0.off0.not.i.i = xor i1 %button_mapped.0.off090.i.i, true
  %brmerge.i.i = select i1 %tobool25.not.i.i, i1 true, i1 %button_mapped.0.off0.not.i.i
  br i1 %brmerge.i.i, label %if.then27.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then27.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i.i = trunc i32 %button.088.i.i to i16
  %73 = ptrtoint ptr %gpio_key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gpio_key_map.i.i, align 4
  %arrayidx30.i.i = getelementptr i16, ptr %74, i32 %i.091.i.i
  %75 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv28.i.i, ptr %arrayidx30.i.i, align 2
  %inc31.i.i = add i32 %button.088.i.i, 1
  call void @input_set_capability(ptr noundef %56, i32 noundef 1, i32 noundef %button.088.i.i) #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then27.i.i, %if.else.i.i.for.inc.i.i_crit_edge, %if.then21.i.i, %rmi_f3a_is_valid_button.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %button.1.i.i = phi i32 [ %button.088.i.i, %if.then21.i.i ], [ %inc31.i.i, %if.then27.i.i ], [ %button.088.i.i, %rmi_f3a_is_valid_button.exit.i.i.for.inc.i.i_crit_edge ], [ %button.088.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %button.088.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %trackstick_button.1.i.i = phi i32 [ %inc.i.i, %if.then21.i.i ], [ %trackstick_button.089.i.i, %if.then27.i.i ], [ %trackstick_button.089.i.i, %rmi_f3a_is_valid_button.exit.i.i.for.inc.i.i_crit_edge ], [ %trackstick_button.089.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %trackstick_button.089.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %button_mapped.1.off0.i.i = phi i1 [ %button_mapped.0.off090.i.i, %if.then21.i.i ], [ true, %if.then27.i.i ], [ %button_mapped.0.off090.i.i, %rmi_f3a_is_valid_button.exit.i.i.for.inc.i.i_crit_edge ], [ %button_mapped.0.off090.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %button_mapped.0.off090.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc34.i.i = add nuw nsw i32 %i.091.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc34.i.i, %cond.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %button.0.lcssa.i.i = phi i32 [ 272, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %button.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %76 = ptrtoint ptr %gpio_key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gpio_key_map.i.i, align 4
  %keycode.i.i = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 17
  %78 = ptrtoint ptr %keycode.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %keycode.i.i, align 4
  %keycodesize.i.i = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 16
  %79 = ptrtoint ptr %keycodesize.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %keycodesize.i.i, align 8
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %call.i, align 4
  %conv37.i.i = zext i8 %81 to i32
  %keycodemax.i.i = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 15
  %82 = ptrtoint ptr %keycodemax.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv37.i.i, ptr %keycodemax.i.i, align 4
  %gpio_data38.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %54, i32 0, i32 4, i32 5
  %83 = ptrtoint ptr %gpio_data38.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %gpio_data38.i.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool40.not.i.i = icmp ne i8 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 273, i32 %button.0.lcssa.i.i)
  %cmp43.i.i = icmp eq i32 %button.0.lcssa.i.i, 273
  %or.cond83.i.i = select i1 %tobool40.not.i.i, i1 true, i1 %cmp43.i.i
  br i1 %or.cond83.i.i, label %if.then45.i.i, label %for.end.i.i.if.end13_crit_edge

for.end.i.i.if.end13_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then45.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %propbit.i.i = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 4
  %85 = ptrtoint ptr %propbit.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %propbit.i.i, align 4
  %or.i.i.i = or i32 %86, 4
  store i32 %or.i.i.i, ptr %propbit.i.i, align 4
  br label %if.end13

rmi_f3a_initialize.exit.thread:                   ; preds = %do.end.i.i, %do.end33.i, %do.end17.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %do.end.i.i ], [ %call.i73.i, %do.end33.i ], [ %call.i69.i, %do.end17.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl1.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %query1.i) #5
  br label %cleanup

if.end13:                                         ; preds = %if.then45.i.i, %for.end.i.i.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctrl1.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %query1.i) #5
  %driver_data.i27 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %87 = ptrtoint ptr %driver_data.i27 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %driver_data.i27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %rmi_f3a_initialize.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %rmi_f3a_initialize.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f3a_config(ptr noundef %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xport.i, align 8
  %trackstick_buttons = getelementptr inbounds %struct.rmi_transport_dev, ptr %7, i32 0, i32 4, i32 5, i32 1
  %8 = ptrtoint ptr %trackstick_buttons to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %trackstick_buttons, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @rmi_find_function(ptr noundef %3, i8 noundef zeroext 3) #5
  %f03 = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %f03 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %f03, align 4
  %cmp = icmp ne ptr %call6, null
  %trackstick_buttons8 = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 6
  %frombool = zext i1 %cmp to i8
  %11 = ptrtoint ptr %trackstick_buttons8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %trackstick_buttons8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %set_irq_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_irq_bits, align 4
  %14 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmi_dev, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 7
  %call11 = tail call i32 %13(ptr noundef %15, ptr noundef %irq_mask) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f3a_attention(i32 noundef %irq, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %driver_data.i75 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i75 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i75, align 4
  %data = getelementptr inbounds %struct.rmi_driver_data, ptr %5, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.rmi_driver_data, ptr %5, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %register_count = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %register_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %register_count, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp ult i32 %9, %conv
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %data_regs = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %data_regs, ptr %7, i32 %conv)
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  store ptr %add.ptr, ptr %data, align 4
  %15 = ptrtoint ptr %register_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %register_count, align 1
  %conv16 = zext i8 %16 to i32
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %sub = sub i32 %18, %conv16
  store i32 %sub, ptr %size, align 4
  br label %if.end33

if.else:                                          ; preds = %entry
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %ctx, i32 0, i32 3
  %19 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_base_addr, align 2
  %data_regs20 = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 2
  %register_count22 = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %register_count22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %register_count22, align 1
  %conv23 = zext i8 %22 to i32
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_block.i, align 4
  %call.i = tail call i32 %28(ptr noundef %24, i16 noundef zeroext %20, ptr noundef %data_regs20, i32 noundef %conv23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.else.if.end33_crit_edge, label %do.end29

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %call.i) #8
  br label %cleanup

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.end
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp3578.not = icmp eq i8 %30, 0
  br i1 %cmp3578.not, label %if.end33.for.end_crit_edge, label %for.body.lr.ph

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end33
  %gpio_key_map = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 3
  %data_regs.i = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 2
  %trackstick_buttons.i = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 6
  %input.i = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 4
  %f03.i = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %gpio_key_map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpio_key_map, align 4
  %arrayidx = getelementptr i16, ptr %32, i32 %i.079
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp38.not = icmp eq i16 %34, 0
  br i1 %cmp38.not, label %for.body.for.inc_crit_edge, label %if.then40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then40:                                        ; preds = %for.body
  %35 = ptrtoint ptr %data_regs.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data_regs.i, align 2
  %conv.i = zext i8 %36 to i32
  %shl.i = shl nuw i32 1, %i.079
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %37 = ptrtoint ptr %trackstick_buttons.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %trackstick_buttons.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool2.not.i = icmp ne i8 %38, 0
  %39 = add nsw i32 %i.079, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %40 = icmp ult i32 %39, 4
  %41 = and i1 %40, %tobool2.not.i
  br i1 %41, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %f03.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f03.i, align 4
  %conv8.i = zext i16 %34 to i32
  %conv10.i = zext i1 %tobool.not.i to i32
  %call.i76 = tail call i32 @rmi_f03_overwrite_button(ptr noundef %43, i32 noundef %conv8.i, i32 noundef %conv10.i) #5
  br label %for.inc

if.else.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %conv11.i = zext i16 %34 to i32
  %conv13.i = zext i1 %tobool.not.i to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.rmi_f3a_report_button, i32 noundef %conv11.i, i32 noundef %conv13.i) #5
  %44 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 1, i32 noundef %conv11.i, i32 noundef %conv13.i) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %1, align 4
  %conv34 = zext i8 %47 to i32
  %cmp35 = icmp ult i32 %inc, %conv34
  br i1 %cmp35, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end33.for.end_crit_edge
  %trackstick_buttons = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %trackstick_buttons to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %trackstick_buttons, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool42.not = icmp eq i8 %49, 0
  br i1 %tobool42.not, label %for.end.cleanup_crit_edge, label %if.then43

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %f03 = getelementptr inbounds %struct.f3a_data, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %f03 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f03, align 4
  tail call void @rmi_f03_commit_buttons(ptr noundef %51) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %for.end.cleanup_crit_edge, %do.end29, %do.end
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmi_find_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_f03_commit_buttons(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_f03_overwrite_button(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 235, i32 11}
!2 = !{ptr @rmi_f3a_handler, !3, !"rmi_f3a_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 233, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 215, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rmi_f3a_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rmi_f3a_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 176, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rmi_f3a_initialize._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rmi_f3a_initialize._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 188, i32 3}
!20 = !{ptr @rmi_f3a_initialize._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rmi_f3a_initialize._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 196, i32 3}
!24 = !{ptr @rmi_f3a_initialize._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rmi_f3a_initialize._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 139, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rmi_f3a_map_gpios._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @rmi_f3a_map_gpios._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 66, i32 4}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rmi_f3a_attention._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @rmi_f3a_attention._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 78, i32 4}
!39 = !{ptr @rmi_f3a_attention._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rmi_f3a_attention._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 50, i32 4}
!43 = !{ptr @__func__.rmi_f3a_report_button, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/rmi4/rmi_f3a.c", i32 51, i32 4}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{i8 0, i8 2}
