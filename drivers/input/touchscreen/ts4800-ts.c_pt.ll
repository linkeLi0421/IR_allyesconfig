; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ts4800-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ts4800-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.ts4800_ts = type { ptr, ptr, [32 x i8], ptr, ptr, i32, i32, i8, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_ts4800_ts__210_218_ts4800_ts_driver_init6 = internal global ptr @ts4800_ts_driver_init, section ".initcall6.init", align 4
@ts4800_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ts4800_ts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ts4800_ts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ts4800_ts_driver_exit = internal global ptr @ts4800_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [68 x i8] c"ts4800_ts.author=Damien Riegel <damien.riegel@savoirfairelinux.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [49 x i8] c"ts4800_ts.description=TS-4800 Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [51 x i8] c"ts4800_ts.file=drivers/input/touchscreen/ts4800-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [25 x i8] c"ts4800_ts.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [35 x i8] c"ts4800_ts.alias=platform:ts4800_ts\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ts4800-ts\00", [22 x i8] zeroinitializer }, align 32
@ts4800_ts_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"technologic,ts4800-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TS-4800 Touchscreen\00", [44 x i8] zeroinitializer }, align 32
@ts4800_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to set up polling: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ts4800_ts_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/touchscreen/ts4800-ts.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ts4800_ts_probe._entry_ptr = internal global ptr @ts4800_ts_probe._entry, section ".printk_index", align 4
@ts4800_ts_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 198, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ts4800_ts_probe._entry_ptr.10 = internal global ptr @ts4800_ts_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@ts4800_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no syscon property\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ts4800_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@ts4800_parse_dt._entry_ptr = internal global ptr @ts4800_parse_dt._entry, section ".printk_index", align 4
@ts4800_parse_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 126, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get parent's regmap\0A\00", [36 x i8] zeroinitializer }, align 32
@ts4800_parse_dt._entry_ptr.16 = internal global ptr @ts4800_parse_dt._entry.14, section ".printk_index", align 4
@ts4800_parse_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.5, i32 132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no offset in syscon\0A\00", [43 x i8] zeroinitializer }, align 32
@ts4800_parse_dt._entry_ptr.19 = internal global ptr @ts4800_parse_dt._entry.17, section ".printk_index", align 4
@ts4800_parse_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.5, i32 140, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no bit in syscon\0A\00", [46 x i8] zeroinitializer }, align 32
@ts4800_parse_dt._entry_ptr.22 = internal global ptr @ts4800_parse_dt._entry.20, section ".printk_index", align 4
@ts4800_ts_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 58, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable touchscreen: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ts4800_ts_open\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ts4800_ts_open._entry_ptr = internal global ptr @ts4800_ts_open._entry, section ".printk_index", align 4
@ts4800_ts_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 72, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to disable touchscreen\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ts4800_ts_close\00", [16 x i8] zeroinitializer }, align 32
@ts4800_ts_close._entry_ptr = internal global ptr @ts4800_ts_close._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"ts4800_ts_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 211, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 213, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"ts4800_ts_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 205, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 171, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 177, i32 20 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 189, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 197, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 117, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 119, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 126, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 132, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 140, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 58, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [41 x i8] c"../drivers/input/touchscreen/ts4800-ts.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 72, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_ts4800_ts_driver_exit, ptr @__initcall__kmod_ts4800_ts__210_218_ts4800_ts_driver_init6, ptr @ts4800_parse_dt._entry, ptr @ts4800_parse_dt._entry.14, ptr @ts4800_parse_dt._entry.17, ptr @ts4800_parse_dt._entry.20, ptr @ts4800_parse_dt._entry_ptr, ptr @ts4800_parse_dt._entry_ptr.16, ptr @ts4800_parse_dt._entry_ptr.19, ptr @ts4800_parse_dt._entry_ptr.22, ptr @ts4800_ts_close._entry, ptr @ts4800_ts_close._entry_ptr, ptr @ts4800_ts_driver_exit, ptr @ts4800_ts_open._entry, ptr @ts4800_ts_open._entry_ptr, ptr @ts4800_ts_probe._entry, ptr @ts4800_ts_probe._entry.8, ptr @ts4800_ts_probe._entry_ptr, ptr @ts4800_ts_probe._entry_ptr.10, ptr @ts4800_ts_driver, ptr @.str, ptr @ts4800_ts_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_ts_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_ts_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_parse_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_parse_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_parse_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_ts_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts4800_ts_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ts4800_ts_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ts4800_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ts4800_ts_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %reg.i = alloca i32, align 4
  %bit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i) #7
  %3 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bit.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %4 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %ts4800_parse_dt.exit.thread

of_parse_phandle.exit.i:                          ; preds = %if.end
  %5 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.ts4800_parse_dt.exit.thread_crit_edge, label %if.end.i

of_parse_phandle.exit.i.ts4800_parse_dt.exit.thread_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ts4800_parse_dt.exit.thread

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %6) #7
  %regmap.i = getelementptr inbounds %struct.ts4800_ts, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %regmap.i, align 4
  call void @of_node_put(ptr noundef nonnull %6) #7
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ts4800_parse_dt.exit, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %if.end11.i.ts4800_parse_dt.exit.thread_crit_edge, label %if.end17.i

if.end11.i.ts4800_parse_dt.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ts4800_parse_dt.exit.thread

if.end17.i:                                       ; preds = %if.end11.i
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %reg18.i = getelementptr inbounds %struct.ts4800_ts, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %reg18.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %reg18.i, align 4
  %call19.i = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %bit.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end17.i.ts4800_parse_dt.exit.thread_crit_edge, label %ts4800_parse_dt.exit.thread81

if.end17.i.ts4800_parse_dt.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ts4800_parse_dt.exit.thread

ts4800_parse_dt.exit.thread81:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %12
  %bit26.i = getelementptr inbounds %struct.ts4800_ts, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %bit26.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl.i, ptr %bit26.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %if.end4

ts4800_parse_dt.exit.thread:                      ; preds = %if.end17.i.ts4800_parse_dt.exit.thread_crit_edge, %if.end11.i.ts4800_parse_dt.exit.thread_crit_edge, %of_parse_phandle.exit.i.ts4800_parse_dt.exit.thread_crit_edge, %of_parse_phandle.exit.thread.i
  %.str.18.sink = phi ptr [ @.str.12, %of_parse_phandle.exit.i.ts4800_parse_dt.exit.thread_crit_edge ], [ @.str.12, %of_parse_phandle.exit.thread.i ], [ @.str.18, %if.end11.i.ts4800_parse_dt.exit.thread_crit_edge ], [ @.str.21, %if.end17.i.ts4800_parse_dt.exit.thread_crit_edge ]
  %retval.0.i.ph = phi i32 [ -19, %of_parse_phandle.exit.i.ts4800_parse_dt.exit.thread_crit_edge ], [ -19, %of_parse_phandle.exit.thread.i ], [ %call12.i, %if.end11.i.ts4800_parse_dt.exit.thread_crit_edge ], [ %call19.i, %if.end17.i.ts4800_parse_dt.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.18.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %cleanup

ts4800_parse_dt.exit:                             ; preds = %if.end.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %ts4800_parse_dt.exit.if.end4_crit_edge, label %ts4800_parse_dt.exit.cleanup_crit_edge

ts4800_parse_dt.exit.cleanup_crit_edge:           ; preds = %ts4800_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ts4800_parse_dt.exit.if.end4_crit_edge:           ; preds = %ts4800_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %ts4800_parse_dt.exit.if.end4_crit_edge, %ts4800_parse_dt.exit.thread81
  %call5 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.ts4800_ts, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5, ptr %base, align 4
  %cmp.i75 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call13 = call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %phys = getelementptr inbounds %struct.ts4800_ts, ptr %call.i, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i76 = icmp eq ptr %20, null
  br i1 %tobool.not.i76, label %if.end.i77, label %if.end16.dev_name.exit_crit_edge

if.end16.dev_name.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i77:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i77, %if.end16.dev_name.exit_crit_edge
  %retval.0.i78 = phi ptr [ %22, %if.end.i77 ], [ %20, %if.end16.dev_name.exit_crit_edge ]
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i78)
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13, ptr %call.i, align 4
  %dev21 = getelementptr inbounds %struct.ts4800_ts, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %dev21, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 40, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.2, ptr %call13, align 8
  %phys24 = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %phys24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %phys, ptr %phys24, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 31
  %28 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ts4800_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 32
  %29 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ts4800_ts_close, ptr %close, align 4
  call void @input_set_capability(ptr noundef nonnull %call13, i32 noundef 1, i32 noundef 330) #7
  call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #7
  call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #7
  %call25 = call i32 @input_setup_polling(ptr noundef nonnull %call13, ptr noundef nonnull @ts4800_ts_poll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call25) #10
  br label %cleanup

if.end29:                                         ; preds = %dev_name.exit
  call void @input_set_poll_interval(ptr noundef nonnull %call13, i32 noundef 3) #7
  %call30 = call i32 @input_register_device(ptr noundef nonnull %call13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %do.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call30) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end29.cleanup_crit_edge, %do.end, %if.end11.cleanup_crit_edge, %if.then8, %ts4800_parse_dt.exit.cleanup_crit_edge, %ts4800_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then8 ], [ %call25, %do.end ], [ %call30, %do.end35 ], [ -12, %entry.cleanup_crit_edge ], [ %16, %ts4800_parse_dt.exit.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ %retval.0.i.ph, %ts4800_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts4800_ts_open(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pendown = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pendown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pendown, align 4
  %debounce = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %debounce to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %debounce, align 4
  %regmap = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %bit = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.23, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ts4800_ts_close(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %bit = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.26) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ts4800_ts_poll(ptr noundef %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #7, !srcloc !74
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 2
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %9 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %debounce = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %debounce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debounce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %11, -1
  %12 = ptrtoint ptr %debounce to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %debounce, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %pendown14 = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %pendown14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pendown14, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 1, i32 noundef 330, i32 noundef 1) #7
  %15 = ptrtoint ptr %pendown14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pendown14, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %16 = xor i16 %5, -1
  %and20 = lshr i16 %16, 4
  %17 = xor i16 %8, -1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = lshr i16 %18, 4
  %conv27 = zext i16 %and20 to i32
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 3, i32 noundef 0, i32 noundef %conv27) #7
  %conv28 = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 3, i32 noundef 1, i32 noundef %conv28) #7
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %pendown29 = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %pendown29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pendown29, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not = icmp eq i8 %21, 0
  br i1 %tobool30.not, label %if.else.cleanup_crit_edge, label %if.then31

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pendown29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pendown29, align 4
  %debounce33 = getelementptr inbounds %struct.ts4800_ts, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %debounce33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %debounce33, align 4
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  tail call void @input_event(ptr noundef %input_dev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.else.cleanup_crit_edge, %if.end18, %if.then12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_ts4800_ts__210_218_ts4800_ts_driver_init6, !1, !"__initcall__kmod_ts4800_ts__210_218_ts4800_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 218, i32 1}
!2 = !{ptr @__exitcall_ts4800_ts_driver_exit, !1, !"__exitcall_ts4800_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author211, !4, !"__UNIQUE_ID_author211", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 220, i32 1}
!5 = !{ptr @__UNIQUE_ID_description212, !6, !"__UNIQUE_ID_description212", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 221, i32 1}
!7 = !{ptr @__UNIQUE_ID_file213, !8, !"__UNIQUE_ID_file213", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 222, i32 1}
!9 = !{ptr @__UNIQUE_ID_license214, !8, !"__UNIQUE_ID_license214", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias215, !11, !"__UNIQUE_ID_alias215", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 223, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 213, i32 11}
!14 = !{ptr @ts4800_ts_driver, !15, !"ts4800_ts_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 211, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 171, i32 39}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 177, i32 20}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 189, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ts4800_ts_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ts4800_ts_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 197, i32 3}
!30 = !{ptr @ts4800_ts_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ts4800_ts_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 117, i32 35}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 119, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ts4800_parse_dt._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ts4800_parse_dt._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 126, i32 3}
!41 = !{ptr @ts4800_parse_dt._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ts4800_parse_dt._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 132, i32 3}
!45 = !{ptr @ts4800_parse_dt._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ts4800_parse_dt._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 140, i32 3}
!49 = !{ptr @ts4800_parse_dt._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ts4800_parse_dt._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 58, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ts4800_ts_open._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @ts4800_ts_open._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 72, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ts4800_ts_close._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ts4800_ts_close._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ts4800_ts_of_match, !63, !"ts4800_ts_of_match", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/ts4800-ts.c", i32 205, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 5609361}
!75 = !{i64 2153347367}
!76 = !{i64 2153347845}
!77 = !{i8 0, i8 2}
