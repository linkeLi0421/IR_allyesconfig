; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/raspberrypi-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/raspberrypi-ts.c"
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
%struct.rpi_ts = type { ptr, ptr, %struct.touchscreen_properties, ptr, i32, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rpi_ts_regs = type { i8, i8, i8, [10 x %struct.rpi_ts_touch] }
%struct.rpi_ts_touch = type { i8, i8, i8, i8, i8, i8 }

@__initcall__kmod_raspberrypi_ts__230_224_rpi_ts_driver_init6 = internal global ptr @rpi_ts_driver_init, section ".initcall6.init", align 4
@rpi_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpi_ts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_ts_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpi_ts_driver_exit = internal global ptr @rpi_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [42 x i8] c"raspberrypi_ts.author=Gordon Hollingworth\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [70 x i8] c"raspberrypi_ts.author=Nicolas Saenz Julienne <nsaenzjulienne@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [74 x i8] c"raspberrypi_ts.description=Raspberry Pi firmware based touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [61 x i8] c"raspberrypi_ts.file=drivers/input/touchscreen/raspberrypi-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [30 x i8] c"raspberrypi_ts.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raspberrypi-ts\00", [17 x i8] zeroinitializer }, align 32
@rpi_ts_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,firmware-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing firmware node\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpi_ts_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/input/touchscreen/raspberrypi-ts.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr = internal global ptr @rpi_ts_probe._entry, section ".printk_index", align 4
@rpi_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to dma_alloc_coherent\0A\00", [34 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr.8 = internal global ptr @rpi_ts_probe._entry.6, section ".printk_index", align 4
@rpi_ts_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to devm_add_action_or_reset, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr.11 = internal global ptr @rpi_ts_probe._entry.9, section ".printk_index", align 4
@rpi_ts_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 165, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set touchbuf, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr.15 = internal global ptr @rpi_ts_probe._entry.12, section ".printk_index", align 4
@rpi_ts_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr.18 = internal global ptr @rpi_ts_probe._entry.16, section ".printk_index", align 4
@rpi_ts_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not init mt slots, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr.21 = internal global ptr @rpi_ts_probe._entry.19, section ".printk_index", align 4
@rpi_ts_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not set up polling mode, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr.24 = internal global ptr @rpi_ts_probe._entry.22, section ".printk_index", align 4
@rpi_ts_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not register input device, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rpi_ts_probe._entry_ptr.27 = internal global ptr @rpi_ts_probe._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 99]
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"rpi_ts_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 217, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 219, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"rpi_ts_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 211, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 133, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 150, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 156, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 165, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 171, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 190, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 196, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [46 x i8] c"../drivers/input/touchscreen/raspberrypi-ts.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 204, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_rpi_ts_driver_exit, ptr @__initcall__kmod_raspberrypi_ts__230_224_rpi_ts_driver_init6, ptr @rpi_ts_driver_exit, ptr @rpi_ts_probe._entry, ptr @rpi_ts_probe._entry.12, ptr @rpi_ts_probe._entry.16, ptr @rpi_ts_probe._entry.19, ptr @rpi_ts_probe._entry.22, ptr @rpi_ts_probe._entry.25, ptr @rpi_ts_probe._entry.6, ptr @rpi_ts_probe._entry.9, ptr @rpi_ts_probe._entry_ptr, ptr @rpi_ts_probe._entry_ptr.11, ptr @rpi_ts_probe._entry_ptr.15, ptr @rpi_ts_probe._entry_ptr.18, ptr @rpi_ts_probe._entry_ptr.21, ptr @rpi_ts_probe._entry_ptr.24, ptr @rpi_ts_probe._entry_ptr.27, ptr @rpi_ts_probe._entry_ptr.8, ptr @rpi_ts_driver, ptr @.str, ptr @rpi_ts_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_ts_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_ts_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpi_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpi_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %touchbuf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %touchbuf) #5
  %call = tail call ptr @of_get_parent(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @rpi_firmware_get(ptr noundef nonnull %call) #5
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i, align 4
  %fw_regs_phys = getelementptr inbounds %struct.rpi_ts, ptr %call.i, i32 0, i32 4
  %call.i121 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %fw_regs_phys, i32 noundef 3264, i32 noundef 0) #5
  %fw_regs_va = getelementptr inbounds %struct.rpi_ts, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %fw_regs_va to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i121, ptr %fw_regs_va, align 4
  %tobool13.not = icmp eq ptr %call.i121, null
  br i1 %tobool13.not, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call.i122 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @rpi_ts_dma_cleanup, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i, label %if.end25, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %fw_regs_va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_regs_va, align 4
  %8 = ptrtoint ptr %fw_regs_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_regs_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef %7, i32 noundef %9, i32 noundef 0) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i122) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %10 = ptrtoint ptr %fw_regs_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_regs_phys, align 4
  %12 = ptrtoint ptr %touchbuf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %touchbuf, align 4
  %call27 = call i32 @rpi_firmware_property(ptr noundef nonnull %call2, i32 noundef 294943, ptr noundef nonnull %touchbuf, i32 noundef 4) #5
  call void @rpi_firmware_put(ptr noundef nonnull %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

lor.lhs.false:                                    ; preds = %if.end25
  %13 = ptrtoint ptr %touchbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %touchbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end33, label %lor.lhs.false.do.end32_crit_edge

lor.lhs.false.do.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

do.end32:                                         ; preds = %lor.lhs.false.do.end32_crit_edge, %if.end25.do.end32_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call27) #8
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false
  %call34 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %input41 = getelementptr inbounds %struct.rpi_ts, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %input41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %input41, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 40, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %call34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str, ptr %call34, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 25, ptr %id, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call34, i32 noundef 53, i32 noundef 0, i32 noundef 800, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef nonnull %call34, i32 noundef 54, i32 noundef 0, i32 noundef 480, i32 noundef 0, i32 noundef 0) #5
  %prop = getelementptr inbounds %struct.rpi_ts, ptr %call.i, i32 0, i32 2
  call void @touchscreen_parse_properties(ptr noundef nonnull %call34, i1 noundef zeroext true, ptr noundef %prop) #5
  %call42 = call i32 @input_mt_init_slots(ptr noundef nonnull %call34, i32 noundef 10, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call42) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %call49 = call i32 @input_setup_polling(ptr noundef nonnull %call34, ptr noundef nonnull @rpi_ts_poll) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call49) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @input_set_poll_interval(ptr noundef nonnull %call34, i32 noundef 17) #5
  %call56 = call i32 @input_register_device(ptr noundef nonnull %call34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %do.end61

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call56) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %if.end55.cleanup_crit_edge, %do.end54, %do.end47, %do.end39, %do.end32, %do.end24, %do.end17, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i122, %do.end24 ], [ %call27, %do.end32 ], [ %call42, %do.end47 ], [ %call49, %do.end54 ], [ %call56, %do.end61 ], [ -12, %do.end39 ], [ -12, %do.end17 ], [ -2, %do.end ], [ -517, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %touchbuf) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpi_firmware_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpi_ts_dma_cleanup(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %fw_regs_va = getelementptr inbounds %struct.rpi_ts, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %fw_regs_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_regs_va, align 4
  %fw_regs_phys = getelementptr inbounds %struct.rpi_ts, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %fw_regs_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_regs_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %3, i32 noundef %5, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpi_firmware_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpi_ts_poll(ptr noundef %input) #2 align 64 {
entry:
  %regs = alloca %struct.rpi_ts_regs, align 1
  %released_ids = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %regs) #5
  %2 = call ptr @memset(ptr %regs, i32 255, i32 63)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %released_ids) #5
  %fw_regs_va = getelementptr inbounds %struct.rpi_ts, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %fw_regs_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_regs_va, align 4
  call void @mmiocpy(ptr noundef nonnull %regs, ptr noundef %4, i32 noundef 63) #5
  %5 = ptrtoint ptr %fw_regs_va to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_regs_va, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 99) #5, !srcloc !65
  %num_points = getelementptr inbounds %struct.rpi_ts_regs, ptr %regs, i32 0, i32 2
  %7 = ptrtoint ptr %num_points to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_points, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %for.body.lr.ph [
    i8 99, label %entry.cleanup_crit_edge
    i8 0, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %known_ids = getelementptr inbounds %struct.rpi_ts, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %known_ids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %known_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %prop = getelementptr inbounds %struct.rpi_ts, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %modified_ids.099 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rpi_ts_regs, ptr %regs, i32 0, i32 3, i32 %i.0100
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %13 to i32
  %yh = getelementptr %struct.rpi_ts_regs, ptr %regs, i32 0, i32 3, i32 %i.0100, i32 2
  %14 = ptrtoint ptr %yh to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %yh, align 1
  %conv19 = zext i8 %15 to i32
  %16 = lshr i32 %conv19, 4
  %shl37 = shl nuw nsw i32 1, %16
  %or = or i32 %shl37, %modified_ids.099
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %13)
  %cmp38 = icmp ult i8 %13, 64
  %.mask = and i32 %conv13, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %.mask)
  %cmp41 = icmp eq i32 %.mask, 128
  %or.cond = select i1 %cmp38, i1 true, i1 %cmp41
  br i1 %or.cond, label %if.then43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and20 = shl nuw nsw i32 %conv19, 8
  %shl21 = and i32 %and20, 3840
  %yl = getelementptr %struct.rpi_ts_regs, ptr %regs, i32 0, i32 3, i32 %i.0100, i32 3
  %17 = ptrtoint ptr %yl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %yl, align 1
  %conv24 = zext i8 %18 to i32
  %add25 = or i32 %shl21, %conv24
  %and = shl nuw nsw i32 %conv13, 8
  %shl = and i32 %and, 3840
  %xl = getelementptr %struct.rpi_ts_regs, ptr %regs, i32 0, i32 3, i32 %i.0100, i32 1
  %19 = ptrtoint ptr %xl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xl, align 1
  %conv16 = zext i8 %20 to i32
  %add = or i32 %shl, %conv16
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 47, i32 noundef %16) #5
  %call44 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %input, i32 noundef 0, i1 noundef zeroext true) #5
  call void @touchscreen_report_pos(ptr noundef %input, ptr noundef %prop, i32 noundef %add, i32 noundef %add25, i1 noundef zeroext true) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0100, 1
  %21 = ptrtoint ptr %num_points to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_points, align 1
  %conv10 = zext i8 %22 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %modified_ids.0.lcssa = phi i32 [ 0, %land.lhs.true.for.end_crit_edge ], [ %or, %for.inc.for.end_crit_edge ]
  %known_ids46 = getelementptr inbounds %struct.rpi_ts, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %known_ids46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %known_ids46, align 4
  %neg = xor i32 %modified_ids.0.lcssa, -1
  %and47 = and i32 %24, %neg
  %25 = ptrtoint ptr %released_ids to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and47, ptr %released_ids, align 4
  %call48 = call i32 @_find_next_bit_be(ptr noundef nonnull %released_ids, i32 noundef 10, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call48)
  %cmp50102 = icmp slt i32 %call48, 10
  br i1 %cmp50102, label %for.end.for.body52_crit_edge, label %for.end.for.end59_crit_edge

for.end.for.end59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end59

for.end.for.body52_crit_edge:                     ; preds = %for.end
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.end.for.body52_crit_edge
  %i.1104 = phi i32 [ %call58, %for.body52.for.body52_crit_edge ], [ %call48, %for.end.for.body52_crit_edge ]
  %modified_ids.1103 = phi i32 [ %and55, %for.body52.for.body52_crit_edge ], [ %modified_ids.0.lcssa, %for.end.for.body52_crit_edge ]
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 47, i32 noundef %i.1104) #5
  %call.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %input, i32 noundef 0, i1 noundef zeroext false) #5
  %shl53 = shl nuw nsw i32 1, %i.1104
  %neg54 = xor i32 %shl53, -1
  %and55 = and i32 %modified_ids.1103, %neg54
  %add57 = add nsw i32 %i.1104, 1
  %call58 = call i32 @_find_next_bit_be(ptr noundef nonnull %released_ids, i32 noundef 10, i32 noundef %add57) #5
  %cmp50 = icmp slt i32 %call58, 10
  br i1 %cmp50, label %for.body52.for.body52_crit_edge, label %for.body52.for.end59_crit_edge

for.body52.for.end59_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end59

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body52

for.end59:                                        ; preds = %for.body52.for.end59_crit_edge, %for.end.for.end59_crit_edge
  %modified_ids.1.lcssa = phi i32 [ %modified_ids.0.lcssa, %for.end.for.end59_crit_edge ], [ %and55, %for.body52.for.end59_crit_edge ]
  %26 = ptrtoint ptr %known_ids46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %modified_ids.1.lcssa, ptr %known_ids46, align 4
  call void @input_mt_sync_frame(ptr noundef %input) #5
  call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %released_ids) #5
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %regs) #5
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_raspberrypi_ts__230_224_rpi_ts_driver_init6, !1, !"__initcall__kmod_raspberrypi_ts__230_224_rpi_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 224, i32 1}
!2 = !{ptr @__exitcall_rpi_ts_driver_exit, !1, !"__exitcall_rpi_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 226, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 227, i32 1}
!7 = !{ptr @__UNIQUE_ID_description233, !8, !"__UNIQUE_ID_description233", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 228, i32 1}
!9 = !{ptr @__UNIQUE_ID_file234, !10, !"__UNIQUE_ID_file234", i1 false, i1 false}
!10 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 229, i32 1}
!11 = !{ptr @__UNIQUE_ID_license235, !10, !"__UNIQUE_ID_license235", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 219, i32 11}
!14 = !{ptr @rpi_ts_driver, !15, !"rpi_ts_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 217, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 133, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rpi_ts_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rpi_ts_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 150, i32 3}
!26 = !{ptr @rpi_ts_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rpi_ts_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 156, i32 3}
!30 = !{ptr @rpi_ts_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rpi_ts_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 165, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rpi_ts_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rpi_ts_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 171, i32 3}
!39 = !{ptr @rpi_ts_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rpi_ts_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 190, i32 3}
!43 = !{ptr @rpi_ts_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rpi_ts_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 196, i32 3}
!47 = !{ptr @rpi_ts_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rpi_ts_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 204, i32 3}
!51 = !{ptr @rpi_ts_probe._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rpi_ts_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @rpi_ts_match, !54, !"rpi_ts_match", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/raspberrypi-ts.c", i32 211, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148874917}
!65 = !{i64 688748}
