; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/resistive-adc-touch.c_pt.bc'
source_filename = "../drivers/input/touchscreen/resistive-adc-touch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.grts_state = type { i32, i32, i8, ptr, ptr, ptr, %struct.touchscreen_properties, [5 x i8] }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_resistive_adc_touch__211_303_grts_driver_init6 = internal global ptr @grts_driver_init, section ".initcall6.init", align 4
@grts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @grts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @grts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_grts_driver_exit = internal global ptr @grts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author212 = internal constant [71 x i8] c"resistive_adc_touch.author=Eugen Hristev <eugen.hristev@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [67 x i8] c"resistive_adc_touch.description=Generic ADC Resistive Touch Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [71 x i8] c"resistive_adc_touch.file=drivers/input/touchscreen/resistive-adc-touch\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [35 x i8] c"resistive_adc_touch.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resistive-adc-touch\00", [44 x i8] zeroinitializer }, align 32
@grts_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"resistive-adc-touch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@grts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get iio channels.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"grts_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/input/touchscreen/resistive-adc-touch.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@grts_probe._entry_ptr = internal global ptr @grts_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"io-channel-names\00", [47 x i8] zeroinitializer }, align 32
@grts_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to parse properties\0A\00", [36 x i8] zeroinitializer }, align 32
@grts_probe._entry_ptr.9 = internal global ptr @grts_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"touchscreen-min-pressure\00", [39 x i8] zeroinitializer }, align 32
@grts_probe.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resistive_adc_touch\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can't get touchscreen-min-pressure property.\0A\00", [50 x i8] zeroinitializer }, align 32
@grts_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate input device.\0A\00", [62 x i8] zeroinitializer }, align 32
@grts_probe._entry_ptr.15 = internal global ptr @grts_probe._entry.13, section ".printk_index", align 4
@grts_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device.\00", [63 x i8] zeroinitializer }, align 32
@grts_probe._entry_ptr.18 = internal global ptr @grts_probe._entry.16, section ".printk_index", align 4
@grts_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate callback buffer.\0A\00", [59 x i8] zeroinitializer }, align 32
@grts_probe._entry_ptr.21 = internal global ptr @grts_probe._entry.19, section ".printk_index", align 4
@grts_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add disable action.\0A\00", [33 x i8] zeroinitializer }, align 32
@grts_probe._entry_ptr.24 = internal global ptr @grts_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pressure\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"z1\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"z2\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"touchscreen-x-plate-ohms\00", [39 x i8] zeroinitializer }, align 32
@grts_get_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"can't get touchscreen-x-plate-ohms property\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"grts_get_properties\00", [44 x i8] zeroinitializer }, align 32
@grts_get_properties._entry_ptr = internal global ptr @grts_get_properties._entry, section ".printk_index", align 4
@grts_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to start callback buffer.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grts_open\00", [22 x i8] zeroinitializer }, align 32
@grts_open._entry_ptr = internal global ptr @grts_open._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"grts_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 295, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 298, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"grts_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 285, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 216, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 220, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 225, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 231, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 234, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 241, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 266, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 272, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 278, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 157, i32 47 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 161, i32 47 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 166, i32 54 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 176, i32 48 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 184, i32 48 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 189, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 192, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [51 x i8] c"../drivers/input/touchscreen/resistive-adc-touch.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 116, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_grts_driver_exit, ptr @__initcall__kmod_resistive_adc_touch__211_303_grts_driver_init6, ptr @grts_driver_exit, ptr @grts_get_properties._entry, ptr @grts_get_properties._entry_ptr, ptr @grts_open._entry, ptr @grts_open._entry_ptr, ptr @grts_probe._entry, ptr @grts_probe._entry.13, ptr @grts_probe._entry.16, ptr @grts_probe._entry.19, ptr @grts_probe._entry.22, ptr @grts_probe._entry.7, ptr @grts_probe._entry_ptr, ptr @grts_probe._entry_ptr.15, ptr @grts_probe._entry_ptr.18, ptr @grts_probe._entry_ptr.21, ptr @grts_probe._entry_ptr.24, ptr @grts_probe._entry_ptr.9, ptr @grts_driver, ptr @.str, ptr @grts_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_get_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grts_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @grts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @grts_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @grts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @grts_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_channel_get_all(ptr noundef %dev1) #4
  %iio_chans = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %iio_chans to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %iio_chans, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.6) #4
  br i1 %call11, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call.i.i = tail call i32 @device_property_match_string(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end13.do.end19_crit_edge, label %if.else.i.i

if.end13.do.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

if.else.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp2.i.i = icmp ugt i32 %call.i.i, 3
  br i1 %cmp2.i.i, label %if.else.i.i.do.end19_crit_edge, label %if.end.i

if.else.i.i.do.end19_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

if.end.i:                                         ; preds = %if.else.i.i
  %conv.i.i = trunc i32 %call.i.i to i8
  %arrayidx.i.i = getelementptr %struct.grts_state, ptr %call.i, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %call.i58.i = tail call i32 @device_property_match_string(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp.i59.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp.i59.i, label %if.end.i.do.end19_crit_edge, label %if.else.i62.i

if.end.i.do.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

if.else.i62.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i58.i)
  %cmp2.i61.i = icmp ugt i32 %call.i58.i, 3
  br i1 %cmp2.i61.i, label %if.else.i62.i.do.end19_crit_edge, label %if.end4.i

if.else.i62.i.do.end19_crit_edge:                 ; preds = %if.else.i62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

if.end4.i:                                        ; preds = %if.else.i62.i
  %conv.i63.i = trunc i32 %call.i58.i to i8
  %arrayidx.i64.i = getelementptr %struct.grts_state, ptr %call.i, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i63.i, ptr %arrayidx.i64.i, align 1
  %call.i68.i = tail call i32 @device_property_match_string(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %cmp.i69.i = icmp slt i32 %call.i68.i, 0
  br i1 %cmp.i69.i, label %if.end8.thread.i, label %if.else.i72.i

if.end8.thread.i:                                 ; preds = %if.end4.i
  %arrayidx.i74113.i = getelementptr %struct.grts_state, ptr %call.i, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %arrayidx.i74113.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %arrayidx.i74113.i, align 1
  %call.i78.i = tail call i32 @device_property_match_string(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp.i79.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp.i79.i, label %if.end15.thread.i, label %if.else.i82.i

if.else.i72.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i68.i)
  %cmp2.i71.i = icmp ugt i32 %call.i68.i, 3
  br i1 %cmp2.i71.i, label %if.else.i72.i.do.end19_crit_edge, label %if.end8.i

if.else.i72.i.do.end19_crit_edge:                 ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

if.end8.i:                                        ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i73.i = trunc i32 %call.i68.i to i8
  %arrayidx.i74.i = getelementptr %struct.grts_state, ptr %call.i, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i73.i, ptr %arrayidx.i74.i, align 1
  %pressure.i = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pressure.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pressure.i, align 4
  br label %if.end20

if.end15.thread.i:                                ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i85117.i = getelementptr %struct.grts_state, ptr %call.i, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %arrayidx.i85117.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %arrayidx.i85117.i, align 1
  br label %if.end20

if.else.i82.i:                                    ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i78.i)
  %cmp2.i81.i = icmp ugt i32 %call.i78.i, 3
  br i1 %cmp2.i81.i, label %if.else.i82.i.do.end19_crit_edge, label %if.end15.i

if.else.i82.i.do.end19_crit_edge:                 ; preds = %if.else.i82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

if.end15.i:                                       ; preds = %if.else.i82.i
  %conv.i84.i = trunc i32 %call.i78.i to i8
  %arrayidx.i85.i = getelementptr %struct.grts_state, ptr %call.i, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i84.i, ptr %arrayidx.i85.i, align 1
  %call.i89.i = tail call i32 @device_property_match_string(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %cmp.i90.i = icmp slt i32 %call.i89.i, 0
  br i1 %cmp.i90.i, label %if.end15.i.if.end26.i_crit_edge, label %if.else.i93.i

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

if.else.i93.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i89.i)
  %cmp2.i92.i = icmp ugt i32 %call.i89.i, 3
  br i1 %cmp2.i92.i, label %if.else.i93.i.do.end19_crit_edge, label %if.else.i93.i.if.end26.i_crit_edge

if.else.i93.i.if.end26.i_crit_edge:               ; preds = %if.else.i93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

if.else.i93.i.do.end19_crit_edge:                 ; preds = %if.else.i93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end19

if.end26.i:                                       ; preds = %if.else.i93.i.if.end26.i_crit_edge, %if.end15.i.if.end26.i_crit_edge
  %idx.0.i94.i = phi i32 [ %call.i89.i, %if.else.i93.i.if.end26.i_crit_edge ], [ 4, %if.end15.i.if.end26.i_crit_edge ]
  %conv.i95.i = trunc i32 %idx.0.i94.i to i8
  %arrayidx.i96.i = getelementptr %struct.grts_state, ptr %call.i, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i95.i, ptr %arrayidx.i96.i, align 1
  %call.i100.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.i)
  %tobool28.not.i = icmp eq i32 %call.i100.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %do.end.i

do.end.i:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #7
  br label %do.end19

if.end30.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  %pressure31.i = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pressure31.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %pressure31.i, align 4
  br label %if.end20

do.end19:                                         ; preds = %do.end.i, %if.else.i93.i.do.end19_crit_edge, %if.else.i82.i.do.end19_crit_edge, %if.else.i72.i.do.end19_crit_edge, %if.else.i62.i.do.end19_crit_edge, %if.end.i.do.end19_crit_edge, %if.else.i.i.do.end19_crit_edge, %if.end13.do.end19_crit_edge
  %retval.0.i130.ph = phi i32 [ -75, %if.else.i62.i.do.end19_crit_edge ], [ %call.i58.i, %if.end.i.do.end19_crit_edge ], [ -75, %if.else.i.i.do.end19_crit_edge ], [ %call.i.i, %if.end13.do.end19_crit_edge ], [ -75, %if.else.i93.i.do.end19_crit_edge ], [ -75, %if.else.i82.i.do.end19_crit_edge ], [ -75, %if.else.i72.i.do.end19_crit_edge ], [ %call.i100.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end30.i, %if.end15.thread.i, %if.end8.i
  %pressure = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pressure, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  br i1 %tobool21.not, label %if.end20.if.end37_crit_edge, label %if.then22

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then22:                                        ; preds = %if.end20
  %pressure_min = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 1
  %call.i131 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %pressure_min, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool24.not = icmp eq i32 %call.i131, 0
  br i1 %tobool24.not, label %if.then22.if.end37_crit_edge, label %do.body26

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.body26:                                        ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grts_probe.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@grts_probe, %if.then31)) #4
          to label %do.end34 [label %if.then31], !srcloc !84

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @grts_probe.__UNIQUE_ID_ddebug210, ptr noundef %dev1, ptr noundef nonnull @.str.12) #4
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body26
  %13 = ptrtoint ptr %pressure_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50000, ptr %pressure_min, align 4
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.then22.if.end37_crit_edge, %if.end20.if.end37_crit_edge
  %call38 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #4
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end43, label %if.end44

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %14 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str, ptr %call38, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 25, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 31
  %16 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @grts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 32
  %17 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @grts_close, ptr %close, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call38, i32 noundef 0, i32 noundef 0, i32 noundef 4094, i32 noundef 0, i32 noundef 0) #4
  tail call void @input_set_abs_params(ptr noundef nonnull %call38, i32 noundef 1, i32 noundef 0, i32 noundef 4094, i32 noundef 0, i32 noundef 0) #4
  %18 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pressure, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool46.not = icmp eq i8 %19, 0
  br i1 %tobool46.not, label %if.end44.if.end49_crit_edge, label %if.then47

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %pressure_min48 = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %pressure_min48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pressure_min48, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call38, i32 noundef 24, i32 noundef %21, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end44.if.end49_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call38, i32 noundef 1, i32 noundef 330) #4
  %prop = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 6
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call38, i1 noundef zeroext false, ptr noundef %prop) #4
  %input50 = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %input50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call38, ptr %input50, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 40, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call51 = tail call i32 @input_register_device(ptr noundef nonnull %call38) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %call58 = tail call ptr @iio_channel_get_all_cb(ptr noundef %dev1, ptr noundef nonnull @grts_cb, ptr noundef nonnull %call.i) #4
  %iio_cb = getelementptr inbounds %struct.grts_state, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %iio_cb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call58, ptr %iio_cb, align 4
  %cmp.i132 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #7
  %25 = ptrtoint ptr %iio_cb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iio_cb, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end57
  %call.i133 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @grts_disable, ptr noundef %call58) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i, label %if.end67.cleanup_crit_edge, label %do.end74

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iio_channel_release_all_cb(ptr noundef %call58) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.end67.cleanup_crit_edge, %do.end64, %do.end56, %do.end43, %do.end19, %if.end10.cleanup_crit_edge, %do.end, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i130.ph, %do.end19 ], [ %call51, %do.end56 ], [ %27, %do.end64 ], [ %call.i133, %do.end74 ], [ -12, %do.end43 ], [ -12, %entry.cleanup_crit_edge ], [ %1, %do.end ], [ -517, %if.then5.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iio_cb = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iio_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iio_cb, align 4
  %call1 = tail call i32 @iio_channel_start_all_cb(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %parent = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iio_cb = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iio_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iio_cb, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grts_cb(ptr nocapture noundef readonly %data, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_map = getelementptr inbounds %struct.grts_state, ptr %private, i32 0, i32 7
  %0 = ptrtoint ptr %ch_map to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ch_map, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx1 = getelementptr i16, ptr %data, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv = zext i16 %3 to i32
  %arrayidx3 = getelementptr %struct.grts_state, ptr %private, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %idxprom4 = zext i8 %5 to i32
  %arrayidx5 = getelementptr i16, ptr %data, i32 %idxprom4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %arrayidx8 = getelementptr %struct.grts_state, ptr %private, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp = icmp ult i8 %9, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv9 = zext i8 %9 to i32
  %arrayidx14 = getelementptr i16, ptr %data, i32 %conv9
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %11 to i32
  br label %if.end51

if.else:                                          ; preds = %entry
  %arrayidx17 = getelementptr %struct.grts_state, ptr %private, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp19 = icmp ult i8 %13, 4
  br i1 %cmp19, label %if.then21, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then21:                                        ; preds = %if.else
  %conv18 = zext i8 %13 to i32
  %arrayidx25 = getelementptr i16, ptr %data, i32 %conv18
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp ne i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool32 = icmp ne i16 %15, 0
  %spec.select = select i1 %tobool.not, i1 %tobool32, i1 false
  br i1 %spec.select, label %if.then35, label %if.then21.if.end51_crit_edge, !prof !85

if.then21.if.end51_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then35:                                        ; preds = %if.then21
  %arrayidx28 = getelementptr %struct.grts_state, ptr %private, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 4
  %idxprom29 = zext i8 %17 to i32
  %arrayidx30 = getelementptr i16, ptr %data, i32 %idxprom29
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %19 to i32
  %conv26 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv31, %conv26
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private, align 4
  %mul = mul i32 %sub, %21
  %add = add i32 %mul, 8
  %div36111 = lshr i32 %add, 4
  %mul37 = mul i32 %div36111, %conv
  %div38 = udiv i32 %mul37, %conv26
  %add43 = add i32 %div38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16776960, i32 %add43)
  %cmp45 = icmp ult i32 %add43, 16776960
  br i1 %cmp45, label %if.then47, label %if.then35.lor.lhs.false_crit_edge

if.then35.lor.lhs.false_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.then47:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %div44112 = lshr i32 %add43, 8
  %sub48 = sub nuw nsw i32 65535, %div44112
  br label %lor.lhs.false

if.end51:                                         ; preds = %if.then21.if.end51_crit_edge, %if.else.if.end51_crit_edge, %if.then
  %press.1 = phi i32 [ %conv15, %if.then ], [ 0, %if.else.if.end51_crit_edge ], [ 0, %if.then21.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool52.not = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool53.not = icmp eq i16 %7, 0
  %or.cond = select i1 %tobool52.not, i1 %tobool53.not, i1 false
  br i1 %or.cond, label %if.end51.if.then59_crit_edge, label %if.end51.lor.lhs.false_crit_edge

if.end51.lor.lhs.false_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.end51.if.then59_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59

lor.lhs.false:                                    ; preds = %if.end51.lor.lhs.false_crit_edge, %if.then47, %if.then35.lor.lhs.false_crit_edge
  %press.1117 = phi i32 [ %press.1, %if.end51.lor.lhs.false_crit_edge ], [ 0, %if.then35.lor.lhs.false_crit_edge ], [ %sub48, %if.then47 ]
  %pressure = getelementptr inbounds %struct.grts_state, ptr %private, i32 0, i32 2
  %22 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pressure, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool54.not = icmp eq i8 %23, 0
  br i1 %tobool54.not, label %lor.lhs.false.if.end61_crit_edge, label %land.lhs.true56

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

land.lhs.true56:                                  ; preds = %lor.lhs.false
  %pressure_min = getelementptr inbounds %struct.grts_state, ptr %private, i32 0, i32 1
  %24 = ptrtoint ptr %pressure_min to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pressure_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %press.1117, i32 %25)
  %cmp57 = icmp ult i32 %press.1117, %25
  br i1 %cmp57, label %land.lhs.true56.if.then59_crit_edge, label %land.lhs.true56.if.end61_crit_edge

land.lhs.true56.if.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

land.lhs.true56.if.then59_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59

if.then59:                                        ; preds = %land.lhs.true56.if.then59_crit_edge, %if.end51.if.then59_crit_edge
  %input = getelementptr inbounds %struct.grts_state, ptr %private, i32 0, i32 5
  br label %cleanup

if.end61:                                         ; preds = %land.lhs.true56.if.end61_crit_edge, %lor.lhs.false.if.end61_crit_edge
  %input62 = getelementptr inbounds %struct.grts_state, ptr %private, i32 0, i32 5
  %26 = ptrtoint ptr %input62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input62, align 4
  %prop = getelementptr inbounds %struct.grts_state, ptr %private, i32 0, i32 6
  tail call void @touchscreen_report_pos(ptr noundef %27, ptr noundef %prop, i32 noundef %conv, i32 noundef %conv6, i1 noundef zeroext false) #4
  %28 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pressure, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool64.not = icmp eq i8 %29, 0
  br i1 %tobool64.not, label %if.end61.cleanup_crit_edge, label %if.then65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %input62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input62, align 4
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 24, i32 noundef %press.1117) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end61.cleanup_crit_edge, %if.then59
  %input62.sink120 = phi ptr [ %input, %if.then59 ], [ %input62, %if.then65 ], [ %input62, %if.end61.cleanup_crit_edge ]
  %.sink119 = phi i32 [ 0, %if.then59 ], [ 1, %if.then65 ], [ 1, %if.end61.cleanup_crit_edge ]
  %32 = ptrtoint ptr %input62.sink120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input62.sink120, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 330, i32 noundef %.sink119) #4
  %34 = ptrtoint ptr %input62.sink120 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input62.sink120, align 4
  tail call void @input_event(ptr noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grts_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_channel_release_all_cb(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_start_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_stop_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_resistive_adc_touch__211_303_grts_driver_init6, !1, !"__initcall__kmod_resistive_adc_touch__211_303_grts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_grts_driver_exit, !1, !"__exitcall_grts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author212, !4, !"__UNIQUE_ID_author212", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 305, i32 1}
!5 = !{ptr @__UNIQUE_ID_description213, !6, !"__UNIQUE_ID_description213", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 306, i32 1}
!7 = !{ptr @__UNIQUE_ID_file214, !8, !"__UNIQUE_ID_file214", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 307, i32 1}
!9 = !{ptr @__UNIQUE_ID_license215, !8, !"__UNIQUE_ID_license215", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 298, i32 11}
!12 = !{ptr @grts_driver, !13, !"grts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 295, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 216, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @grts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @grts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 220, i32 36}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 225, i32 3}
!26 = !{ptr @grts_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @grts_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 231, i32 8}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 234, i32 4}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @grts_probe.__UNIQUE_ID_ddebug210, !31, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 241, i32 3}
!36 = !{ptr @grts_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @grts_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 266, i32 3}
!40 = !{ptr @grts_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @grts_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 272, i32 3}
!44 = !{ptr @grts_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @grts_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 278, i32 3}
!48 = !{ptr @grts_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @grts_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 157, i32 47}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 161, i32 47}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 166, i32 54}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 176, i32 48}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 184, i32 48}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 189, i32 7}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 192, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @grts_get_properties._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @grts_get_properties._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 116, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @grts_open._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @grts_open._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @grts_of_match, !73, !"grts_of_match", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/resistive-adc-touch.c", i32 285, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{i64 2149038695, i64 2149038700, i64 2149038713, i64 2149038757, i64 2149038791, i64 2149038812}
!85 = !{!"branch_weights", i32 2000, i32 1}
