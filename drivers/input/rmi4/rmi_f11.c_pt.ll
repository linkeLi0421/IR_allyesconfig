; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f11.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f11.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.f11_data = type { i8, i8, i8, i8, i8, i8, %struct.f11_2d_ctrl, %struct.mutex, i16, %struct.rmi_2d_sensor, %struct.f11_2d_sensor_queries, %struct.f11_2d_data, %struct.rmi_2d_sensor_platform_data, ptr, ptr }
%struct.f11_2d_ctrl = type { [12 x i8], i16 }
%struct.rmi_2d_sensor = type { %struct.rmi_2d_axis_alignment, ptr, ptr, i8, ptr, i32, i16, i16, i16, i16, i8, ptr, i32, i32, i8, i32, ptr, ptr, [32 x i8], i8, i8, i8, i8, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.f11_2d_sensor_queries = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.f11_2d_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_2d_sensor_abs_object = type { i32, i32, i16, i16, i8, i8, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f11\00", [23 x i8] zeroinitializer }, align 32
@rmi_f11_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 17, ptr @rmi_f11_probe, ptr null, ptr @rmi_f11_config, ptr null, ptr @rmi_f11_attention, ptr null, ptr @rmi_f11_resume }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Initializing F11 values.\0A\00", [38 x i8] zeroinitializer }, align 32
@rmi_f11_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read F11 control params.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmi_f11_initialize\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f11.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f11_initialize._entry_ptr = internal global ptr @rmi_f11_initialize._entry, section ".printk_index", align 4
@rmi_f11_initialize._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1265, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to write control registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_f11_initialize._entry_ptr.10 = internal global ptr @rmi_f11_initialize._entry.7, section ".printk_index", align 4
@rmi_f11_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&f11->dev_controls_mutex\00", [39 x i8] zeroinitializer }, align 32
@f11_read_control_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 763, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read ctrl0, code: %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"f11_read_control_regs\00", [42 x i8] zeroinitializer }, align 32
@f11_read_control_regs._entry_ptr = internal global ptr @f11_read_control_regs._entry, section ".printk_index", align 4
@rmi_f11_finger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Invalid finger state[%d]: 0x%02x\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmi_f11_finger_handler\00", [41 x i8] zeroinitializer }, align 32
@rmi_f11_finger_handler._entry_ptr = internal global ptr @rmi_f11_finger_handler._entry, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Resuming...\0A\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rmi_f11_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: failed to issue rezero command, error = %d.\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_f11_resume\00", [17 x i8] zeroinitializer }, align 32
@rmi_f11_resume._entry_ptr = internal global ptr @rmi_f11_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1377, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"rmi_f11_handler\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1375, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1078, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1134, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1265, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1267, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 763, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 614, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1340, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f11.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1349, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @f11_read_control_regs._entry, ptr @f11_read_control_regs._entry_ptr, ptr @rmi_f11_finger_handler._entry, ptr @rmi_f11_finger_handler._entry_ptr, ptr @rmi_f11_initialize._entry, ptr @rmi_f11_initialize._entry.7, ptr @rmi_f11_initialize._entry_ptr, ptr @rmi_f11_initialize._entry_ptr.10, ptr @rmi_f11_resume._entry, ptr @rmi_f11_resume._entry_ptr, ptr @.str, ptr @rmi_f11_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @rmi_f11_initialize.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f11_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f11_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f11_initialize._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f11_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f11_read_control_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f11_finger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f11_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f11_probe(ptr noundef %fn) #0 align 64 {
entry:
  %query_buf.i.i = alloca [4 x i8], align 4
  %max_x_pos.i = alloca i16, align 2
  %max_y_pos.i = alloca i16, align 2
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_x_pos.i) #5
  %2 = ptrtoint ptr %max_x_pos.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %max_x_pos.i, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_y_pos.i) #5
  %3 = ptrtoint ptr %max_y_pos.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %max_y_pos.i, align 2, !annotation !48
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xport.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i, align 1, !annotation !48
  %dev3.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev3.i, ptr noundef nonnull @.str.1) #5
  %irq_count.i = getelementptr inbounds %struct.rmi_driver_data, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %irq_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_count.i, align 4
  %sub.i = add i32 %10, 31
  %11 = lshr i32 %sub.i, 3
  %mul.i = and i32 %11, 536870908
  %mul5.i = shl nuw nsw i32 %mul.i, 1
  %add6.i = add nuw nsw i32 %mul5.i, 416
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3.i, i32 noundef %add6.i, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.rmi_f11_initialize.exit.thread_crit_edge, label %if.end.i

entry.rmi_f11_initialize.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

if.end.i:                                         ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %tobool9.not.i = icmp eq ptr %13, null
  %sensor_pdata16.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  %call12.i = tail call i32 @rmi_2d_sensor_of_probe(ptr noundef %dev3.i, ptr noundef %sensor_pdata16.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then10.i.if.end18.i_crit_edge, label %if.then10.i.rmi_f11_initialize.exit.thread_crit_edge

if.then10.i.rmi_f11_initialize.exit.thread_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

if.then10.i.if.end18.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_pdata17.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %5, i32 0, i32 4, i32 3
  %14 = call ptr @memcpy(ptr %sensor_pdata16.i, ptr %sensor_pdata17.i, i32 52)
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then10.i.if.end18.i_crit_edge
  %rezero_wait.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 5
  %15 = ptrtoint ptr %rezero_wait.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rezero_wait.i, align 4
  %rezero_wait_ms.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %rezero_wait_ms.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %rezero_wait_ms.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 416
  %abs_mask.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %abs_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %abs_mask.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %rel_mask.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %rel_mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr21.i, ptr %rel_mask.i, align 4
  %irq_pos.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 6
  %20 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_pos.i, align 4
  tail call void @_set_bit(i32 noundef %21, ptr noundef %add.ptr.i) #5
  %22 = ptrtoint ptr %irq_pos.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_pos.i, align 4
  %add24.i = add i32 %23, 1
  %24 = ptrtoint ptr %rel_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rel_mask.i, align 4
  tail call void @_set_bit(i32 noundef %add24.i, ptr noundef %25) #5
  %26 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fn, align 8
  %control_base_addr28.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 2
  %28 = ptrtoint ptr %control_base_addr28.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %control_base_addr28.i, align 4
  %30 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_block.i.i, align 4
  %call.i443.i = call i32 %35(ptr noundef %31, i16 noundef zeroext %27, ptr noundef nonnull %buf.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i443.i)
  %cmp.i = icmp slt i32 %call.i443.i, 0
  br i1 %cmp.i, label %if.end18.i.rmi_f11_initialize.exit.thread_crit_edge, label %if.end31.i

if.end18.i.rmi_f11_initialize.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

if.end31.i:                                       ; preds = %if.end18.i
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buf.i, align 1
  %38 = lshr i8 %37, 3
  %.lobit.i = and i8 %38, 1
  %39 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit.i, ptr %call.i.i, align 4
  %has_query11.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 1
  %40 = lshr i8 %37, 4
  %.lobit438.i = and i8 %40, 1
  %41 = ptrtoint ptr %has_query11.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.lobit438.i, ptr %has_query11.i, align 1
  %has_query12.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 2
  %42 = lshr i8 %37, 5
  %.lobit439.i = and i8 %42, 1
  %43 = ptrtoint ptr %has_query12.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.lobit439.i, ptr %has_query12.i, align 2
  %has_query27.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 3
  %44 = lshr i8 %37, 6
  %.lobit440.i = and i8 %44, 1
  %45 = ptrtoint ptr %has_query27.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.lobit440.i, ptr %has_query27.i, align 1
  %has_query28.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 4
  %.lobit441.i = lshr i8 %37, 7
  %46 = ptrtoint ptr %has_query28.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.lobit441.i, ptr %has_query28.i, align 4
  %conv58.i = trunc i16 %27 to i8
  %add59.i = add i8 %conv58.i, 1
  %sensor61.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9
  %fn62.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 17
  %47 = ptrtoint ptr %fn62.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %fn, ptr %fn62.i, align 4
  %sens_query.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10
  %conv63.i = zext i8 %add59.i to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %query_buf.i.i) #5
  %48 = getelementptr inbounds [4 x i8], ptr %query_buf.i.i, i32 0, i32 1
  %49 = getelementptr inbounds [4 x i8], ptr %query_buf.i.i, i32 0, i32 2
  %50 = getelementptr inbounds [4 x i8], ptr %query_buf.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %query_buf.i.i, align 4
  %52 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i.i, align 4
  %read_block.i.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %read_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_block.i.i.i, align 4
  %call.i.i.i = call i32 %57(ptr noundef %53, i16 noundef zeroext %conv63.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end31.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end.i.i

if.end31.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end.i.i:                                       ; preds = %if.end31.i
  %58 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %query_buf.i.i, align 4
  %60 = and i8 %59, 7
  %61 = ptrtoint ptr %sens_query.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %sens_query.i, align 2
  %has_rel.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 1
  %62 = lshr i8 %59, 3
  %.lobit.i.i = and i8 %62, 1
  %63 = ptrtoint ptr %has_rel.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.lobit.i.i, ptr %has_rel.i.i, align 1
  %has_abs.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 2
  %64 = lshr i8 %59, 4
  %.lobit767.i.i = and i8 %64, 1
  %65 = ptrtoint ptr %has_abs.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.lobit767.i.i, ptr %has_abs.i.i, align 2
  %has_gestures.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 3
  %66 = lshr i8 %59, 5
  %.lobit768.i.i = and i8 %66, 1
  %67 = ptrtoint ptr %has_gestures.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.lobit768.i.i, ptr %has_gestures.i.i, align 1
  %has_sensitivity_adjust.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 4
  %68 = lshr i8 %59, 6
  %.lobit769.i.i = and i8 %68, 1
  %69 = ptrtoint ptr %has_sensitivity_adjust.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.lobit769.i.i, ptr %has_sensitivity_adjust.i.i, align 2
  %configurable.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 5
  %.lobit770.i.i = lshr i8 %59, 7
  %70 = ptrtoint ptr %configurable.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %.lobit770.i.i, ptr %configurable.i.i, align 1
  %71 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %48, align 1
  %73 = and i8 %72, 127
  %nr_x_electrodes.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 6
  %74 = ptrtoint ptr %nr_x_electrodes.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %nr_x_electrodes.i.i, align 2
  %75 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %49, align 2
  %77 = and i8 %76, 127
  %nr_y_electrodes.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 7
  %78 = ptrtoint ptr %nr_y_electrodes.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %nr_y_electrodes.i.i, align 1
  %79 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %50, align 1
  %81 = and i8 %80, 127
  %max_electrodes.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 8
  %82 = ptrtoint ptr %max_electrodes.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %max_electrodes.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit767.i.i)
  %tobool47.not.i.i = icmp eq i8 %.lobit767.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end.i.i.if.end103.i.i_crit_edge, label %if.then48.i.i

if.end.i.i.if.end103.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103.i.i

if.then48.i.i:                                    ; preds = %if.end.i.i
  %add.i.i = add nuw nsw i16 %conv63.i, 4
  %83 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xport.i.i, align 8
  %ops.i815.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %ops.i815.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i815.i.i, align 4
  %read_block.i816.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %read_block.i816.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read_block.i816.i.i, align 4
  %call.i817.i.i = call i32 %88(ptr noundef %84, i16 noundef zeroext %add.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i817.i.i)
  %cmp53.i.i = icmp slt i32 %call.i817.i.i, 0
  br i1 %cmp53.i.i, label %if.then48.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end56.i.i

if.then48.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end56.i.i:                                     ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %query_buf.i.i, align 4
  %91 = and i8 %90, 3
  %abs_data_size.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 9
  %92 = ptrtoint ptr %abs_data_size.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %abs_data_size.i.i, align 1
  %has_anchored_finger.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 10
  %93 = lshr i8 %90, 2
  %.lobit808.i.i = and i8 %93, 1
  %94 = ptrtoint ptr %has_anchored_finger.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %.lobit808.i.i, ptr %has_anchored_finger.i.i, align 2
  %has_adj_hyst.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 11
  %95 = lshr i8 %90, 3
  %.lobit809.i.i = and i8 %95, 1
  %96 = ptrtoint ptr %has_adj_hyst.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %.lobit809.i.i, ptr %has_adj_hyst.i.i, align 1
  %has_dribble.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 12
  %97 = lshr i8 %90, 4
  %.lobit810.i.i = and i8 %97, 1
  %98 = ptrtoint ptr %has_dribble.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %.lobit810.i.i, ptr %has_dribble.i.i, align 2
  %has_bending_correction.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 13
  %99 = lshr i8 %90, 5
  %.lobit811.i.i = and i8 %99, 1
  %100 = ptrtoint ptr %has_bending_correction.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.lobit811.i.i, ptr %has_bending_correction.i.i, align 1
  %has_large_object_suppression.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 14
  %101 = lshr i8 %90, 6
  %.lobit812.i.i = and i8 %101, 1
  %102 = ptrtoint ptr %has_large_object_suppression.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.lobit812.i.i, ptr %has_large_object_suppression.i.i, align 2
  %has_jitter_filter.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 15
  %.lobit813.i.i = lshr i8 %90, 7
  %103 = ptrtoint ptr %has_jitter_filter.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %.lobit813.i.i, ptr %has_jitter_filter.i.i, align 1
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %if.end56.i.i, %if.end.i.i.if.end103.i.i_crit_edge
  %query_size.0.i.i = phi i32 [ 5, %if.end56.i.i ], [ 4, %if.end.i.i.if.end103.i.i_crit_edge ]
  %104 = ptrtoint ptr %has_rel.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %has_rel.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool105.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool105.not.i.i, label %if.end103.i.i.if.end116.i.i_crit_edge, label %if.then106.i.i

if.end103.i.i.if.end116.i.i_crit_edge:            ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116.i.i

if.then106.i.i:                                   ; preds = %if.end103.i.i
  %106 = trunc i32 %query_size.0.i.i to i16
  %conv109.i.i = add nuw nsw i16 %106, %conv63.i
  %f11_2d_query6.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 16
  %107 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xport.i.i, align 8
  %ops.i819.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %ops.i819.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i819.i.i, align 4
  %read_block.i820.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %read_block.i820.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read_block.i820.i.i, align 4
  %call.i821.i.i = call i32 %112(ptr noundef %108, i16 noundef zeroext %conv109.i.i, ptr noundef %f11_2d_query6.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i821.i.i)
  %cmp111.i.i = icmp slt i32 %call.i821.i.i, 0
  br i1 %cmp111.i.i, label %if.then106.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end114.i.i

if.then106.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then106.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end114.i.i:                                    ; preds = %if.then106.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc115.i.i = add nuw nsw i32 %query_size.0.i.i, 1
  br label %if.end116.i.i

if.end116.i.i:                                    ; preds = %if.end114.i.i, %if.end103.i.i.if.end116.i.i_crit_edge
  %query_size.1.i.i = phi i32 [ %inc115.i.i, %if.end114.i.i ], [ %query_size.0.i.i, %if.end103.i.i.if.end116.i.i_crit_edge ]
  %113 = ptrtoint ptr %has_gestures.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %has_gestures.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool118.not.i.i = icmp eq i8 %114, 0
  br i1 %tobool118.not.i.i, label %if.end116.i.i.if.end252.i.i_crit_edge, label %if.then119.i.i

if.end116.i.i.if.end252.i.i_crit_edge:            ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end252.i.i

if.then119.i.i:                                   ; preds = %if.end116.i.i
  %115 = trunc i32 %query_size.1.i.i to i16
  %conv122.i.i = add nuw nsw i16 %115, %conv63.i
  %116 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xport.i.i, align 8
  %ops.i823.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %ops.i823.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i823.i.i, align 4
  %read_block.i824.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %read_block.i824.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read_block.i824.i.i, align 4
  %call.i825.i.i = call i32 %121(ptr noundef %117, i16 noundef zeroext %conv122.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i825.i.i)
  %cmp125.i.i = icmp slt i32 %call.i825.i.i, 0
  br i1 %cmp125.i.i, label %if.then119.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end128.i.i

if.then119.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end128.i.i:                                    ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %query_buf.i.i, align 4
  %124 = and i8 %123, 1
  %has_single_tap.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 17
  %125 = ptrtoint ptr %has_single_tap.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %has_single_tap.i.i, align 1
  %has_tap_n_hold.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 18
  %126 = lshr i8 %123, 1
  %.lobit794.i.i = and i8 %126, 1
  %127 = ptrtoint ptr %has_tap_n_hold.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %.lobit794.i.i, ptr %has_tap_n_hold.i.i, align 2
  %has_double_tap.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 19
  %128 = lshr i8 %123, 2
  %.lobit795.i.i = and i8 %128, 1
  %129 = ptrtoint ptr %has_double_tap.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %.lobit795.i.i, ptr %has_double_tap.i.i, align 1
  %has_early_tap.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 20
  %130 = lshr i8 %123, 3
  %.lobit796.i.i = and i8 %130, 1
  %131 = ptrtoint ptr %has_early_tap.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %.lobit796.i.i, ptr %has_early_tap.i.i, align 2
  %has_flick.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 21
  %132 = lshr i8 %123, 4
  %.lobit797.i.i = and i8 %132, 1
  %133 = ptrtoint ptr %has_flick.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %.lobit797.i.i, ptr %has_flick.i.i, align 1
  %has_press.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 22
  %134 = lshr i8 %123, 5
  %.lobit798.i.i = and i8 %134, 1
  %135 = ptrtoint ptr %has_press.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %.lobit798.i.i, ptr %has_press.i.i, align 2
  %has_pinch.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 23
  %136 = lshr i8 %123, 6
  %.lobit799.i.i = and i8 %136, 1
  %137 = ptrtoint ptr %has_pinch.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %.lobit799.i.i, ptr %has_pinch.i.i, align 1
  %has_chiral.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 24
  %.lobit800.i.i = lshr i8 %123, 7
  %138 = ptrtoint ptr %has_chiral.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %.lobit800.i.i, ptr %has_chiral.i.i, align 2
  %139 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %48, align 1
  %141 = and i8 %140, 1
  %has_palm_det.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 26
  %142 = ptrtoint ptr %has_palm_det.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %has_palm_det.i.i, align 2
  %has_rotate.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 27
  %143 = lshr i8 %140, 1
  %.lobit801.i.i = and i8 %143, 1
  %144 = ptrtoint ptr %has_rotate.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %.lobit801.i.i, ptr %has_rotate.i.i, align 1
  %has_touch_shapes.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 28
  %145 = lshr i8 %140, 2
  %.lobit802.i.i = and i8 %145, 1
  %146 = ptrtoint ptr %has_touch_shapes.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %.lobit802.i.i, ptr %has_touch_shapes.i.i, align 2
  %has_scroll_zones.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 29
  %147 = lshr i8 %140, 3
  %.lobit803.i.i = and i8 %147, 1
  %148 = ptrtoint ptr %has_scroll_zones.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %.lobit803.i.i, ptr %has_scroll_zones.i.i, align 1
  %has_individual_scroll_zones.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 30
  %149 = lshr i8 %140, 4
  %.lobit804.i.i = and i8 %149, 1
  %150 = ptrtoint ptr %has_individual_scroll_zones.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %.lobit804.i.i, ptr %has_individual_scroll_zones.i.i, align 2
  %has_mf_scroll.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 31
  %151 = lshr i8 %140, 5
  %.lobit805.i.i = and i8 %151, 1
  %152 = ptrtoint ptr %has_mf_scroll.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %.lobit805.i.i, ptr %has_mf_scroll.i.i, align 1
  %has_mf_edge_motion.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 32
  %153 = lshr i8 %140, 6
  %.lobit806.i.i = and i8 %153, 1
  %154 = ptrtoint ptr %has_mf_edge_motion.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %.lobit806.i.i, ptr %has_mf_edge_motion.i.i, align 2
  %has_mf_scroll_inertia.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 33
  %.lobit807.i.i = lshr i8 %140, 7
  %155 = ptrtoint ptr %has_mf_scroll_inertia.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %.lobit807.i.i, ptr %has_mf_scroll_inertia.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool242.i.i = icmp ne i8 %123, 0
  %query7_nonzero.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 25
  %frombool245.i.i = zext i1 %tobool242.i.i to i8
  %156 = ptrtoint ptr %query7_nonzero.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %frombool245.i.i, ptr %query7_nonzero.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool247.i.i = icmp ne i8 %140, 0
  %query8_nonzero.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 34
  %frombool250.i.i = zext i1 %tobool247.i.i to i8
  %157 = ptrtoint ptr %query8_nonzero.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %frombool250.i.i, ptr %query8_nonzero.i.i, align 2
  %add251.i.i = add nuw nsw i32 %query_size.1.i.i, 2
  br label %if.end252.i.i

if.end252.i.i:                                    ; preds = %if.end128.i.i, %if.end116.i.i.if.end252.i.i_crit_edge
  %query_size.2.i.i = phi i32 [ %add251.i.i, %if.end128.i.i ], [ %query_size.1.i.i, %if.end116.i.i.if.end252.i.i_crit_edge ]
  %158 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %call.i.i, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool253.not.i.i = icmp eq i8 %159, 0
  br i1 %tobool253.not.i.i, label %if.end252.i.i.if.end321.i.i_crit_edge, label %if.then254.i.i

if.end252.i.i.if.end321.i.i_crit_edge:            ; preds = %if.end252.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end321.i.i

if.then254.i.i:                                   ; preds = %if.end252.i.i
  %160 = trunc i32 %query_size.2.i.i to i16
  %conv257.i.i = add nuw nsw i16 %160, %conv63.i
  %161 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %xport.i.i, align 8
  %ops.i827.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %ops.i827.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ops.i827.i.i, align 4
  %read_block.i828.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %read_block.i828.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read_block.i828.i.i, align 4
  %call.i829.i.i = call i32 %166(ptr noundef %162, i16 noundef zeroext %conv257.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i829.i.i)
  %cmp260.i.i = icmp slt i32 %call.i829.i.i, 0
  br i1 %cmp260.i.i, label %if.then254.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end263.i.i

if.then254.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then254.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end263.i.i:                                    ; preds = %if.then254.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %query_buf.i.i, align 4
  %169 = and i8 %168, 1
  %has_pen.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 35
  %170 = ptrtoint ptr %has_pen.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %has_pen.i.i, align 1
  %has_proximity.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 36
  %171 = lshr i8 %168, 1
  %.lobit787.i.i = and i8 %171, 1
  %172 = ptrtoint ptr %has_proximity.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %.lobit787.i.i, ptr %has_proximity.i.i, align 2
  %has_palm_det_sensitivity.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 37
  %173 = lshr i8 %168, 2
  %.lobit788.i.i = and i8 %173, 1
  %174 = ptrtoint ptr %has_palm_det_sensitivity.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %.lobit788.i.i, ptr %has_palm_det_sensitivity.i.i, align 1
  %has_suppress_on_palm_detect.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 38
  %175 = lshr i8 %168, 3
  %.lobit789.i.i = and i8 %175, 1
  %176 = ptrtoint ptr %has_suppress_on_palm_detect.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %.lobit789.i.i, ptr %has_suppress_on_palm_detect.i.i, align 2
  %has_two_pen_thresholds.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 39
  %177 = lshr i8 %168, 4
  %.lobit790.i.i = and i8 %177, 1
  %178 = ptrtoint ptr %has_two_pen_thresholds.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %.lobit790.i.i, ptr %has_two_pen_thresholds.i.i, align 1
  %has_contact_geometry.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 40
  %179 = lshr i8 %168, 5
  %.lobit791.i.i = and i8 %179, 1
  %180 = ptrtoint ptr %has_contact_geometry.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %.lobit791.i.i, ptr %has_contact_geometry.i.i, align 2
  %has_pen_hover_discrimination.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 41
  %181 = lshr i8 %168, 6
  %.lobit792.i.i = and i8 %181, 1
  %182 = ptrtoint ptr %has_pen_hover_discrimination.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %.lobit792.i.i, ptr %has_pen_hover_discrimination.i.i, align 1
  %has_pen_filters.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 42
  %.lobit793.i.i = lshr i8 %168, 7
  %183 = ptrtoint ptr %has_pen_filters.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %.lobit793.i.i, ptr %has_pen_filters.i.i, align 2
  %inc320.i.i = add nuw nsw i32 %query_size.2.i.i, 1
  br label %if.end321.i.i

if.end321.i.i:                                    ; preds = %if.end263.i.i, %if.end252.i.i.if.end321.i.i_crit_edge
  %query_size.3.i.i = phi i32 [ %inc320.i.i, %if.end263.i.i ], [ %query_size.2.i.i, %if.end252.i.i.if.end321.i.i_crit_edge ]
  %has_touch_shapes322.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 28
  %184 = ptrtoint ptr %has_touch_shapes322.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %has_touch_shapes322.i.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool323.not.i.i = icmp eq i8 %185, 0
  br i1 %tobool323.not.i.i, label %if.end321.i.i.if.end339.i.i_crit_edge, label %if.then324.i.i

if.end321.i.i.if.end339.i.i_crit_edge:            ; preds = %if.end321.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end339.i.i

if.then324.i.i:                                   ; preds = %if.end321.i.i
  %186 = trunc i32 %query_size.3.i.i to i16
  %conv327.i.i = add nuw nsw i16 %186, %conv63.i
  %187 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %xport.i.i, align 8
  %ops.i831.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %ops.i831.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ops.i831.i.i, align 4
  %read_block.i832.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %read_block.i832.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read_block.i832.i.i, align 4
  %call.i833.i.i = call i32 %192(ptr noundef %188, i16 noundef zeroext %conv327.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i833.i.i)
  %cmp330.i.i = icmp slt i32 %call.i833.i.i, 0
  br i1 %cmp330.i.i, label %if.then324.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end333.i.i

if.then324.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then324.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end333.i.i:                                    ; preds = %if.then324.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %193 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %query_buf.i.i, align 4
  %195 = and i8 %194, 31
  %nr_touch_shapes.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 43
  %196 = ptrtoint ptr %nr_touch_shapes.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %nr_touch_shapes.i.i, align 1
  %inc338.i.i = add nuw nsw i32 %query_size.3.i.i, 1
  br label %if.end339.i.i

if.end339.i.i:                                    ; preds = %if.end333.i.i, %if.end321.i.i.if.end339.i.i_crit_edge
  %query_size.4.i.i = phi i32 [ %inc338.i.i, %if.end333.i.i ], [ %query_size.3.i.i, %if.end321.i.i.if.end339.i.i_crit_edge ]
  %197 = ptrtoint ptr %has_query11.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %has_query11.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool340.not.i.i = icmp eq i8 %198, 0
  br i1 %tobool340.not.i.i, label %if.end339.i.i.if.end408.i.i_crit_edge, label %if.then341.i.i

if.end339.i.i.if.end408.i.i_crit_edge:            ; preds = %if.end339.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end408.i.i

if.then341.i.i:                                   ; preds = %if.end339.i.i
  %199 = trunc i32 %query_size.4.i.i to i16
  %conv344.i.i = add nuw nsw i16 %199, %conv63.i
  %200 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %xport.i.i, align 8
  %ops.i835.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %ops.i835.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ops.i835.i.i, align 4
  %read_block.i836.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %read_block.i836.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %read_block.i836.i.i, align 4
  %call.i837.i.i = call i32 %205(ptr noundef %201, i16 noundef zeroext %conv344.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i837.i.i)
  %cmp347.i.i = icmp slt i32 %call.i837.i.i, 0
  br i1 %cmp347.i.i, label %if.then341.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end350.i.i

if.then341.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then341.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end350.i.i:                                    ; preds = %if.then341.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %query_buf.i.i, align 4
  %208 = and i8 %207, 1
  %has_z_tuning.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 44
  %209 = ptrtoint ptr %has_z_tuning.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %has_z_tuning.i.i, align 2
  %has_algorithm_selection.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 45
  %210 = lshr i8 %207, 1
  %.lobit780.i.i = and i8 %210, 1
  %211 = ptrtoint ptr %has_algorithm_selection.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %.lobit780.i.i, ptr %has_algorithm_selection.i.i, align 1
  %has_w_tuning.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 46
  %212 = lshr i8 %207, 2
  %.lobit781.i.i = and i8 %212, 1
  %213 = ptrtoint ptr %has_w_tuning.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %.lobit781.i.i, ptr %has_w_tuning.i.i, align 2
  %has_pitch_info.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 47
  %214 = lshr i8 %207, 3
  %.lobit782.i.i = and i8 %214, 1
  %215 = ptrtoint ptr %has_pitch_info.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %.lobit782.i.i, ptr %has_pitch_info.i.i, align 1
  %has_finger_size.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 48
  %216 = lshr i8 %207, 4
  %.lobit783.i.i = and i8 %216, 1
  %217 = ptrtoint ptr %has_finger_size.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %.lobit783.i.i, ptr %has_finger_size.i.i, align 2
  %has_segmentation_aggressiveness.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 49
  %218 = lshr i8 %207, 5
  %.lobit784.i.i = and i8 %218, 1
  %219 = ptrtoint ptr %has_segmentation_aggressiveness.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %.lobit784.i.i, ptr %has_segmentation_aggressiveness.i.i, align 1
  %has_XY_clip.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 50
  %220 = lshr i8 %207, 6
  %.lobit785.i.i = and i8 %220, 1
  %221 = ptrtoint ptr %has_XY_clip.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %.lobit785.i.i, ptr %has_XY_clip.i.i, align 2
  %has_drumming_filter.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 51
  %.lobit786.i.i = lshr i8 %207, 7
  %222 = ptrtoint ptr %has_drumming_filter.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %.lobit786.i.i, ptr %has_drumming_filter.i.i, align 1
  %inc407.i.i = add nuw nsw i32 %query_size.4.i.i, 1
  br label %if.end408.i.i

if.end408.i.i:                                    ; preds = %if.end350.i.i, %if.end339.i.i.if.end408.i.i_crit_edge
  %query_size.5.i.i = phi i32 [ %inc407.i.i, %if.end350.i.i ], [ %query_size.4.i.i, %if.end339.i.i.if.end408.i.i_crit_edge ]
  %223 = ptrtoint ptr %has_query12.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %has_query12.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool409.not.i.i = icmp eq i8 %224, 0
  br i1 %tobool409.not.i.i, label %if.end408.i.i.if.end477.i.i_crit_edge, label %if.then410.i.i

if.end408.i.i.if.end477.i.i_crit_edge:            ; preds = %if.end408.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end477.i.i

if.then410.i.i:                                   ; preds = %if.end408.i.i
  %225 = trunc i32 %query_size.5.i.i to i16
  %conv413.i.i = add nuw nsw i16 %225, %conv63.i
  %226 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %xport.i.i, align 8
  %ops.i839.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %ops.i839.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops.i839.i.i, align 4
  %read_block.i840.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %read_block.i840.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read_block.i840.i.i, align 4
  %call.i841.i.i = call i32 %231(ptr noundef %227, i16 noundef zeroext %conv413.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i841.i.i)
  %cmp416.i.i = icmp slt i32 %call.i841.i.i, 0
  br i1 %cmp416.i.i, label %if.then410.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end419.i.i

if.then410.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then410.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end419.i.i:                                    ; preds = %if.then410.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %232 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %query_buf.i.i, align 4
  %234 = and i8 %233, 1
  %has_gapless_finger.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 52
  %235 = ptrtoint ptr %has_gapless_finger.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %has_gapless_finger.i.i, align 2
  %has_gapless_finger_tuning.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 53
  %236 = lshr i8 %233, 1
  %.lobit773.i.i = and i8 %236, 1
  %237 = ptrtoint ptr %has_gapless_finger_tuning.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %.lobit773.i.i, ptr %has_gapless_finger_tuning.i.i, align 1
  %has_8bit_w.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 54
  %238 = lshr i8 %233, 2
  %.lobit774.i.i = and i8 %238, 1
  %239 = ptrtoint ptr %has_8bit_w.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %.lobit774.i.i, ptr %has_8bit_w.i.i, align 2
  %has_adjustable_mapping.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 55
  %240 = lshr i8 %233, 3
  %.lobit775.i.i = and i8 %240, 1
  %241 = ptrtoint ptr %has_adjustable_mapping.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %.lobit775.i.i, ptr %has_adjustable_mapping.i.i, align 1
  %has_info2.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 56
  %242 = lshr i8 %233, 4
  %.lobit776.i.i = and i8 %242, 1
  %243 = ptrtoint ptr %has_info2.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %.lobit776.i.i, ptr %has_info2.i.i, align 2
  %has_physical_props.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 57
  %244 = lshr i8 %233, 5
  %.lobit777.i.i = and i8 %244, 1
  %245 = ptrtoint ptr %has_physical_props.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %.lobit777.i.i, ptr %has_physical_props.i.i, align 1
  %has_finger_limit.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 58
  %246 = lshr i8 %233, 6
  %.lobit778.i.i = and i8 %246, 1
  %247 = ptrtoint ptr %has_finger_limit.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %.lobit778.i.i, ptr %has_finger_limit.i.i, align 2
  %has_linear_coeff_2.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 59
  %.lobit779.i.i = lshr i8 %233, 7
  %248 = ptrtoint ptr %has_linear_coeff_2.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %.lobit779.i.i, ptr %has_linear_coeff_2.i.i, align 1
  %inc476.i.i = add nuw nsw i32 %query_size.5.i.i, 1
  br label %if.end477.i.i

if.end477.i.i:                                    ; preds = %if.end419.i.i, %if.end408.i.i.if.end477.i.i_crit_edge
  %query_size.6.i.i = phi i32 [ %inc476.i.i, %if.end419.i.i ], [ %query_size.5.i.i, %if.end408.i.i.if.end477.i.i_crit_edge ]
  %has_jitter_filter478.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 15
  %249 = ptrtoint ptr %has_jitter_filter478.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %has_jitter_filter478.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool479.not.i.i = icmp eq i8 %250, 0
  br i1 %tobool479.not.i.i, label %if.end477.i.i.if.end499.i.i_crit_edge, label %if.then480.i.i

if.end477.i.i.if.end499.i.i_crit_edge:            ; preds = %if.end477.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end499.i.i

if.then480.i.i:                                   ; preds = %if.end477.i.i
  %251 = trunc i32 %query_size.6.i.i to i16
  %conv483.i.i = add nuw nsw i16 %251, %conv63.i
  %252 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %xport.i.i, align 8
  %ops.i843.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %253, i32 0, i32 3
  %254 = ptrtoint ptr %ops.i843.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ops.i843.i.i, align 4
  %read_block.i844.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %read_block.i844.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %read_block.i844.i.i, align 4
  %call.i845.i.i = call i32 %257(ptr noundef %253, i16 noundef zeroext %conv483.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i845.i.i)
  %cmp486.i.i = icmp slt i32 %call.i845.i.i, 0
  br i1 %cmp486.i.i, label %if.then480.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end489.i.i

if.then480.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then480.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end489.i.i:                                    ; preds = %if.then480.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %258 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %query_buf.i.i, align 4
  %260 = and i8 %259, 31
  %jitter_window_size.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 60
  %261 = ptrtoint ptr %jitter_window_size.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %jitter_window_size.i.i, align 2
  %262 = lshr i8 %259, 5
  %263 = and i8 %262, 3
  %jitter_filter_type.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 61
  %264 = ptrtoint ptr %jitter_filter_type.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %jitter_filter_type.i.i, align 1
  %inc498.i.i = add nuw nsw i32 %query_size.6.i.i, 1
  br label %if.end499.i.i

if.end499.i.i:                                    ; preds = %if.end489.i.i, %if.end477.i.i.if.end499.i.i_crit_edge
  %query_size.7.i.i = phi i32 [ %inc498.i.i, %if.end489.i.i ], [ %query_size.6.i.i, %if.end477.i.i.if.end499.i.i_crit_edge ]
  %has_info2500.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 56
  %265 = ptrtoint ptr %has_info2500.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %has_info2500.i.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool501.not.i.i = icmp eq i8 %266, 0
  br i1 %tobool501.not.i.i, label %if.end499.i.i.if.end541.i.i_crit_edge, label %if.then502.i.i

if.end499.i.i.if.end541.i.i_crit_edge:            ; preds = %if.end499.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end541.i.i

if.then502.i.i:                                   ; preds = %if.end499.i.i
  %267 = trunc i32 %query_size.7.i.i to i16
  %conv505.i.i = add nuw nsw i16 %267, %conv63.i
  %268 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %xport.i.i, align 8
  %ops.i847.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %269, i32 0, i32 3
  %270 = ptrtoint ptr %ops.i847.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ops.i847.i.i, align 4
  %read_block.i848.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %read_block.i848.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %read_block.i848.i.i, align 4
  %call.i849.i.i = call i32 %273(ptr noundef %269, i16 noundef zeroext %conv505.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i849.i.i)
  %cmp508.i.i = icmp slt i32 %call.i849.i.i, 0
  br i1 %cmp508.i.i, label %if.then502.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end511.i.i

if.then502.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then502.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end511.i.i:                                    ; preds = %if.then502.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %274 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %query_buf.i.i, align 4
  %276 = and i8 %275, 3
  %light_control.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 62
  %277 = ptrtoint ptr %light_control.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %light_control.i.i, align 2
  %is_clear.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 63
  %278 = lshr i8 %275, 2
  %.lobit771.i.i = and i8 %278, 1
  %279 = ptrtoint ptr %is_clear.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %.lobit771.i.i, ptr %is_clear.i.i, align 1
  %280 = lshr i8 %275, 3
  %281 = and i8 %280, 3
  %clickpad_props.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 64
  %282 = ptrtoint ptr %clickpad_props.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %clickpad_props.i.i, align 2
  %283 = lshr i8 %275, 5
  %284 = and i8 %283, 3
  %mouse_buttons.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 65
  %285 = ptrtoint ptr %mouse_buttons.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %284, ptr %mouse_buttons.i.i, align 1
  %has_advanced_gestures.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 66
  %.lobit772.i.i = lshr i8 %275, 7
  %286 = ptrtoint ptr %has_advanced_gestures.i.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %.lobit772.i.i, ptr %has_advanced_gestures.i.i, align 2
  %inc540.i.i = add nuw nsw i32 %query_size.7.i.i, 1
  br label %if.end541.i.i

if.end541.i.i:                                    ; preds = %if.end511.i.i, %if.end499.i.i.if.end541.i.i_crit_edge
  %query_size.8.i.i = phi i32 [ %inc540.i.i, %if.end511.i.i ], [ %query_size.7.i.i, %if.end499.i.i.if.end541.i.i_crit_edge ]
  %has_physical_props542.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 57
  %287 = ptrtoint ptr %has_physical_props542.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %has_physical_props542.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool543.not.i.i = icmp eq i8 %288, 0
  br i1 %tobool543.not.i.i, label %if.end541.i.i.if.end568.i.i_crit_edge, label %if.then544.i.i

if.end541.i.i.if.end568.i.i_crit_edge:            ; preds = %if.end541.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end568.i.i

if.then544.i.i:                                   ; preds = %if.end541.i.i
  %289 = trunc i32 %query_size.8.i.i to i16
  %conv547.i.i = add nuw nsw i16 %289, %conv63.i
  %290 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %xport.i.i, align 8
  %ops.i851.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %291, i32 0, i32 3
  %292 = ptrtoint ptr %ops.i851.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ops.i851.i.i, align 4
  %read_block.i852.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %read_block.i852.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read_block.i852.i.i, align 4
  %call.i853.i.i = call i32 %295(ptr noundef %291, i16 noundef zeroext %conv547.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i853.i.i)
  %cmp550.i.i = icmp slt i32 %call.i853.i.i, 0
  br i1 %cmp550.i.i, label %if.then544.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end553.i.i

if.then544.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then544.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end553.i.i:                                    ; preds = %if.then544.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %296 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %query_buf.i.i, align 4
  %conv555.i.i = zext i8 %297 to i16
  %298 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %48, align 1
  %conv557.i.i = zext i8 %299 to i16
  %shl.i.i = shl nuw i16 %conv557.i.i, 8
  %or.i.i = or i16 %shl.i.i, %conv555.i.i
  %div.i.i = udiv i16 %or.i.i, 10
  %x_sensor_size_mm.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 67
  %300 = ptrtoint ptr %x_sensor_size_mm.i.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %div.i.i, ptr %x_sensor_size_mm.i.i, align 2
  %301 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %49, align 2
  %conv560.i.i = zext i8 %302 to i16
  %303 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %50, align 1
  %conv562.i.i = zext i8 %304 to i16
  %shl563.i.i = shl nuw i16 %conv562.i.i, 8
  %or564.i.i = or i16 %shl563.i.i, %conv560.i.i
  %div565.i.i = udiv i16 %or564.i.i, 10
  %y_sensor_size_mm.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 68
  %305 = ptrtoint ptr %y_sensor_size_mm.i.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %div565.i.i, ptr %y_sensor_size_mm.i.i, align 2
  %add567.i.i = add nuw nsw i32 %query_size.8.i.i, 12
  br label %if.end568.i.i

if.end568.i.i:                                    ; preds = %if.end553.i.i, %if.end541.i.i.if.end568.i.i_crit_edge
  %query_size.9.i.i = phi i32 [ %add567.i.i, %if.end553.i.i ], [ %query_size.8.i.i, %if.end541.i.i.if.end568.i.i_crit_edge ]
  %306 = ptrtoint ptr %has_query28.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %has_query28.i, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool573.not.i.i = icmp eq i8 %307, 0
  br i1 %tobool573.not.i.i, label %if.end568.i.i.if.end68.i_crit_edge, label %if.then574.i.i

if.end568.i.i.if.end68.i_crit_edge:               ; preds = %if.end568.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

if.then574.i.i:                                   ; preds = %if.end568.i.i
  %308 = ptrtoint ptr %has_query27.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %has_query27.i, align 1, !range !49
  %310 = zext i8 %309 to i32
  %spec.select.i.i = add nuw nsw i32 %query_size.9.i.i, %310
  %311 = trunc i32 %spec.select.i.i to i16
  %conv577.i.i = add nuw nsw i16 %311, %conv63.i
  %312 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %xport.i.i, align 8
  %ops.i855.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %313, i32 0, i32 3
  %314 = ptrtoint ptr %ops.i855.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ops.i855.i.i, align 4
  %read_block.i856.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %315, i32 0, i32 1
  %316 = ptrtoint ptr %read_block.i856.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %read_block.i856.i.i, align 4
  %call.i857.i.i = call i32 %317(ptr noundef %313, i16 noundef zeroext %conv577.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i857.i.i)
  %cmp580.i.i = icmp slt i32 %call.i857.i.i, 0
  br i1 %cmp580.i.i, label %if.then574.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end583.i.i

if.then574.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then574.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end583.i.i:                                    ; preds = %if.then574.i.i
  %318 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %query_buf.i.i, align 4
  %320 = and i8 %319, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool587.not.i.i = icmp eq i8 %320, 0
  br i1 %tobool587.not.i.i, label %if.end583.i.i.if.end68.i_crit_edge, label %if.then593.i.i

if.end583.i.i.if.end68.i_crit_edge:               ; preds = %if.end583.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

if.then593.i.i:                                   ; preds = %if.end583.i.i
  %conv597.i.i = add nuw nsw i16 %conv577.i.i, 2
  %321 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %xport.i.i, align 8
  %ops.i859.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %322, i32 0, i32 3
  %323 = ptrtoint ptr %ops.i859.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %ops.i859.i.i, align 4
  %read_block.i860.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %read_block.i860.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %read_block.i860.i.i, align 4
  %call.i861.i.i = call i32 %326(ptr noundef %322, i16 noundef zeroext %conv597.i.i, ptr noundef nonnull %query_buf.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i861.i.i)
  %cmp600.i.i = icmp slt i32 %call.i861.i.i, 0
  br i1 %cmp600.i.i, label %if.then593.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, label %if.end603.i.i

if.then593.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge: ; preds = %if.then593.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_get_query_parameters.exit.thread.i

if.end603.i.i:                                    ; preds = %if.then593.i.i
  %327 = ptrtoint ptr %query_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %query_buf.i.i, align 4
  %329 = and i8 %328, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool607.not.i.i = icmp eq i8 %329, 0
  br i1 %tobool607.not.i.i, label %if.end603.i.i.if.end68.i_crit_edge, label %if.then608.i.i

if.end603.i.i.if.end68.i_crit_edge:               ; preds = %if.end603.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

if.then608.i.i:                                   ; preds = %if.end603.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %has_acm.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 5
  %330 = ptrtoint ptr %has_acm.i.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 1, ptr %has_acm.i.i, align 1
  br label %if.end68.i

rmi_f11_get_query_parameters.exit.thread.i:       ; preds = %if.then593.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then574.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then544.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then502.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then480.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then410.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then341.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then324.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then254.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then119.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then106.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.then48.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge, %if.end31.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i861.i.i, %if.then593.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i857.i.i, %if.then574.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i853.i.i, %if.then544.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i849.i.i, %if.then502.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i845.i.i, %if.then480.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i841.i.i, %if.then410.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i837.i.i, %if.then341.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i833.i.i, %if.then324.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i829.i.i, %if.then254.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i825.i.i, %if.then119.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i821.i.i, %if.then106.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i817.i.i, %if.then48.i.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ], [ %call.i.i.i, %if.end31.i.rmi_f11_get_query_parameters.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query_buf.i.i) #5
  br label %rmi_f11_initialize.exit.thread

if.end68.i:                                       ; preds = %if.then608.i.i, %if.end603.i.i.if.end68.i_crit_edge, %if.end583.i.i.if.end68.i_crit_edge, %if.end568.i.i.if.end68.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query_buf.i.i) #5
  %dev_controls.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 6
  %331 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %rmi_dev1.i, align 4
  %ctrl0_11_address.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 6, i32 1
  %333 = ptrtoint ptr %ctrl0_11_address.i.i to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 %29, ptr %ctrl0_11_address.i.i, align 2
  %xport.i.i444.i = getelementptr inbounds %struct.rmi_device, ptr %332, i32 0, i32 3
  %334 = ptrtoint ptr %xport.i.i444.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %xport.i.i444.i, align 8
  %ops.i.i445.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %335, i32 0, i32 3
  %336 = ptrtoint ptr %ops.i.i445.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ops.i.i445.i, align 4
  %read_block.i.i446.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %read_block.i.i446.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %read_block.i.i446.i, align 4
  %call.i.i447.i = call i32 %339(ptr noundef %335, i16 noundef zeroext %29, ptr noundef %dev_controls.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i447.i)
  %cmp.i448.i = icmp slt i32 %call.i.i447.i, 0
  br i1 %cmp.i448.i, label %do.end.i, label %if.end77.i

do.end.i:                                         ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.12, i32 noundef %call.i.i447.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.2) #8
  br label %rmi_f11_initialize.exit.thread

if.end77.i:                                       ; preds = %if.end68.i
  %340 = ptrtoint ptr %has_info2500.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %has_info2500.i.i, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool79.not.i = icmp eq i8 %341, 0
  br i1 %tobool79.not.i, label %if.end77.i.if.end89.i_crit_edge, label %if.then80.i

if.end77.i.if.end89.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89.i

if.then80.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  %is_clear.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 63
  %342 = ptrtoint ptr %is_clear.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %is_clear.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool82.not.i = icmp eq i8 %343, 0
  %sensor_type87.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 15
  %..i = select i1 %tobool82.not.i, i32 2, i32 1
  %344 = ptrtoint ptr %sensor_type87.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %..i, ptr %sensor_type87.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then80.i, %if.end77.i.if.end89.i_crit_edge
  %345 = ptrtoint ptr %has_abs.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %has_abs.i.i, align 2, !range !49
  %report_abs.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 19
  %347 = ptrtoint ptr %report_abs.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %346, ptr %report_abs.i, align 4
  %348 = call ptr @memcpy(ptr %sensor61.i, ptr %sensor_pdata16.i, i32 18)
  %topbuttonpad.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 6
  %349 = ptrtoint ptr %topbuttonpad.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %topbuttonpad.i, align 2, !range !49
  %topbuttonpad97.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 14
  %351 = ptrtoint ptr %topbuttonpad97.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %350, ptr %topbuttonpad97.i, align 4
  %kernel_tracking.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 7
  %352 = ptrtoint ptr %kernel_tracking.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %kernel_tracking.i, align 1, !range !49
  %kernel_tracking101.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 3
  %354 = ptrtoint ptr %kernel_tracking101.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %kernel_tracking101.i, align 4
  %dmax.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 8
  %355 = ptrtoint ptr %dmax.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %dmax.i, align 4
  %dmax104.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 5
  %357 = ptrtoint ptr %dmax104.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %dmax104.i, align 4
  %dribble.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 9
  %358 = ptrtoint ptr %dribble.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %dribble.i, align 4
  %dribble106.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 23
  %360 = ptrtoint ptr %dribble106.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %dribble106.i, align 4
  %palm_detect.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 10
  %361 = ptrtoint ptr %palm_detect.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %palm_detect.i, align 4
  %palm_detect108.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 24
  %363 = ptrtoint ptr %palm_detect108.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %palm_detect108.i, align 4
  %364 = ptrtoint ptr %has_physical_props542.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %has_physical_props542.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool110.not.i = icmp eq i8 %365, 0
  br i1 %tobool110.not.i, label %if.else116.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  %x_sensor_size_mm.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 67
  %366 = ptrtoint ptr %x_sensor_size_mm.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %x_sensor_size_mm.i, align 4
  %conv113.i = trunc i16 %367 to i8
  %y_sensor_size_mm.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 68
  %368 = ptrtoint ptr %y_sensor_size_mm.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %y_sensor_size_mm.i, align 2
  %conv115.i = trunc i16 %369 to i8
  br label %if.end125.i

if.else116.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  %x_mm118.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 2
  %370 = ptrtoint ptr %x_mm118.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %x_mm118.i, align 4
  %conv119.i = trunc i32 %371 to i8
  %y_mm122.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 3
  %372 = ptrtoint ptr %y_mm122.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %y_mm122.i, align 4
  %conv123.i = trunc i32 %373 to i8
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.else116.i, %if.then111.i
  %conv113.sink.i = phi i8 [ %conv119.i, %if.else116.i ], [ %conv113.i, %if.then111.i ]
  %conv115.sink.i = phi i8 [ %conv123.i, %if.else116.i ], [ %conv115.i, %if.then111.i ]
  %374 = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 21
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %conv113.sink.i, ptr %374, align 2
  %376 = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 22
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %conv115.sink.i, ptr %376, align 1
  %sensor_type126.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 15
  %378 = ptrtoint ptr %sensor_type126.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %sensor_type126.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %cmp127.i = icmp eq i32 %379, 0
  br i1 %cmp127.i, label %if.then129.i, label %if.end125.i.if.end133.i_crit_edge

if.end125.i.if.end133.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133.i

if.then129.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_type131.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 1
  %380 = ptrtoint ptr %sensor_type131.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %sensor_type131.i, align 4
  %382 = ptrtoint ptr %sensor_type126.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %381, ptr %sensor_type126.i, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then129.i, %if.end125.i.if.end133.i_crit_edge
  %383 = ptrtoint ptr %report_abs.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %report_abs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool136.not.i = icmp eq i8 %384, 0
  br i1 %tobool136.not.i, label %if.then145.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end133.i
  %disable_report_mask.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 12, i32 4
  %385 = ptrtoint ptr %disable_report_mask.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %disable_report_mask.i, align 4
  %and138.i = and i32 %386, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  %387 = trunc i32 %and138.i to i8
  %388 = xor i8 %387, 1
  %389 = ptrtoint ptr %report_abs.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %388, ptr %report_abs.i, align 4
  br i1 %tobool139.not.i, label %land.rhs.i.if.end149.i_crit_edge, label %land.rhs.i.if.then145.i_crit_edge

land.rhs.i.if.then145.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then145.i

land.rhs.i.if.end149.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149.i

if.then145.critedge.i:                            ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  %390 = ptrtoint ptr %report_abs.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 0, ptr %report_abs.i, align 4
  br label %if.then145.i

if.then145.i:                                     ; preds = %if.then145.critedge.i, %land.rhs.i.if.then145.i_crit_edge
  %391 = ptrtoint ptr %has_rel.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %has_rel.i.i, align 1, !range !49
  %report_rel.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 20
  %393 = ptrtoint ptr %report_rel.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %392, ptr %report_rel.i, align 1
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then145.i, %land.rhs.i.if.end149.i_crit_edge
  %add151.i = add i16 %29, 6
  %394 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %xport.i.i, align 8
  %ops.i451.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %395, i32 0, i32 3
  %396 = ptrtoint ptr %ops.i451.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ops.i451.i, align 4
  %read_block.i452.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %read_block.i452.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %read_block.i452.i, align 4
  %call.i453.i = call i32 %399(ptr noundef %395, i16 noundef zeroext %add151.i, ptr noundef nonnull %max_x_pos.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i453.i)
  %cmp154.i = icmp slt i32 %call.i453.i, 0
  br i1 %cmp154.i, label %if.end149.i.rmi_f11_initialize.exit.thread_crit_edge, label %if.end157.i

if.end149.i.rmi_f11_initialize.exit.thread_crit_edge: ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

if.end157.i:                                      ; preds = %if.end149.i
  %add159.i = add i16 %29, 8
  %400 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %xport.i.i, align 8
  %ops.i455.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %401, i32 0, i32 3
  %402 = ptrtoint ptr %ops.i455.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %ops.i455.i, align 4
  %read_block.i456.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %read_block.i456.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %read_block.i456.i, align 4
  %call.i457.i = call i32 %405(ptr noundef %401, i16 noundef zeroext %add159.i, ptr noundef nonnull %max_y_pos.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i457.i)
  %cmp162.i = icmp slt i32 %call.i457.i, 0
  br i1 %cmp162.i, label %if.end157.i.rmi_f11_initialize.exit.thread_crit_edge, label %if.end165.i

if.end157.i.rmi_f11_initialize.exit.thread_crit_edge: ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

if.end165.i:                                      ; preds = %if.end157.i
  %406 = ptrtoint ptr %max_x_pos.i to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %max_x_pos.i, align 2
  %max_x.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 7
  %408 = ptrtoint ptr %max_x.i to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 %407, ptr %max_x.i, align 2
  %409 = ptrtoint ptr %max_y_pos.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %max_y_pos.i, align 2
  %max_y.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 9
  %411 = ptrtoint ptr %max_y.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 %410, ptr %max_y.i, align 2
  %data2.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11
  %412 = ptrtoint ptr %sens_query.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %sens_query.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %413)
  %cmp.i458.i = icmp eq i8 %413, 5
  %add.i459.i = add i8 %413, 1
  %spec.select.i460.i = select i1 %cmp.i458.i, i8 10, i8 %add.i459.i
  %nbr_fingers.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 10
  %414 = ptrtoint ptr %nbr_fingers.i.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %spec.select.i460.i, ptr %nbr_fingers.i.i, align 4
  %conv8.i.i = zext i8 %spec.select.i460.i to i32
  %sub.i.i = add nuw nsw i32 %conv8.i.i, 3
  %div245.i.i = lshr i32 %sub.i.i, 2
  %pkt_size.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 12
  %415 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %div245.i.i, ptr %pkt_size.i.i, align 4
  %416 = ptrtoint ptr %has_abs.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %has_abs.i.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool.not.i.i = icmp eq i8 %417, 0
  br i1 %tobool.not.i.i, label %if.end165.i.if.end.i463.i_crit_edge, label %if.then.i.i

if.end165.i.if.end.i463.i_crit_edge:              ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i463.i

if.then.i.i:                                      ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i.i = mul nuw nsw i32 %conv8.i.i, 5
  %add13.i.i = add nuw nsw i32 %div245.i.i, %mul.i.i
  %418 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %add13.i.i, ptr %pkt_size.i.i, align 4
  %attn_size.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 13
  %419 = ptrtoint ptr %attn_size.i.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %add13.i.i, ptr %attn_size.i.i, align 4
  br label %if.end.i463.i

if.end.i463.i:                                    ; preds = %if.then.i.i, %if.end165.i.if.end.i463.i_crit_edge
  %420 = ptrtoint ptr %has_rel.i.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %has_rel.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %421)
  %tobool15.not.i.i = icmp eq i8 %421, 0
  br i1 %tobool15.not.i.i, label %if.end.i463.i.if.end22.i.i_crit_edge, label %if.then16.i.i

if.end.i463.i.if.end22.i.i_crit_edge:             ; preds = %if.end.i463.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i.i

if.then16.i.i:                                    ; preds = %if.end.i463.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul19.i.i = shl nuw nsw i32 %conv8.i.i, 1
  %422 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %pkt_size.i.i, align 4
  %add21.i.i = add i32 %423, %mul19.i.i
  store i32 %add21.i.i, ptr %pkt_size.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then16.i.i, %if.end.i463.i.if.end22.i.i_crit_edge
  %query7_nonzero.i464.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 25
  %424 = ptrtoint ptr %query7_nonzero.i464.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %query7_nonzero.i464.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %tobool23.not.i.i = icmp eq i8 %425, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false.i.i, label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %426 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %pkt_size.i.i, align 4
  %add26.i.i = add i32 %427, 1
  store i32 %add26.i.i, ptr %pkt_size.i.i, align 4
  br label %if.then33.i.i

lor.lhs.false.i.i:                                ; preds = %if.end22.i.i
  %query8_nonzero.i465.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 34
  %428 = ptrtoint ptr %query8_nonzero.i465.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %query8_nonzero.i465.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %429)
  %tobool31.not.i.i = icmp eq i8 %429, 0
  br i1 %tobool31.not.i.i, label %lor.lhs.false.i.i.if.end36.i.i_crit_edge, label %lor.lhs.false.i.i.if.then33.i.i_crit_edge

lor.lhs.false.i.i.if.then33.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i.i

lor.lhs.false.i.i.if.end36.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i.i

if.then33.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then33.i.i_crit_edge, %if.end27.i.i
  %430 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %pkt_size.i.i, align 4
  %add35.i.i = add i32 %431, 1
  store i32 %add35.i.i, ptr %pkt_size.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then33.i.i, %lor.lhs.false.i.i.if.end36.i.i_crit_edge
  %has_pinch.i466.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 23
  %432 = ptrtoint ptr %has_pinch.i466.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %has_pinch.i466.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %tobool37.not.i.i = icmp eq i8 %433, 0
  br i1 %tobool37.not.i.i, label %lor.lhs.false39.i.i, label %if.end36.i.i.if.then45.i.i_crit_edge

if.end36.i.i.if.then45.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45.i.i

lor.lhs.false39.i.i:                              ; preds = %if.end36.i.i
  %has_flick.i467.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 21
  %434 = ptrtoint ptr %has_flick.i467.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %has_flick.i467.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool40.not.i.i = icmp eq i8 %435, 0
  br i1 %tobool40.not.i.i, label %lor.lhs.false42.i.i, label %lor.lhs.false39.i.i.if.then45.i.i_crit_edge

lor.lhs.false39.i.i.if.then45.i.i_crit_edge:      ; preds = %lor.lhs.false39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45.i.i

lor.lhs.false42.i.i:                              ; preds = %lor.lhs.false39.i.i
  %has_rotate.i468.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 27
  %436 = ptrtoint ptr %has_rotate.i468.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %has_rotate.i468.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %437)
  %tobool43.not.i.i = icmp eq i8 %437, 0
  br i1 %tobool43.not.i.i, label %lor.lhs.false42.i.i.if.end59.i.i_crit_edge, label %lor.lhs.false42.i.i.if.then45.i.i_crit_edge

lor.lhs.false42.i.i.if.then45.i.i_crit_edge:      ; preds = %lor.lhs.false42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45.i.i

lor.lhs.false42.i.i.if.end59.i.i_crit_edge:       ; preds = %lor.lhs.false42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i.i

if.then45.i.i:                                    ; preds = %lor.lhs.false42.i.i.if.then45.i.i_crit_edge, %lor.lhs.false39.i.i.if.then45.i.i_crit_edge, %if.end36.i.i.if.then45.i.i_crit_edge
  %438 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %pkt_size.i.i, align 4
  %add47.i.i = add i32 %439, 3
  store i32 %add47.i.i, ptr %pkt_size.i.i, align 4
  %has_flick48.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 21
  %440 = ptrtoint ptr %has_flick48.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %has_flick48.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool49.not.i.i = icmp eq i8 %441, 0
  br i1 %tobool49.not.i.i, label %if.then50.i.i, label %if.then45.i.i.if.end52.i.i_crit_edge

if.then45.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i.i

if.then50.i.i:                                    ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i.i = add i32 %439, 2
  %442 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %dec.i.i, ptr %pkt_size.i.i, align 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then50.i.i, %if.then45.i.i.if.end52.i.i_crit_edge
  %has_rotate53.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 27
  %443 = ptrtoint ptr %has_rotate53.i.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %has_rotate53.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %444)
  %tobool54.not.i.i = icmp eq i8 %444, 0
  br i1 %tobool54.not.i.i, label %if.then55.i.i, label %if.end52.i.i.if.end59.i.i_crit_edge

if.end52.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %445 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %pkt_size.i.i, align 4
  %dec57.i.i = add i32 %446, -1
  store i32 %dec57.i.i, ptr %pkt_size.i.i, align 4
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then55.i.i, %if.end52.i.i.if.end59.i.i_crit_edge, %lor.lhs.false42.i.i.if.end59.i.i_crit_edge
  %447 = ptrtoint ptr %has_touch_shapes322.i.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %has_touch_shapes322.i.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool60.not.i.i = icmp eq i8 %448, 0
  br i1 %tobool60.not.i.i, label %if.end59.i.i.if.end69.i.i_crit_edge, label %if.then61.i.i

if.end59.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69.i.i

if.then61.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr_touch_shapes.i470.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 43
  %449 = ptrtoint ptr %nr_touch_shapes.i470.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %nr_touch_shapes.i470.i, align 1
  %conv62.i.i = zext i8 %450 to i32
  %sub65.i.i = add nuw nsw i32 %conv62.i.i, 8
  %div66247.i.i = lshr i32 %sub65.i.i, 3
  %451 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %pkt_size.i.i, align 4
  %add68.i.i = add i32 %div66247.i.i, %452
  store i32 %add68.i.i, ptr %pkt_size.i.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then61.i.i, %if.end59.i.i.if.end69.i.i_crit_edge
  %453 = ptrtoint ptr %fn62.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %fn62.i, align 4
  %dev.i471.i = getelementptr inbounds %struct.rmi_function, ptr %454, i32 0, i32 2
  %455 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %pkt_size.i.i, align 4
  %call.i.i472.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i471.i, i32 noundef %456, i32 noundef 3520) #5
  %data_pkt.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 11
  %457 = ptrtoint ptr %data_pkt.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %call.i.i472.i, ptr %data_pkt.i.i, align 4
  %tobool72.not.i.i = icmp eq ptr %call.i.i472.i, null
  br i1 %tobool72.not.i.i, label %if.end69.i.i.rmi_f11_initialize.exit.thread_crit_edge, label %if.end74.i.i

if.end69.i.i.rmi_f11_initialize.exit.thread_crit_edge: ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

if.end74.i.i:                                     ; preds = %if.end69.i.i
  %458 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr %call.i.i472.i, ptr %data2.i.i, align 4
  %459 = ptrtoint ptr %nbr_fingers.i.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %nbr_fingers.i.i, align 4
  %conv77.i.i = zext i8 %460 to i32
  %sub79.i.i = add nuw nsw i32 %conv77.i.i, 3
  %div80246.i.i = lshr i32 %sub79.i.i, 2
  %461 = ptrtoint ptr %has_abs.i.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %has_abs.i.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %462)
  %tobool82.not.i.i = icmp eq i8 %462, 0
  br i1 %tobool82.not.i.i, label %if.end74.i.i.if.end89.i.i_crit_edge, label %if.then83.i.i

if.end74.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89.i.i

if.then83.i.i:                                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %div80246.i.i
  %abs_pos.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 1
  %463 = ptrtoint ptr %abs_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %arrayidx.i.i, ptr %abs_pos.i.i, align 4
  %mul87.i.i = mul nuw nsw i32 %conv77.i.i, 5
  %add88.i.i = add nuw nsw i32 %div80246.i.i, %mul87.i.i
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %if.then83.i.i, %if.end74.i.i.if.end89.i.i_crit_edge
  %i.0.i.i = phi i32 [ %add88.i.i, %if.then83.i.i ], [ %div80246.i.i, %if.end74.i.i.if.end89.i.i_crit_edge ]
  %464 = ptrtoint ptr %has_rel.i.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %has_rel.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %465)
  %tobool91.not.i.i = icmp eq i8 %465, 0
  br i1 %tobool91.not.i.i, label %if.end89.i.i.if.end99.i.i_crit_edge, label %if.then92.i.i

if.end89.i.i.if.end99.i.i_crit_edge:              ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99.i.i

if.then92.i.i:                                    ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx94.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %i.0.i.i
  %rel_pos.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 2
  %466 = ptrtoint ptr %rel_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store ptr %arrayidx94.i.i, ptr %rel_pos.i.i, align 4
  %mul97.i.i = shl nuw nsw i32 %conv77.i.i, 1
  %add98.i.i = add nuw nsw i32 %i.0.i.i, %mul97.i.i
  br label %if.end99.i.i

if.end99.i.i:                                     ; preds = %if.then92.i.i, %if.end89.i.i.if.end99.i.i_crit_edge
  %i.1.i.i = phi i32 [ %add98.i.i, %if.then92.i.i ], [ %i.0.i.i, %if.end89.i.i.if.end99.i.i_crit_edge ]
  %467 = ptrtoint ptr %query7_nonzero.i464.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %query7_nonzero.i464.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %468)
  %tobool101.not.i.i = icmp eq i8 %468, 0
  br i1 %tobool101.not.i.i, label %lor.lhs.false109.i.i, label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx104.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %i.1.i.i
  %gest_1.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 3
  %469 = ptrtoint ptr %gest_1.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %arrayidx104.i.i, ptr %gest_1.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.1.i.i, 1
  br label %if.then113.i.i

lor.lhs.false109.i.i:                             ; preds = %if.end99.i.i
  %query8_nonzero110.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 34
  %470 = ptrtoint ptr %query8_nonzero110.i.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %query8_nonzero110.i.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %471)
  %tobool111.not.i.i = icmp eq i8 %471, 0
  br i1 %tobool111.not.i.i, label %lor.lhs.false109.i.i.if.end117.i.i_crit_edge, label %lor.lhs.false109.i.i.if.then113.i.i_crit_edge

lor.lhs.false109.i.i.if.then113.i.i_crit_edge:    ; preds = %lor.lhs.false109.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then113.i.i

lor.lhs.false109.i.i.if.end117.i.i_crit_edge:     ; preds = %lor.lhs.false109.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117.i.i

if.then113.i.i:                                   ; preds = %lor.lhs.false109.i.i.if.then113.i.i_crit_edge, %if.end105.i.i
  %i.2249.i.i = phi i32 [ %i.1.i.i, %lor.lhs.false109.i.i.if.then113.i.i_crit_edge ], [ %inc.i.i, %if.end105.i.i ]
  %arrayidx115.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %i.2249.i.i
  %gest_2.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 4
  %472 = ptrtoint ptr %gest_2.i.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %arrayidx115.i.i, ptr %gest_2.i.i, align 4
  %inc116.i.i = add nuw nsw i32 %i.2249.i.i, 1
  br label %if.end117.i.i

if.end117.i.i:                                    ; preds = %if.then113.i.i, %lor.lhs.false109.i.i.if.end117.i.i_crit_edge
  %i.3.i.i = phi i32 [ %inc116.i.i, %if.then113.i.i ], [ %i.1.i.i, %lor.lhs.false109.i.i.if.end117.i.i_crit_edge ]
  %473 = ptrtoint ptr %has_pinch.i466.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %has_pinch.i466.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %474)
  %tobool119.not.i.i = icmp eq i8 %474, 0
  br i1 %tobool119.not.i.i, label %if.end124.i.i, label %if.end124.thread.i.i

if.end124.i.i:                                    ; preds = %if.end117.i.i
  %has_flick125.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 21
  %475 = ptrtoint ptr %has_flick125.i.i to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %has_flick125.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %476)
  %tobool126.not.i.i = icmp eq i8 %476, 0
  br i1 %tobool126.not.i.i, label %if.end124.i.i.if.end138.i.i_crit_edge, label %if.else.i.i

if.end124.i.i.if.end138.i.i_crit_edge:            ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138.i.i

if.end124.thread.i.i:                             ; preds = %if.end117.i.i
  %arrayidx122.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %i.3.i.i
  %pinch.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 5
  %477 = ptrtoint ptr %pinch.i.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %arrayidx122.i.i, ptr %pinch.i.i, align 4
  %inc123.i.i = add nuw nsw i32 %i.3.i.i, 1
  %has_flick125252.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 21
  %478 = ptrtoint ptr %has_flick125252.i.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %has_flick125252.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %479)
  %tobool126.not253.i.i = icmp eq i8 %479, 0
  br i1 %tobool126.not253.i.i, label %if.end124.thread.i.i.if.end138.i.i_crit_edge, label %if.end124.thread.i.i.if.end138.i.thread.i_crit_edge

if.end124.thread.i.i.if.end138.i.thread.i_crit_edge: ; preds = %if.end124.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138.i.thread.i

if.end124.thread.i.i.if.end138.i.i_crit_edge:     ; preds = %if.end124.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138.i.i

if.else.i.i:                                      ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx134.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %i.3.i.i
  br label %if.end138.i.thread.i

if.end138.i.i:                                    ; preds = %if.end124.thread.i.i.if.end138.i.i_crit_edge, %if.end124.i.i.if.end138.i.i_crit_edge
  %i.5.i.i = phi i32 [ %i.3.i.i, %if.end124.i.i.if.end138.i.i_crit_edge ], [ %inc123.i.i, %if.end124.thread.i.i.if.end138.i.i_crit_edge ]
  %has_rotate139.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 27
  %480 = ptrtoint ptr %has_rotate139.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %has_rotate139.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %tobool140.not.i.i = icmp eq i8 %481, 0
  br i1 %tobool140.not.i.i, label %if.end138.i.i.if.end152.i.i_crit_edge, label %if.else146.i.i

if.end138.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152.i.i

if.end138.i.thread.i:                             ; preds = %if.else.i.i, %if.end124.thread.i.i.if.end138.i.thread.i_crit_edge
  %.sink.i.i = phi ptr [ %arrayidx134.i.i, %if.else.i.i ], [ %arrayidx122.i.i, %if.end124.thread.i.i.if.end138.i.thread.i_crit_edge ]
  %flick.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 6
  %482 = ptrtoint ptr %flick.i.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr %.sink.i.i, ptr %flick.i.i, align 4
  %add132.i.i = add nuw nsw i32 %i.3.i.i, 3
  %has_rotate139.i494.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 27
  %483 = ptrtoint ptr %has_rotate139.i494.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %has_rotate139.i494.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %484)
  %tobool140.not.i495.i = icmp eq i8 %484, 0
  br i1 %tobool140.not.i495.i, label %if.end138.i.thread.i.if.end152.i.i_crit_edge, label %if.then144.i.i

if.end138.i.thread.i.if.end152.i.i_crit_edge:     ; preds = %if.end138.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152.i.i

if.then144.i.i:                                   ; preds = %if.end138.i.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  %485 = getelementptr i8, ptr %call.i.i472.i, i32 %i.3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %485, i32 1
  %rotate.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 7
  %486 = ptrtoint ptr %rotate.i.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr %add.ptr.i.i, ptr %rotate.i.i, align 4
  br label %if.end152.i.i

if.else146.i.i:                                   ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx148.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %i.5.i.i
  %rotate149.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 7
  %487 = ptrtoint ptr %rotate149.i.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store ptr %arrayidx148.i.i, ptr %rotate149.i.i, align 4
  %add150.i.i = add nuw nsw i32 %i.5.i.i, 2
  br label %if.end152.i.i

if.end152.i.i:                                    ; preds = %if.else146.i.i, %if.then144.i.i, %if.end138.i.thread.i.if.end152.i.i_crit_edge, %if.end138.i.i.if.end152.i.i_crit_edge
  %i.6.i.i = phi i32 [ %add132.i.i, %if.then144.i.i ], [ %add150.i.i, %if.else146.i.i ], [ %i.5.i.i, %if.end138.i.i.if.end152.i.i_crit_edge ], [ %add132.i.i, %if.end138.i.thread.i.if.end152.i.i_crit_edge ]
  %488 = ptrtoint ptr %has_touch_shapes322.i.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %has_touch_shapes322.i.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %tobool154.not.i.i = icmp eq i8 %489, 0
  br i1 %tobool154.not.i.i, label %if.end152.i.i.if.end170.i_crit_edge, label %if.then155.i.i

if.end152.i.i.if.end170.i_crit_edge:              ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170.i

if.then155.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx157.i.i = getelementptr i8, ptr %call.i.i472.i, i32 %i.6.i.i
  %shapes.i.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 11, i32 8
  %490 = ptrtoint ptr %shapes.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr %arrayidx157.i.i, ptr %shapes.i.i, align 4
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then155.i.i, %if.end152.i.i.if.end170.i_crit_edge
  %has_acm.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 5
  %491 = ptrtoint ptr %has_acm.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %has_acm.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %492)
  %tobool171.not.i = icmp eq i8 %492, 0
  br i1 %tobool171.not.i, label %if.end170.i.if.end.i.i.i_crit_edge, label %if.then172.i

if.end170.i.if.end.i.i.i_crit_edge:               ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then172.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #7
  %493 = ptrtoint ptr %nbr_fingers.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %nbr_fingers.i.i, align 4
  %conv174.i = zext i8 %494 to i32
  %mul175.i = shl nuw nsw i32 %conv174.i, 1
  %attn_size.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 13
  %495 = ptrtoint ptr %attn_size.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %attn_size.i, align 4
  %add177.i = add i32 %mul175.i, %496
  store i32 %add177.i, ptr %attn_size.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then172.i, %if.end170.i.if.end.i.i.i_crit_edge
  %497 = ptrtoint ptr %nbr_fingers.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %nbr_fingers.i.i, align 4
  %conv181.i = zext i8 %498 to i32
  %499 = shl nuw nsw i32 %conv181.i, 2
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev3.i, i32 noundef %499, i32 noundef 3520) #5
  %tracking_pos.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 1
  %500 = ptrtoint ptr %tracking_pos.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store ptr %call5.i.i.i, ptr %tracking_pos.i, align 4
  %501 = ptrtoint ptr %nbr_fingers.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %nbr_fingers.i.i, align 4
  %conv185.i = zext i8 %502 to i32
  %503 = shl nuw nsw i32 %conv185.i, 2
  %call5.i.i474.i = call noalias ptr @devm_kmalloc(ptr noundef %dev3.i, i32 noundef %503, i32 noundef 3520) #5
  %tracking_slots.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 2
  %504 = ptrtoint ptr %tracking_slots.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr %call5.i.i474.i, ptr %tracking_slots.i, align 4
  %505 = ptrtoint ptr %nbr_fingers.i.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %nbr_fingers.i.i, align 4
  %conv189.i = zext i8 %506 to i32
  %507 = shl nuw nsw i32 %conv189.i, 4
  %call5.i.i478.i = call noalias ptr @devm_kmalloc(ptr noundef %dev3.i, i32 noundef %507, i32 noundef 3520) #5
  %objs.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 4
  %508 = ptrtoint ptr %objs.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %call5.i.i478.i, ptr %objs.i, align 4
  %509 = ptrtoint ptr %tracking_pos.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %tracking_pos.i, align 4
  %tobool192.not.i = icmp eq ptr %510, null
  br i1 %tobool192.not.i, label %if.end.i.i.i.rmi_f11_initialize.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.i.i.rmi_f11_initialize.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i.i.i
  %511 = ptrtoint ptr %tracking_slots.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %tracking_slots.i, align 4
  %tobool194.not.i = icmp eq ptr %512, null
  %tobool197.not.i = icmp eq ptr %call5.i.i478.i, null
  %or.cond.i = select i1 %tobool194.not.i, i1 true, i1 %tobool197.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.rmi_f11_initialize.exit.thread_crit_edge, label %if.end199.i

lor.lhs.false.i.rmi_f11_initialize.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmi_f11_initialize.exit.thread

if.end199.i:                                      ; preds = %lor.lhs.false.i
  %delta_x_threshold.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 0, i32 9
  %513 = ptrtoint ptr %delta_x_threshold.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %delta_x_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %514)
  %tobool202.not.i = icmp eq i8 %514, 0
  br i1 %tobool202.not.i, label %if.end199.i.if.end206.i_crit_edge, label %if.then203.i

if.end199.i.if.end206.i_crit_edge:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206.i

if.then203.i:                                     ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.f11_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2
  %515 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %514, ptr %arrayidx.i, align 2
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then203.i, %if.end199.i.if.end206.i_crit_edge
  %delta_y_threshold.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 9, i32 0, i32 10
  %516 = ptrtoint ptr %delta_y_threshold.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %delta_y_threshold.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %517)
  %tobool208.not.i = icmp eq i8 %517, 0
  br i1 %tobool208.not.i, label %if.end206.i.if.end214.i_crit_edge, label %if.then209.i

if.end206.i.if.end214.i_crit_edge:                ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214.i

if.then209.i:                                     ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx213.i = getelementptr %struct.f11_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 3
  %518 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 %517, ptr %arrayidx213.i, align 1
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.then209.i, %if.end206.i.if.end214.i_crit_edge
  %519 = ptrtoint ptr %delta_x_threshold.i to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %delta_x_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %520)
  %tobool218.not.i = icmp eq i8 %520, 0
  br i1 %tobool218.not.i, label %lor.lhs.false219.i, label %if.end214.i.if.then224.i_crit_edge

if.end214.i.if.then224.i_crit_edge:               ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then224.i

lor.lhs.false219.i:                               ; preds = %if.end214.i
  %521 = ptrtoint ptr %delta_y_threshold.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %delta_y_threshold.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %522)
  %tobool223.not.i = icmp eq i8 %522, 0
  br i1 %tobool223.not.i, label %lor.lhs.false219.i.if.end234.i_crit_edge, label %lor.lhs.false219.i.if.then224.i_crit_edge

lor.lhs.false219.i.if.then224.i_crit_edge:        ; preds = %lor.lhs.false219.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then224.i

lor.lhs.false219.i.if.end234.i_crit_edge:         ; preds = %lor.lhs.false219.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234.i

if.then224.i:                                     ; preds = %lor.lhs.false219.i.if.then224.i_crit_edge, %if.end214.i.if.then224.i_crit_edge
  %523 = ptrtoint ptr %dev_controls.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %dev_controls.i, align 2
  %525 = and i8 %524, -8
  %526 = or i8 %525, 1
  store i8 %526, ptr %dev_controls.i, align 2
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.then224.i, %lor.lhs.false219.i.if.end234.i_crit_edge
  %has_dribble.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 12
  %527 = ptrtoint ptr %has_dribble.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %has_dribble.i, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %528)
  %tobool236.not.i = icmp eq i8 %528, 0
  br i1 %tobool236.not.i, label %if.end234.i.if.end251.i_crit_edge, label %if.then237.i

if.end234.i.if.end251.i_crit_edge:                ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end251.i

if.then237.i:                                     ; preds = %if.end234.i
  %529 = ptrtoint ptr %dribble106.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %dribble106.i, align 4
  %531 = zext i32 %530 to i64
  call void @__sanitizer_cov_trace_switch(i64 %531, ptr @__sancov_gen_cov_switch_values)
  switch i32 %530, label %if.then237.i.if.end251.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb244.i
  ]

if.then237.i.if.end251.i_crit_edge:               ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end251.i

sw.bb.i:                                          ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #7
  %532 = ptrtoint ptr %dev_controls.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %dev_controls.i, align 2
  %534 = and i8 %533, -65
  br label %if.end251.sink.split.i

sw.bb244.i:                                       ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #7
  %535 = ptrtoint ptr %dev_controls.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %dev_controls.i, align 2
  %537 = or i8 %536, 64
  br label %if.end251.sink.split.i

if.end251.sink.split.i:                           ; preds = %sw.bb244.i, %sw.bb.i
  %.sink503.i = phi i8 [ %534, %sw.bb.i ], [ %537, %sw.bb244.i ]
  %538 = ptrtoint ptr %dev_controls.i to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 %.sink503.i, ptr %dev_controls.i, align 2
  br label %if.end251.i

if.end251.i:                                      ; preds = %if.end251.sink.split.i, %if.then237.i.if.end251.i_crit_edge, %if.end234.i.if.end251.i_crit_edge
  %has_palm_det.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 10, i32 26
  %539 = ptrtoint ptr %has_palm_det.i to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %has_palm_det.i, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %540)
  %tobool253.not.i = icmp eq i8 %540, 0
  br i1 %tobool253.not.i, label %if.end251.i.if.end271.i_crit_edge, label %if.then254.i

if.end251.i.if.end271.i_crit_edge:                ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end271.i

if.then254.i:                                     ; preds = %if.end251.i
  %541 = ptrtoint ptr %palm_detect108.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %palm_detect108.i, align 4
  %543 = zext i32 %542 to i64
  call void @__sanitizer_cov_trace_switch(i64 %543, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %542, label %if.then254.i.if.end271.i_crit_edge [
    i32 1, label %sw.bb256.i
    i32 2, label %sw.bb262.i
  ]

if.then254.i.if.end271.i_crit_edge:               ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end271.i

sw.bb256.i:                                       ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx258.i = getelementptr %struct.f11_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 11
  %544 = ptrtoint ptr %arrayidx258.i to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %arrayidx258.i, align 1
  %546 = and i8 %545, -2
  store i8 %546, ptr %arrayidx258.i, align 1
  br label %if.end271.i

sw.bb262.i:                                       ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx264.i = getelementptr %struct.f11_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 11
  %547 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx264.i, align 1
  %549 = or i8 %548, 1
  store i8 %549, ptr %arrayidx264.i, align 1
  br label %if.end271.i

if.end271.i:                                      ; preds = %sw.bb262.i, %sw.bb256.i, %if.then254.i.if.end271.i_crit_edge, %if.end251.i.if.end271.i_crit_edge
  %550 = ptrtoint ptr %control_base_addr28.i to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %control_base_addr28.i, align 4
  %552 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %rmi_dev1.i, align 4
  %xport.i.i483.i = getelementptr inbounds %struct.rmi_device, ptr %553, i32 0, i32 3
  %554 = ptrtoint ptr %xport.i.i483.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %xport.i.i483.i, align 8
  %ops.i.i484.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %555, i32 0, i32 3
  %556 = ptrtoint ptr %ops.i.i484.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %ops.i.i484.i, align 4
  %558 = ptrtoint ptr %557 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %557, align 4
  %call.i.i485.i = call i32 %559(ptr noundef %555, i16 noundef zeroext %551, ptr noundef %dev_controls.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i485.i)
  %tobool277.not.i = icmp sgt i32 %call.i.i485.i, -1
  br i1 %tobool277.not.i, label %if.end271.i.if.end_crit_edge, label %do.end281.i

if.end271.i.if.end_crit_edge:                     ; preds = %if.end271.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end281.i:                                      ; preds = %if.end271.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3.i, ptr noundef nonnull @.str.8) #8
  br label %if.end

rmi_f11_initialize.exit.thread:                   ; preds = %lor.lhs.false.i.rmi_f11_initialize.exit.thread_crit_edge, %if.end.i.i.i.rmi_f11_initialize.exit.thread_crit_edge, %if.end69.i.i.rmi_f11_initialize.exit.thread_crit_edge, %if.end157.i.rmi_f11_initialize.exit.thread_crit_edge, %if.end149.i.rmi_f11_initialize.exit.thread_crit_edge, %do.end.i, %rmi_f11_get_query_parameters.exit.thread.i, %if.end18.i.rmi_f11_initialize.exit.thread_crit_edge, %if.then10.i.rmi_f11_initialize.exit.thread_crit_edge, %entry.rmi_f11_initialize.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end69.i.i.rmi_f11_initialize.exit.thread_crit_edge ], [ %retval.0.i.ph.i, %rmi_f11_get_query_parameters.exit.thread.i ], [ -12, %if.end.i.i.i.rmi_f11_initialize.exit.thread_crit_edge ], [ -12, %lor.lhs.false.i.rmi_f11_initialize.exit.thread_crit_edge ], [ %call.i457.i, %if.end157.i.rmi_f11_initialize.exit.thread_crit_edge ], [ %call.i453.i, %if.end149.i.rmi_f11_initialize.exit.thread_crit_edge ], [ %call.i443.i, %if.end18.i.rmi_f11_initialize.exit.thread_crit_edge ], [ %call12.i, %if.then10.i.rmi_f11_initialize.exit.thread_crit_edge ], [ -12, %entry.rmi_f11_initialize.exit.thread_crit_edge ], [ %call.i.i447.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_y_pos.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_x_pos.i) #5
  br label %cleanup

if.end:                                           ; preds = %do.end281.i, %if.end271.i.if.end_crit_edge
  %dev_controls_mutex.i = getelementptr inbounds %struct.f11_data, ptr %call.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %dev_controls_mutex.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @rmi_f11_initialize.__key) #5
  %driver_data.i486.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %560 = ptrtoint ptr %driver_data.i486.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr %call.i.i, ptr %driver_data.i486.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_y_pos.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_x_pos.i) #5
  %call2 = call i32 @rmi_2d_sensor_configure_input(ptr noundef %fn, ptr noundef %sensor61.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rmi_f11_initialize.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %retval.0.i.ph, %rmi_f11_initialize.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f11_config(ptr nocapture noundef readonly %fn) #0 align 64 {
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
  %report_abs = getelementptr inbounds %struct.f11_data, ptr %1, i32 0, i32 9, i32 19
  %6 = ptrtoint ptr %report_abs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %report_abs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %set_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 3
  %clear_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 2
  %set_irq_bits.sink = select i1 %tobool.not, ptr %clear_irq_bits, ptr %set_irq_bits
  %8 = ptrtoint ptr %set_irq_bits.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_irq_bits.sink, align 4
  %abs_mask5 = getelementptr inbounds %struct.f11_data, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %abs_mask5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %abs_mask5, align 4
  %call6 = tail call i32 %9(ptr noundef %3, ptr noundef %11) #5
  %report_rel = getelementptr inbounds %struct.f11_data, ptr %1, i32 0, i32 9, i32 20
  %12 = ptrtoint ptr %report_rel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %report_rel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  %set_irq_bits13 = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 3
  %clear_irq_bits9 = getelementptr inbounds %struct.rmi_driver, ptr %5, i32 0, i32 2
  %set_irq_bits13.sink = select i1 %tobool7.not, ptr %clear_irq_bits9, ptr %set_irq_bits13
  %14 = ptrtoint ptr %set_irq_bits13.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_irq_bits13.sink, align 4
  %16 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmi_dev, align 4
  %rel_mask15 = getelementptr inbounds %struct.f11_data, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %rel_mask15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rel_mask15, align 4
  %call16 = tail call i32 %15(ptr noundef %17, ptr noundef %19) #5
  %dev_controls = getelementptr inbounds %struct.f11_data, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fn, align 8
  %22 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmi_dev, align 4
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i.i = tail call i32 %29(ptr noundef %25, i16 noundef zeroext %21, ptr noundef %dev_controls, i32 noundef 12) #5
  %30 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f11_attention(i32 noundef %irq, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i57 = getelementptr inbounds %struct.rmi_function, ptr %ctx, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %driver_data.i57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i57, align 4
  %sensor = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9
  %data = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else19, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %attn_size = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 13
  %8 = ptrtoint ptr %attn_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attn_size, align 4
  %size = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %data_pkt = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 11
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
  br label %if.end29

if.else19:                                        ; preds = %entry
  %pkt_size = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 12
  %20 = ptrtoint ptr %pkt_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pkt_size, align 4
  %data_base_addr4 = getelementptr inbounds %struct.rmi_function_descriptor, ptr %ctx, i32 0, i32 3
  %22 = ptrtoint ptr %data_base_addr4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data_base_addr4, align 2
  %data_pkt21 = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 11
  %24 = ptrtoint ptr %data_pkt21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_pkt21, align 4
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
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %if.else19.cleanup_crit_edge, label %if.else19.if.end29_crit_edge

if.else19.if.end29_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.else19.if.end29_crit_edge, %if.then
  %valid_bytes.1 = phi i32 [ %12, %if.then ], [ %21, %if.else19.if.end29_crit_edge ]
  %data.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 11
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %nbr_fingers.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 10
  %34 = ptrtoint ptr %nbr_fingers.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nbr_fingers.i, align 4
  %conv.i = zext i8 %35 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %report_abs.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 19
  %36 = ptrtoint ptr %report_abs.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %report_abs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.else43.i, label %if.then.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_cmp4(i32 %valid_bytes.1, i32 %mul.i)
  %cmp.i = icmp slt i32 %valid_bytes.1, %mul.i
  %div.i = sdiv i32 %valid_bytes.1, 5
  %abs_fingers.0.i = select i1 %cmp.i, i32 %div.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %abs_fingers.0.i)
  %cmp7120.i = icmp sgt i32 %abs_fingers.0.i, 0
  br i1 %cmp7120.i, label %for.body.lr.ph.i, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %objs.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 4
  %abs_pos.i.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 11, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv6122.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv6.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0121.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %38 = lshr i8 %i.0121.i, 2
  %div5.i.i = zext i8 %38 to i32
  %arrayidx.i.i = getelementptr i8, ptr %33, i32 %div5.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  %rem.i.i = shl i8 %i.0121.i, 1
  %mul.i.i = and i8 %rem.i.i, 6
  %shr.i.i = lshr i8 %40, %mul.i.i
  %and.i.i = and i8 %shr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and.i.i)
  %cmp10.i = icmp eq i8 %and.i.i, 3
  br i1 %cmp10.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv6122.i, i32 noundef 3) #8
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %objs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %objs.i, align 4
  %arrayidx.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %42, i32 %conv6122.i
  %43 = ptrtoint ptr %abs_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %abs_pos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %and.i.i)
  %cond.i.i = icmp eq i8 %and.i.i, 1
  %..i.i = zext i1 %cond.i.i to i32
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %..i.i, ptr %arrayidx.i, align 4
  %mul.i108.i = mul nuw nsw i32 %conv6122.i, 5
  %arrayidx.i109.i = getelementptr i8, ptr %44, i32 %mul.i108.i
  %mt_tool.i.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %42, i32 %conv6122.i, i32 1
  %46 = ptrtoint ptr %mt_tool.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %mt_tool.i.i, align 4
  %47 = ptrtoint ptr %arrayidx.i109.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i109.i, align 1
  %conv4.i.i = zext i8 %48 to i16
  %shl.i.i = shl nuw nsw i16 %conv4.i.i, 4
  %arrayidx5.i.i = getelementptr i8, ptr %arrayidx.i109.i, i32 2
  %49 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx5.i.i, align 1
  %51 = and i8 %50, 15
  %and.i110.i = zext i8 %51 to i16
  %or.i.i = or i16 %shl.i.i, %and.i110.i
  %x.i.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %42, i32 %conv6122.i, i32 2
  %52 = ptrtoint ptr %x.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %or.i.i, ptr %x.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %arrayidx.i109.i, i32 1
  %53 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %54 to i16
  %shl10.i.i = shl nuw nsw i16 %conv9.i.i, 4
  %55 = load i8, ptr %arrayidx5.i.i, align 1
  %56 = lshr i8 %55, 4
  %57 = zext i8 %56 to i16
  %or13.i.i = or i16 %shl10.i.i, %57
  %y.i.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %42, i32 %conv6122.i, i32 3
  %58 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or13.i.i, ptr %y.i.i, align 2
  %arrayidx15.i.i = getelementptr i8, ptr %arrayidx.i109.i, i32 4
  %59 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx15.i.i, align 1
  %z.i.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %42, i32 %conv6122.i, i32 4
  %61 = ptrtoint ptr %z.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %z.i.i, align 4
  %arrayidx16.i.i = getelementptr i8, ptr %arrayidx.i109.i, i32 3
  %62 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx16.i.i, align 1
  %64 = and i8 %63, 15
  %wx.i.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %42, i32 %conv6122.i, i32 5
  %65 = ptrtoint ptr %wx.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %wx.i.i, align 1
  %66 = load i8, ptr %arrayidx16.i.i, align 1
  %67 = lshr i8 %66, 4
  %wy.i.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %42, i32 %conv6122.i, i32 6
  %68 = ptrtoint ptr %wy.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %wy.i.i, align 2
  tail call void @rmi_2d_sensor_abs_process(ptr noundef %sensor, ptr noundef %arrayidx.i, i32 noundef %conv6122.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i, %do.end.i
  %inc.i = add i8 %i.0121.i, 1
  %conv6.i = zext i8 %inc.i to i32
  %cmp7.i = icmp sgt i32 %abs_fingers.0.i, %conv6.i
  br i1 %cmp7.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %kernel_tracking.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 3
  %69 = ptrtoint ptr %kernel_tracking.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %kernel_tracking.i, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool18.not.i = icmp eq i8 %70, 0
  br i1 %tobool18.not.i, label %for.end.i.if.end23.i_crit_edge, label %if.then19.i

for.end.i.if.end23.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %input.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 16
  %71 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %input.i, align 4
  %tracking_slots.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 2
  %73 = ptrtoint ptr %tracking_slots.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tracking_slots.i, align 4
  %tracking_pos.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 1
  %75 = ptrtoint ptr %tracking_pos.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tracking_pos.i, align 4
  %77 = ptrtoint ptr %nbr_fingers.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %nbr_fingers.i, align 4
  %conv21.i = zext i8 %78 to i32
  %dmax.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 5
  %79 = ptrtoint ptr %dmax.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dmax.i, align 4
  %call22.i = tail call i32 @input_mt_assign_slots(ptr noundef %72, ptr noundef %74, ptr noundef %76, i32 noundef %conv21.i, i32 noundef %80) #5
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %for.end.i.if.end23.i_crit_edge
  br i1 %cmp7120.i, label %for.body28.lr.ph.i, label %if.end23.i.for.end41.i_crit_edge

if.end23.i.for.end41.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end41.i

for.body28.lr.ph.i:                               ; preds = %if.end23.i
  %objs35.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 4
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.inc39.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %conv25125.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %conv25.i, %for.inc39.i.for.body28.i_crit_edge ]
  %i.1124.i = phi i8 [ 0, %for.body28.lr.ph.i ], [ %inc40.i, %for.inc39.i.for.body28.i_crit_edge ]
  %81 = lshr i8 %i.1124.i, 2
  %div5.i111.i = zext i8 %81 to i32
  %arrayidx.i112.i = getelementptr i8, ptr %33, i32 %div5.i111.i
  %82 = ptrtoint ptr %arrayidx.i112.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i112.i, align 1
  %rem.i113.i = shl i8 %i.1124.i, 1
  %mul.i114.i = and i8 %rem.i113.i, 6
  %shr.i115.i = lshr i8 %83, %mul.i114.i
  %and.i116.i = and i8 %shr.i115.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and.i116.i)
  %cmp31.i = icmp eq i8 %and.i116.i, 3
  br i1 %cmp31.i, label %for.body28.i.for.inc39.i_crit_edge, label %if.end34.i

for.body28.i.for.inc39.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39.i

if.end34.i:                                       ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %objs35.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %objs35.i, align 4
  %arrayidx37.i = getelementptr %struct.rmi_2d_sensor_abs_object, ptr %85, i32 %conv25125.i
  tail call void @rmi_2d_sensor_abs_report(ptr noundef %sensor, ptr noundef %arrayidx37.i, i32 noundef %conv25125.i) #5
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %if.end34.i, %for.body28.i.for.inc39.i_crit_edge
  %inc40.i = add i8 %i.1124.i, 1
  %conv25.i = zext i8 %inc40.i to i32
  %cmp26.i = icmp sgt i32 %abs_fingers.0.i, %conv25.i
  br i1 %cmp26.i, label %for.inc39.i.for.body28.i_crit_edge, label %for.inc39.i.for.end41.i_crit_edge

for.inc39.i.for.end41.i_crit_edge:                ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end41.i

for.inc39.i.for.body28.i_crit_edge:               ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body28.i

for.end41.i:                                      ; preds = %for.inc39.i.for.end41.i_crit_edge, %if.end23.i.for.end41.i_crit_edge
  %input42.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 16
  %86 = ptrtoint ptr %input42.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %input42.i, align 4
  tail call void @input_mt_sync_frame(ptr noundef %87) #5
  br label %cleanup

if.else43.i:                                      ; preds = %if.end29
  %report_rel.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 9, i32 20
  %88 = ptrtoint ptr %report_rel.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %report_rel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool44.not.i = icmp eq i8 %89, 0
  br i1 %tobool44.not.i, label %if.else43.i.cleanup_crit_edge, label %if.then45.i

if.else43.i.cleanup_crit_edge:                    ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45.i:                                      ; preds = %if.else43.i
  %add.i = mul nuw nsw i32 %conv.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %valid_bytes.1)
  %cmp49.i = icmp sgt i32 %add.i, %valid_bytes.1
  %sub.i = sub i32 %valid_bytes.1, %mul.i
  %div52.i = sdiv i32 %sub.i, 2
  %rel_fingers.0.i = select i1 %cmp49.i, i32 %div52.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rel_fingers.0.i)
  %cmp59126.i = icmp sgt i32 %rel_fingers.0.i, 0
  br i1 %cmp59126.i, label %for.body61.lr.ph.i, label %if.then45.i.cleanup_crit_edge

if.then45.i.cleanup_crit_edge:                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body61.lr.ph.i:                               ; preds = %if.then45.i
  %rel_pos.i.i = getelementptr inbounds %struct.f11_data, ptr %5, i32 0, i32 11, i32 2
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.body61.i.for.body61.i_crit_edge, %for.body61.lr.ph.i
  %conv58128.i = phi i32 [ 0, %for.body61.lr.ph.i ], [ %conv58.i, %for.body61.i.for.body61.i_crit_edge ]
  %i.2127.i = phi i8 [ 0, %for.body61.lr.ph.i ], [ %inc63.i, %for.body61.i.for.body61.i_crit_edge ]
  %90 = ptrtoint ptr %rel_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rel_pos.i.i, align 4
  %mul.i118.i = shl nuw nsw i32 %conv58128.i, 1
  %arrayidx.i119.i = getelementptr i8, ptr %91, i32 %mul.i118.i
  %92 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i119.i, align 1
  %add.i.i = or i32 %mul.i118.i, 1
  %arrayidx6.i.i = getelementptr i8, ptr %91, i32 %add.i.i
  %94 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = sext i8 %93 to i32
  %conv8.i.i = sext i8 %95 to i32
  tail call void @rmi_2d_sensor_rel_report(ptr noundef %sensor, i32 noundef %conv7.i.i, i32 noundef %conv8.i.i) #5
  %inc63.i = add i8 %i.2127.i, 1
  %conv58.i = zext i8 %inc63.i to i32
  %cmp59.i = icmp sgt i32 %rel_fingers.0.i, %conv58.i
  br i1 %cmp59.i, label %for.body61.i.for.body61.i_crit_edge, label %for.body61.i.cleanup_crit_edge

for.body61.i.cleanup_crit_edge:                   ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body61.i.for.body61.i_crit_edge:              ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body61.i

cleanup:                                          ; preds = %for.body61.i.cleanup_crit_edge, %if.then45.i.cleanup_crit_edge, %if.else43.i.cleanup_crit_edge, %for.end41.i, %if.else19.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f11_resume(ptr noundef %fn) #0 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.16) #5
  %rezero_wait_ms = getelementptr inbounds %struct.f11_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rezero_wait_ms to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rezero_wait_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %__ms.047 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv, %if.end ]
  %dec = add nsw i32 %__ms.047, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %cond.end27, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cond.end27:                                       ; preds = %while.body
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %5 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmi_dev, align 4
  %command_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %fn, i32 0, i32 1
  %7 = ptrtoint ptr %command_base_addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %command_base_addr, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %9 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %data.addr.i, align 1
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i = call i32 %15(ptr noundef %11, i16 noundef zeroext %8, ptr noundef nonnull %data.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %cond.end27.cleanup_crit_edge, label %do.end

cond.end27.cleanup_crit_edge:                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cond.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_2d_sensor_configure_input(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_2d_sensor_of_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_2d_sensor_abs_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_2d_sensor_abs_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_2d_sensor_rel_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1377, i32 11}
!2 = !{ptr @rmi_f11_handler, !3, !"rmi_f11_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1375, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1078, i32 34}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1134, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rmi_f11_initialize._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rmi_f11_initialize._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1265, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rmi_f11_initialize._entry.7, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @rmi_f11_initialize._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @rmi_f11_initialize.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1267, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 763, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @f11_read_control_regs._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @f11_read_control_regs._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 614, i32 5}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rmi_f11_finger_handler._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rmi_f11_finger_handler._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1340, i32 34}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/rmi4/rmi_f11.c", i32 1349, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rmi_f11_resume._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rmi_f11_resume._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i8 0, i8 2}
