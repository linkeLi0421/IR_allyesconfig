; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/colibri-vf50-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/colibri-vf50-ts.c"
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
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.vf50_touch_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_colibri_vf50_ts__230_374_vf50_touch_driver_init6 = internal global ptr @vf50_touch_driver_init, section ".initcall6.init", align 4
@vf50_touch_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vf50_ts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vf50_touch_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vf50_touch_driver_exit = internal global ptr @vf50_touch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [39 x i8] c"colibri_vf50_ts.author=Sanchayan Maity\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [60 x i8] c"colibri_vf50_ts.description=Colibri VF50 Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [63 x i8] c"colibri_vf50_ts.file=drivers/input/touchscreen/colibri-vf50-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"colibri_vf50_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"toradex,vf50_touchctrl\00", [41 x i8] zeroinitializer }, align 32
@vf50_touch_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toradex,vf50-touchscreen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register iio channel release action\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vf50_ts_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/input/touchscreen/colibri-vf50-ts.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry_ptr = internal global ptr @vf50_ts_probe._entry, section ".printk_index", align 4
@vf50_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Inadequate ADC channels specified\0A\00", [61 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry_ptr.8 = internal global ptr @vf50_ts_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vf50-ts-min-pressure\00", [43 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate TS input device\0A\00", [60 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry_ptr.12 = internal global ptr @vf50_ts_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"colibri-vf50-ts\00", [16 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry_ptr.16 = internal global ptr @vf50_ts_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xp\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xm\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"yp\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ym\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vf50 touch\00", [21 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vf50_ts_probe._entry_ptr.24 = internal global ptr @vf50_ts_probe._entry.22, section ".printk_index", align 4
@vf50_ts_open.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"colibri_vf50_ts\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vf50_ts_open\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Input device %s opened, starting touch detection\0A\00", [46 x i8] zeroinitializer }, align 32
@vf50_ts_close.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vf50_ts_close\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Input device %s closed, disable touch detection\0A\00", [47 x i8] zeroinitializer }, align 32
@vf50_ts_get_gpiod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not get gpio_%s %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vf50_ts_get_gpiod\00", [46 x i8] zeroinitializer }, align 32
@vf50_ts_get_gpiod._entry_ptr = internal global ptr @vf50_ts_get_gpiod._entry, section ".printk_index", align 4
@vf50_ts_irq_bh.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vf50_ts_irq_bh\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Measured values: x: %d, y: %d, z1: %d, z2: %d, p: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"vf50_touch_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 367, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 369, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"vf50_touch_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 361, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 277, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 286, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 297, i32 45 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 304, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 308, i32 16 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 324, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 328, i32 53 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 333, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 337, i32 53 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 341, i32 53 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 351, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 353, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 210, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 235, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 247, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [47 x i8] c"../drivers/input/touchscreen/colibri-vf50-ts.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 157, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_vf50_touch_driver_exit, ptr @__initcall__kmod_colibri_vf50_ts__230_374_vf50_touch_driver_init6, ptr @vf50_touch_driver_exit, ptr @vf50_ts_get_gpiod._entry, ptr @vf50_ts_get_gpiod._entry_ptr, ptr @vf50_ts_probe._entry, ptr @vf50_ts_probe._entry.10, ptr @vf50_ts_probe._entry.14, ptr @vf50_ts_probe._entry.22, ptr @vf50_ts_probe._entry.6, ptr @vf50_ts_probe._entry_ptr, ptr @vf50_ts_probe._entry_ptr.12, ptr @vf50_ts_probe._entry_ptr.16, ptr @vf50_ts_probe._entry_ptr.24, ptr @vf50_ts_probe._entry_ptr.8, ptr @vf50_touch_driver, ptr @.str, ptr @vf50_touch_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_touch_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_touch_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_ts_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_ts_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_ts_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf50_ts_get_gpiod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vf50_touch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf50_touch_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vf50_touch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @vf50_touch_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf50_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @iio_channel_get_all(ptr noundef %dev1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @vf50_ts_channel_release, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.while.cond_crit_edge, label %if.then5

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iio_channel_release_all(ptr noundef %call) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %num_adc_channels.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %if.end.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.iio_channel, ptr %call, i32 %num_adc_channels.0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %2, null
  %inc = add i32 %num_adc_channels.0, 1
  br i1 %tobool7.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num_adc_channels.0)
  %cmp.not = icmp eq i32 %num_adc_channels.0, 4
  br i1 %cmp.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end12:                                         ; preds = %while.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call.i, align 4
  %channels18 = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %channels18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %channels18, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %min_pressure = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef %min_pressure, i32 noundef 1, i32 noundef 0) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool20.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %8 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.13, ptr %call23, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 25, ptr %id, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 31
  %11 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vf50_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 32
  %12 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vf50_ts_close, ptr %close, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call23, i32 noundef 1, i32 noundef 330) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call23, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call23, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call23, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  %ts_input = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %ts_input to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %ts_input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 40, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call31 = tail call i32 @input_register_device(ptr noundef nonnull %call23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %gpio_xp = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 3
  %call.i141 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef 3) #6
  %15 = ptrtoint ptr %gpio_xp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i141, ptr %gpio_xp, align 4
  %cmp.i.i = icmp ugt ptr %call.i141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %vf50_ts_get_gpiod.exit, label %if.end41

vf50_ts_get_gpiod.exit:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i141 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.17, i32 noundef %16) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %gpio_xm = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 4
  %call.i142 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef 3) #6
  %17 = ptrtoint ptr %gpio_xm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i142, ptr %gpio_xm, align 4
  %cmp.i.i143 = icmp ugt ptr %call.i142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i143, label %vf50_ts_get_gpiod.exit146, label %if.end45

vf50_ts_get_gpiod.exit146:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call.i142 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.18, i32 noundef %18) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %gpio_yp = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 5
  %call46 = tail call fastcc i32 @vf50_ts_get_gpiod(ptr noundef %dev1, ptr noundef %gpio_yp, ptr noundef nonnull @.str.19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %gpio_ym = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 6
  %call50 = tail call fastcc i32 @vf50_ts_get_gpiod(ptr noundef %dev1, ptr noundef %gpio_ym, ptr noundef nonnull @.str.20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %pen_irq = getelementptr inbounds %struct.vf50_touch_device, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %pen_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call54, ptr %pen_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %if.end53.cleanup_crit_edge, label %if.end59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %call61 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call54, ptr noundef null, ptr noundef nonnull @vf50_ts_irq_bh, i32 noundef 8192, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %do.end66

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pen_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pen_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %21, i32 noundef %call61) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end59.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %vf50_ts_get_gpiod.exit146, %vf50_ts_get_gpiod.exit, %do.end36, %do.end28, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end11, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then5 ], [ -22, %do.end11 ], [ %call31, %do.end36 ], [ %call61, %do.end66 ], [ -12, %do.end28 ], [ -12, %if.end12.cleanup_crit_edge ], [ %7, %if.end16.cleanup_crit_edge ], [ %16, %vf50_ts_get_gpiod.exit ], [ %18, %vf50_ts_get_gpiod.exit146 ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vf50_ts_channel_release(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_channel_release_all(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf50_ts_open(ptr nocapture noundef readonly %dev_input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev_input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vf50_ts_open.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vf50_ts_open, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_input, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vf50_ts_open.__UNIQUE_ID_ddebug228, ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stop_touchscreen = getelementptr inbounds %struct.vf50_touch_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %stop_touchscreen to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stop_touchscreen, align 4
  %gpio_ym.i = getelementptr inbounds %struct.vf50_touch_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %gpio_ym.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_ym.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev.i) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vf50_ts_close(ptr nocapture noundef readonly %dev_input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev_input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %stop_touchscreen = getelementptr inbounds %struct.vf50_touch_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %stop_touchscreen to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %stop_touchscreen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %pen_irq = getelementptr inbounds %struct.vf50_touch_device, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %pen_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pen_irq, align 4
  tail call void @synchronize_irq(i32 noundef %6) #6
  %gpio_ym = getelementptr inbounds %struct.vf50_touch_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %gpio_ym to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_ym, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #6
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vf50_ts_close.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vf50_ts_close, %if.then)) #6
          to label %do.end8 [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_input, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vf50_ts_close.__UNIQUE_ID_ddebug229, ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef %10) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vf50_ts_get_gpiod(ptr noundef %dev, ptr nocapture noundef %gpio_d, ptr noundef %con_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef %con_id, i32 noundef 3) #6
  %0 = ptrtoint ptr %gpio_d to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %gpio_d, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %con_id, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf50_ts_irq_bh(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %gpio_ym = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 6
  %2 = ptrtoint ptr %gpio_ym to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_ym, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #6
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev1) #6
  %channels = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 2
  %stop_touchscreen = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 9
  %4 = ptrtoint ptr %stop_touchscreen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stop_touchscreen, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not101 = icmp eq i8 %5, 0
  br i1 %tobool.not101, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %gpio_xp = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 3
  %gpio_xm = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 4
  %gpio_yp = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 5
  %min_pressure = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 8
  %ts_input = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %discard_val_on_start.0.off0102 = phi i1 [ true, %while.body.lr.ph ], [ false, %if.end53.while.body_crit_edge ]
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  %8 = ptrtoint ptr %gpio_xp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_xp, align 4
  %10 = ptrtoint ptr %gpio_xm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_xm, align 4
  %call2 = tail call fastcc i32 @adc_ts_measure(ptr noundef %7, ptr noundef %9, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels, align 4
  %arrayidx4 = getelementptr %struct.iio_channel, ptr %13, i32 1
  %14 = ptrtoint ptr %gpio_yp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_yp, align 4
  %16 = ptrtoint ptr %gpio_ym to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_ym, align 4
  %call6 = tail call fastcc i32 @adc_ts_measure(ptr noundef %arrayidx4, ptr noundef %15, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.while.end_crit_edge, label %if.end9

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9:                                          ; preds = %if.end
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channels, align 4
  %arrayidx11 = getelementptr %struct.iio_channel, ptr %19, i32 2
  %20 = ptrtoint ptr %gpio_yp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpio_yp, align 4
  %22 = ptrtoint ptr %gpio_xm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpio_xm, align 4
  %call14 = tail call fastcc i32 @adc_ts_measure(ptr noundef %arrayidx11, ptr noundef %21, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end9.while.end_crit_edge, label %if.end17

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end17:                                         ; preds = %if.end9
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channels, align 4
  %arrayidx19 = getelementptr %struct.iio_channel, ptr %25, i32 3
  %26 = ptrtoint ptr %gpio_yp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpio_yp, align 4
  %28 = ptrtoint ptr %gpio_xm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gpio_xm, align 4
  %call22 = tail call fastcc i32 @adc_ts_measure(ptr noundef %arrayidx19, ptr noundef %27, ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end17.while.end_crit_edge, label %if.end25

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call14)
  %cmp26 = icmp ugt i32 %call14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2)
  %cmp27 = icmp ugt i32 %call2, 64
  %or.cond = select i1 %cmp26, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.then28, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %call2, 1000
  %div = sdiv i32 %mul, 4095
  %mul29 = mul i32 %call22, %div
  %div30 = sdiv i32 %mul29, %call14
  %sub.neg = sub nsw i32 %div, %div30
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %val_p.0.neg = phi i32 [ %sub.neg, %if.then28 ], [ -2000, %if.end25.if.end31_crit_edge ]
  %sub32 = add nsw i32 %val_p.0.neg, 2000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vf50_ts_irq_bh.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vf50_ts_irq_bh, %if.then38)) #6
          to label %do.end [label %if.then38], !srcloc !81

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vf50_ts_irq_bh.__UNIQUE_ID_ddebug227, ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call2, i32 noundef %call6, i32 noundef %call14, i32 noundef %call22, i32 noundef %sub32) #6
  br label %do.end

do.end:                                           ; preds = %if.then38, %if.end31
  %30 = ptrtoint ptr %min_pressure to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_pressure, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %31)
  %cmp40 = icmp slt i32 %sub32, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_p.0.neg)
  %cmp41 = icmp sgt i32 %val_p.0.neg, 0
  %or.cond99 = or i1 %cmp41, %cmp40
  br i1 %or.cond99, label %do.end.while.end_crit_edge, label %if.end43

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end43:                                         ; preds = %do.end
  br i1 %discard_val_on_start.0.off0102, label %if.end43.if.end53_crit_edge, label %if.else46

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts_input, align 4
  %sub47 = sub nsw i32 4095, %call2
  tail call void @input_event(ptr noundef %33, i32 noundef 3, i32 noundef 0, i32 noundef %sub47) #6
  %34 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ts_input, align 4
  %sub49 = sub nsw i32 4095, %call6
  tail call void @input_event(ptr noundef %35, i32 noundef 3, i32 noundef 1, i32 noundef %sub49) #6
  %36 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 24, i32 noundef %sub32) #6
  %38 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %39, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %40 = ptrtoint ptr %ts_input to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ts_input, align 4
  tail call void @input_event(ptr noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.end43.if.end53_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %42 = ptrtoint ptr %stop_touchscreen to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stop_touchscreen, align 4, !range !83
  %tobool.not = icmp eq i8 %43, 0
  br i1 %tobool.not, label %if.end53.while.body_crit_edge, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %do.end.while.end_crit_edge, %if.end17.while.end_crit_edge, %if.end9.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ts_input54 = getelementptr inbounds %struct.vf50_touch_device, ptr %private, i32 0, i32 1
  %44 = ptrtoint ptr %ts_input54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ts_input54, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  %46 = ptrtoint ptr %ts_input54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ts_input54, align 4
  tail call void @input_event(ptr noundef %47, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  %48 = ptrtoint ptr %ts_input54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ts_input54, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %50 = ptrtoint ptr %gpio_ym to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gpio_ym, align 4
  tail call void @gpiod_set_value(ptr noundef %51, i32 noundef 1) #6
  %52 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %call.i = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev.i) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adc_ts_measure(ptr noundef %channel, ptr noundef %plate_p, ptr noundef %plate_m) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  tail call void @gpiod_set_value(ptr noundef %plate_p, i32 noundef 1) #6
  tail call void @gpiod_set_value(ptr noundef %plate_m, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %call = call i32 @iio_read_channel_raw(ptr noundef %channel, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.error_iio_read_crit_edge, label %if.end

entry.error_iio_read_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_iio_read

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call.1 = call i32 @iio_read_channel_raw(ptr noundef %channel, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end.error_iio_read_crit_edge, label %if.end.1

if.end.error_iio_read_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_iio_read

if.end.1:                                         ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %call.2 = call i32 @iio_read_channel_raw(ptr noundef %channel, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end.1.error_iio_read_crit_edge, label %if.end.2

if.end.1.error_iio_read_crit_edge:                ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_iio_read

if.end.2:                                         ; preds = %if.end.1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call.3 = call i32 @iio_read_channel_raw(ptr noundef %channel, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end.2.error_iio_read_crit_edge, label %if.end.3

if.end.2.error_iio_read_crit_edge:                ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_iio_read

if.end.3:                                         ; preds = %if.end.2
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call.4 = call i32 @iio_read_channel_raw(ptr noundef %channel, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %if.end.3.error_iio_read_crit_edge, label %if.end.4

if.end.3.error_iio_read_crit_edge:                ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_iio_read

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  %add.1 = add i32 %4, %2
  %add.2 = add i32 %6, %add.1
  %add.3 = add i32 %8, %add.2
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %add.4 = add i32 %10, %add.3
  %div = sdiv i32 %add.4, 5
  br label %error_iio_read

error_iio_read:                                   ; preds = %if.end.4, %if.end.3.error_iio_read_crit_edge, %if.end.2.error_iio_read_crit_edge, %if.end.1.error_iio_read_crit_edge, %if.end.error_iio_read_crit_edge, %entry.error_iio_read_crit_edge
  %value.1 = phi i32 [ %div, %if.end.4 ], [ %call, %entry.error_iio_read_crit_edge ], [ %call.1, %if.end.error_iio_read_crit_edge ], [ %call.2, %if.end.1.error_iio_read_crit_edge ], [ %call.3, %if.end.2.error_iio_read_crit_edge ], [ %call.4, %if.end.3.error_iio_read_crit_edge ]
  call void @gpiod_set_value(ptr noundef %plate_p, i32 noundef 0) #6
  call void @gpiod_set_value(ptr noundef %plate_m, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %value.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_colibri_vf50_ts__230_374_vf50_touch_driver_init6, !1, !"__initcall__kmod_colibri_vf50_ts__230_374_vf50_touch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 374, i32 1}
!2 = !{ptr @__exitcall_vf50_touch_driver_exit, !1, !"__exitcall_vf50_touch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 376, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 369, i32 11}
!12 = !{ptr @vf50_touch_driver, !13, !"vf50_touch_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 367, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 277, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vf50_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @vf50_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 286, i32 3}
!24 = !{ptr @vf50_ts_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vf50_ts_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 297, i32 45}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 304, i32 3}
!30 = !{ptr @vf50_ts_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vf50_ts_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 308, i32 16}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 324, i32 3}
!36 = !{ptr @vf50_ts_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vf50_ts_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 328, i32 53}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 333, i32 5}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 337, i32 53}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 341, i32 53}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 351, i32 8}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 353, i32 3}
!50 = !{ptr @vf50_ts_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vf50_ts_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 210, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vf50_ts_open.__UNIQUE_ID_ddebug228, !53, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 235, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vf50_ts_close.__UNIQUE_ID_ddebug229, !58, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 247, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vf50_ts_get_gpiod._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @vf50_ts_get_gpiod._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 157, i32 3}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vf50_ts_irq_bh.__UNIQUE_ID_ddebug227, !67, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!70 = !{ptr @vf50_touch_of_match, !71, !"vf50_touch_of_match", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/colibri-vf50-ts.c", i32 361, i32 34}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148764205, i64 2148764210, i64 2148764223, i64 2148764267, i64 2148764301, i64 2148764322}
!82 = !{i64 2153978794}
!83 = !{i8 0, i8 2}
