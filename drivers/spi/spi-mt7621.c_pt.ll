; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-mt7621.c_pt.bc'
source_filename = "../drivers/spi/spi-mt7621.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mt7621_spi = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__UNIQUE_ID_alias236 = internal constant [37 x i8] c"spi_mt7621.alias=platform:spi-mt7621\00", section ".modinfo", align 1
@__initcall__kmod_spi_mt7621__237_417_mt7621_spi_driver_init6 = internal global ptr @mt7621_spi_driver_init, section ".initcall6.init", align 4
@mt7621_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt7621_spi_probe, ptr @mt7621_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt7621_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt7621_spi_driver_exit = internal global ptr @mt7621_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [41 x i8] c"spi_mt7621.description=MT7621 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [47 x i8] c"spi_mt7621.author=Felix Fietkau <nbd@nbd.name>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [39 x i8] c"spi_mt7621.file=drivers/spi/spi-mt7621\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [23 x i8] c"spi_mt7621.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi-mt7621\00", [21 x i8] zeroinitializer }, align 32
@mt7621_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ralink,mt7621-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt7621_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to get SYS clock, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7621_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-mt7621.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7621_spi_probe._entry_ptr = internal global ptr @mt7621_spi_probe._entry, section ".printk_index", align 4
@mt7621_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 355, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7621_spi_probe._entry_ptr.9 = internal global ptr @mt7621_spi_probe._entry.6, section ".printk_index", align 4
@mt7621_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 376, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_freq: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@mt7621_spi_probe._entry_ptr.12 = internal global ptr @mt7621_spi_probe._entry.10, section ".printk_index", align 4
@mt7621_spi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPI reset failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7621_spi_probe._entry_ptr.15 = internal global ptr @mt7621_spi_probe._entry.13, section ".printk_index", align 4
@mt7621_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setup: requested speed is too low %d Hz\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7621_spi_setup\00", [47 x i8] zeroinitializer }, align 32
@mt7621_spi_setup._entry_ptr = internal global ptr @mt7621_spi_setup._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt7621_spi_prepare.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi_mt7621\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7621_spi_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"speed:%u\0A\00", [22 x i8] zeroinitializer }, align 32
@mt7621_spi_prepare.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 27, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rate-1:%u\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"mt7621_spi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 408, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 410, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"mt7621_spi_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 318, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 344, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 355, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 376, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 380, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 310, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 107, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [28 x i8] c"../drivers/spi/spi-mt7621.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 110, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_mt7621_spi_driver_exit, ptr @__initcall__kmod_spi_mt7621__237_417_mt7621_spi_driver_init6, ptr @mt7621_spi_driver_exit, ptr @mt7621_spi_probe._entry, ptr @mt7621_spi_probe._entry.10, ptr @mt7621_spi_probe._entry.13, ptr @mt7621_spi_probe._entry.6, ptr @mt7621_spi_probe._entry_ptr, ptr @mt7621_spi_probe._entry_ptr.12, ptr @mt7621_spi_probe._entry_ptr.15, ptr @mt7621_spi_probe._entry_ptr.9, ptr @mt7621_spi_setup._entry, ptr @mt7621_spi_setup._entry_ptr, ptr @mt7621_spi_driver, ptr @.str, ptr @mt7621_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_spi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt7621_spi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7621_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt7621_spi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @mt7621_spi_match, ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %cmp.i100 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  %1 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call.i = tail call i32 @clk_prepare(ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end16, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call7) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end.i
  %call.i101 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 24, i1 noundef zeroext false) #5
  %tobool19.not = icmp eq ptr %call.i101, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  tail call void @clk_disable(ptr noundef %call7) #5
  tail call void @clk_unprepare(ptr noundef %call7) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i101, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %mode_bits, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i101, i32 0, i32 10
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %flags, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i101, i32 0, i32 20
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mt7621_spi_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i101, i32 0, i32 45
  %5 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt7621_spi_transfer_one_message, ptr %transfer_one_message, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i101, i32 0, i32 7
  %6 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %of_node28 = getelementptr inbounds %struct.device, ptr %call.i101, i32 0, i32 27
  %9 = ptrtoint ptr %of_node28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %of_node28, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i101, i32 0, i32 3
  %10 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %num_chipselect, align 2
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i101, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i101, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %base31 = getelementptr inbounds %struct.mt7621_spi, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %base31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1, ptr %base31, align 4
  %clk32 = getelementptr inbounds %struct.mt7621_spi, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %clk32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7, ptr %clk32, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i101, ptr %13, align 4
  %call35 = tail call i32 @clk_get_rate(ptr noundef %call7) #5
  %sys_freq = getelementptr inbounds %struct.mt7621_spi, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %sys_freq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call35, ptr %sys_freq, align 4
  %pending_write = getelementptr inbounds %struct.mt7621_spi, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %pending_write to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pending_write, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call35) #8
  %call.i102 = tail call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool43.not = icmp eq i32 %call.i102, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  tail call void @clk_disable(ptr noundef %call7) #5
  tail call void @clk_unprepare(ptr noundef %call7) #5
  br label %cleanup

if.end49:                                         ; preds = %if.end25
  %call50 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i101) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.then52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %call7) #5
  tail call void @clk_unprepare(ptr noundef %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end49.cleanup_crit_edge, %do.end47, %do.end23, %if.then3.i, %if.end12.cleanup_crit_edge, %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %1, %do.end ], [ %call.i102, %do.end47 ], [ -12, %do.end23 ], [ -22, %entry.cleanup_crit_edge ], [ %call50, %if.then52 ], [ 0, %if.end49.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.mt7621_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sys_freq = getelementptr inbounds %struct.mt7621_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %sys_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sys_freq, align 4
  %div22 = lshr i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div22)
  %cmp2 = icmp ugt i32 %5, %div22
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sys_freq3 = getelementptr inbounds %struct.mt7621_spi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %sys_freq3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys_freq3, align 4
  %div423 = lshr i32 %9, 1
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div423, ptr %max_speed_hz, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %11 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_speed_hz, align 8
  %sys_freq7 = getelementptr inbounds %struct.mt7621_spi, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %sys_freq7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sys_freq7, align 4
  %div8 = udiv i32 %14, 4097
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div8)
  %cmp9 = icmp ult i32 %12, %div8
  br i1 %cmp9, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_spi_transfer_one_message(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  %base.i.i = getelementptr inbounds %struct.mt7621_spi, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  br i1 %cmp1.i, label %for.body.i.mt7621_spi_wait_till_ready.exit_crit_edge, label %do.end.i

for.body.i.mt7621_spi_wait_till_ready.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7621_spi_wait_till_ready.exit

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #5
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000
  br i1 %exitcond.not.i, label %do.end.i.mt7621_spi_wait_till_ready.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i.mt7621_spi_wait_till_ready.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7621_spi_wait_till_ready.exit

mt7621_spi_wait_till_ready.exit:                  ; preds = %do.end.i.mt7621_spi_wait_till_ready.exit_crit_edge, %for.body.i.mt7621_spi_wait_till_ready.exit_crit_edge
  %11 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn100 = load ptr, ptr %m, align 4
  %cmp.not101 = icmp eq ptr %.pn100, %m
  br i1 %cmp.not101, label %mt7621_spi_wait_till_ready.exit.for.end_crit_edge, label %mt7621_spi_wait_till_ready.exit.for.body_crit_edge

mt7621_spi_wait_till_ready.exit.for.body_crit_edge: ; preds = %mt7621_spi_wait_till_ready.exit
  br label %for.body

mt7621_spi_wait_till_ready.exit.for.end_crit_edge: ; preds = %mt7621_spi_wait_till_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mt7621_spi_wait_till_ready.exit.for.body_crit_edge
  %.pn103 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn100, %mt7621_spi_wait_till_ready.exit.for.body_crit_edge ]
  %speed.0102 = phi i32 [ %14, %for.body.for.body_crit_edge ], [ %5, %mt7621_spi_wait_till_ready.exit.for.body_crit_edge ]
  %speed_hz = getelementptr i8, ptr %.pn103, i32 -24
  %12 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed_hz, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %speed.0102)
  %15 = ptrtoint ptr %.pn103 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn103, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mt7621_spi_wait_till_ready.exit.for.end_crit_edge
  %speed.0.lcssa = phi i32 [ %5, %mt7621_spi_wait_till_ready.exit.for.end_crit_edge ], [ %14, %for.body.for.end_crit_edge ]
  %call11 = tail call fastcc i32 @mt7621_spi_prepare(ptr noundef %3, i32 noundef %speed.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %for.end.msg_done_crit_edge

for.end.msg_done_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_done

if.end13:                                         ; preds = %for.end
  %master.i.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chip_select.i, align 4
  %base.i.i83 = getelementptr inbounds %struct.mt7621_spi, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i83, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 40
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %25 = and i32 %24, -67371233
  %26 = or i32 %25, 67109088
  %27 = ptrtoint ptr %base.i.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i83, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %26) #5, !srcloc !66
  %pending_write.i = getelementptr inbounds %struct.mt7621_spi, ptr %19, i32 0, i32 5
  %29 = ptrtoint ptr %pending_write.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %pending_write.i, align 4
  %conv.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %30 = ptrtoint ptr %base.i.i83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i83, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %32) #5, !srcloc !66
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  %33 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %actual_length, align 4
  %34 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn82104 = load ptr, ptr %m, align 4
  %cmp22.not106 = icmp eq ptr %.pn82104, %m
  br i1 %cmp22.not106, label %if.end13.for.end49_crit_edge, label %for.body24.lr.ph

if.end13.for.end49_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end49

for.body24.lr.ph:                                 ; preds = %if.end13
  %pending_write.i84 = getelementptr inbounds %struct.mt7621_spi, ptr %1, i32 0, i32 5
  br label %for.body24

for.body24:                                       ; preds = %if.end40.for.body24_crit_edge, %for.body24.lr.ph
  %.pn82107 = phi ptr [ %.pn82104, %for.body24.lr.ph ], [ %.pn82, %if.end40.for.body24_crit_edge ]
  %t.1108 = getelementptr i8, ptr %.pn82107, i32 -84
  %rx_buf = getelementptr i8, ptr %.pn82107, i32 -80
  %35 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_buf, align 4
  %tobool25.not = icmp eq ptr %36, null
  %37 = ptrtoint ptr %t.1108 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %t.1108, align 4
  %tobool34.not = icmp eq ptr %38, null
  br i1 %tobool25.not, label %if.else32, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body24
  br i1 %tobool34.not, label %if.then30, label %land.lhs.true.msg_done_crit_edge

land.lhs.true.msg_done_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_done

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr i8, ptr %.pn82107, i32 -76
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  tail call fastcc void @mt7621_spi_read_half_duplex(ptr noundef %1, i32 noundef %40, ptr noundef nonnull %36)
  br label %if.end40

if.else32:                                        ; preds = %for.body24
  br i1 %tobool34.not, label %if.else32.if.end40_crit_edge, label %if.then35

if.else32.if.end40_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then35:                                        ; preds = %if.else32
  %len36 = getelementptr i8, ptr %.pn82107, i32 -76
  %41 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len36, align 4
  %43 = ptrtoint ptr %pending_write.i84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pending_write.i84, align 4
  %and.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then35.if.end3.i_crit_edge, label %if.then.i

if.then35.if.end3.i_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then35
  %45 = add i32 %44, 4
  %add.i = and i32 %45, -4
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %47, i32 %add.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86) #5, !srcloc !61
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.i = icmp slt i32 %44, 4
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg66.i = mul i32 %44, -8
  %mul.i = add i32 %.neg66.i, 32
  %shl.i87 = shl i32 %49, %mul.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %shl.i87) #5
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then.i.if.end3.i_crit_edge, %if.then35.if.end3.i_crit_edge
  %val.0.i = phi i32 [ %50, %if.then2.i ], [ %49, %if.then.i.if.end3.i_crit_edge ], [ 0, %if.then35.if.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp471.i = icmp sgt i32 %42, 0
  br i1 %cmp471.i, label %if.end3.i.while.body.i_crit_edge, label %if.end3.i.while.end.i_crit_edge

if.end3.i.while.end.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %if.end3.i.while.body.i_crit_edge
  %val.175.i = phi i32 [ %val.3.i, %if.end22.i.while.body.i_crit_edge ], [ %val.0.i, %if.end3.i.while.body.i_crit_edge ]
  %len.074.i = phi i32 [ %inc.i89, %if.end22.i.while.body.i_crit_edge ], [ %44, %if.end3.i.while.body.i_crit_edge ]
  %buf.addr.073.i = phi ptr [ %incdec.ptr.i, %if.end22.i.while.body.i_crit_edge ], [ %38, %if.end3.i.while.body.i_crit_edge ]
  %tx_len.addr.072.i = phi i32 [ %sub23.i, %if.end22.i.while.body.i_crit_edge ], [ %42, %if.end3.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %len.074.i)
  %cmp5.i = icmp sgt i32 %len.074.i, 35
  br i1 %cmp5.i, label %if.then6.i, label %while.body.i.if.end8.i_crit_edge

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %pending_write.i84 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %len.074.i, ptr %pending_write.i84, align 4
  tail call fastcc void @mt7621_spi_read_half_duplex(ptr noundef %1, i32 noundef 0, ptr noundef null) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %while.body.i.if.end8.i_crit_edge
  %len.1.i = phi i32 [ 0, %if.then6.i ], [ %len.074.i, %while.body.i.if.end8.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.073.i, i32 1
  %52 = ptrtoint ptr %buf.addr.073.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buf.addr.073.i, align 1
  %conv.i88 = zext i8 %53 to i32
  %and9.i = shl i32 %len.1.i, 3
  %mul10.i = and i32 %and9.i, 24
  %shl11.i = shl nuw i32 %conv.i88, %mul10.i
  %or.i = or i32 %shl11.i, %val.175.i
  %inc.i89 = add nsw i32 %len.1.i, 1
  %and12.i = and i32 %inc.i89, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %if.end8.i.if.end22.i_crit_edge

if.end8.i.if.end22.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i89)
  %cmp16.i = icmp eq i32 %inc.i89, 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %spec.select.i = select i1 %cmp16.i, i32 %54, i32 %or.i
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %56, i32 %inc.i89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %57) #5, !srcloc !66
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end8.i.if.end22.i_crit_edge
  %val.3.i = phi i32 [ 0, %if.then15.i ], [ %or.i, %if.end8.i.if.end22.i_crit_edge ]
  %sub23.i = add nsw i32 %tx_len.addr.072.i, -1
  %cmp4.i = icmp sgt i32 %tx_len.addr.072.i, 1
  br i1 %cmp4.i, label %if.end22.i.while.body.i_crit_edge, label %if.end22.i.while.end.i_crit_edge

if.end22.i.while.end.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %if.end22.i.while.end.i_crit_edge, %if.end3.i.while.end.i_crit_edge
  %and24.pre-phi.i = phi i32 [ %and.i, %if.end3.i.while.end.i_crit_edge ], [ %and12.i, %if.end22.i.while.end.i_crit_edge ]
  %len.0.lcssa.i = phi i32 [ %44, %if.end3.i.while.end.i_crit_edge ], [ %inc.i89, %if.end22.i.while.end.i_crit_edge ]
  %val.1.lcssa.i = phi i32 [ %val.0.i, %if.end3.i.while.end.i_crit_edge ], [ %val.3.i, %if.end22.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.pre-phi.i)
  %tobool25.not.i = icmp eq i32 %and24.pre-phi.i, 0
  br i1 %tobool25.not.i, label %while.end.i.mt7621_spi_write_half_duplex.exit_crit_edge, label %if.then26.i

while.end.i.mt7621_spi_write_half_duplex.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7621_spi_write_half_duplex.exit

if.then26.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.0.lcssa.i)
  %cmp27.i = icmp slt i32 %len.0.lcssa.i, 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %val.1.lcssa.i) #5
  %.neg.i = mul i32 %len.0.lcssa.i, -8
  %mul31.i = add i32 %.neg.i, 32
  %shr.i = ashr i32 %58, %mul31.i
  %val.4.i = select i1 %cmp27.i, i32 %shr.i, i32 %val.1.lcssa.i
  %59 = add i32 %len.0.lcssa.i, 4
  %add34.i = and i32 %59, -4
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %61, i32 %add34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %val.4.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %62) #5, !srcloc !66
  br label %mt7621_spi_write_half_duplex.exit

mt7621_spi_write_half_duplex.exit:                ; preds = %if.then26.i, %while.end.i.mt7621_spi_write_half_duplex.exit_crit_edge
  %63 = ptrtoint ptr %pending_write.i84 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %len.0.lcssa.i, ptr %pending_write.i84, align 4
  br label %if.end40

if.end40:                                         ; preds = %mt7621_spi_write_half_duplex.exit, %if.else32.if.end40_crit_edge, %if.then30
  %len41 = getelementptr i8, ptr %.pn82107, i32 -76
  %64 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len41, align 4
  %66 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actual_length, align 4
  %add = add i32 %67, %65
  store i32 %add, ptr %actual_length, align 4
  %68 = ptrtoint ptr %.pn82107 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn82 = load ptr, ptr %.pn82107, align 4
  %cmp22.not = icmp eq ptr %.pn82, %m
  br i1 %cmp22.not, label %if.end40.for.end49_crit_edge, label %if.end40.for.body24_crit_edge

if.end40.for.body24_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

if.end40.for.end49_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end49

for.end49:                                        ; preds = %if.end40.for.end49_crit_edge, %if.end13.for.end49_crit_edge
  tail call fastcc void @mt7621_spi_read_half_duplex(ptr noundef %1, i32 noundef 0, ptr noundef null) #5
  %69 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %master.i.i, align 4
  %driver_data.i.i.i.i91 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i.i.i91, align 4
  %base.i.i93 = getelementptr inbounds %struct.mt7621_spi, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %base.i.i93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i93, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %74, i32 40
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %76 = and i32 %75, -67371233
  %77 = or i32 %76, 67109088
  %78 = ptrtoint ptr %base.i.i93 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i93, align 4
  %add.ptr.i9.i95 = getelementptr i8, ptr %79, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i95, i32 %77) #5, !srcloc !66
  %pending_write.i96 = getelementptr inbounds %struct.mt7621_spi, ptr %72, i32 0, i32 5
  %80 = ptrtoint ptr %pending_write.i96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %pending_write.i96, align 4
  %81 = ptrtoint ptr %base.i.i93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i93, align 4
  %add.ptr.i11.i99 = getelementptr i8, ptr %82, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i99, i32 0) #5, !srcloc !66
  br label %msg_done

msg_done:                                         ; preds = %for.end49, %land.lhs.true.msg_done_crit_edge, %for.end.msg_done_crit_edge
  %status.0 = phi i32 [ 0, %for.end49 ], [ -5, %for.end.msg_done_crit_edge ], [ -5, %land.lhs.true.msg_done_crit_edge ]
  %status50 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %83 = ptrtoint ptr %status50 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %status.0, ptr %status50, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7621_spi_prepare(ptr noundef %spi, i32 noundef %speed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7621_spi_prepare.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt7621_spi_prepare, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7621_spi_prepare.__UNIQUE_ID_ddebug230, ptr noundef %spi, ptr noundef nonnull @.str.20, i32 noundef %speed) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sys_freq = getelementptr inbounds %struct.mt7621_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sys_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sys_freq, align 4
  %add = add i32 %speed, -1
  %sub = add i32 %add, %5
  %div = udiv i32 %sub, %speed
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7621_spi_prepare.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt7621_spi_prepare, %do.end23)) #5
          to label %if.then19 [label %do.end23], !srcloc !67

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7621_spi_prepare.__UNIQUE_ID_ddebug231, ptr noundef %spi, ptr noundef nonnull @.str.21, i32 noundef %div) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %div)
  %cmp = icmp ugt i32 %div, 4097
  br i1 %cmp, label %do.end23.cleanup_crit_edge, label %if.end25

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %6 = tail call i32 @llvm.umax.i32(i32 %div, i32 2)
  %base.i = getelementptr inbounds %struct.mt7621_spi, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %sub30 = shl nuw nsw i32 %6, 16
  %shl = add nsw i32 %sub30, -131072
  %speed31 = getelementptr inbounds %struct.mt7621_spi, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %speed31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %speed, ptr %speed31, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 8
  %and33 = and i32 %12, 8
  %13 = and i32 %9, -939589392
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %or.masked = or i32 %14, %shl
  %and38 = or i32 %or.masked, %and33
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %and38) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %17) #5, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %do.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7621_spi_read_half_duplex(ptr nocapture noundef %rs, i32 noundef %rx_len, ptr nocapture noundef writeonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_write = getelementptr inbounds %struct.mt7621_spi, ptr %rs, i32 0, i32 5
  %0 = ptrtoint ptr %pending_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_write, align 4
  store i32 0, ptr %pending_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_len)
  %tobool.not58 = icmp eq i32 %rx_len, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not59 = icmp eq i32 %1, 0
  %or.cond60 = select i1 %tobool.not58, i1 %tobool2.not59, i1 false
  br i1 %or.cond60, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base.i = getelementptr inbounds %struct.mt7621_spi, ptr %rs, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %rx_len.addr.063 = phi i32 [ %rx_len, %while.body.lr.ph ], [ %sub21, %for.end.while.body_crit_edge ]
  %buf.addr.062 = phi ptr [ %buf, %while.body.lr.ph ], [ %buf.addr.1.lcssa, %for.end.while.body_crit_edge ]
  %tx_len.061 = phi i32 [ %1, %while.body.lr.ph ], [ 0, %for.end.while.body_crit_edge ]
  %2 = tail call i32 @llvm.smin.i32(i32 %tx_len.061, i32 4)
  %mul = shl i32 %2, 27
  %3 = tail call i32 @llvm.smin.i32(i32 %rx_len.addr.063, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %tx_len.061)
  %cmp9 = icmp sgt i32 %tx_len.061, 4
  %sub = shl i32 %tx_len.061, 3
  %mul10 = add i32 %sub, -32
  %or = select i1 %cmp9, i32 %mul10, i32 0
  %val.0 = or i32 %or, %mul
  %mul11 = shl i32 %3, 15
  %or13 = or i32 %val.0, %mul11
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or13) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !66
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %10 = or i32 %9, 65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #5, !srcloc !66
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %while.body
  %i.01.i = phi i32 [ 0, %while.body ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.i = icmp eq i32 %17, 0
  br i1 %cmp1.i, label %for.body.i.mt7621_spi_wait_till_ready.exit_crit_edge, label %do.end.i

for.body.i.mt7621_spi_wait_till_ready.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7621_spi_wait_till_ready.exit

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #5
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000
  br i1 %exitcond.not.i, label %do.end.i.mt7621_spi_wait_till_ready.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i.mt7621_spi_wait_till_ready.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7621_spi_wait_till_ready.exit

mt7621_spi_wait_till_ready.exit:                  ; preds = %do.end.i.mt7621_spi_wait_till_ready.exit_crit_edge, %for.body.i.mt7621_spi_wait_till_ready.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_len.addr.063)
  %cmp1652 = icmp sgt i32 %rx_len.addr.063, 0
  br i1 %cmp1652, label %for.body.preheader, label %mt7621_spi_wait_till_ready.exit.for.end_crit_edge

mt7621_spi_wait_till_ready.exit.for.end_crit_edge: ; preds = %mt7621_spi_wait_till_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %mt7621_spi_wait_till_ready.exit
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.preheader
  %buf.addr.156 = phi ptr [ %incdec.ptr, %if.end20.for.body_crit_edge ], [ %buf.addr.062, %for.body.preheader ]
  %val.155 = phi i32 [ %shr, %if.end20.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %i.053 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %19 = and i32 %i.053, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then18, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %i.053, 8
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #5, !srcloc !61
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.body.if.end20_crit_edge
  %val.2 = phi i32 [ %23, %if.then18 ], [ %val.155, %for.body.if.end20_crit_edge ]
  %conv = trunc i32 %val.2 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.addr.156, i32 1
  %24 = ptrtoint ptr %buf.addr.156 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %buf.addr.156, align 1
  %shr = lshr i32 %val.2, 8
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %mt7621_spi_wait_till_ready.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %mt7621_spi_wait_till_ready.exit.for.end_crit_edge ], [ %smax, %if.end20.for.end_crit_edge ]
  %buf.addr.1.lcssa = phi ptr [ %buf.addr.062, %mt7621_spi_wait_till_ready.exit.for.end_crit_edge ], [ %incdec.ptr, %if.end20.for.end_crit_edge ]
  %sub21 = sub i32 %rx_len.addr.063, %i.0.lcssa
  %tobool.not = icmp eq i32 %sub21, 0
  br i1 %tobool.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__UNIQUE_ID_alias236, !1, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-mt7621.c", i32 406, i32 1}
!2 = !{ptr @__initcall__kmod_spi_mt7621__237_417_mt7621_spi_driver_init6, !3, !"__initcall__kmod_spi_mt7621__237_417_mt7621_spi_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-mt7621.c", i32 417, i32 1}
!4 = !{ptr @__exitcall_mt7621_spi_driver_exit, !3, !"__exitcall_mt7621_spi_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-mt7621.c", i32 419, i32 1}
!7 = !{ptr @__UNIQUE_ID_author239, !8, !"__UNIQUE_ID_author239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-mt7621.c", i32 420, i32 1}
!9 = !{ptr @__UNIQUE_ID_file240, !10, !"__UNIQUE_ID_file240", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-mt7621.c", i32 421, i32 1}
!11 = !{ptr @__UNIQUE_ID_license241, !10, !"__UNIQUE_ID_license241", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-mt7621.c", i32 410, i32 11}
!14 = !{ptr @mt7621_spi_driver, !15, !"mt7621_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-mt7621.c", i32 408, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-mt7621.c", i32 344, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt7621_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt7621_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-mt7621.c", i32 355, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mt7621_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt7621_spi_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-mt7621.c", i32 376, i32 2}
!31 = !{ptr @mt7621_spi_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mt7621_spi_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-mt7621.c", i32 380, i32 3}
!35 = !{ptr @mt7621_spi_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mt7621_spi_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-mt7621.c", i32 310, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mt7621_spi_setup._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @mt7621_spi_setup._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-mt7621.c", i32 107, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mt7621_spi_prepare.__UNIQUE_ID_ddebug230, !43, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-mt7621.c", i32 110, i32 2}
!49 = !{ptr @mt7621_spi_prepare.__UNIQUE_ID_ddebug231, !48, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!50 = !{ptr @mt7621_spi_match, !51, !"mt7621_spi_match", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-mt7621.c", i32 318, i32 34}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 3077577}
!62 = !{i64 2150617926}
!63 = !{i64 2154176797}
!64 = !{i64 2154176639}
!65 = !{i64 2150619281}
!66 = !{i64 3077159}
!67 = !{i64 2148729569, i64 2148729574, i64 2148729587, i64 2148729631, i64 2148729665, i64 2148729686}
