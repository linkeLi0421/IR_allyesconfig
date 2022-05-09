; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f30.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f30.c"
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
%struct.f30_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [11 x %struct.rmi_f30_ctrl_data], [93 x i8], i32, [4 x i8], ptr, ptr, ptr, i8 }
%struct.rmi_f30_ctrl_data = type { i32, i32, ptr }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f30\00", [23 x i8] zeroinitializer }, align 32
@rmi_f30_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 48, ptr @rmi_f30_probe, ptr null, ptr @rmi_f30_config, ptr null, ptr @rmi_f30_attention, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rmi_f30_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"F30: no input device found, ignoring\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_f30_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f30.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f30_probe._entry_ptr = internal global ptr @rmi_f30_probe._entry, section ".printk_index", align 4
@rmi_f30_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 283, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read query register\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmi_f30_initialize\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rmi_f30_initialize._entry_ptr = internal global ptr @rmi_f30_initialize._entry, section ".printk_index", align 4
@rmi_f30_initialize._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 353, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to initialize F30 control params: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@rmi_f30_initialize._entry_ptr.11 = internal global ptr @rmi_f30_initialize._entry.9, section ".printk_index", align 4
@rmi_f30_read_control_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 94, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Could not read control registers at 0x%x: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rmi_f30_read_control_parameters\00", [32 x i8] zeroinitializer }, align 32
@rmi_f30_read_control_parameters._entry_ptr = internal global ptr @rmi_f30_read_control_parameters._entry, section ".printk_index", align 4
@rmi_f30_map_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 240, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate gpioled map memory.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_f30_map_gpios\00", [46 x i8] zeroinitializer }, align 32
@rmi_f30_map_gpios._entry_ptr = internal global ptr @rmi_f30_map_gpios._entry, section ".printk_index", align 4
@rmi_f30_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 190, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Could not write control registers at 0x%x: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_f30_config\00", [17 x i8] zeroinitializer }, align 32
@rmi_f30_config._entry_ptr = internal global ptr @rmi_f30_config._entry, section ".printk_index", align 4
@rmi_f30_attention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 134, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"F30 interrupted, but data is missing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_f30_attention\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_f30_attention._entry_ptr = internal global ptr @rmi_f30_attention._entry, section ".printk_index", align 4
@rmi_f30_attention._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 147, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to read F30 data registers: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rmi_f30_attention._entry_ptr.23 = internal global ptr @rmi_f30_attention._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: call input report key (0x%04x) value (0x%02x)\00", [46 x i8] zeroinitializer }, align 32
@__func__.rmi_f30_report_button = private unnamed_addr constant [22 x i8] c"rmi_f30_report_button\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 399, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"rmi_f30_handler\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 397, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 379, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 283, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 351, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 92, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 240, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 188, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 133, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 145, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f30.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 115, i32 4 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @rmi_f30_attention._entry, ptr @rmi_f30_attention._entry.21, ptr @rmi_f30_attention._entry_ptr, ptr @rmi_f30_attention._entry_ptr.23, ptr @rmi_f30_config._entry, ptr @rmi_f30_config._entry_ptr, ptr @rmi_f30_initialize._entry, ptr @rmi_f30_initialize._entry.9, ptr @rmi_f30_initialize._entry_ptr, ptr @rmi_f30_initialize._entry_ptr.11, ptr @rmi_f30_map_gpios._entry, ptr @rmi_f30_map_gpios._entry_ptr, ptr @rmi_f30_probe._entry, ptr @rmi_f30_probe._entry_ptr, ptr @rmi_f30_read_control_parameters._entry, ptr @rmi_f30_read_control_parameters._entry_ptr, ptr @.str, ptr @rmi_f30_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_initialize._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_read_control_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_map_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_attention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f30_attention._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f30_probe(ptr noundef %fn) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport.i, align 8
  %disable = getelementptr inbounds %struct.rmi_transport_dev, ptr %3, i32 0, i32 4, i32 5, i32 2
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %input = getelementptr inbounds %struct.rmi_driver_data, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %tobool3.not = icmp eq ptr %9, null
  %dev5 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 264, i32 noundef 3520) #5
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input, align 4
  %input13 = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 14
  %12 = ptrtoint ptr %input13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %input13, align 4
  %ctrl_regs.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 10
  %control_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %13 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %control_base_addr.i, align 4
  %conv.i = zext i16 %14 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %buf.i, align 1, !annotation !61
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !61
  %18 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmi_dev1, align 4
  %20 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fn, align 8
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %27(ptr noundef %23, i16 noundef zeroext %21, ptr noundef nonnull %buf.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.6) #8
  br label %rmi_f30_initialize.exit

if.end.i:                                         ; preds = %if.end11
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf.i, align 1
  %30 = and i8 %29, 1
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %call.i, align 4
  %has_mappable_buttons.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 1
  %32 = lshr i8 %29, 1
  %.lobit.i = and i8 %32, 1
  %33 = ptrtoint ptr %has_mappable_buttons.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.lobit.i, ptr %has_mappable_buttons.i, align 1
  %has_led.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 2
  %34 = lshr i8 %29, 2
  %.lobit194.i = and i8 %34, 1
  %35 = ptrtoint ptr %has_led.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.lobit194.i, ptr %has_led.i, align 2
  %has_gpio.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 3
  %36 = lshr i8 %29, 3
  %.lobit195.i = and i8 %36, 1
  %37 = ptrtoint ptr %has_gpio.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.lobit195.i, ptr %has_gpio.i, align 1
  %has_haptic.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 4
  %38 = lshr i8 %29, 4
  %.lobit196.i = and i8 %38, 1
  %39 = ptrtoint ptr %has_haptic.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit196.i, ptr %has_haptic.i, align 4
  %has_gpio_driver_control.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 5
  %40 = lshr i8 %29, 5
  %.lobit197.i = and i8 %40, 1
  %41 = ptrtoint ptr %has_gpio_driver_control.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.lobit197.i, ptr %has_gpio_driver_control.i, align 1
  %has_mech_mouse_btns.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 6
  %42 = lshr i8 %29, 6
  %.lobit198.i = and i8 %42, 1
  %43 = ptrtoint ptr %has_mech_mouse_btns.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.lobit198.i, ptr %has_mech_mouse_btns.i, align 2
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %16, align 1
  %46 = and i8 %45, 31
  %gpioled_count.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %gpioled_count.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %gpioled_count.i, align 1
  %48 = add nuw nsw i8 %46, 7
  %49 = lshr i8 %48, 3
  %register_count.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 8
  %50 = ptrtoint ptr %register_count.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %register_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit195.i)
  %tobool43.not.i = icmp eq i8 %.lobit195.i, 0
  br i1 %tobool43.not.i, label %if.end52.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit194.i)
  %tobool46.not.i = icmp eq i8 %.lobit194.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true.if.then57_crit_edge.i, label %if.then48.i

land.lhs.true.if.then57_crit_edge.i:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = zext i8 %49 to i32
  br label %if.then57.i

if.then48.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 9
  %conv51.i = zext i8 %49 to i32
  %51 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv.i, ptr %ctrl.i, align 4
  %length.i.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %52 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv51.i, ptr %length.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ctrl_regs.i, ptr %regs.i.i, align 4
  %add.i.i = add nuw nsw i32 %conv51.i, %conv.i
  %add.ptr.i.i = getelementptr i8, ptr %ctrl_regs.i, i32 %conv51.i
  br label %if.then57.i

if.end52.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx54.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv.i, ptr %arrayidx54.i, align 4
  %length.i199.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %55 = ptrtoint ptr %length.i199.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %length.i199.i, align 4
  %regs.i200.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 1, i32 2
  %56 = ptrtoint ptr %regs.i200.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ctrl_regs.i, ptr %regs.i200.i, align 4
  %add.i201.i = add nuw nsw i32 %conv.i, 1
  %add.ptr.i202.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 10, i32 1
  br label %if.end66.i

if.then57.i:                                      ; preds = %if.then48.i, %land.lhs.true.if.then57_crit_edge.i
  %conv61.pre-phi.i = phi i32 [ %.pre.i, %land.lhs.true.if.then57_crit_edge.i ], [ %conv51.i, %if.then48.i ]
  %ctrl_reg.0.ph.i = phi ptr [ %ctrl_regs.i, %land.lhs.true.if.then57_crit_edge.i ], [ %add.ptr.i.i, %if.then48.i ]
  %control_address.0.ph.i = phi i32 [ %conv.i, %land.lhs.true.if.then57_crit_edge.i ], [ %add.i.i, %if.then48.i ]
  %arrayidx54289.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %arrayidx54289.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %control_address.0.ph.i, ptr %arrayidx54289.i, align 4
  %length.i199290.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %58 = ptrtoint ptr %length.i199290.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %length.i199290.i, align 4
  %regs.i200291.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 1, i32 2
  %59 = ptrtoint ptr %regs.i200291.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ctrl_reg.0.ph.i, ptr %regs.i200291.i, align 4
  %add.i201292.i = add nuw nsw i32 %control_address.0.ph.i, 1
  %add.ptr.i202293.i = getelementptr i8, ptr %ctrl_reg.0.ph.i, i32 1
  %arrayidx59.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 2
  %60 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i201292.i, ptr %arrayidx59.i, align 4
  %length.i203.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 2, i32 1
  %61 = ptrtoint ptr %length.i203.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv61.pre-phi.i, ptr %length.i203.i, align 4
  %regs.i204.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 2, i32 2
  %62 = ptrtoint ptr %regs.i204.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i202293.i, ptr %regs.i204.i, align 4
  %add.i205.i = add nuw nsw i32 %add.i201292.i, %conv61.pre-phi.i
  %add.ptr.i206.i = getelementptr i8, ptr %add.ptr.i202293.i, i32 %conv61.pre-phi.i
  %arrayidx63.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 3
  %63 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i205.i, ptr %arrayidx63.i, align 4
  %length.i207.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 3, i32 1
  %64 = ptrtoint ptr %length.i207.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv61.pre-phi.i, ptr %length.i207.i, align 4
  %regs.i208.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 3, i32 2
  %65 = ptrtoint ptr %regs.i208.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i206.i, ptr %regs.i208.i, align 4
  %add.i209.i = add nuw nsw i32 %add.i205.i, %conv61.pre-phi.i
  %add.ptr.i210.i = getelementptr i8, ptr %add.ptr.i206.i, i32 %conv61.pre-phi.i
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then57.i, %if.end52.i
  %ctrl_reg.1.i = phi ptr [ %add.ptr.i202.i, %if.end52.i ], [ %add.ptr.i210.i, %if.then57.i ]
  %control_address.1.i = phi i32 [ %add.i201.i, %if.end52.i ], [ %add.i209.i, %if.then57.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit194.i)
  %tobool68.not.i = icmp eq i8 %.lobit194.i, 0
  br i1 %tobool68.not.i, label %lor.lhs.false.i, label %if.end79.i

if.end79.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx71.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 4
  %conv73.i = zext i8 %49 to i32
  %66 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %control_address.1.i, ptr %arrayidx71.i, align 4
  %length.i211.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 4, i32 1
  %67 = ptrtoint ptr %length.i211.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv73.i, ptr %length.i211.i, align 4
  %regs.i212.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 4, i32 2
  %68 = ptrtoint ptr %regs.i212.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %ctrl_reg.1.i, ptr %regs.i212.i, align 4
  %add.i213.i = add nuw nsw i32 %control_address.1.i, %conv73.i
  %add.ptr.i214.i = getelementptr i8, ptr %ctrl_reg.1.i, i32 %conv73.i
  %arrayidx75.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool77.not.i = icmp eq i8 %30, 0
  %cond.i = select i1 %tobool77.not.i, i32 2, i32 6
  %69 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i213.i, ptr %arrayidx75.i, align 4
  %length.i215.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 5, i32 1
  %70 = ptrtoint ptr %length.i215.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.i, ptr %length.i215.i, align 4
  %regs.i216.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 5, i32 2
  %71 = ptrtoint ptr %regs.i216.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr.i214.i, ptr %regs.i216.i, align 4
  %add.i217.i = add nuw nsw i32 %add.i213.i, %cond.i
  %add.ptr.i218.i = getelementptr i8, ptr %add.ptr.i214.i, i32 %cond.i
  br label %if.then86.i

lor.lhs.false.i:                                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit197.i)
  %tobool84.not.i = icmp eq i8 %.lobit197.i, 0
  br i1 %tobool84.not.i, label %lor.lhs.false.i.if.end91.i_crit_edge, label %lor.lhs.false.i.if.then86.i_crit_edge

lor.lhs.false.i.if.then86.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86.i

lor.lhs.false.i.if.end91.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.i

if.then86.i:                                      ; preds = %lor.lhs.false.i.if.then86.i_crit_edge, %if.end79.i
  %control_address.2301.i = phi i32 [ %control_address.1.i, %lor.lhs.false.i.if.then86.i_crit_edge ], [ %add.i217.i, %if.end79.i ]
  %ctrl_reg.2299.i = phi ptr [ %ctrl_reg.1.i, %lor.lhs.false.i.if.then86.i_crit_edge ], [ %add.ptr.i218.i, %if.end79.i ]
  %arrayidx88.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 6
  %conv90.i = zext i8 %46 to i32
  %72 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %control_address.2301.i, ptr %arrayidx88.i, align 4
  %length.i219.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 6, i32 1
  %73 = ptrtoint ptr %length.i219.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv90.i, ptr %length.i219.i, align 4
  %regs.i220.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 6, i32 2
  %74 = ptrtoint ptr %regs.i220.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %ctrl_reg.2299.i, ptr %regs.i220.i, align 4
  %add.i221.i = add nuw nsw i32 %control_address.2301.i, %conv90.i
  %add.ptr.i222.i = getelementptr i8, ptr %ctrl_reg.2299.i, i32 %conv90.i
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then86.i, %lor.lhs.false.i.if.end91.i_crit_edge
  %ctrl_reg.3.i = phi ptr [ %ctrl_reg.1.i, %lor.lhs.false.i.if.end91.i_crit_edge ], [ %add.ptr.i222.i, %if.then86.i ]
  %control_address.3.i = phi i32 [ %control_address.1.i, %lor.lhs.false.i.if.end91.i_crit_edge ], [ %add.i221.i, %if.then86.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit.i)
  %tobool93.not.i = icmp eq i8 %.lobit.i, 0
  br i1 %tobool93.not.i, label %if.end91.i.if.end99.i_crit_edge, label %if.then94.i

if.end91.i.if.end99.i_crit_edge:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99.i

if.then94.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx96.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 7
  %conv98.i = zext i8 %46 to i32
  %75 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %control_address.3.i, ptr %arrayidx96.i, align 4
  %length.i223.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 7, i32 1
  %76 = ptrtoint ptr %length.i223.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv98.i, ptr %length.i223.i, align 4
  %regs.i224.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 7, i32 2
  %77 = ptrtoint ptr %regs.i224.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %ctrl_reg.3.i, ptr %regs.i224.i, align 4
  %add.i225.i = add nuw nsw i32 %control_address.3.i, %conv98.i
  %add.ptr.i226.i = getelementptr i8, ptr %ctrl_reg.3.i, i32 %conv98.i
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then94.i, %if.end91.i.if.end99.i_crit_edge
  %ctrl_reg.4.i = phi ptr [ %ctrl_reg.3.i, %if.end91.i.if.end99.i_crit_edge ], [ %add.ptr.i226.i, %if.then94.i ]
  %control_address.4.i = phi i32 [ %control_address.3.i, %if.end91.i.if.end99.i_crit_edge ], [ %add.i225.i, %if.then94.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit196.i)
  %tobool101.not.i = icmp eq i8 %.lobit196.i, 0
  br i1 %tobool101.not.i, label %if.end99.i.if.end109.i_crit_edge, label %if.then102.i

if.end99.i.if.end109.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109.i

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx104.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 8
  %conv106.i = zext i8 %49 to i32
  %78 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %control_address.4.i, ptr %arrayidx104.i, align 4
  %length.i227.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 8, i32 1
  %79 = ptrtoint ptr %length.i227.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv106.i, ptr %length.i227.i, align 4
  %regs.i228.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 8, i32 2
  %80 = ptrtoint ptr %regs.i228.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %ctrl_reg.4.i, ptr %regs.i228.i, align 4
  %add.i229.i = add nuw nsw i32 %control_address.4.i, %conv106.i
  %add.ptr.i230.i = getelementptr i8, ptr %ctrl_reg.4.i, i32 %conv106.i
  %arrayidx108.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 9
  %81 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i229.i, ptr %arrayidx108.i, align 4
  %length.i231.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 9, i32 1
  %82 = ptrtoint ptr %length.i231.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %length.i231.i, align 4
  %regs.i232.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 9, i32 2
  %83 = ptrtoint ptr %regs.i232.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr.i230.i, ptr %regs.i232.i, align 4
  %add.i233.i = add nuw nsw i32 %add.i229.i, 1
  %add.ptr.i234.i = getelementptr i8, ptr %add.ptr.i230.i, i32 1
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then102.i, %if.end99.i.if.end109.i_crit_edge
  %ctrl_reg.5.i = phi ptr [ %ctrl_reg.4.i, %if.end99.i.if.end109.i_crit_edge ], [ %add.ptr.i234.i, %if.then102.i ]
  %control_address.5.i = phi i32 [ %control_address.4.i, %if.end99.i.if.end109.i_crit_edge ], [ %add.i233.i, %if.then102.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit198.i)
  %tobool111.not.i = icmp eq i8 %.lobit198.i, 0
  br i1 %tobool111.not.i, label %if.end109.i.if.end115.i_crit_edge, label %if.then112.i

if.end109.i.if.end115.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.i

if.then112.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx114.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 10
  %84 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %control_address.5.i, ptr %arrayidx114.i, align 4
  %length.i235.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 10, i32 1
  %85 = ptrtoint ptr %length.i235.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %length.i235.i, align 4
  %regs.i236.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 10, i32 2
  %86 = ptrtoint ptr %regs.i236.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %ctrl_reg.5.i, ptr %regs.i236.i, align 4
  %add.ptr.i238.i = getelementptr i8, ptr %ctrl_reg.5.i, i32 1
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then112.i, %if.end109.i.if.end115.i_crit_edge
  %ctrl_reg.6.i = phi ptr [ %ctrl_reg.5.i, %if.end109.i.if.end115.i_crit_edge ], [ %add.ptr.i238.i, %if.then112.i ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ctrl_reg.6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %ctrl_regs.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %tobool118.not.i = icmp eq ptr %ctrl_reg.6.i, %ctrl_regs.i
  %sub.ptr.sub..i = select i1 %tobool118.not.i, i32 93, i32 %sub.ptr.sub.i
  %ctrl_regs_size.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 11
  %87 = ptrtoint ptr %ctrl_regs_size.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub.ptr.sub..i, ptr %ctrl_regs_size.i, align 4
  %88 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmi_dev1, align 4
  %90 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %control_base_addr.i, align 4
  %xport.i.i.i = getelementptr inbounds %struct.rmi_device, ptr %89, i32 0, i32 3
  %92 = ptrtoint ptr %xport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xport.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i.i.i, align 4
  %read_block.i.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %read_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read_block.i.i.i, align 4
  %call.i.i.i = call i32 %97(ptr noundef %93, i16 noundef zeroext %91, ptr noundef %ctrl_regs.i, i32 noundef %sub.ptr.sub..i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end127.i, label %do.end125.i

do.end125.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %control_base_addr.i, align 4
  %conv.i.i = zext i16 %99 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv.i.i, i32 noundef %call.i.i.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.10, i32 noundef %call.i.i.i) #8
  br label %rmi_f30_initialize.exit

if.end127.i:                                      ; preds = %if.end115.i
  %100 = ptrtoint ptr %has_gpio.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %has_gpio.i, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool129.not.i = icmp eq i8 %101, 0
  br i1 %tobool129.not.i, label %if.end127.i.if.end17_crit_edge, label %if.then130.i

if.end127.i.if.end17_crit_edge:                   ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then130.i:                                     ; preds = %if.end127.i
  %102 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmi_dev1, align 4
  %xport.i.i240.i = getelementptr inbounds %struct.rmi_device, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %xport.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xport.i.i240.i, align 8
  %106 = ptrtoint ptr %input13 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %input13, align 4
  %108 = ptrtoint ptr %gpioled_count.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %gpioled_count.i, align 1
  %110 = call i8 @llvm.umin.i8(i8 %109, i8 6) #5
  %cond.i.i = zext i8 %110 to i32
  %111 = shl nuw nsw i32 %cond.i.i, 1
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef %111, i32 noundef 3520) #5
  %gpioled_key_map.i.i = getelementptr inbounds %struct.f30_data, ptr %call.i, i32 0, i32 13
  %112 = ptrtoint ptr %gpioled_key_map.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call5.i.i.i.i, ptr %gpioled_key_map.i.i, align 4
  %tobool.not.i242.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i242.i, label %rmi_f30_map_gpios.exit.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp988.not.i.i = icmp eq i8 %110, 0
  br i1 %cmp988.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %regs.i.i.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 2, i32 2
  %regs4.i.i.i = getelementptr %struct.f30_data, ptr %call.i, i32 0, i32 9, i32 3, i32 2
  %trackstick_buttons.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %105, i32 0, i32 4, i32 5, i32 1
  %gpio_data.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %105, i32 0, i32 4, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.092.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc34.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %button_mapped.0.off091.i.i = phi i1 [ false, %for.body.lr.ph.i.i ], [ %button_mapped.1.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %trackstick_button.090.i.i = phi i32 [ 272, %for.body.lr.ph.i.i ], [ %trackstick_button.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %button.089.i.i = phi i32 [ 272, %for.body.lr.ph.i.i ], [ %button.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %113 = lshr i32 %i.092.i.i, 3
  %114 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i.i.i, align 4
  %arrayidx1.i.i.i = getelementptr i8, ptr %115, i32 %113
  %116 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv.i.i.i = zext i8 %117 to i32
  %shl.i.i.i = shl nuw nsw i32 1, %i.092.i.i
  %and2.i.i.i = and i32 %shl.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %rmi_f30_is_valid_button.exit.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

rmi_f30_is_valid_button.exit.i.i:                 ; preds = %for.body.i.i
  %118 = ptrtoint ptr %regs4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs4.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i8, ptr %119, i32 %113
  %120 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx5.i.i.i, align 1
  %conv6.i.i.i = zext i8 %121 to i32
  %and8.i.i.i = and i32 %shl.i.i.i, %conv6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.i.not.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.i.not.i.i, label %rmi_f30_is_valid_button.exit.i.i.for.inc.i.i_crit_edge, label %if.end13.i.i

rmi_f30_is_valid_button.exit.i.i.for.inc.i.i_crit_edge: ; preds = %rmi_f30_is_valid_button.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %rmi_f30_is_valid_button.exit.i.i
  %122 = ptrtoint ptr %trackstick_buttons.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %trackstick_buttons.i.i, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool14.not.i.i = icmp ne i8 %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.092.i.i)
  %cmp16.i.i = icmp ugt i32 %i.092.i.i, 2
  %or.cond.i.i = select i1 %tobool14.not.i.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then21.i.i, label %if.else.i.i

if.then21.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i = add i32 %trackstick_button.090.i.i, 1
  %conv22.i.i = trunc i32 %trackstick_button.090.i.i to i16
  %124 = ptrtoint ptr %gpioled_key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %gpioled_key_map.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %125, i32 %i.092.i.i
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv22.i.i, ptr %arrayidx.i.i, align 2
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end13.i.i
  %127 = ptrtoint ptr %gpio_data.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %gpio_data.i.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool25.not.i.i = icmp eq i8 %128, 0
  %button_mapped.0.off0.not.i.i = xor i1 %button_mapped.0.off091.i.i, true
  %brmerge.i.i = select i1 %tobool25.not.i.i, i1 true, i1 %button_mapped.0.off0.not.i.i
  br i1 %brmerge.i.i, label %if.then27.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then27.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv28.i.i = trunc i32 %button.089.i.i to i16
  %129 = ptrtoint ptr %gpioled_key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %gpioled_key_map.i.i, align 4
  %arrayidx30.i.i = getelementptr i16, ptr %130, i32 %i.092.i.i
  %131 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv28.i.i, ptr %arrayidx30.i.i, align 2
  %inc31.i.i = add i32 %button.089.i.i, 1
  call void @input_set_capability(ptr noundef %107, i32 noundef 1, i32 noundef %button.089.i.i) #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then27.i.i, %if.else.i.i.for.inc.i.i_crit_edge, %if.then21.i.i, %rmi_f30_is_valid_button.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %button.1.i.i = phi i32 [ %button.089.i.i, %if.then21.i.i ], [ %inc31.i.i, %if.then27.i.i ], [ %button.089.i.i, %rmi_f30_is_valid_button.exit.i.i.for.inc.i.i_crit_edge ], [ %button.089.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %button.089.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %trackstick_button.1.i.i = phi i32 [ %inc.i.i, %if.then21.i.i ], [ %trackstick_button.090.i.i, %if.then27.i.i ], [ %trackstick_button.090.i.i, %rmi_f30_is_valid_button.exit.i.i.for.inc.i.i_crit_edge ], [ %trackstick_button.090.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %trackstick_button.090.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %button_mapped.1.off0.i.i = phi i1 [ %button_mapped.0.off091.i.i, %if.then21.i.i ], [ true, %if.then27.i.i ], [ %button_mapped.0.off091.i.i, %rmi_f30_is_valid_button.exit.i.i.for.inc.i.i_crit_edge ], [ %button_mapped.0.off091.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %button_mapped.0.off091.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc34.i.i = add nuw nsw i32 %i.092.i.i, 1
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
  %132 = ptrtoint ptr %gpioled_key_map.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %gpioled_key_map.i.i, align 4
  %keycode.i.i = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 17
  %134 = ptrtoint ptr %keycode.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %keycode.i.i, align 4
  %keycodesize.i.i = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 16
  %135 = ptrtoint ptr %keycodesize.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 2, ptr %keycodesize.i.i, align 8
  %136 = ptrtoint ptr %gpioled_count.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %gpioled_count.i, align 1
  %conv37.i.i = zext i8 %137 to i32
  %keycodemax.i.i = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 15
  %138 = ptrtoint ptr %keycodemax.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv37.i.i, ptr %keycodemax.i.i, align 4
  %gpio_data38.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %105, i32 0, i32 4, i32 5
  %139 = ptrtoint ptr %gpio_data38.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %gpio_data38.i.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool40.not.i.i = icmp ne i8 %140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 273, i32 %button.0.lcssa.i.i)
  %cmp43.i.i = icmp eq i32 %button.0.lcssa.i.i, 273
  %or.cond84.i.i = select i1 %tobool40.not.i.i, i1 true, i1 %cmp43.i.i
  br i1 %or.cond84.i.i, label %if.then45.i.i, label %for.end.i.i.if.end17_crit_edge

for.end.i.i.if.end17_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then45.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %propbit.i.i = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 4
  %141 = ptrtoint ptr %propbit.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %propbit.i.i, align 4
  %or.i.i.i = or i32 %142, 4
  store i32 %or.i.i.i, ptr %propbit.i.i, align 4
  br label %if.end17

rmi_f30_map_gpios.exit.i:                         ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.14) #8
  br label %rmi_f30_initialize.exit

rmi_f30_initialize.exit:                          ; preds = %rmi_f30_map_gpios.exit.i, %do.end125.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i.i.i, %do.end125.i ], [ -12, %rmi_f30_map_gpios.exit.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

if.end17:                                         ; preds = %if.then45.i.i, %for.end.i.i.if.end17_crit_edge, %if.end127.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %driver_data.i33 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %143 = ptrtoint ptr %driver_data.i33 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i, ptr %driver_data.i33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %rmi_f30_initialize.exit, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -6, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.0.i, %rmi_f30_initialize.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f30_config(ptr noundef %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %driver = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xport.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %trackstick_buttons = getelementptr inbounds %struct.rmi_transport_dev, ptr %7, i32 0, i32 4, i32 5, i32 1
  %8 = ptrtoint ptr %trackstick_buttons to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %trackstick_buttons, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @rmi_find_function(ptr noundef %3, i8 noundef zeroext 3) #5
  %f03 = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %f03 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %f03, align 4
  %cmp = icmp ne ptr %call6, null
  %trackstick_buttons8 = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 16
  %frombool = zext i1 %cmp to i8
  %11 = ptrtoint ptr %trackstick_buttons8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %trackstick_buttons8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %disable = getelementptr inbounds %struct.rmi_transport_dev, ptr %7, i32 0, i32 4, i32 5, i32 2
  %12 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %disable, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %clear_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %clear_irq_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clear_irq_bits, align 4
  %16 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmi_dev, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 7
  %call14 = tail call i32 %15(ptr noundef %17, ptr noundef %irq_mask) #5
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %18 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmi_dev, align 4
  %control_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %20 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %control_base_addr, align 4
  %ctrl_regs = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 10
  %ctrl_regs_size = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %ctrl_regs_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrl_regs_size, align 4
  %xport.i52 = getelementptr inbounds %struct.rmi_device, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %xport.i52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xport.i52, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i = tail call i32 %29(ptr noundef %25, i16 noundef zeroext %21, ptr noundef %ctrl_regs, i32 noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end23, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %control_base_addr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %control_base_addr, align 4
  %conv = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %call.i) #8
  br label %cleanup

if.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 3
  %32 = ptrtoint ptr %set_irq_bits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_irq_bits, align 4
  %34 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmi_dev, align 4
  %irq_mask25 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 7
  %call27 = tail call i32 %33(ptr noundef %35, ptr noundef %irq_mask25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end23 ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f30_attention(i32 noundef %irq, ptr noundef %ctx) #0 align 64 {
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
  %driver_data.i79 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i79 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i79, align 4
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
  %register_count = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %register_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %register_count, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp ult i32 %9, %conv
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %data_regs = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 12
  %12 = call ptr @memcpy(ptr %data_regs, ptr %7, i32 %conv)
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  store ptr %add.ptr, ptr %data, align 4
  %15 = ptrtoint ptr %register_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %register_count, align 4
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
  %data_regs20 = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 12
  %register_count22 = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %register_count22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %register_count22, align 4
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef %call.i) #8
  br label %cleanup

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.end
  %has_gpio = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %has_gpio to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_gpio, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool34.not = icmp eq i8 %30, 0
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %for.cond.preheader

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end33
  %gpioled_count = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %gpioled_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gpioled_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp3782.not = icmp eq i8 %32, 0
  br i1 %cmp3782.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gpioled_key_map = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 13
  %trackstick_buttons.i = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 16
  %input.i = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 14
  %f03.i = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %33 = ptrtoint ptr %gpioled_key_map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpioled_key_map, align 4
  %arrayidx = getelementptr i16, ptr %34, i32 %i.083
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp40.not = icmp eq i16 %36, 0
  br i1 %cmp40.not, label %for.body.for.inc_crit_edge, label %if.then42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then42:                                        ; preds = %for.body
  %shr.i = lshr i32 %i.083, 3
  %and.i = and i32 %i.083, 7
  %arrayidx1.i = getelementptr %struct.f30_data, ptr %1, i32 0, i32 12, i32 %shr.i
  %37 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %38 to i32
  %shl.i = shl nuw nsw i32 1, %and.i
  %and2.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %39 = ptrtoint ptr %trackstick_buttons.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %trackstick_buttons.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool3.not.i = icmp ne i8 %40, 0
  %41 = add nsw i32 %i.083, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %42 = icmp ult i32 %41, 4
  %43 = and i1 %42, %tobool3.not.i
  br i1 %43, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %f03.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f03.i, align 4
  %conv9.i = zext i16 %36 to i32
  %conv11.i = zext i1 %tobool.not.i to i32
  %call.i80 = tail call i32 @rmi_f03_overwrite_button(ptr noundef %45, i32 noundef %conv9.i, i32 noundef %conv11.i) #5
  br label %for.inc

if.else.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %conv12.i = zext i16 %36 to i32
  %conv14.i = zext i1 %tobool.not.i to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rmi_f30_report_button, i32 noundef %conv12.i, i32 noundef %conv14.i) #5
  %46 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %47, i32 noundef 1, i32 noundef %conv12.i, i32 noundef %conv14.i) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.083, 1
  %48 = ptrtoint ptr %gpioled_count to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %gpioled_count, align 1
  %conv36 = zext i8 %49 to i32
  %cmp37 = icmp ult i32 %inc, %conv36
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %trackstick_buttons = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %trackstick_buttons to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %trackstick_buttons, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool44.not = icmp eq i8 %51, 0
  br i1 %tobool44.not, label %for.end.cleanup_crit_edge, label %if.then45

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %f03 = getelementptr inbounds %struct.f30_data, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %f03 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %f03, align 4
  tail call void @rmi_f03_commit_buttons(ptr noundef %53) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %for.end.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end29, %do.end
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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 399, i32 11}
!2 = !{ptr @rmi_f30_handler, !3, !"rmi_f30_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 397, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 379, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rmi_f30_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rmi_f30_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 283, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rmi_f30_initialize._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rmi_f30_initialize._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 351, i32 3}
!20 = !{ptr @rmi_f30_initialize._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rmi_f30_initialize._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 92, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rmi_f30_read_control_parameters._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rmi_f30_read_control_parameters._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 240, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rmi_f30_map_gpios._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rmi_f30_map_gpios._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 188, i32 4}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rmi_f30_config._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rmi_f30_config._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 133, i32 4}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rmi_f30_attention._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @rmi_f30_attention._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 145, i32 4}
!45 = !{ptr @rmi_f30_attention._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rmi_f30_attention._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 115, i32 4}
!49 = !{ptr @__func__.rmi_f30_report_button, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/rmi4/rmi_f30.c", i32 116, i32 4}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i8 0, i8 2}
!61 = !{!"auto-init"}
