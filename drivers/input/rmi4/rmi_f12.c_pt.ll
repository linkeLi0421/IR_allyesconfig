; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f12.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f12.c"
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
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.f12_data = type { %struct.rmi_2d_sensor, %struct.rmi_2d_sensor_platform_data, i8, i16, %struct.rmi_register_descriptor, %struct.rmi_register_descriptor, %struct.rmi_register_descriptor, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr }
%struct.rmi_2d_sensor = type { %struct.rmi_2d_axis_alignment, ptr, ptr, i8, ptr, i32, i16, i16, i16, i16, i8, ptr, i32, i32, i8, i32, ptr, ptr, [32 x i8], i8, i8, i8, i8, i32, i32 }
%struct.rmi_register_descriptor = type { i32, [8 x i32], i8, ptr }
%struct.rmi_register_desc_item = type { i16, i32, i8, [10 x i32] }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_2d_sensor_abs_object = type { i32, i32, i16, i16, i8, i8, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f12\00", [23 x i8] zeroinitializer }, align 32
@rmi_f12_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 18, ptr @rmi_f12_probe, ptr null, ptr @rmi_f12_config, ptr null, ptr @rmi_f12_attention, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.rmi_f12_probe = private unnamed_addr constant [14 x i8] c"rmi_f12_probe\00", align 1
@rmi_f12_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.rmi_f12_probe, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read general info register: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f12.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f12_probe._entry_ptr = internal global ptr @rmi_f12_probe._entry, section ".printk_index", align 4
@rmi_f12_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.rmi_f12_probe, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Behavior of F12 without register descriptors is undefined.\0A\00", [36 x i8] zeroinitializer }, align 32
@rmi_f12_probe._entry_ptr.8 = internal global ptr @rmi_f12_probe._entry.6, section ".printk_index", align 4
@rmi_f12_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.rmi_f12_probe, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to read the Query Register Descriptor: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rmi_f12_probe._entry_ptr.11 = internal global ptr @rmi_f12_probe._entry.9, section ".printk_index", align 4
@rmi_f12_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.rmi_f12_probe, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to read the Control Register Descriptor: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rmi_f12_probe._entry_ptr.14 = internal global ptr @rmi_f12_probe._entry.12, section ".printk_index", align 4
@rmi_f12_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.rmi_f12_probe, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to read the Data Register Descriptor: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rmi_f12_probe._entry_ptr.17 = internal global ptr @rmi_f12_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: data packet size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rmi_f12_read_sensor_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"F12 does not have the sensor tuning control register\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rmi_f12_read_sensor_tuning\00", [37 x i8] zeroinitializer }, align 32
@rmi_f12_read_sensor_tuning._entry_ptr = internal global ptr @rmi_f12_read_sensor_tuning._entry, section ".printk_index", align 4
@rmi_f12_read_sensor_tuning._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"F12 control8 should be no bigger than %zd bytes, not: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@rmi_f12_read_sensor_tuning._entry_ptr.23 = internal global ptr @rmi_f12_read_sensor_tuning._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: max_x: %d max_y: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Inactive Border xlo:%d xhi:%d ylo:%d yhi:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: x_mm: %d y_mm: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rmi_f12_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 313, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to write F12 control registers: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_f12_config\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_f12_config._entry_ptr = internal global ptr @rmi_f12_config._entry, section ".printk_index", align 4
@rmi_f12_attention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read object data. Code: %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmi_f12_attention\00", [46 x i8] zeroinitializer }, align 32
@rmi_f12_attention._entry_ptr = internal global ptr @rmi_f12_attention._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 545, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"rmi_f12_handler\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 543, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 332, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 338, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 345, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 376, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 386, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 396, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 419, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 79, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 87, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 105, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 117, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 138, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 312, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f12.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 221, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @rmi_f12_attention._entry, ptr @rmi_f12_attention._entry_ptr, ptr @rmi_f12_config._entry, ptr @rmi_f12_config._entry_ptr, ptr @rmi_f12_probe._entry, ptr @rmi_f12_probe._entry.12, ptr @rmi_f12_probe._entry.15, ptr @rmi_f12_probe._entry.6, ptr @rmi_f12_probe._entry.9, ptr @rmi_f12_probe._entry_ptr, ptr @rmi_f12_probe._entry_ptr.11, ptr @rmi_f12_probe._entry_ptr.14, ptr @rmi_f12_probe._entry_ptr.17, ptr @rmi_f12_probe._entry_ptr.8, ptr @rmi_f12_read_sensor_tuning._entry, ptr @rmi_f12_read_sensor_tuning._entry.21, ptr @rmi_f12_read_sensor_tuning._entry_ptr, ptr @rmi_f12_read_sensor_tuning._entry_ptr.23, ptr @.str, ptr @rmi_f12_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_read_sensor_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_read_sensor_tuning._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f12_attention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f12_probe(ptr noundef %fn) #0 align 64 {
entry:
  %buf.i = alloca [15 x i8], align 1
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !68
  %3 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fn, align 8
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xport.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %dev3 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rmi_f12_probe) #5
  %irq_count = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_count, align 4
  %sub = add i32 %10, 31
  %11 = lshr i32 %sub, 3
  %mul = and i32 %11, 536870908
  %12 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmi_dev1, align 4
  %xport.i549 = getelementptr inbounds %struct.rmi_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %xport.i549 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xport.i549, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %19(ptr noundef %15, i16 noundef zeroext %4, ptr noundef nonnull %buf, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.2, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %inc = add i16 %4, 1
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %mul14 = shl nuw nsw i32 %mul, 1
  %add15 = add nuw nsw i32 %mul14, 360
  %call.i550 = call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %add15, i32 noundef 3520) #5
  %tobool17.not = icmp eq ptr %call.i550, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %call.i550, i32 360
  %abs_mask = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 17
  %23 = ptrtoint ptr %abs_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %abs_mask, align 4
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 %mul
  %rel_mask = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 18
  %24 = ptrtoint ptr %rel_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr21, ptr %rel_mask, align 4
  %irq_pos = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 6
  %25 = ptrtoint ptr %irq_pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_pos, align 4
  call void @_set_bit(i32 noundef %26, ptr noundef %add.ptr) #5
  %27 = ptrtoint ptr %irq_pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_pos, align 4
  %add24 = add i32 %28, 1
  %29 = ptrtoint ptr %rel_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rel_mask, align 4
  call void @_set_bit(i32 noundef %add24, ptr noundef %30) #5
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 1
  %has_dribble = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 2
  %33 = lshr i8 %32, 3
  %.lobit = and i8 %33, 1
  %34 = ptrtoint ptr %has_dribble to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.lobit, ptr %has_dribble, align 4
  %of_node = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 27
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %tobool31.not = icmp eq ptr %36, null
  %sensor_pdata38 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 1
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end19
  %call34 = call i32 @rmi_2d_sensor_of_probe(ptr noundef %dev3, ptr noundef %sensor_pdata38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then32.if.end40_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_pdata39 = getelementptr inbounds %struct.rmi_transport_dev, ptr %6, i32 0, i32 4, i32 3
  %37 = call ptr @memcpy(ptr %sensor_pdata38, ptr %sensor_pdata39, i32 52)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then32.if.end40_crit_edge
  %query_reg_desc = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 4
  %call41 = call i32 @rmi_read_register_desc(ptr noundef %1, i16 noundef zeroext %inc, ptr noundef %query_reg_desc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.10, i32 noundef %call41) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %add50 = add i16 %4, 4
  %control_reg_desc = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 5
  %call52 = call i32 @rmi_read_register_desc(ptr noundef %1, i16 noundef zeroext %add50, ptr noundef %control_reg_desc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13, i32 noundef %call52) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  %add61 = add i16 %4, 7
  %data_reg_desc = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 6
  %call63 = call i32 @rmi_read_register_desc(ptr noundef %1, i16 noundef zeroext %add61, ptr noundef %data_reg_desc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16, i32 noundef %call63) #8
  br label %cleanup

if.end70:                                         ; preds = %if.end59
  %fn75 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 17
  %38 = ptrtoint ptr %fn75 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %fn, ptr %fn75, align 4
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 3
  %39 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data_base_addr, align 2
  %data_addr = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 3
  %41 = ptrtoint ptr %data_addr to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %data_addr, align 2
  %call78 = call i32 @rmi_register_desc_calc_size(ptr noundef %data_reg_desc) #5
  %pkt_size = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 12
  %42 = ptrtoint ptr %pkt_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call78, ptr %pkt_size, align 4
  %sensor_pdata79 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 1
  %43 = call ptr @memcpy(ptr %call.i550, ptr %sensor_pdata79, i32 18)
  %x_mm = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %x_mm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %x_mm, align 4
  %conv82 = trunc i32 %45 to i8
  %x_mm83 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 21
  %46 = ptrtoint ptr %x_mm83 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv82, ptr %x_mm83, align 2
  %y_mm = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %y_mm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %y_mm, align 4
  %conv85 = trunc i32 %48 to i8
  %y_mm86 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 22
  %49 = ptrtoint ptr %y_mm86 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv85, ptr %y_mm86, align 1
  %dribble = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 1, i32 9
  %50 = ptrtoint ptr %dribble to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dribble, align 4
  %dribble88 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 23
  %52 = ptrtoint ptr %dribble88 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dribble88, align 4
  %sensor_type = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 15
  %53 = ptrtoint ptr %sensor_type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sensor_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp89 = icmp eq i32 %54, 0
  br i1 %cmp89, label %if.then91, label %if.end70.if.end95_crit_edge

if.end70.if.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then91:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_type93 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %sensor_type93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sensor_type93, align 4
  %57 = ptrtoint ptr %sensor_type to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %sensor_type, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end70.if.end95_crit_edge
  %58 = ptrtoint ptr %pkt_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pkt_size, align 4
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev3, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rmi_f12_probe, i32 noundef %59) #5
  %60 = ptrtoint ptr %pkt_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pkt_size, align 4
  %call.i551 = call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %61, i32 noundef 3520) #5
  %data_pkt = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 11
  %62 = ptrtoint ptr %data_pkt to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i551, ptr %data_pkt, align 4
  %tobool102.not = icmp eq ptr %call.i551, null
  br i1 %tobool102.not, label %if.end95.cleanup_crit_edge, label %if.end104

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end104:                                        ; preds = %if.end95
  %driver_data.i552 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %63 = ptrtoint ptr %driver_data.i552 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i550, ptr %driver_data.i552, align 4
  %64 = ptrtoint ptr %fn75 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fn75, align 4
  %rmi_dev3.i = getelementptr inbounds %struct.rmi_function, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %rmi_dev3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmi_dev3.i, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %buf.i) #5
  %68 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 1
  %69 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 2
  %70 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 3
  %71 = call ptr @memset(ptr %buf.i, i32 255, i32 15)
  %call.i553 = call ptr @rmi_get_register_desc_item(ptr noundef %control_reg_desc, i16 noundef zeroext 8) #5
  %tobool.not.i = icmp eq ptr %call.i553, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rmi_function, ptr %65, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #8
  br label %rmi_f12_read_sensor_tuning.exit.thread

if.end.i:                                         ; preds = %if.end104
  %call5.i = call i32 @rmi_register_desc_calc_reg_offset(ptr noundef %control_reg_desc, i16 noundef zeroext 8) #5
  %reg_size.i = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call.i553, i32 0, i32 1
  %72 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %73)
  %cmp.i = icmp ugt i32 %73, 15
  br i1 %cmp.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i = getelementptr inbounds %struct.rmi_function, ptr %65, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.22, i32 noundef 15, i32 noundef %73) #8
  br label %rmi_f12_read_sensor_tuning.exit.thread

if.end12.i:                                       ; preds = %if.end.i
  %control_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %65, i32 0, i32 2
  %74 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %control_base_addr.i, align 4
  %76 = trunc i32 %call5.i to i16
  %conv13.i = add i16 %75, %76
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %67, i32 0, i32 3
  %77 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %82(ptr noundef %78, i16 noundef zeroext %conv13.i, ptr noundef nonnull %buf.i, i32 noundef %73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end12.i.rmi_f12_read_sensor_tuning.exit.thread_crit_edge

if.end12.i.rmi_f12_read_sensor_tuning.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f12_read_sensor_tuning.exit.thread

if.end18.i:                                       ; preds = %if.end12.i
  %call19.i = call zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef nonnull %call.i553, i8 noundef zeroext 0) #5
  br i1 %call19.i, label %if.then20.i, label %if.end18.i.if.end36.i_crit_edge

if.end18.i.if.end36.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %68, align 1
  %conv22.i = zext i8 %84 to i16
  %shl.i = shl nuw i16 %conv22.i, 8
  %85 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %buf.i, align 1
  %conv24.i = zext i8 %86 to i16
  %or.i = or i16 %shl.i, %conv24.i
  %max_x.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 7
  %87 = ptrtoint ptr %max_x.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %or.i, ptr %max_x.i, align 2
  %88 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %70, align 1
  %conv28.i = zext i8 %89 to i16
  %shl29.i = shl nuw i16 %conv28.i, 8
  %90 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %69, align 1
  %conv32.i = zext i8 %91 to i16
  %or33.i = or i16 %shl29.i, %conv32.i
  %max_y.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 9
  %92 = ptrtoint ptr %max_y.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %or33.i, ptr %max_y.i, align 2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end36.i_crit_edge
  %offset.0.i = phi i32 [ 4, %if.then20.i ], [ 0, %if.end18.i.if.end36.i_crit_edge ]
  %dev37.i = getelementptr inbounds %struct.rmi_function, ptr %65, i32 0, i32 2
  %max_x38.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 7
  %93 = ptrtoint ptr %max_x38.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %max_x38.i, align 2
  %conv39.i = zext i16 %94 to i32
  %max_y40.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 9
  %95 = ptrtoint ptr %max_y40.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %max_y40.i, align 2
  %conv41.i = zext i16 %96 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev37.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef %conv39.i, i32 noundef %conv41.i) #5
  %call42.i = call zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef nonnull %call.i553, i8 noundef zeroext 1) #5
  br i1 %call42.i, label %if.then43.i, label %if.end36.i.if.end60.i_crit_edge

if.end36.i.if.end60.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then43.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %add44.i = or i32 %offset.0.i, 1
  %arrayidx45.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %add44.i
  %97 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = zext i8 %98 to i32
  %shl47.i = shl nuw nsw i32 %conv46.i, 8
  %arrayidx48.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %offset.0.i
  %99 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %100 to i32
  %or50.i = or i32 %shl47.i, %conv49.i
  %add51.i = or i32 %offset.0.i, 3
  %arrayidx52.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %add51.i
  %101 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = zext i8 %102 to i32
  %shl54.i = shl nuw nsw i32 %conv53.i, 8
  %add55.i = or i32 %offset.0.i, 2
  %arrayidx56.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %add55.i
  %103 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx56.i, align 1
  %conv57.i = zext i8 %104 to i32
  %or58.i = or i32 %shl54.i, %conv57.i
  %add59.i = add nuw nsw i32 %offset.0.i, 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then43.i, %if.end36.i.if.end60.i_crit_edge
  %offset.1.i = phi i32 [ %add59.i, %if.then43.i ], [ %offset.0.i, %if.end36.i.if.end60.i_crit_edge ]
  %pitch_x.0.i = phi i32 [ %or50.i, %if.then43.i ], [ 0, %if.end36.i.if.end60.i_crit_edge ]
  %pitch_y.0.i = phi i32 [ %or58.i, %if.then43.i ], [ 0, %if.end36.i.if.end60.i_crit_edge ]
  %call61.i = call zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef nonnull %call.i553, i8 noundef zeroext 2) #5
  br i1 %call61.i, label %if.then62.i, label %if.end60.i.if.end76.i_crit_edge

if.end60.i.if.end76.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.i

if.then62.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx64.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %offset.1.i
  %105 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx64.i, align 1
  %conv65.i = zext i8 %106 to i32
  %add66.i = add nuw nsw i32 %offset.1.i, 1
  %arrayidx67.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %add66.i
  %107 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %108 to i32
  %add69.i = add nuw nsw i32 %offset.1.i, 2
  %arrayidx70.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %add69.i
  %109 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %110 to i32
  %add72.i = add nuw nsw i32 %offset.1.i, 3
  %arrayidx73.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %add72.i
  %111 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx73.i, align 1
  %conv74.i = zext i8 %112 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev37.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, i32 noundef %conv65.i, i32 noundef %conv68.i, i32 noundef %conv71.i, i32 noundef %conv74.i) #5
  %add75.i = add nuw nsw i32 %offset.1.i, 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then62.i, %if.end60.i.if.end76.i_crit_edge
  %offset.2.i = phi i32 [ %add75.i, %if.then62.i ], [ %offset.1.i, %if.end60.i.if.end76.i_crit_edge ]
  %call77.i = call zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef nonnull %call.i553, i8 noundef zeroext 3) #5
  br i1 %call77.i, label %if.then78.i, label %if.end76.i.if.end109_crit_edge

if.end76.i.if.end109_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then78.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx79.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %offset.2.i
  %113 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx79.i, align 1
  %conv80.i = zext i8 %114 to i32
  %add81.i = add nuw nsw i32 %offset.2.i, 1
  %arrayidx82.i = getelementptr [15 x i8], ptr %buf.i, i32 0, i32 %add81.i
  %115 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx82.i, align 1
  %conv83.i = zext i8 %116 to i32
  br label %if.end109

rmi_f12_read_sensor_tuning.exit.thread:           ; preds = %if.end12.i.rmi_f12_read_sensor_tuning.exit.thread_crit_edge, %do.end9.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.end12.i.rmi_f12_read_sensor_tuning.exit.thread_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %buf.i) #5
  br label %cleanup

if.end109:                                        ; preds = %if.then78.i, %if.end76.i.if.end109_crit_edge
  %rx_receivers.0.i = phi i32 [ %conv80.i, %if.then78.i ], [ 0, %if.end76.i.if.end109_crit_edge ]
  %tx_receivers.0.i = phi i32 [ %conv83.i, %if.then78.i ], [ 0, %if.end76.i.if.end109_crit_edge ]
  %call86.i = call zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef nonnull %call.i553, i8 noundef zeroext 4) #5
  %mul.i = mul nsw i32 %rx_receivers.0.i, %pitch_x.0.i
  %117 = lshr i32 %mul.i, 12
  %conv90.i = trunc i32 %117 to i8
  %118 = ptrtoint ptr %x_mm83 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv90.i, ptr %x_mm83, align 2
  %mul91.i = mul nsw i32 %tx_receivers.0.i, %pitch_y.0.i
  %119 = lshr i32 %mul91.i, 12
  %conv93.i = trunc i32 %119 to i8
  %120 = ptrtoint ptr %y_mm86 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv93.i, ptr %y_mm86, align 1
  %conv96.i = and i32 %117, 255
  %conv98.i = and i32 %119, 255
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev37.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, i32 noundef %conv96.i, i32 noundef %conv98.i) #5
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %buf.i) #5
  %call111 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 0) #5
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.end109.if.end118_crit_edge, label %land.lhs.true

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end109
  %data = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  %tobool113.not = icmp eq ptr %122, null
  br i1 %tobool113.not, label %if.then114, label %land.lhs.true.if.end118_crit_edge

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then114:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call111, i32 0, i32 1
  %123 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %reg_size, align 4
  %conv117 = trunc i32 %124 to i16
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %land.lhs.true.if.end118_crit_edge, %if.end109.if.end118_crit_edge
  %data_offset.0 = phi i16 [ 0, %land.lhs.true.if.end118_crit_edge ], [ %conv117, %if.then114 ], [ 0, %if.end109.if.end118_crit_edge ]
  %call120 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 1) #5
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %if.end118.if.end129_crit_edge, label %if.then122

if.end118.if.end129_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %data1 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 7
  %125 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call120, ptr %data1, align 4
  %data1_offset = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 8
  %126 = ptrtoint ptr %data1_offset to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %data_offset.0, ptr %data1_offset, align 4
  %reg_size123 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call120, i32 0, i32 1
  %127 = ptrtoint ptr %reg_size123 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %reg_size123, align 4
  %129 = trunc i32 %128 to i16
  %conv126 = add i16 %data_offset.0, %129
  %num_subpackets = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call120, i32 0, i32 2
  %130 = ptrtoint ptr %num_subpackets to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %num_subpackets, align 4
  %nbr_fingers = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 10
  %132 = ptrtoint ptr %nbr_fingers to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %nbr_fingers, align 4
  %report_abs = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 19
  %133 = ptrtoint ptr %report_abs to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %report_abs, align 4
  %134 = load i32, ptr %reg_size123, align 4
  %attn_size = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 13
  %135 = ptrtoint ptr %attn_size to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %attn_size, align 4
  %add128 = add i32 %136, %134
  store i32 %add128, ptr %attn_size, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then122, %if.end118.if.end129_crit_edge
  %data_offset.1 = phi i16 [ %conv126, %if.then122 ], [ %data_offset.0, %if.end118.if.end129_crit_edge ]
  %call131 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 2) #5
  %tobool132.not = icmp eq ptr %call131, null
  br i1 %tobool132.not, label %if.end129.if.end142_crit_edge, label %land.lhs.true133

if.end129.if.end142_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

land.lhs.true133:                                 ; preds = %if.end129
  %data135 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %137 = ptrtoint ptr %data135 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data135, align 4
  %tobool136.not = icmp eq ptr %138, null
  br i1 %tobool136.not, label %if.then137, label %land.lhs.true133.if.end142_crit_edge

land.lhs.true133.if.end142_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then137:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size138 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call131, i32 0, i32 1
  %139 = ptrtoint ptr %reg_size138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %reg_size138, align 4
  %141 = trunc i32 %140 to i16
  %conv141 = add i16 %data_offset.1, %141
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %land.lhs.true133.if.end142_crit_edge, %if.end129.if.end142_crit_edge
  %data_offset.2 = phi i16 [ %data_offset.1, %land.lhs.true133.if.end142_crit_edge ], [ %conv141, %if.then137 ], [ %data_offset.1, %if.end129.if.end142_crit_edge ]
  %call144 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 3) #5
  %tobool145.not = icmp eq ptr %call144, null
  br i1 %tobool145.not, label %if.end142.if.end155_crit_edge, label %land.lhs.true146

if.end142.if.end155_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

land.lhs.true146:                                 ; preds = %if.end142
  %data148 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %142 = ptrtoint ptr %data148 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data148, align 4
  %tobool149.not = icmp eq ptr %143, null
  br i1 %tobool149.not, label %if.then150, label %land.lhs.true146.if.end155_crit_edge

land.lhs.true146.if.end155_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

if.then150:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size151 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call144, i32 0, i32 1
  %144 = ptrtoint ptr %reg_size151 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %reg_size151, align 4
  %146 = trunc i32 %145 to i16
  %conv154 = add i16 %data_offset.2, %146
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %land.lhs.true146.if.end155_crit_edge, %if.end142.if.end155_crit_edge
  %data_offset.3 = phi i16 [ %data_offset.2, %land.lhs.true146.if.end155_crit_edge ], [ %conv154, %if.then150 ], [ %data_offset.2, %if.end142.if.end155_crit_edge ]
  %call157 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 4) #5
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %if.end155.if.end168_crit_edge, label %land.lhs.true159

if.end155.if.end168_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

land.lhs.true159:                                 ; preds = %if.end155
  %data161 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %147 = ptrtoint ptr %data161 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data161, align 4
  %tobool162.not = icmp eq ptr %148, null
  br i1 %tobool162.not, label %if.then163, label %land.lhs.true159.if.end168_crit_edge

land.lhs.true159.if.end168_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

if.then163:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size164 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call157, i32 0, i32 1
  %149 = ptrtoint ptr %reg_size164 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %reg_size164, align 4
  %151 = trunc i32 %150 to i16
  %conv167 = add i16 %data_offset.3, %151
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %land.lhs.true159.if.end168_crit_edge, %if.end155.if.end168_crit_edge
  %data_offset.4 = phi i16 [ %data_offset.3, %land.lhs.true159.if.end168_crit_edge ], [ %conv167, %if.then163 ], [ %data_offset.3, %if.end155.if.end168_crit_edge ]
  %call170 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 5) #5
  %tobool171.not = icmp eq ptr %call170, null
  br i1 %tobool171.not, label %if.end168.if.end180_crit_edge, label %if.then172

if.end168.if.end180_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

if.then172:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  %data5 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 9
  %152 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call170, ptr %data5, align 4
  %data5_offset = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 10
  %153 = ptrtoint ptr %data5_offset to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %data_offset.4, ptr %data5_offset, align 4
  %reg_size173 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call170, i32 0, i32 1
  %154 = ptrtoint ptr %reg_size173 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %reg_size173, align 4
  %156 = trunc i32 %155 to i16
  %conv176 = add i16 %data_offset.4, %156
  %attn_size178 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 13
  %157 = ptrtoint ptr %attn_size178 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %attn_size178, align 4
  %add179 = add i32 %158, %155
  store i32 %add179, ptr %attn_size178, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then172, %if.end168.if.end180_crit_edge
  %data_offset.5 = phi i16 [ %conv176, %if.then172 ], [ %data_offset.4, %if.end168.if.end180_crit_edge ]
  %call182 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 6) #5
  %tobool183.not = icmp eq ptr %call182, null
  br i1 %tobool183.not, label %if.end180.if.end193_crit_edge, label %land.lhs.true184

if.end180.if.end193_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

land.lhs.true184:                                 ; preds = %if.end180
  %data186 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %159 = ptrtoint ptr %data186 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data186, align 4
  %tobool187.not = icmp eq ptr %160, null
  br i1 %tobool187.not, label %if.then188, label %land.lhs.true184.if.end193_crit_edge

land.lhs.true184.if.end193_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end193

if.then188:                                       ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #7
  %data6 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 11
  %161 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call182, ptr %data6, align 4
  %data6_offset = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 12
  %162 = ptrtoint ptr %data6_offset to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %data_offset.5, ptr %data6_offset, align 4
  %reg_size189 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call182, i32 0, i32 1
  %163 = ptrtoint ptr %reg_size189 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %reg_size189, align 4
  %165 = trunc i32 %164 to i16
  %conv192 = add i16 %data_offset.5, %165
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %land.lhs.true184.if.end193_crit_edge, %if.end180.if.end193_crit_edge
  %data_offset.6 = phi i16 [ %data_offset.5, %land.lhs.true184.if.end193_crit_edge ], [ %conv192, %if.then188 ], [ %data_offset.5, %if.end180.if.end193_crit_edge ]
  %call195 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 7) #5
  %tobool196.not = icmp eq ptr %call195, null
  br i1 %tobool196.not, label %if.end193.if.end206_crit_edge, label %land.lhs.true197

if.end193.if.end206_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

land.lhs.true197:                                 ; preds = %if.end193
  %data199 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %166 = ptrtoint ptr %data199 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %data199, align 4
  %tobool200.not = icmp eq ptr %167, null
  br i1 %tobool200.not, label %if.then201, label %land.lhs.true197.if.end206_crit_edge

land.lhs.true197.if.end206_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

if.then201:                                       ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size202 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call195, i32 0, i32 1
  %168 = ptrtoint ptr %reg_size202 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %reg_size202, align 4
  %170 = trunc i32 %169 to i16
  %conv205 = add i16 %data_offset.6, %170
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %land.lhs.true197.if.end206_crit_edge, %if.end193.if.end206_crit_edge
  %data_offset.7 = phi i16 [ %data_offset.6, %land.lhs.true197.if.end206_crit_edge ], [ %conv205, %if.then201 ], [ %data_offset.6, %if.end193.if.end206_crit_edge ]
  %call208 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 8) #5
  %tobool209.not = icmp eq ptr %call208, null
  br i1 %tobool209.not, label %if.end206.if.end219_crit_edge, label %land.lhs.true210

if.end206.if.end219_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

land.lhs.true210:                                 ; preds = %if.end206
  %data212 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %171 = ptrtoint ptr %data212 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data212, align 4
  %tobool213.not = icmp eq ptr %172, null
  br i1 %tobool213.not, label %if.then214, label %land.lhs.true210.if.end219_crit_edge

land.lhs.true210.if.end219_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

if.then214:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size215 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call208, i32 0, i32 1
  %173 = ptrtoint ptr %reg_size215 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %reg_size215, align 4
  %175 = trunc i32 %174 to i16
  %conv218 = add i16 %data_offset.7, %175
  br label %if.end219

if.end219:                                        ; preds = %if.then214, %land.lhs.true210.if.end219_crit_edge, %if.end206.if.end219_crit_edge
  %data_offset.8 = phi i16 [ %data_offset.7, %land.lhs.true210.if.end219_crit_edge ], [ %conv218, %if.then214 ], [ %data_offset.7, %if.end206.if.end219_crit_edge ]
  %call221 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 9) #5
  %tobool222.not = icmp eq ptr %call221, null
  br i1 %tobool222.not, label %if.end219.if.end236_crit_edge, label %land.lhs.true223

if.end219.if.end236_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236

land.lhs.true223:                                 ; preds = %if.end219
  %data225 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %176 = ptrtoint ptr %data225 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data225, align 4
  %tobool226.not = icmp eq ptr %177, null
  br i1 %tobool226.not, label %if.then227, label %land.lhs.true223.if.end236_crit_edge

land.lhs.true223.if.end236_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236

if.then227:                                       ; preds = %land.lhs.true223
  %data9 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 13
  %178 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call221, ptr %data9, align 4
  %data9_offset = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 14
  %179 = ptrtoint ptr %data9_offset to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %data_offset.8, ptr %data9_offset, align 4
  %reg_size228 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call221, i32 0, i32 1
  %180 = ptrtoint ptr %reg_size228 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %reg_size228, align 4
  %182 = trunc i32 %181 to i16
  %conv231 = add i16 %data_offset.8, %182
  %report_abs232 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 19
  %183 = ptrtoint ptr %report_abs232 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %report_abs232, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool233.not = icmp eq i8 %184, 0
  br i1 %tobool233.not, label %if.then234, label %if.then227.if.end236_crit_edge

if.then227.if.end236_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236

if.then234:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #7
  %report_rel = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 20
  %185 = ptrtoint ptr %report_rel to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %report_rel, align 1
  br label %if.end236

if.end236:                                        ; preds = %if.then234, %if.then227.if.end236_crit_edge, %land.lhs.true223.if.end236_crit_edge, %if.end219.if.end236_crit_edge
  %data_offset.9 = phi i16 [ %data_offset.8, %land.lhs.true223.if.end236_crit_edge ], [ %conv231, %if.then227.if.end236_crit_edge ], [ %conv231, %if.then234 ], [ %data_offset.8, %if.end219.if.end236_crit_edge ]
  %call238 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 10) #5
  %tobool239.not = icmp eq ptr %call238, null
  br i1 %tobool239.not, label %if.end236.if.end249_crit_edge, label %land.lhs.true240

if.end236.if.end249_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end249

land.lhs.true240:                                 ; preds = %if.end236
  %data242 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %186 = ptrtoint ptr %data242 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %data242, align 4
  %tobool243.not = icmp eq ptr %187, null
  br i1 %tobool243.not, label %if.then244, label %land.lhs.true240.if.end249_crit_edge

land.lhs.true240.if.end249_crit_edge:             ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end249

if.then244:                                       ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size245 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call238, i32 0, i32 1
  %188 = ptrtoint ptr %reg_size245 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %reg_size245, align 4
  %190 = trunc i32 %189 to i16
  %conv248 = add i16 %data_offset.9, %190
  br label %if.end249

if.end249:                                        ; preds = %if.then244, %land.lhs.true240.if.end249_crit_edge, %if.end236.if.end249_crit_edge
  %data_offset.10 = phi i16 [ %data_offset.9, %land.lhs.true240.if.end249_crit_edge ], [ %conv248, %if.then244 ], [ %data_offset.9, %if.end236.if.end249_crit_edge ]
  %call251 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 11) #5
  %tobool252.not = icmp eq ptr %call251, null
  br i1 %tobool252.not, label %if.end249.if.end262_crit_edge, label %land.lhs.true253

if.end249.if.end262_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262

land.lhs.true253:                                 ; preds = %if.end249
  %data255 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %191 = ptrtoint ptr %data255 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %data255, align 4
  %tobool256.not = icmp eq ptr %192, null
  br i1 %tobool256.not, label %if.then257, label %land.lhs.true253.if.end262_crit_edge

land.lhs.true253.if.end262_crit_edge:             ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262

if.then257:                                       ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size258 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call251, i32 0, i32 1
  %193 = ptrtoint ptr %reg_size258 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %reg_size258, align 4
  %195 = trunc i32 %194 to i16
  %conv261 = add i16 %data_offset.10, %195
  br label %if.end262

if.end262:                                        ; preds = %if.then257, %land.lhs.true253.if.end262_crit_edge, %if.end249.if.end262_crit_edge
  %data_offset.11 = phi i16 [ %data_offset.10, %land.lhs.true253.if.end262_crit_edge ], [ %conv261, %if.then257 ], [ %data_offset.10, %if.end249.if.end262_crit_edge ]
  %call264 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 12) #5
  %tobool265.not = icmp eq ptr %call264, null
  br i1 %tobool265.not, label %if.end262.if.end275_crit_edge, label %land.lhs.true266

if.end262.if.end275_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end275

land.lhs.true266:                                 ; preds = %if.end262
  %data268 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %196 = ptrtoint ptr %data268 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %data268, align 4
  %tobool269.not = icmp eq ptr %197, null
  br i1 %tobool269.not, label %if.then270, label %land.lhs.true266.if.end275_crit_edge

land.lhs.true266.if.end275_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end275

if.then270:                                       ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size271 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call264, i32 0, i32 1
  %198 = ptrtoint ptr %reg_size271 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %reg_size271, align 4
  %200 = trunc i32 %199 to i16
  %conv274 = add i16 %data_offset.11, %200
  br label %if.end275

if.end275:                                        ; preds = %if.then270, %land.lhs.true266.if.end275_crit_edge, %if.end262.if.end275_crit_edge
  %data_offset.12 = phi i16 [ %data_offset.11, %land.lhs.true266.if.end275_crit_edge ], [ %conv274, %if.then270 ], [ %data_offset.11, %if.end262.if.end275_crit_edge ]
  %call277 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 13) #5
  %tobool278.not = icmp eq ptr %call277, null
  br i1 %tobool278.not, label %if.end275.if.end288_crit_edge, label %land.lhs.true279

if.end275.if.end288_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end288

land.lhs.true279:                                 ; preds = %if.end275
  %data281 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %201 = ptrtoint ptr %data281 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %data281, align 4
  %tobool282.not = icmp eq ptr %202, null
  br i1 %tobool282.not, label %if.then283, label %land.lhs.true279.if.end288_crit_edge

land.lhs.true279.if.end288_crit_edge:             ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end288

if.then283:                                       ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size284 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call277, i32 0, i32 1
  %203 = ptrtoint ptr %reg_size284 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %reg_size284, align 4
  %205 = trunc i32 %204 to i16
  %conv287 = add i16 %data_offset.12, %205
  br label %if.end288

if.end288:                                        ; preds = %if.then283, %land.lhs.true279.if.end288_crit_edge, %if.end275.if.end288_crit_edge
  %data_offset.13 = phi i16 [ %data_offset.12, %land.lhs.true279.if.end288_crit_edge ], [ %conv287, %if.then283 ], [ %data_offset.12, %if.end275.if.end288_crit_edge ]
  %call290 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 14) #5
  %tobool291.not = icmp eq ptr %call290, null
  br i1 %tobool291.not, label %if.end288.if.end301_crit_edge, label %land.lhs.true292

if.end288.if.end301_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end301

land.lhs.true292:                                 ; preds = %if.end288
  %data294 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %206 = ptrtoint ptr %data294 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data294, align 4
  %tobool295.not = icmp eq ptr %207, null
  br i1 %tobool295.not, label %if.then296, label %land.lhs.true292.if.end301_crit_edge

land.lhs.true292.if.end301_crit_edge:             ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end301

if.then296:                                       ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #7
  %reg_size297 = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call290, i32 0, i32 1
  %208 = ptrtoint ptr %reg_size297 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %reg_size297, align 4
  %210 = trunc i32 %209 to i16
  %conv300 = add i16 %data_offset.13, %210
  br label %if.end301

if.end301:                                        ; preds = %if.then296, %land.lhs.true292.if.end301_crit_edge, %if.end288.if.end301_crit_edge
  %data_offset.14 = phi i16 [ %data_offset.13, %land.lhs.true292.if.end301_crit_edge ], [ %conv300, %if.then296 ], [ %data_offset.13, %if.end288.if.end301_crit_edge ]
  %call303 = call ptr @rmi_get_register_desc_item(ptr noundef %data_reg_desc, i16 noundef zeroext 15) #5
  %tobool304.not = icmp eq ptr %call303, null
  br i1 %tobool304.not, label %if.end301.if.end314_crit_edge, label %land.lhs.true305

if.end301.if.end314_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end314

land.lhs.true305:                                 ; preds = %if.end301
  %data307 = getelementptr inbounds %struct.rmi_driver_data, ptr %8, i32 0, i32 20, i32 2
  %211 = ptrtoint ptr %data307 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %data307, align 4
  %tobool308.not = icmp eq ptr %212, null
  br i1 %tobool308.not, label %if.then309, label %land.lhs.true305.if.end314_crit_edge

land.lhs.true305.if.end314_crit_edge:             ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end314

if.then309:                                       ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #7
  %data15 = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 15
  %213 = ptrtoint ptr %data15 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call303, ptr %data15, align 4
  %data15_offset = getelementptr inbounds %struct.f12_data, ptr %call.i550, i32 0, i32 16
  %214 = ptrtoint ptr %data15_offset to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %data_offset.14, ptr %data15_offset, align 4
  br label %if.end314

if.end314:                                        ; preds = %if.then309, %land.lhs.true305.if.end314_crit_edge, %if.end301.if.end314_crit_edge
  %nbr_fingers316 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 10
  %215 = ptrtoint ptr %nbr_fingers316 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %nbr_fingers316, align 4
  %conv317 = zext i8 %216 to i32
  %217 = shl nuw nsw i32 %conv317, 2
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %217, i32 noundef 3520) #5
  %tracking_pos = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 1
  %218 = ptrtoint ptr %tracking_pos to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call5.i.i, ptr %tracking_pos, align 4
  %219 = ptrtoint ptr %nbr_fingers316 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %nbr_fingers316, align 4
  %conv321 = zext i8 %220 to i32
  %221 = shl nuw nsw i32 %conv321, 2
  %call5.i.i554 = call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %221, i32 noundef 3520) #5
  %tracking_slots = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 2
  %222 = ptrtoint ptr %tracking_slots to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call5.i.i554, ptr %tracking_slots, align 4
  %223 = ptrtoint ptr %nbr_fingers316 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %nbr_fingers316, align 4
  %conv325 = zext i8 %224 to i32
  %225 = shl nuw nsw i32 %conv325, 4
  %call5.i.i558 = call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %225, i32 noundef 3520) #5
  %objs = getelementptr inbounds %struct.rmi_2d_sensor, ptr %call.i550, i32 0, i32 4
  %226 = ptrtoint ptr %objs to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call5.i.i558, ptr %objs, align 4
  %227 = ptrtoint ptr %tracking_pos to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %tracking_pos, align 4
  %tobool328.not = icmp eq ptr %228, null
  br i1 %tobool328.not, label %if.end314.cleanup_crit_edge, label %lor.lhs.false

if.end314.cleanup_crit_edge:                      ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end314
  %229 = ptrtoint ptr %tracking_slots to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %tracking_slots, align 4
  %tobool330.not = icmp eq ptr %230, null
  %tobool333.not = icmp eq ptr %call5.i.i558, null
  %or.cond = select i1 %tobool330.not, i1 true, i1 %tobool333.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end335

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end335:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call336 = call i32 @rmi_2d_sensor_configure_input(ptr noundef %fn, ptr noundef nonnull %call.i550) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end335, %lor.lhs.false.cleanup_crit_edge, %if.end314.cleanup_crit_edge, %rmi_f12_read_sensor_tuning.exit.thread, %if.end95.cleanup_crit_edge, %do.end68, %do.end57, %do.end46, %if.then32.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call41, %do.end46 ], [ %call52, %do.end57 ], [ %call63, %do.end68 ], [ -19, %do.end10 ], [ -12, %if.end12.cleanup_crit_edge ], [ %call34, %if.then32.cleanup_crit_edge ], [ -12, %if.end95.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %if.end314.cleanup_crit_edge ], [ %call336, %if.end335 ], [ %retval.0.i.ph, %rmi_f12_read_sensor_tuning.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f12_config(ptr noundef %fn) #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %report_abs = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %report_abs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %report_abs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %3, i32 0, i32 3
  %clear_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %3, i32 0, i32 2
  %set_irq_bits.sink = select i1 %tobool.not, ptr %clear_irq_bits, ptr %set_irq_bits
  %8 = ptrtoint ptr %set_irq_bits.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_irq_bits.sink, align 4
  %abs_mask5 = getelementptr inbounds %struct.f12_data, ptr %5, i32 0, i32 17
  %10 = ptrtoint ptr %abs_mask5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %abs_mask5, align 4
  %call6 = tail call i32 %9(ptr noundef %1, ptr noundef %11) #5
  %clear_irq_bits7 = getelementptr inbounds %struct.rmi_driver, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %clear_irq_bits7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clear_irq_bits7, align 4
  %14 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmi_dev, align 4
  %rel_mask = getelementptr inbounds %struct.f12_data, ptr %5, i32 0, i32 18
  %16 = ptrtoint ptr %rel_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rel_mask, align 4
  %call9 = tail call i32 %13(ptr noundef %15, ptr noundef %17) #5
  %18 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmi_dev, align 4
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #5
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %buf.i, align 1, !annotation !68
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !68
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %25, align 1, !annotation !68
  %has_dribble.i = getelementptr inbounds %struct.f12_data, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %has_dribble.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_dribble.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %entry.rmi_f12_write_control_regs.exit_crit_edge, label %land.lhs.true.i

entry.rmi_f12_write_control_regs.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f12_write_control_regs.exit

land.lhs.true.i:                                  ; preds = %entry
  %dribble.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %21, i32 0, i32 23
  %29 = ptrtoint ptr %dribble.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dribble.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.rmi_f12_write_control_regs.exit_crit_edge, label %if.then.i

land.lhs.true.i.rmi_f12_write_control_regs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f12_write_control_regs.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %control_reg_desc.i = getelementptr inbounds %struct.f12_data, ptr %21, i32 0, i32 5
  %call2.i = tail call ptr @rmi_get_register_desc_item(ptr noundef %control_reg_desc.i, i16 noundef zeroext 20) #5
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then.i.rmi_f12_write_control_regs.exit_crit_edge, label %if.then4.i

if.then.i.rmi_f12_write_control_regs.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f12_write_control_regs.exit

if.then4.i:                                       ; preds = %if.then.i
  %call6.i = tail call i32 @rmi_register_desc_calc_reg_offset(ptr noundef %control_reg_desc.i, i16 noundef zeroext 20) #5
  %reg_size.i = getelementptr inbounds %struct.rmi_register_desc_item, ptr %call2.i, i32 0, i32 1
  %31 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_size.i, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 3) #5
  %control_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %34 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %control_base_addr.i, align 4
  %36 = trunc i32 %call6.i to i16
  %conv11.i = add i16 %35, %36
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %19, i32 0, i32 3
  %37 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %42(ptr noundef %38, i16 noundef zeroext %conv11.i, ptr noundef nonnull %buf.i, i32 noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %if.end.i, label %if.then4.i.do.end_crit_edge

if.then4.i.do.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then4.i
  %call15.i = call zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef nonnull %call2.i, i8 noundef zeroext 0) #5
  %spec.select.i = zext i1 %call15.i to i32
  %43 = ptrtoint ptr %dribble.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dribble.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %if.end.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb25.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [3 x i8], ptr %buf.i, i32 0, i32 %spec.select.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %48 = and i8 %47, -5
  store i8 %48, ptr %arrayidx.i, align 1
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx27.i = getelementptr [3 x i8], ptr %buf.i, i32 0, i32 %spec.select.i
  %49 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx27.i, align 1
  %51 = or i8 %50, 4
  store i8 %51, ptr %arrayidx27.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb25.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %52 = ptrtoint ptr %control_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %control_base_addr.i, align 4
  %conv36.i = add i16 %53, %36
  %54 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xport.i.i, align 8
  %ops.i71.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %ops.i71.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i71.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %call.i72.i = call i32 %59(ptr noundef %55, i16 noundef zeroext %conv36.i, ptr noundef nonnull %buf.i, i32 noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool39.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool39.not.i, label %sw.epilog.i.rmi_f12_write_control_regs.exit_crit_edge, label %sw.epilog.i.do.end_crit_edge

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.epilog.i.rmi_f12_write_control_regs.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f12_write_control_regs.exit

rmi_f12_write_control_regs.exit:                  ; preds = %sw.epilog.i.rmi_f12_write_control_regs.exit_crit_edge, %if.then.i.rmi_f12_write_control_regs.exit_crit_edge, %land.lhs.true.i.rmi_f12_write_control_regs.exit_crit_edge, %entry.rmi_f12_write_control_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #5
  br label %if.end14

do.end:                                           ; preds = %sw.epilog.i.do.end_crit_edge, %if.then4.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i72.i, %sw.epilog.i.do.end_crit_edge ], [ %call.i.i, %if.then4.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #5
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.ph) #8
  br label %if.end14

if.end14:                                         ; preds = %do.end, %rmi_f12_write_control_regs.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f12_attention(i32 noundef %irq, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev2 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev3 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2
  %driver_data.i62 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i62 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i62, align 4
  %data = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %attn_size = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %attn_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attn_size, align 4
  %size = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %data_pkt = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 11
  %13 = ptrtoint ptr %data_pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_pkt, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %7, i32 %12)
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %12
  store ptr %add.ptr, ptr %data, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %sub = sub i32 %19, %12
  store i32 %sub, ptr %size, align 4
  br label %if.end26

if.else17:                                        ; preds = %entry
  %pkt_size = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 12
  %20 = ptrtoint ptr %pkt_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pkt_size, align 4
  %data_addr = getelementptr inbounds %struct.f12_data, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %data_addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data_addr, align 2
  %data_pkt18 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %data_pkt18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_pkt18, align 4
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_block.i, align 4
  %call.i = tail call i32 %31(ptr noundef %27, i16 noundef zeroext %23, ptr noundef %25, i32 noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %do.end, label %if.else17.if.end26_crit_edge

if.else17.if.end26_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end:                                           ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.30, i32 noundef %call.i) #8
  br label %cleanup

if.end26:                                         ; preds = %if.else17.if.end26_crit_edge, %if.then
  %valid_bytes.1 = phi i32 [ %12, %if.then ], [ %21, %if.else17.if.end26_crit_edge ]
  %data1 = getelementptr inbounds %struct.f12_data, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data1, align 4
  %tobool27.not = icmp eq ptr %33, null
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  %num_subpackets.i = getelementptr inbounds %struct.rmi_register_desc_item, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %num_subpackets.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_subpackets.i, align 4
  %conv.i = zext i8 %35 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %valid_bytes.1)
  %cmp.i = icmp sgt i32 %mul.i, %valid_bytes.1
  %div.i = sdiv i32 %valid_bytes.1, 8
  %spec.select.i = select i1 %cmp.i, i32 %div.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp788.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp788.i, label %for.body.lr.ph.i, label %if.then28.for.end.i_crit_edge

if.then28.for.end.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then28
  %data_pkt29 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 11
  %36 = ptrtoint ptr %data_pkt29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data_pkt29, align 4
  %data1_offset = getelementptr inbounds %struct.f12_data, ptr %5, i32 0, i32 8
  %38 = ptrtoint ptr %data1_offset to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %data1_offset, align 4
  %idxprom = zext i16 %39 to i32
  %arrayidx = getelementptr i8, ptr %37, i32 %idxprom
  %objs.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.090.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %data1.addr.089.i = phi ptr [ %arrayidx, %for.body.lr.ph.i ], [ %add.ptr.i, %sw.epilog.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %objs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %objs.i, align 4
  %arrayidx.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %41, i32 %i.090.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx.i, align 4
  %mt_tool.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %41, i32 %i.090.i, i32 1
  %43 = ptrtoint ptr %mt_tool.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %mt_tool.i, align 4
  %44 = ptrtoint ptr %data1.addr.089.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data1.addr.089.i, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %45, label %for.body.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb12.i
    i8 3, label %sw.bb15.i
    i8 4, label %sw.bb18.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %arrayidx.i, align 4
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %arrayidx.i, align 4
  %49 = ptrtoint ptr %mt_tool.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %mt_tool.i, align 4
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %arrayidx.i, align 4
  %51 = ptrtoint ptr %mt_tool.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %mt_tool.i, align 4
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %arrayidx.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb18.i, %sw.bb15.i, %sw.bb12.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge
  %arrayidx20.i = getelementptr i8, ptr %data1.addr.089.i, i32 2
  %53 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %54 to i16
  %shl.i = shl nuw i16 %conv21.i, 8
  %arrayidx22.i = getelementptr i8, ptr %data1.addr.089.i, i32 1
  %55 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %56 to i16
  %or.i = or i16 %shl.i, %conv23.i
  %x.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %41, i32 %i.090.i, i32 2
  %57 = ptrtoint ptr %x.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or.i, ptr %x.i, align 4
  %arrayidx25.i = getelementptr i8, ptr %data1.addr.089.i, i32 4
  %58 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %59 to i16
  %shl27.i = shl nuw i16 %conv26.i, 8
  %arrayidx28.i = getelementptr i8, ptr %data1.addr.089.i, i32 3
  %60 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %61 to i16
  %or30.i = or i16 %shl27.i, %conv29.i
  %y.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %41, i32 %i.090.i, i32 3
  %62 = ptrtoint ptr %y.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %or30.i, ptr %y.i, align 2
  %arrayidx32.i = getelementptr i8, ptr %data1.addr.089.i, i32 5
  %63 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx32.i, align 1
  %z.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %41, i32 %i.090.i, i32 4
  %65 = ptrtoint ptr %z.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %z.i, align 4
  %arrayidx33.i = getelementptr i8, ptr %data1.addr.089.i, i32 6
  %66 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx33.i, align 1
  %wx.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %41, i32 %i.090.i, i32 5
  %68 = ptrtoint ptr %wx.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %wx.i, align 1
  %arrayidx34.i = getelementptr i8, ptr %data1.addr.089.i, i32 7
  %69 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx34.i, align 1
  %wy.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %41, i32 %i.090.i, i32 6
  %71 = ptrtoint ptr %wy.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %wy.i, align 2
  tail call void @rmi_2d_sensor_abs_process(ptr noundef %5, ptr noundef %arrayidx.i, i32 noundef %i.090.i) #5
  %add.ptr.i = getelementptr i8, ptr %data1.addr.089.i, i32 8
  %inc.i = add nuw nsw i32 %i.090.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select.i
  br i1 %exitcond.not.i, label %sw.epilog.i.for.end.i_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %sw.epilog.i.for.end.i_crit_edge, %if.then28.for.end.i_crit_edge
  %kernel_tracking.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 3
  %72 = ptrtoint ptr %kernel_tracking.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %kernel_tracking.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i, label %for.end.i.if.end37.i_crit_edge, label %if.then35.i

for.end.i.if.end37.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

if.then35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %input.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 16
  %74 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %input.i, align 4
  %tracking_slots.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 2
  %76 = ptrtoint ptr %tracking_slots.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tracking_slots.i, align 4
  %tracking_pos.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 1
  %78 = ptrtoint ptr %tracking_pos.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tracking_pos.i, align 4
  %nbr_fingers.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 10
  %80 = ptrtoint ptr %nbr_fingers.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %nbr_fingers.i, align 4
  %conv36.i = zext i8 %81 to i32
  %dmax.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 5
  %82 = ptrtoint ptr %dmax.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dmax.i, align 4
  %call.i63 = tail call i32 @input_mt_assign_slots(ptr noundef %75, ptr noundef %77, ptr noundef %79, i32 noundef %conv36.i, i32 noundef %83) #5
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %for.end.i.if.end37.i_crit_edge
  br i1 %cmp788.i, label %for.body41.lr.ph.i, label %if.end37.i.if.end30_crit_edge

if.end37.i.if.end30_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.body41.lr.ph.i:                               ; preds = %if.end37.i
  %objs42.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 4
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.body41.lr.ph.i
  %i.192.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc45.i, %for.body41.i.for.body41.i_crit_edge ]
  %84 = ptrtoint ptr %objs42.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %objs42.i, align 4
  %arrayidx43.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %85, i32 %i.192.i
  tail call void @rmi_2d_sensor_abs_report(ptr noundef %5, ptr noundef %arrayidx43.i, i32 noundef %i.192.i) #5
  %inc45.i = add nuw nsw i32 %i.192.i, 1
  %exitcond93.not.i = icmp eq i32 %inc45.i, %spec.select.i
  br i1 %exitcond93.not.i, label %for.body41.i.if.end30_crit_edge, label %for.body41.i.for.body41.i_crit_edge

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i

for.body41.i.if.end30_crit_edge:                  ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30:                                         ; preds = %for.body41.i.if.end30_crit_edge, %if.end37.i.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  %input = getelementptr inbounds %struct.rmi_2d_sensor, ptr %5, i32 0, i32 16
  %86 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %input, align 4
  tail call void @input_mt_sync_frame(ptr noundef %87) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_2d_sensor_of_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_read_register_desc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_desc_calc_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmi_get_register_desc_item(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_2d_sensor_configure_input(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_desc_calc_reg_offset(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rmi_register_desc_has_subpacket(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_2d_sensor_abs_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_2d_sensor_abs_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 545, i32 11}
!2 = !{ptr @rmi_f12_handler, !3, !"rmi_f12_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 543, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 332, i32 34}
!6 = !{ptr @__func__.rmi_f12_probe, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 332, i32 42}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 338, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rmi_f12_probe._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @rmi_f12_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 345, i32 3}
!17 = !{ptr @rmi_f12_probe._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @rmi_f12_probe._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 376, i32 3}
!21 = !{ptr @rmi_f12_probe._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rmi_f12_probe._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 386, i32 3}
!25 = !{ptr @rmi_f12_probe._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rmi_f12_probe._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 396, i32 3}
!29 = !{ptr @rmi_f12_probe._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rmi_f12_probe._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 419, i32 34}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 79, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rmi_f12_read_sensor_tuning._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rmi_f12_read_sensor_tuning._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 87, i32 3}
!40 = !{ptr @rmi_f12_read_sensor_tuning._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rmi_f12_read_sensor_tuning._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 105, i32 34}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 117, i32 4}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 138, i32 34}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 312, i32 3}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rmi_f12_config._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @rmi_f12_config._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/rmi4/rmi_f12.c", i32 221, i32 4}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rmi_f12_attention._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @rmi_f12_attention._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i8 0, i8 2}
