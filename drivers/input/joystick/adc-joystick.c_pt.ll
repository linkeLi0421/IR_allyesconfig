; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/adc-joystick.c_pt.bc'
source_filename = "../drivers/input/joystick/adc-joystick.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.adc_joystick = type { ptr, ptr, ptr, ptr, i32 }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.69, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.69 = type { i8, i8, i8, i8, i8, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.adc_joystick_axis = type { i32, [2 x i32], i32, i32 }

@__initcall__kmod_adc_joystick__210_260_adc_joystick_driver_init6 = internal global ptr @adc_joystick_driver_init, section ".initcall6.init", align 4
@adc_joystick_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adc_joystick_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adc_joystick_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adc_joystick_driver_exit = internal global ptr @adc_joystick_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [71 x i8] c"adc_joystick.description=Input driver for joysticks connected over ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [57 x i8] c"adc_joystick.author=Artur Rojek <contact@artur-rojek.eu>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [54 x i8] c"adc_joystick.file=drivers/input/joystick/adc-joystick\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [25 x i8] c"adc_joystick.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adc-joystick\00", [19 x i8] zeroinitializer }, align 32
@adc_joystick_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adc-joystick\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to get IIO channels\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc_joystick_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/joystick/adc-joystick.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry_ptr = internal global ptr @adc_joystick_probe._entry, section ".printk_index", align 4
@adc_joystick_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported channel storage size\0A\00", [62 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry_ptr.8 = internal global ptr @adc_joystick_probe._entry.6, section ".printk_index", align 4
@adc_joystick_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Channels must have equal storage size\0A\00", [57 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry_ptr.11 = internal global ptr @adc_joystick_probe._entry.9, section ".printk_index", align 4
@adc_joystick_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry_ptr.14 = internal global ptr @adc_joystick_probe._entry.12, section ".printk_index", align 4
@adc_joystick_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry_ptr.17 = internal global ptr @adc_joystick_probe._entry.15, section ".printk_index", align 4
@adc_joystick_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to allocate callback buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry_ptr.20 = internal global ptr @adc_joystick_probe._entry.18, section ".printk_index", align 4
@adc_joystick_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to add action\0A\00", [42 x i8] zeroinitializer }, align 32
@adc_joystick_probe._entry_ptr.23 = internal global ptr @adc_joystick_probe._entry.21, section ".printk_index", align 4
@adc_joystick_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to start callback buffer: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adc_joystick_open\00", [46 x i8] zeroinitializer }, align 32
@adc_joystick_open._entry_ptr = internal global ptr @adc_joystick_open._entry, section ".printk_index", align 4
@adc_joystick_set_axes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to find child nodes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adc_joystick_set_axes\00", [42 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry_ptr = internal global ptr @adc_joystick_set_axes._entry, section ".printk_index", align 4
@adc_joystick_set_axes._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Got %d child nodes for %d channels\0A\00", [60 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry_ptr.30 = internal global ptr @adc_joystick_set_axes._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg invalid or missing\0A\00", [40 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry_ptr.34 = internal global ptr @adc_joystick_set_axes._entry.32, section ".printk_index", align 4
@adc_joystick_set_axes._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No matching axis for reg %d\0A\00", [35 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry_ptr.37 = internal global ptr @adc_joystick_set_axes._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.27, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"linux,code invalid or missing\0A\00", [33 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry_ptr.41 = internal global ptr @adc_joystick_set_axes._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abs-range\00", [22 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"abs-range invalid or missing\0A\00", [34 x i8] zeroinitializer }, align 32
@adc_joystick_set_axes._entry_ptr.45 = internal global ptr @adc_joystick_set_axes._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"abs-fuzz\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"abs-flat\00", [23 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"adc_joystick_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 253, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 255, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"adc_joystick_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 247, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 191, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 199, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 203, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 211, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 228, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 234, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 240, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 90, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 115, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 120, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 130, i32 43 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 132, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 138, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 142, i32 43 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 145, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 149, i32 49 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 152, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 156, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [41 x i8] c"../drivers/input/joystick/adc-joystick.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 157, i32 35 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_adc_joystick_driver_exit, ptr @__initcall__kmod_adc_joystick__210_260_adc_joystick_driver_init6, ptr @adc_joystick_driver_exit, ptr @adc_joystick_open._entry, ptr @adc_joystick_open._entry_ptr, ptr @adc_joystick_probe._entry, ptr @adc_joystick_probe._entry.12, ptr @adc_joystick_probe._entry.15, ptr @adc_joystick_probe._entry.18, ptr @adc_joystick_probe._entry.21, ptr @adc_joystick_probe._entry.6, ptr @adc_joystick_probe._entry.9, ptr @adc_joystick_probe._entry_ptr, ptr @adc_joystick_probe._entry_ptr.11, ptr @adc_joystick_probe._entry_ptr.14, ptr @adc_joystick_probe._entry_ptr.17, ptr @adc_joystick_probe._entry_ptr.20, ptr @adc_joystick_probe._entry_ptr.23, ptr @adc_joystick_probe._entry_ptr.8, ptr @adc_joystick_set_axes._entry, ptr @adc_joystick_set_axes._entry.28, ptr @adc_joystick_set_axes._entry.32, ptr @adc_joystick_set_axes._entry.35, ptr @adc_joystick_set_axes._entry.39, ptr @adc_joystick_set_axes._entry.43, ptr @adc_joystick_set_axes._entry_ptr, ptr @adc_joystick_set_axes._entry_ptr.30, ptr @adc_joystick_set_axes._entry_ptr.34, ptr @adc_joystick_set_axes._entry_ptr.37, ptr @adc_joystick_set_axes._entry_ptr.41, ptr @adc_joystick_set_axes._entry_ptr.45, ptr @adc_joystick_driver, ptr @.str, ptr @adc_joystick_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_set_axes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_set_axes._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_set_axes._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_set_axes._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_set_axes._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_joystick_set_axes._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_joystick_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adc_joystick_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc_joystick_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @adc_joystick_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_joystick_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_channel_get_all(ptr noundef %dev1) #6
  %chans = getelementptr inbounds %struct.adc_joystick, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %chans, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call2, align 4
  %tobool12.not150 = icmp eq ptr %2, null
  br i1 %tobool12.not150, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channel25 = getelementptr inbounds %struct.iio_channel, ptr %call2, i32 0, i32 1
  br label %for.body

if.then5:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %channel = getelementptr %struct.iio_channel, ptr %call2, i32 %i.0151, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %storagebits = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %storagebits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %storagebits, align 2
  %8 = add i8 %7, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %8)
  %9 = icmp ult i8 %8, -16
  br i1 %9, label %do.end21, label %if.end22

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %10 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel25, align 4
  %storagebits27 = getelementptr inbounds %struct.iio_chan_spec, ptr %11, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %storagebits27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %storagebits27, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %13)
  %cmp29.not = icmp eq i8 %7, %13
  br i1 %cmp29.not, label %for.inc, label %do.end34

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end22
  %inc = add i32 %i.0151, 1
  %arrayidx = getelementptr %struct.iio_channel, ptr %call2, i32 %inc
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %num_chans = getelementptr inbounds %struct.adc_joystick, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.0.lcssa, ptr %num_chans, align 4
  %call36 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.end41, label %if.end42

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end42:                                         ; preds = %for.end
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call36, ptr %call.i, align 4
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %20 = ptrtoint ptr %call36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call36, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call36, i32 0, i32 3
  %21 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 25, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call36, i32 0, i32 31
  %22 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @adc_joystick_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call36, i32 0, i32 32
  %23 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @adc_joystick_close, ptr %close, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #6
  %24 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %i.i, align 4, !annotation !97
  %call.i126 = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  br label %adc_joystick_set_axes.exit.thread

if.end.i:                                         ; preds = %if.end42
  %25 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i126, i32 %26)
  %cmp.not.i = icmp eq i32 %call.i126, %26
  br i1 %cmp.not.i, label %if.end6.i, label %do.end4.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call.i126, i32 noundef %26) #9
  br label %adc_joystick_set_axes.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i126, i32 20) #6
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %if.end6.i.adc_joystick_set_axes.exit.thread_crit_edge, label %devm_kmalloc_array.exit.i, !prof !98

if.end6.i.adc_joystick_set_axes.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_joystick_set_axes.exit.thread

devm_kmalloc_array.exit.i:                        ; preds = %if.end6.i
  %29 = extractvalue { i32, i1 } %27, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %29, i32 noundef 3264) #6
  %tobool8.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not.i, label %devm_kmalloc_array.exit.i.adc_joystick_set_axes.exit.thread_crit_edge, label %if.end10.i

devm_kmalloc_array.exit.i.adc_joystick_set_axes.exit.thread_crit_edge: ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_joystick_set_axes.exit.thread

if.end10.i:                                       ; preds = %devm_kmalloc_array.exit.i
  %call11.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #6
  %tobool12.not121.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not121.i, label %if.end10.i.if.end48_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

if.end10.i.if.end48_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %child.0122.i = phi ptr [ %call60.i, %if.end40.i.for.body.i_crit_edge ], [ %call11.i, %if.end10.i.for.body.i_crit_edge ]
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0122.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i, label %if.end19.i, label %do.end18.i

do.end18.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #9
  br label %err_fwnode_put.i

if.end19.i:                                       ; preds = %for.body.i
  %30 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %call.i126)
  %cmp20.not.i = icmp slt i32 %31, %call.i126
  br i1 %cmp20.not.i, label %if.end25.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %31) #9
  br label %err_fwnode_put.i

if.end25.i:                                       ; preds = %if.end19.i
  %arrayidx.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %31
  %call.i105.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0122.i, ptr noundef nonnull @.str.38, ptr noundef %arrayidx.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool27.not.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool27.not.i, label %if.end32.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #9
  br label %err_fwnode_put.i

if.end32.i:                                       ; preds = %if.end25.i
  %32 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i.i, align 4
  %range.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %33, i32 1
  %call34.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0122.i, ptr noundef nonnull @.str.42, ptr noundef %range.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end40.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44) #9
  br label %err_fwnode_put.i

if.end40.i:                                       ; preds = %if.end32.i
  %34 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i.i, align 4
  %fuzz.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %35, i32 2
  %call.i106.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0122.i, ptr noundef nonnull @.str.46, ptr noundef %fuzz.i, i32 noundef 1) #6
  %36 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i.i, align 4
  %flat.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %37, i32 3
  %call.i107.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0122.i, ptr noundef nonnull @.str.47, ptr noundef %flat.i, i32 noundef 1) #6
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %40 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i.i, align 4
  %arrayidx45.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %41
  %42 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx45.i, align 4
  %range48.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %41, i32 1
  %44 = ptrtoint ptr %range48.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %range48.i, align 4
  %arrayidx52.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %41, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx52.i, align 4
  %fuzz54.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %41, i32 2
  %48 = ptrtoint ptr %fuzz54.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fuzz54.i, align 4
  %flat56.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %41, i32 3
  %50 = ptrtoint ptr %flat56.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flat56.i, align 4
  call void @input_set_abs_params(ptr noundef %39, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51) #6
  %52 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i.i, align 4
  %arrayidx58.i = getelementptr %struct.adc_joystick_axis, ptr %call5.i.i, i32 %53
  %54 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx58.i, align 4
  call void @input_set_capability(ptr noundef %39, i32 noundef 3, i32 noundef %55) #6
  %call60.i = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %child.0122.i) #6
  %tobool12.not.i = icmp eq ptr %call60.i, null
  br i1 %tobool12.not.i, label %if.end40.i.if.end48_crit_edge, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end40.i.if.end48_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

err_fwnode_put.i:                                 ; preds = %do.end39.i, %do.end31.i, %if.then21.i, %do.end18.i
  %error.0.i = phi i32 [ %call.i.i, %do.end18.i ], [ -22, %if.then21.i ], [ %call.i105.i, %do.end31.i ], [ %call34.i, %do.end39.i ]
  call void @fwnode_handle_put(ptr noundef nonnull %child.0122.i) #6
  br label %adc_joystick_set_axes.exit.thread

adc_joystick_set_axes.exit.thread:                ; preds = %err_fwnode_put.i, %devm_kmalloc_array.exit.i.adc_joystick_set_axes.exit.thread_crit_edge, %if.end6.i.adc_joystick_set_axes.exit.thread_crit_edge, %do.end4.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end6.i.adc_joystick_set_axes.exit.thread_crit_edge ], [ -12, %devm_kmalloc_array.exit.i.adc_joystick_set_axes.exit.thread_crit_edge ], [ -22, %do.end.i ], [ %error.0.i, %err_fwnode_put.i ], [ -22, %do.end4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #6
  br label %cleanup

if.end48:                                         ; preds = %if.end40.i.if.end48_crit_edge, %if.end10.i.if.end48_crit_edge
  %axes61.i = getelementptr inbounds %struct.adc_joystick, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %axes61.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %axes61.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call36, i32 0, i32 40, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call49 = call i32 @input_register_device(ptr noundef nonnull %call36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %call56 = call ptr @iio_channel_get_all_cb(ptr noundef %dev1, ptr noundef nonnull @adc_joystick_handle, ptr noundef nonnull %call.i) #6
  %buffer = getelementptr inbounds %struct.adc_joystick, ptr %call.i, i32 0, i32 1
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call56, ptr %buffer, align 4
  %cmp.i127 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %cleanup

if.end65:                                         ; preds = %if.end55
  %call.i128 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @adc_joystick_cleanup, ptr noundef %call56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.end65.cleanup_crit_edge, label %do.end72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void @iio_channel_release_all_cb(ptr noundef %call56) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.end65.cleanup_crit_edge, %do.end62, %do.end54, %adc_joystick_set_axes.exit.thread, %do.end41, %do.end34, %do.end21, %do.end, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end21 ], [ -22, %do.end34 ], [ %call49, %do.end54 ], [ %61, %do.end62 ], [ %call.i128, %do.end72 ], [ -12, %do.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %3, %do.end ], [ -517, %if.then5.cleanup_crit_edge ], [ %retval.0.i.ph, %adc_joystick_set_axes.exit.thread ], [ 0, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_joystick_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %buffer = getelementptr inbounds %struct.adc_joystick, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %call2 = tail call i32 @iio_channel_start_all_cb(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adc_joystick_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %buffer = getelementptr inbounds %struct.adc_joystick, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_joystick_handle(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chans = getelementptr inbounds %struct.adc_joystick, ptr %private, i32 0, i32 3
  %0 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chans, align 4
  %channel = getelementptr inbounds %struct.iio_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %storagebits = getelementptr inbounds %struct.iio_chan_spec, ptr %3, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %storagebits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %storagebits, align 2
  %6 = lshr i8 %5, 3
  %num_chans = getelementptr inbounds %struct.adc_joystick, ptr %private, i32 0, i32 4
  %7 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp87 = icmp sgt i32 %8, 0
  br i1 %cmp87, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %9 = zext i8 %6 to i32
  %axes = getelementptr inbounds %struct.adc_joystick, ptr %private, i32 0, i32 2
  %.off = add nsw i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %for.body.preheader, label %for.body.lr.ph.cleanup_crit_edge

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cond = icmp eq i8 %6, 1
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.body.preheader
  %i.088 = phi i32 [ %inc, %if.end50.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %10 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chans, align 4
  %channel4 = getelementptr %struct.iio_channel, ptr %11, i32 %i.088, i32 1
  %12 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel4, align 4
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_index, align 4
  %scan_type8 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 5
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %realbits, align 1
  %conv14 = zext i8 %17 to i32
  %18 = ptrtoint ptr %scan_type8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scan_type8, align 4
  %conv.i86 = zext i8 %19 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i86
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not.i = icmp eq i8 %22, 0
  %sub.i = add i8 %19, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %19, i8 %sub.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %spec.select.i)
  %cmp21 = icmp eq i8 %spec.select.i, 115
  br i1 %cond, label %sw.bb, label %sw.bb25

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr i8, ptr %data, i32 %15
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %24 to i32
  br label %sw.epilog

sw.bb25:                                          ; preds = %for.body
  %endianness9 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 5, i32 5
  %25 = ptrtoint ptr %endianness9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %endianness9, align 4
  %add.ptr = getelementptr i16, ptr %data, i32 %15
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.else35 [
    i32 1, label %if.then
    i32 2, label %if.then32
  ]

if.then:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr, align 1
  %conv29 = zext i16 %29 to i32
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %add.ptr, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #6
  %conv34 = zext i16 %32 to i32
  br label %sw.epilog

if.else35:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr, align 2
  %conv36 = zext i16 %34 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else35, %if.then32, %if.then, %sw.bb
  %val.0 = phi i32 [ %conv29, %if.then ], [ %conv34, %if.then32 ], [ %conv36, %if.else35 ], [ %conv24, %sw.bb ]
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %shift, align 1
  %conv42 = zext i8 %36 to i32
  %shr43 = lshr i32 %val.0, %conv42
  %conv.i = sub nsw i32 32, %conv14
  br i1 %cmp21, label %if.then44, label %if.else46

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i = and i32 %conv.i, 255
  %shl.i = shl i32 %shr43, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  br label %if.end50

if.else46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %shr48 = lshr i32 -1, %conv.i
  %and49 = and i32 %shr43, %shr48
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.then44
  %val.1 = phi i32 [ %shr.i, %if.then44 ], [ %and49, %if.else46 ]
  %37 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private, align 4
  %39 = ptrtoint ptr %axes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %axes, align 4
  %arrayidx51 = getelementptr %struct.adc_joystick_axis, ptr %40, i32 %i.088
  %41 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx51, align 4
  tail call void @input_event(ptr noundef %38, i32 noundef 3, i32 noundef %42, i32 noundef %val.1) #6
  %inc = add nuw nsw i32 %i.088, 1
  %43 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_chans, align 4
  %cmp = icmp slt i32 %inc, %44
  br i1 %cmp, label %if.end50.for.body_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end50.for.end_crit_edge, %entry.for.end_crit_edge
  %45 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private, align 4
  tail call void @input_event(ptr noundef %46, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.lr.ph.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %for.body.lr.ph.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adc_joystick_cleanup(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_channel_release_all_cb(ptr noundef %data) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_start_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_stop_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_adc_joystick__210_260_adc_joystick_driver_init6, !1, !"__initcall__kmod_adc_joystick__210_260_adc_joystick_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/adc-joystick.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_adc_joystick_driver_exit, !1, !"__exitcall_adc_joystick_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description211, !4, !"__UNIQUE_ID_description211", i1 false, i1 false}
!4 = !{!"../drivers/input/joystick/adc-joystick.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_author212, !6, !"__UNIQUE_ID_author212", i1 false, i1 false}
!6 = !{!"../drivers/input/joystick/adc-joystick.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_file213, !8, !"__UNIQUE_ID_file213", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/adc-joystick.c", i32 264, i32 1}
!9 = !{ptr @__UNIQUE_ID_license214, !8, !"__UNIQUE_ID_license214", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/adc-joystick.c", i32 255, i32 11}
!12 = !{ptr @adc_joystick_driver, !13, !"adc_joystick_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/adc-joystick.c", i32 253, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/joystick/adc-joystick.c", i32 191, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adc_joystick_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adc_joystick_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/adc-joystick.c", i32 199, i32 4}
!24 = !{ptr @adc_joystick_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @adc_joystick_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/joystick/adc-joystick.c", i32 203, i32 4}
!28 = !{ptr @adc_joystick_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @adc_joystick_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/joystick/adc-joystick.c", i32 211, i32 3}
!32 = !{ptr @adc_joystick_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @adc_joystick_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/joystick/adc-joystick.c", i32 228, i32 3}
!36 = !{ptr @adc_joystick_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @adc_joystick_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/joystick/adc-joystick.c", i32 234, i32 3}
!40 = !{ptr @adc_joystick_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @adc_joystick_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/adc-joystick.c", i32 240, i32 3}
!44 = !{ptr @adc_joystick_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @adc_joystick_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/joystick/adc-joystick.c", i32 90, i32 3}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @adc_joystick_open._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @adc_joystick_open._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/adc-joystick.c", i32 115, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adc_joystick_set_axes._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @adc_joystick_set_axes._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/joystick/adc-joystick.c", i32 120, i32 3}
!58 = !{ptr @adc_joystick_set_axes._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @adc_joystick_set_axes._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/joystick/adc-joystick.c", i32 130, i32 43}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/joystick/adc-joystick.c", i32 132, i32 4}
!64 = !{ptr @adc_joystick_set_axes._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @adc_joystick_set_axes._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/joystick/adc-joystick.c", i32 138, i32 4}
!68 = !{ptr @adc_joystick_set_axes._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @adc_joystick_set_axes._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/joystick/adc-joystick.c", i32 142, i32 43}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/joystick/adc-joystick.c", i32 145, i32 4}
!74 = !{ptr @adc_joystick_set_axes._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @adc_joystick_set_axes._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/joystick/adc-joystick.c", i32 149, i32 49}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/joystick/adc-joystick.c", i32 152, i32 4}
!80 = !{ptr @adc_joystick_set_axes._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @adc_joystick_set_axes._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/joystick/adc-joystick.c", i32 156, i32 35}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/joystick/adc-joystick.c", i32 157, i32 35}
!86 = !{ptr @adc_joystick_of_match, !87, !"adc_joystick_of_match", i1 false, i1 false}
!87 = !{!"../drivers/input/joystick/adc-joystick.c", i32 247, i32 34}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{!"branch_weights", i32 1, i32 2000}
