; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/tps6507x-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/tps6507x-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tps6507x_board = type { ptr, ptr }
%struct.tps6507x_ts = type { ptr, ptr, ptr, [32 x i8], %struct.ts_event, i16, i8 }
%struct.ts_event = type { i16, i16, i16 }
%struct.touchscreen_init_data = type { i32, i16, i16, i16, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.tps6507x_dev = type { ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tps6507x_ts__227_289_tps6507x_ts_driver_init6 = internal global ptr @tps6507x_ts_driver_init, section ".initcall6.init", align 4
@tps6507x_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps6507x_ts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps6507x_ts_driver_exit = internal global ptr @tps6507x_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [60 x i8] c"tps6507x_ts.author=Todd Fischer <todd.fischer@ridgerun.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [54 x i8] c"tps6507x_ts.description=TPS6507x - TouchScreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [55 x i8] c"tps6507x_ts.file=drivers/input/touchscreen/tps6507x-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [27 x i8] c"tps6507x_ts.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [39 x i8] c"tps6507x_ts.alias=platform:tps6507x-ts\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tps6507x-ts\00", [20 x i8] zeroinitializer }, align 32
@tps6507x_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not find tps6507x platform data\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps6507x_ts_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/tps6507x-ts.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps6507x_ts_probe._entry_ptr = internal global ptr @tps6507x_ts_probe._entry, section ".printk_index", align 4
@tps6507x_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate driver data\0A\00", [32 x i8] zeroinitializer }, align 32
@tps6507x_ts_probe._entry_ptr.8 = internal global ptr @tps6507x_ts_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@tps6507x_ts_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate polled input device.\0A\00", [55 x i8] zeroinitializer }, align 32
@tps6507x_ts_probe._entry_ptr.12 = internal global ptr @tps6507x_ts_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TPS6507x Touchscreen\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tps6507x_ts_poll.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tps6507x_ts\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tps6507x_ts_poll\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UP\0A\00", [28 x i8] zeroinitializer }, align 32
@tps6507x_ts_poll.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DOWN\0A\00", [26 x i8] zeroinitializer }, align 32
@tps6507x_ts_poll.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.18, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"still down\0A\00", [20 x i8] zeroinitializer }, align 32
@tps6507x_adc_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 71, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TSC mode read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tps6507x_adc_conversion\00", [40 x i8] zeroinitializer }, align 32
@tps6507x_adc_conversion._entry_ptr = internal global ptr @tps6507x_adc_conversion._entry, section ".printk_index", align 4
@tps6507x_adc_conversion._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC config write failed\0A\00", [39 x i8] zeroinitializer }, align 32
@tps6507x_adc_conversion._entry_ptr.23 = internal global ptr @tps6507x_adc_conversion._entry.21, section ".printk_index", align 4
@tps6507x_adc_conversion._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC config read failed\0A\00", [40 x i8] zeroinitializer }, align 32
@tps6507x_adc_conversion._entry_ptr.26 = internal global ptr @tps6507x_adc_conversion._entry.24, section ".printk_index", align 4
@tps6507x_adc_conversion._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ADC result 2 read failed\0A\00", [38 x i8] zeroinitializer }, align 32
@tps6507x_adc_conversion._entry_ptr.29 = internal global ptr @tps6507x_adc_conversion._entry.27, section ".printk_index", align 4
@tps6507x_adc_conversion._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ADC result 1 read failed\0A\00", [38 x i8] zeroinitializer }, align 32
@tps6507x_adc_conversion._entry_ptr.32 = internal global ptr @tps6507x_adc_conversion._entry.30, section ".printk_index", align 4
@tps6507x_adc_conversion.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.20, ptr @.str.3, ptr @.str.33, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TSC channel %d = 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"tps6507x_ts_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 283, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 285, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 215, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 228, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 238, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 242, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 254, i32 20 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 164, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 174, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 177, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 71, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 80, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 88, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 95, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 103, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [43 x i8] c"../drivers/input/touchscreen/tps6507x-ts.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 109, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_tps6507x_ts_driver_exit, ptr @__initcall__kmod_tps6507x_ts__227_289_tps6507x_ts_driver_init6, ptr @tps6507x_adc_conversion._entry, ptr @tps6507x_adc_conversion._entry.21, ptr @tps6507x_adc_conversion._entry.24, ptr @tps6507x_adc_conversion._entry.27, ptr @tps6507x_adc_conversion._entry.30, ptr @tps6507x_adc_conversion._entry_ptr, ptr @tps6507x_adc_conversion._entry_ptr.23, ptr @tps6507x_adc_conversion._entry_ptr.26, ptr @tps6507x_adc_conversion._entry_ptr.29, ptr @tps6507x_adc_conversion._entry_ptr.32, ptr @tps6507x_ts_driver_exit, ptr @tps6507x_ts_probe._entry, ptr @tps6507x_ts_probe._entry.10, ptr @tps6507x_ts_probe._entry.6, ptr @tps6507x_ts_probe._entry_ptr, ptr @tps6507x_ts_probe._entry_ptr.12, ptr @tps6507x_ts_probe._entry_ptr.8, ptr @tps6507x_ts_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_ts_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_adc_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_adc_conversion._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_adc_conversion._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_adc_conversion._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_adc_conversion._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps6507x_ts_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps6507x_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps6507x_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tps6507x_ts_init_data = getelementptr inbounds %struct.tps6507x_board, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tps6507x_ts_init_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tps6507x_ts_init_data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %mfd = getelementptr inbounds %struct.tps6507x_ts, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %mfd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %mfd, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call.i, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end12.cond.end_crit_edge, label %cond.true

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %min_pressure = getelementptr inbounds %struct.touchscreen_init_data, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %min_pressure to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %min_pressure, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end12.cond.end_crit_edge
  %cond = phi i16 [ %17, %cond.true ], [ 48, %if.end12.cond.end_crit_edge ]
  %min_pressure17 = getelementptr inbounds %struct.tps6507x_ts, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %min_pressure17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %cond, ptr %min_pressure17, align 2
  %phys = getelementptr inbounds %struct.tps6507x_ts, ptr %call.i, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.end.dev_name.exit_crit_edge

cond.end.dev_name.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %cond.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %cond.end.dev_name.exit_crit_edge ]
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i)
  %call22 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end29

do.end27:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end29:                                         ; preds = %dev_name.exit
  %input = getelementptr inbounds %struct.tps6507x_ts, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call22, ptr %input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call22, i32 0, i32 40, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call22, i32 noundef 1, i32 noundef 330) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call22, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call22, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call22, i32 noundef 24, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #6
  %27 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.13, ptr %call22, align 8
  %phys32 = getelementptr inbounds %struct.input_dev, ptr %call22, i32 0, i32 1
  %28 = ptrtoint ptr %phys32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %phys, ptr %phys32, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %parent35 = getelementptr inbounds %struct.input_dev, ptr %call22, i32 0, i32 40, i32 1
  %31 = ptrtoint ptr %parent35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %parent35, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call22, i32 0, i32 3
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 24, ptr %id, align 4
  br i1 %tobool15.not, label %if.end29.if.end44_crit_edge, label %if.then37

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %vendor = getelementptr inbounds %struct.touchscreen_init_data, ptr %9, i32 0, i32 2
  %33 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vendor, align 2
  %vendor39 = getelementptr inbounds %struct.input_dev, ptr %call22, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %vendor39 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vendor39, align 2
  %product = getelementptr inbounds %struct.touchscreen_init_data, ptr %9, i32 0, i32 3
  %36 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %product, align 4
  %product41 = getelementptr inbounds %struct.input_dev, ptr %call22, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %product41 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %product41, align 4
  %version = getelementptr inbounds %struct.touchscreen_init_data, ptr %9, i32 0, i32 4
  %39 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %version, align 2
  %version43 = getelementptr inbounds %struct.input_dev, ptr %call22, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %version43 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %version43, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end29.if.end44_crit_edge
  %call45 = tail call fastcc i32 @tps6507x_adc_standby(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @input_setup_polling(ptr noundef nonnull %call22, ptr noundef nonnull @tps6507x_ts_poll) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  br i1 %tobool15.not, label %if.end52.cond.end56_crit_edge, label %cond.true54

if.end52.cond.end56_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end56

cond.true54:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %9, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.true54, %if.end52.cond.end56_crit_edge
  %cond57 = phi i32 [ %43, %cond.true54 ], [ 30, %if.end52.cond.end56_crit_edge ]
  tail call void @input_set_poll_interval(ptr noundef nonnull %call22, i32 noundef %cond57) #6
  %call58 = tail call i32 @input_register_device(ptr noundef nonnull %call22) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end56, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end27, %do.end10, %do.end
  %retval.0 = phi i32 [ -12, %do.end27 ], [ -12, %do.end10 ], [ -19, %do.end ], [ %call45, %if.end44.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call58, %cond.end56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps6507x_adc_standby(ptr nocapture noundef readonly %tsc) unnamed_addr #2 align 64 {
entry:
  %data.addr.i31 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %1 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 15, ptr %data.addr.i, align 1
  %mfd.i = getelementptr inbounds %struct.tps6507x_ts, ptr %tsc, i32 0, i32 2
  %2 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd.i, align 4
  %write_dev.i = getelementptr inbounds %struct.tps6507x_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_dev.i, align 4
  %call.i = call i32 %5(ptr noundef %3, i8 noundef zeroext 7, i32 noundef 1, ptr noundef nonnull %data.addr.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i31)
  %6 = ptrtoint ptr %data.addr.i31 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %data.addr.i31, align 1
  %7 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mfd.i, align 4
  %write_dev.i33 = getelementptr inbounds %struct.tps6507x_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %write_dev.i33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_dev.i33, align 4
  %call.i34 = call i32 %10(ptr noundef %8, i8 noundef zeroext 8, i32 noundef 1, ptr noundef nonnull %data.addr.i31) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool2.not = icmp eq i32 %call.i34, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mfd.i, align 4
  %read_dev.i = getelementptr inbounds %struct.tps6507x_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_dev.i, align 4
  %call.i36 = call i32 %14(ptr noundef %12, i8 noundef zeroext 2, i32 noundef 1, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool6.not = icmp eq i32 %call.i36, 0
  br i1 %tobool6.not, label %if.end4.while.cond_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.while.cond_crit_edge:                     ; preds = %if.end4
  br label %while.cond

while.cond:                                       ; preds = %while.body12.preheader.while.cond_crit_edge, %if.end4.while.cond_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  %17 = and i8 %16, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %while.cond.cleanup_crit_edge, label %while.body12.preheader

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body12.preheader:                           ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #6
  %28 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mfd.i, align 4
  %read_dev.i38 = getelementptr inbounds %struct.tps6507x_dev, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read_dev.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_dev.i38, align 4
  %call.i39 = call i32 %31(ptr noundef %29, i8 noundef zeroext 2, i32 noundef 1, ptr noundef nonnull %val) #6
  %tobool14.not = icmp eq i32 %call.i39, 0
  br i1 %tobool14.not, label %while.body12.preheader.while.cond_crit_edge, label %while.body12.preheader.cleanup_crit_edge

while.body12.preheader.cleanup_crit_edge:         ; preds = %while.body12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body12.preheader.while.cond_crit_edge:      ; preds = %while.body12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cleanup:                                          ; preds = %while.body12.preheader.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i34, %if.end.cleanup_crit_edge ], [ %call.i36, %if.end4.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ %call.i39, %while.body12.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps6507x_ts_poll(ptr noundef %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tc = getelementptr inbounds %struct.tps6507x_ts, ptr %1, i32 0, i32 4
  %pressure = getelementptr inbounds %struct.tps6507x_ts, ptr %1, i32 0, i32 4, i32 2
  %call1 = tail call fastcc i32 @tps6507x_adc_conversion(ptr noundef %1, i8 noundef zeroext 2, ptr noundef %pressure)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pressure to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pressure, align 4
  %min_pressure = getelementptr inbounds %struct.tps6507x_ts, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %min_pressure to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %min_pressure, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp ugt i16 %3, %5
  %pendown28 = getelementptr inbounds %struct.tps6507x_ts, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pendown28 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pendown28, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool29.not = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then27.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end
  br i1 %tobool29.not, label %land.rhs.done_crit_edge, label %do.body, !prof !82

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.body:                                          ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps6507x_ts_poll.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps6507x_ts_poll, %if.then22)) #6
          to label %do.end [label %if.then22], !srcloc !83

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps6507x_ts_poll.__UNIQUE_ID_ddebug224, ptr noundef %9, ptr noundef nonnull @.str.16) #6
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  br label %done.sink.split

if.then27.critedge:                               ; preds = %if.end
  br i1 %tobool29.not, label %do.body31, label %do.body48

do.body31:                                        ; preds = %if.then27.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps6507x_ts_poll.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps6507x_ts_poll, %if.then43)) #6
          to label %do.end47 [label %if.then43], !srcloc !83

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps6507x_ts_poll.__UNIQUE_ID_ddebug225, ptr noundef %11, ptr noundef nonnull @.str.17) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  br label %if.end65

do.body48:                                        ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps6507x_ts_poll.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps6507x_ts_poll, %if.then60)) #6
          to label %if.end65 [label %if.then60], !srcloc !83

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps6507x_ts_poll.__UNIQUE_ID_ddebug226, ptr noundef %13, ptr noundef nonnull @.str.18) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %do.body48, %do.end47
  %call67 = tail call fastcc i32 @tps6507x_adc_conversion(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %tc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.done_crit_edge

if.end65.done_crit_edge:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end70:                                         ; preds = %if.end65
  %y = getelementptr inbounds %struct.tps6507x_ts, ptr %1, i32 0, i32 4, i32 1
  %call72 = tail call fastcc i32 @tps6507x_adc_conversion(ptr noundef %1, i8 noundef zeroext 1, ptr noundef %y)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.done_crit_edge

if.end70.done_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end75:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %tc to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tc, align 4
  %conv78 = zext i16 %15 to i32
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 3, i32 noundef 0, i32 noundef %conv78) #6
  %16 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %y, align 2
  %conv81 = zext i16 %17 to i32
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 3, i32 noundef 1, i32 noundef %conv81) #6
  %18 = ptrtoint ptr %pressure to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pressure, align 4
  %conv84 = zext i16 %19 to i32
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.end75, %do.end
  %.sink127 = phi i32 [ 0, %do.end ], [ %conv84, %if.end75 ]
  %.sink = phi i8 [ 0, %do.end ], [ 1, %if.end75 ]
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 3, i32 noundef 24, i32 noundef %.sink127) #6
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %20 = ptrtoint ptr %pendown28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %pendown28, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %if.end70.done_crit_edge, %if.end65.done_crit_edge, %land.rhs.done_crit_edge, %entry.done_crit_edge
  %call87 = tail call fastcc i32 @tps6507x_adc_standby(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps6507x_adc_conversion(ptr nocapture noundef readonly %tsc, i8 noundef zeroext %tsc_mode, ptr nocapture noundef %value) unnamed_addr #2 align 64 {
entry:
  %data.addr.i76 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  %adc_status = alloca i8, align 1
  %result = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adc_status) #6
  %0 = ptrtoint ptr %adc_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %adc_status, align 1, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result) #6
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result, align 1, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %2 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %tsc_mode, ptr %data.addr.i, align 1
  %mfd.i = getelementptr inbounds %struct.tps6507x_ts, ptr %tsc, i32 0, i32 2
  %3 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mfd.i, align 4
  %write_dev.i = getelementptr inbounds %struct.tps6507x_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %write_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_dev.i, align 4
  %call.i = call i32 %6(ptr noundef %4, i8 noundef zeroext 8, i32 noundef 1, ptr noundef nonnull %data.addr.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i76)
  %9 = ptrtoint ptr %data.addr.i76 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -50, ptr %data.addr.i76, align 1
  %10 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfd.i, align 4
  %write_dev.i78 = getelementptr inbounds %struct.tps6507x_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_dev.i78 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_dev.i78, align 4
  %call.i79 = call i32 %13(ptr noundef %11, i8 noundef zeroext 7, i32 noundef 1, ptr noundef nonnull %data.addr.i76) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool2.not = icmp eq i32 %call.i79, 0
  br i1 %tobool2.not, label %if.end.do.body9_crit_edge, label %do.end6

if.end.do.body9_crit_edge:                        ; preds = %if.end
  br label %do.body9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22) #9
  br label %cleanup

do.body9:                                         ; preds = %do.cond18.do.body9_crit_edge, %if.end.do.body9_crit_edge
  %16 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfd.i, align 4
  %read_dev.i = getelementptr inbounds %struct.tps6507x_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_dev.i, align 4
  %call.i81 = call i32 %19(ptr noundef %17, i8 noundef zeroext 7, i32 noundef 1, ptr noundef nonnull %adc_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool11.not = icmp eq i32 %call.i81, 0
  br i1 %tobool11.not, label %do.cond18, label %do.end15

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.25) #9
  br label %cleanup

do.cond18:                                        ; preds = %do.body9
  %22 = ptrtoint ptr %adc_status to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %adc_status, align 1
  %24 = and i8 %23, 64
  %tobool19.not = icmp eq i8 %24, 0
  br i1 %tobool19.not, label %do.end20, label %do.cond18.do.body9_crit_edge

do.cond18.do.body9_crit_edge:                     ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

do.end20:                                         ; preds = %do.cond18
  %25 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mfd.i, align 4
  %read_dev.i83 = getelementptr inbounds %struct.tps6507x_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read_dev.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_dev.i83, align 4
  %call.i84 = call i32 %28(ptr noundef %26, i8 noundef zeroext 10, i32 noundef 1, ptr noundef nonnull %result) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool22.not = icmp eq i32 %call.i84, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end28:                                         ; preds = %do.end20
  %31 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %result, align 1
  %33 = and i8 %32, 3
  %and30 = zext i8 %33 to i16
  %shl = shl nuw nsw i16 %and30, 8
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %shl, ptr %value, align 2
  %35 = ptrtoint ptr %mfd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mfd.i, align 4
  %read_dev.i86 = getelementptr inbounds %struct.tps6507x_dev, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read_dev.i86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_dev.i86, align 4
  %call.i87 = call i32 %38(ptr noundef %36, i8 noundef zeroext 9, i32 noundef 1, ptr noundef nonnull %result) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool33.not = icmp eq i32 %call.i87, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %result, align 1
  %conv40 = zext i8 %42 to i16
  %43 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %value, align 2
  %or = or i16 %44, %conv40
  store i16 %or, ptr %value, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps6507x_adc_conversion.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps6507x_adc_conversion, %if.then48)) #6
          to label %cleanup [label %if.then48], !srcloc !83

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tsc, align 4
  %conv50 = zext i8 %tsc_mode to i32
  %47 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %value, align 2
  %conv51 = zext i16 %48 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps6507x_adc_conversion.__UNIQUE_ID_ddebug223, ptr noundef %46, ptr noundef nonnull @.str.33, i32 noundef %conv50, i32 noundef %conv51) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end39, %do.end37, %do.end26, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i79, %do.end6 ], [ %call.i, %do.end ], [ %call.i81, %do.end15 ], [ %call.i84, %do.end26 ], [ %call.i87, %do.end37 ], [ 0, %if.then48 ], [ 0, %if.end39 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adc_status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_tps6507x_ts__227_289_tps6507x_ts_driver_init6, !1, !"__initcall__kmod_tps6507x_ts__227_289_tps6507x_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_tps6507x_ts_driver_exit, !1, !"__exitcall_tps6507x_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 294, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 285, i32 11}
!14 = !{ptr @tps6507x_ts_driver, !15, !"tps6507x_ts_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 283, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 215, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tps6507x_ts_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tps6507x_ts_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 228, i32 3}
!26 = !{ptr @tps6507x_ts_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tps6507x_ts_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 238, i32 4}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 242, i32 3}
!32 = !{ptr @tps6507x_ts_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tps6507x_ts_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 254, i32 20}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 164, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tps6507x_ts_poll.__UNIQUE_ID_ddebug224, !37, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 174, i32 4}
!43 = !{ptr @tps6507x_ts_poll.__UNIQUE_ID_ddebug225, !42, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 177, i32 4}
!46 = !{ptr @tps6507x_ts_poll.__UNIQUE_ID_ddebug226, !45, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 71, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tps6507x_adc_conversion._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @tps6507x_adc_conversion._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 80, i32 3}
!54 = !{ptr @tps6507x_adc_conversion._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tps6507x_adc_conversion._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 88, i32 4}
!58 = !{ptr @tps6507x_adc_conversion._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tps6507x_adc_conversion._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 95, i32 3}
!62 = !{ptr @tps6507x_adc_conversion._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tps6507x_adc_conversion._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 103, i32 3}
!66 = !{ptr @tps6507x_adc_conversion._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tps6507x_adc_conversion._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/tps6507x-ts.c", i32 109, i32 2}
!70 = !{ptr @tps6507x_adc_conversion.__UNIQUE_ID_ddebug223, !69, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148958501, i64 2148958506, i64 2148958519, i64 2148958563, i64 2148958597, i64 2148958618}
