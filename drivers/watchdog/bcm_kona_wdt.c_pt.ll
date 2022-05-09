; ModuleID = '/llk/IR_all_yes/drivers/watchdog/bcm_kona_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bcm_kona_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm_kona_wdt = type { ptr, i32, %struct.spinlock, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_bcm_kona_wdt__212_336_bcm_kona_wdt_driver_init6 = internal global ptr @bcm_kona_wdt_driver_init, section ".initcall6.init", align 4
@bcm_kona_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_kona_wdt_probe, ptr @bcm_kona_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_kona_wdt_driver_exit = internal global ptr @bcm_kona_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias213 = internal constant [41 x i8] c"bcm_kona_wdt.alias=platform:bcm_kona_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [55 x i8] c"bcm_kona_wdt.author=Markus Mayer <mmayer@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description215 = internal constant [55 x i8] c"bcm_kona_wdt.description=Broadcom Kona Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file216 = internal constant [48 x i8] c"bcm_kona_wdt.file=drivers/watchdog/bcm_kona_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license217 = internal constant [28 x i8] c"bcm_kona_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm_kona_wdt\00", [19 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wdt->lock\00", [21 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set resolution (error: %d)\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm_kona_wdt_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/watchdog/bcm_kona_wdt.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_probe._entry_ptr = internal global ptr @bcm_kona_wdt_probe._entry, section ".printk_index", align 4
@bcm_kona_wdt_wdd = internal global { %struct.watchdog_device, [52 x i8] } { %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @bcm_kona_wdt_info, ptr @bcm_kona_wdt_ops, ptr null, i32 0, i32 65535, i32 0, i32 1, i32 65535, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 297, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed set watchdog timeout\00", [36 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_probe._entry_ptr.9 = internal global ptr @bcm_kona_wdt_probe._entry.7, section ".printk_index", align 4
@bcm_kona_wdt_probe.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Broadcom Kona Watchdog Timer\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_kona_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Broadcom Kona Watchdog Timer\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @bcm_kona_wdt_start, ptr @bcm_kona_wdt_stop, ptr null, ptr null, ptr @bcm_kona_wdt_set_timeout, ptr null, ptr @bcm_kona_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@bcm_kona_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bcm_kona_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No device pointer\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error accessing hardware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"Resolution: %d / %d\0AControl: %d s / %d (%#x) ticks\0ACurrent: %d s / %d (%#x) ticks\0ABusy count: %lu\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm_kona_wdt_remove.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm_kona_wdt_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Watchdog driver disabled\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"bcm_kona_wdt_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 327, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 329, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"bcm_kona_wdt_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 321, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 278, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 287, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"bcm_kona_wdt_wdd\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 260, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 297, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 308, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"bcm_kona_wdt_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 254, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"bcm_kona_wdt_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 246, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 147, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"bcm_kona_fops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 133, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 100, i32 15 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 110, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 120, i32 7 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [35 x i8] c"../drivers/watchdog/bcm_kona_wdt.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 316, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_file216, ptr @__UNIQUE_ID_license217, ptr @__exitcall_bcm_kona_wdt_driver_exit, ptr @__initcall__kmod_bcm_kona_wdt__212_336_bcm_kona_wdt_driver_init6, ptr @bcm_kona_wdt_driver_exit, ptr @bcm_kona_wdt_probe._entry, ptr @bcm_kona_wdt_probe._entry.7, ptr @bcm_kona_wdt_probe._entry_ptr, ptr @bcm_kona_wdt_probe._entry_ptr.9, ptr @bcm_kona_wdt_driver, ptr @.str, ptr @bcm_kona_wdt_of_match, ptr @bcm_kona_wdt_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bcm_kona_wdt_wdd, ptr @.str.8, ptr @.str.10, ptr @bcm_kona_wdt_info, ptr @bcm_kona_wdt_ops, ptr @.str.11, ptr @bcm_kona_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_wdd to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kona_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_kona_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.bcm_kona_wdt, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm_kona_wdt_probe.__key, i16 noundef signext 3) #6
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %bcm_kona_wdt_set_resolution_reg.exit

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

bcm_kona_wdt_set_resolution_reg.exit:             ; preds = %do.body
  %resolution = getelementptr inbounds %struct.bcm_kona_wdt, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %resolution, align 4
  %call.i62 = tail call fastcc i32 @bcm_kona_wdt_ctrl_reg_modify(ptr noundef nonnull %call.i, i32 noundef 15728640, i32 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool11.not = icmp eq i32 %call.i62, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %bcm_kona_wdt_set_resolution_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i62) #9
  br label %cleanup

if.end16:                                         ; preds = %bcm_kona_wdt_set_resolution_reg.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 16), align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 1), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 7), align 4
  %5 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resolution, align 4
  %shl.i65 = shl i32 %4, %6
  %call1.i = tail call fastcc i32 @bcm_kona_wdt_ctrl_reg_modify(ptr noundef nonnull %call.i, i32 noundef 1048575, i32 noundef %shl.i65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool18.not = icmp eq i32 %call1.i, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  tail call void @_set_bit(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 18)) #6
  tail call void @_set_bit(i32 noundef 4, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 18)) #6
  %call24 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull @bcm_kona_wdt_wdd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end27.bcm_kona_wdt_debug_init.exit_crit_edge, label %if.end.i67

if.end27.bcm_kona_wdt_debug_init.exit_crit_edge:  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_kona_wdt_debug_init.exit

if.end.i67:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %debugfs.i = getelementptr inbounds %struct.bcm_kona_wdt, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %debugfs.i, align 4
  %call1.i66 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #6
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext -32476, ptr noundef %call1.i66, ptr noundef nonnull %8, ptr noundef nonnull @bcm_kona_fops) #6
  %10 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i66, ptr %debugfs.i, align 4
  br label %bcm_kona_wdt_debug_init.exit

bcm_kona_wdt_debug_init.exit:                     ; preds = %if.end.i67, %if.end27.bcm_kona_wdt_debug_init.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kona_wdt_probe.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_kona_wdt_probe, %if.then33)) #6
          to label %cleanup [label %if.then33], !srcloc !65

if.then33:                                        ; preds = %bcm_kona_wdt_debug_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kona_wdt_probe.__UNIQUE_ID_ddebug210, ptr noundef %dev1, ptr noundef nonnull @.str.10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %bcm_kona_wdt_debug_init.exit, %if.end23.cleanup_crit_edge, %do.end22, %do.end15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %call.i62, %do.end15 ], [ %call1.i, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %bcm_kona_wdt_debug_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.bcm_kona_wdt_debug_exit.exit_crit_edge, label %if.then.i

entry.bcm_kona_wdt_debug_exit.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm_kona_wdt_debug_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %debugfs.i = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #6
  br label %bcm_kona_wdt_debug_exit.exit

bcm_kona_wdt_debug_exit.exit:                     ; preds = %if.then.i, %entry.bcm_kona_wdt_debug_exit.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kona_wdt_remove.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_kona_wdt_remove, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %bcm_kona_wdt_debug_exit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kona_wdt_remove.__UNIQUE_ID_ddebug211, ptr noundef %dev, ptr noundef nonnull @.str.16) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %bcm_kona_wdt_debug_exit.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_kona_wdt_ctrl_reg_modify(ptr noundef %wdt, i32 noundef %mask, i32 noundef %newval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bcm_kona_wdt, ptr %wdt, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %0 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !66
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %and.peel.i = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel.i)
  %tobool2.not.peel.i = icmp eq i32 %and.peel.i, 0
  br i1 %tobool2.not.peel.i, label %entry.do.end.i_crit_edge, label %if.end.peel27.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.peel27.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !66
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %and.peel30.i = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel30.i)
  %tobool2.not.peel31.i = icmp eq i32 %and.peel30.i, 0
  br i1 %tobool2.not.peel31.i, label %if.end.peel27.i.do.end.i_crit_edge, label %if.end.peel27.i.if.end.i_crit_edge

if.end.peel27.i.if.end.i_crit_edge:               ; preds = %if.end.peel27.i
  br label %if.end.i

if.end.peel27.i.do.end.i_crit_edge:               ; preds = %if.end.peel27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.peel27.i.if.end.i_crit_edge
  %count.0.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 2, %if.end.peel27.i.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #6
  %9 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wdt, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !66
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %and.i = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %tobool2.not.not.i = xor i1 %tobool2.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %count.0.i)
  %cmp3.i = icmp ult i32 %count.0.i, 999
  %or.cond.i = select i1 %tobool2.not.not.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.end.i.if.end.i_crit_edge, label %if.end.i.do.end.i_crit_edge, !llvm.loop !67

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.peel27.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %.lcssa.i = phi i32 [ %3, %entry.do.end.i_crit_edge ], [ %7, %if.end.peel27.i.do.end.i_crit_edge ], [ %12, %if.end.i.do.end.i_crit_edge ]
  %inc.lcssa.i = phi i32 [ 1, %entry.do.end.i_crit_edge ], [ 2, %if.end.peel27.i.do.end.i_crit_edge ], [ %inc.i, %if.end.i.do.end.i_crit_edge ]
  %tobool2.not.lcssa.i = phi i1 [ true, %entry.do.end.i_crit_edge ], [ true, %if.end.peel27.i.do.end.i_crit_edge ], [ %tobool2.not.i, %if.end.i.do.end.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ 0, %entry.do.end.i_crit_edge ], [ 1, %if.end.peel27.i.do.end.i_crit_edge ], [ %count.0.i, %if.end.i.do.end.i_crit_edge ]
  %busy_count.i = getelementptr inbounds %struct.bcm_kona_wdt, ptr %wdt, i32 0, i32 3
  %13 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %busy_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i, i32 %14)
  %cmp4.not.i = icmp ult i32 %count.0.lcssa.i, %14
  br i1 %cmp4.not.i, label %do.end.i.secure_register_read.exit_crit_edge, label %if.then5.i

do.end.i.secure_register_read.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %secure_register_read.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.lcssa.i, ptr %busy_count.i, align 4
  br label %secure_register_read.exit

secure_register_read.exit:                        ; preds = %if.then5.i, %do.end.i.secure_register_read.exit_crit_edge
  br i1 %tobool2.not.lcssa.i, label %if.else, label %secure_register_read.exit.if.end_crit_edge

secure_register_read.exit.if.end_crit_edge:       ; preds = %secure_register_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %secure_register_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and12.i = and i32 %.lcssa.i, 503316479
  %neg = xor i32 %mask, -1
  %and = and i32 %and12.i, %neg
  %or = or i32 %and, %newval
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %wdt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wdt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !69
  br label %if.end

if.end:                                           ; preds = %if.else, %secure_register_read.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -110, %secure_register_read.exit.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_start(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %2 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout.i, align 4
  %resolution.i = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resolution.i, align 4
  %shl.i = shl i32 %3, %5
  %or.i = or i32 %shl.i, 201326592
  %call1.i = tail call fastcc i32 @bcm_kona_wdt_ctrl_reg_modify(ptr noundef %1, i32 noundef 1048575, i32 noundef %or.i) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_stop(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @bcm_kona_wdt_ctrl_reg_modify(ptr noundef %1, i32 noundef 201326592, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm_kona_wdt_set_timeout(ptr nocapture noundef writeonly %wdog, i32 noundef %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %t, ptr %timeout, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_get_timeleft(ptr nocapture noundef readonly %wdog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdog, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.peel.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel.i) #6, !srcloc !66
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %and.peel.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel.i)
  %tobool2.not.peel.i = icmp eq i32 %and.peel.i, 0
  br i1 %tobool2.not.peel.i, label %entry.do.end.i_crit_edge, label %if.end.peel27.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.peel27.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.peel28.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel28.i) #6, !srcloc !66
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %and.peel30.i = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel30.i)
  %tobool2.not.peel31.i = icmp eq i32 %and.peel30.i, 0
  br i1 %tobool2.not.peel31.i, label %if.end.peel27.i.do.end.i_crit_edge, label %if.end.peel27.i.if.end.i_crit_edge

if.end.peel27.i.if.end.i_crit_edge:               ; preds = %if.end.peel27.i
  br label %if.end.i

if.end.peel27.i.do.end.i_crit_edge:               ; preds = %if.end.peel27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.peel27.i.if.end.i_crit_edge
  %count.0.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 2, %if.end.peel27.i.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !66
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %and.i = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %tobool2.not.not.i = xor i1 %tobool2.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %count.0.i)
  %cmp3.i = icmp ult i32 %count.0.i, 999
  %or.cond.i = select i1 %tobool2.not.not.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.end.i.if.end.i_crit_edge, label %if.end.i.do.end.i_crit_edge, !llvm.loop !67

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.peel27.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %.lcssa.i = phi i32 [ %5, %entry.do.end.i_crit_edge ], [ %9, %if.end.peel27.i.do.end.i_crit_edge ], [ %14, %if.end.i.do.end.i_crit_edge ]
  %inc.lcssa.i = phi i32 [ 1, %entry.do.end.i_crit_edge ], [ 2, %if.end.peel27.i.do.end.i_crit_edge ], [ %inc.i, %if.end.i.do.end.i_crit_edge ]
  %tobool2.not.lcssa.i = phi i1 [ true, %entry.do.end.i_crit_edge ], [ true, %if.end.peel27.i.do.end.i_crit_edge ], [ %tobool2.not.i, %if.end.i.do.end.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ 0, %entry.do.end.i_crit_edge ], [ 1, %if.end.peel27.i.do.end.i_crit_edge ], [ %count.0.i, %if.end.i.do.end.i_crit_edge ]
  %busy_count.i = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busy_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i, i32 %16)
  %cmp4.not.i = icmp ult i32 %count.0.lcssa.i, %16
  br i1 %cmp4.not.i, label %do.end.i.secure_register_read.exit_crit_edge, label %if.then5.i

do.end.i.secure_register_read.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %secure_register_read.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.lcssa.i, ptr %busy_count.i, align 4
  br label %secure_register_read.exit

secure_register_read.exit:                        ; preds = %if.then5.i, %do.end.i.secure_register_read.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br i1 %tobool2.not.lcssa.i, label %if.end, label %secure_register_read.exit.cleanup_crit_edge

secure_register_read.exit.cleanup_crit_edge:      ; preds = %secure_register_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %secure_register_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %.lcssa.i, 1048575
  %resolution = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resolution, align 4
  %shr = lshr i32 %and, %19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %secure_register_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ -110, %secure_register_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @bcm_kona_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !66
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %and.peel.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel.i)
  %tobool2.not.peel.i = icmp eq i32 %and.peel.i, 0
  br i1 %tobool2.not.peel.i, label %do.body1.do.end.i_crit_edge, label %if.end.peel27.i

do.body1.do.end.i_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.peel27.i:                                  ; preds = %do.body1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !66
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %and.peel30.i = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel30.i)
  %tobool2.not.peel31.i = icmp eq i32 %and.peel30.i, 0
  br i1 %tobool2.not.peel31.i, label %if.end.peel27.i.do.end.i_crit_edge, label %if.end.peel27.i.if.end.i_crit_edge

if.end.peel27.i.if.end.i_crit_edge:               ; preds = %if.end.peel27.i
  br label %if.end.i

if.end.peel27.i.do.end.i_crit_edge:               ; preds = %if.end.peel27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.peel27.i.if.end.i_crit_edge
  %count.0.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 2, %if.end.peel27.i.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !66
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %and.i = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %tobool2.not.not.i = xor i1 %tobool2.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %count.0.i)
  %cmp3.i = icmp ult i32 %count.0.i, 999
  %or.cond.i = select i1 %tobool2.not.not.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.end.i.if.end.i_crit_edge, label %if.end.i.do.end.i_crit_edge, !llvm.loop !67

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.peel27.i.do.end.i_crit_edge, %do.body1.do.end.i_crit_edge
  %.lcssa.i = phi i32 [ %5, %do.body1.do.end.i_crit_edge ], [ %9, %if.end.peel27.i.do.end.i_crit_edge ], [ %14, %if.end.i.do.end.i_crit_edge ]
  %inc.lcssa.i = phi i32 [ 1, %do.body1.do.end.i_crit_edge ], [ 2, %if.end.peel27.i.do.end.i_crit_edge ], [ %inc.i, %if.end.i.do.end.i_crit_edge ]
  %tobool2.not.lcssa.i = phi i1 [ true, %do.body1.do.end.i_crit_edge ], [ true, %if.end.peel27.i.do.end.i_crit_edge ], [ %tobool2.not.i, %if.end.i.do.end.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ 0, %do.body1.do.end.i_crit_edge ], [ 1, %if.end.peel27.i.do.end.i_crit_edge ], [ %count.0.i, %if.end.i.do.end.i_crit_edge ]
  %busy_count.i = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busy_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i, i32 %16)
  %cmp4.not.i = icmp ult i32 %count.0.lcssa.i, %16
  br i1 %cmp4.not.i, label %do.end.i.secure_register_read.exit_crit_edge, label %if.then5.i

do.end.i.secure_register_read.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %secure_register_read.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.lcssa.i, ptr %busy_count.i, align 4
  br label %secure_register_read.exit

secure_register_read.exit:                        ; preds = %if.then5.i, %do.end.i.secure_register_read.exit_crit_edge
  %and12.i = and i32 %.lcssa.i, 503316479
  %retval.0.i = select i1 %tobool2.not.lcssa.i, i32 %and12.i, i32 -110
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.peel.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel.i) #6, !srcloc !66
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %and.peel.i41 = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel.i41)
  %tobool2.not.peel.i42 = icmp eq i32 %and.peel.i41, 0
  br i1 %tobool2.not.peel.i42, label %secure_register_read.exit.do.end.i60_crit_edge, label %if.end.peel27.i45

secure_register_read.exit.do.end.i60_crit_edge:   ; preds = %secure_register_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i60

if.end.peel27.i45:                                ; preds = %secure_register_read.exit
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.peel28.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel28.i) #6, !srcloc !66
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %and.peel30.i43 = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel30.i43)
  %tobool2.not.peel31.i44 = icmp eq i32 %and.peel30.i43, 0
  br i1 %tobool2.not.peel31.i44, label %if.end.peel27.i45.do.end.i60_crit_edge, label %if.end.peel27.i45.if.end.i53_crit_edge

if.end.peel27.i45.if.end.i53_crit_edge:           ; preds = %if.end.peel27.i45
  br label %if.end.i53

if.end.peel27.i45.do.end.i60_crit_edge:           ; preds = %if.end.peel27.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i60

if.end.i53:                                       ; preds = %if.end.i53.if.end.i53_crit_edge, %if.end.peel27.i45.if.end.i53_crit_edge
  %count.0.i46 = phi i32 [ %inc.i47, %if.end.i53.if.end.i53_crit_edge ], [ 2, %if.end.peel27.i45.if.end.i53_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #6
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !66
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %inc.i47 = add nuw nsw i32 %count.0.i46, 1
  %and.i48 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool2.not.i49 = icmp eq i32 %and.i48, 0
  %tobool2.not.not.i50 = xor i1 %tobool2.not.i49, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %count.0.i46)
  %cmp3.i51 = icmp ult i32 %count.0.i46, 999
  %or.cond.i52 = select i1 %tobool2.not.not.i50, i1 %cmp3.i51, i1 false
  br i1 %or.cond.i52, label %if.end.i53.if.end.i53_crit_edge, label %if.end.i53.do.end.i60_crit_edge, !llvm.loop !67

if.end.i53.do.end.i60_crit_edge:                  ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i60

if.end.i53.if.end.i53_crit_edge:                  ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i53

do.end.i60:                                       ; preds = %if.end.i53.do.end.i60_crit_edge, %if.end.peel27.i45.do.end.i60_crit_edge, %secure_register_read.exit.do.end.i60_crit_edge
  %.lcssa.i54 = phi i32 [ %21, %secure_register_read.exit.do.end.i60_crit_edge ], [ %25, %if.end.peel27.i45.do.end.i60_crit_edge ], [ %30, %if.end.i53.do.end.i60_crit_edge ]
  %inc.lcssa.i55 = phi i32 [ 1, %secure_register_read.exit.do.end.i60_crit_edge ], [ 2, %if.end.peel27.i45.do.end.i60_crit_edge ], [ %inc.i47, %if.end.i53.do.end.i60_crit_edge ]
  %tobool2.not.lcssa.i56 = phi i1 [ true, %secure_register_read.exit.do.end.i60_crit_edge ], [ true, %if.end.peel27.i45.do.end.i60_crit_edge ], [ %tobool2.not.i49, %if.end.i53.do.end.i60_crit_edge ]
  %count.0.lcssa.i57 = phi i32 [ 0, %secure_register_read.exit.do.end.i60_crit_edge ], [ 1, %if.end.peel27.i45.do.end.i60_crit_edge ], [ %count.0.i46, %if.end.i53.do.end.i60_crit_edge ]
  %31 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %busy_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i57, i32 %32)
  %cmp4.not.i59 = icmp ult i32 %count.0.lcssa.i57, %32
  br i1 %cmp4.not.i59, label %do.end.i60.secure_register_read.exit64_crit_edge, label %if.then5.i61

do.end.i60.secure_register_read.exit64_crit_edge: ; preds = %do.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %secure_register_read.exit64

if.then5.i61:                                     ; preds = %do.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.lcssa.i55, ptr %busy_count.i, align 4
  br label %secure_register_read.exit64

secure_register_read.exit64:                      ; preds = %if.then5.i61, %do.end.i60.secure_register_read.exit64_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %34 = select i1 %tobool2.not.lcssa.i, i1 %tobool2.not.lcssa.i56, i1 false
  br i1 %34, label %if.else, label %if.then12

if.then12:                                        ; preds = %secure_register_read.exit64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.else:                                          ; preds = %secure_register_read.exit64
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %retval.0.i, 1048575
  %and13 = lshr i32 %retval.0.i, 20
  %35 = and i32 %and13, 15
  %.lcssa.i54.op = and i32 %.lcssa.i54, 1048575
  %resolution = getelementptr inbounds %struct.bcm_kona_wdt, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resolution, align 4
  %shr15 = lshr i32 %and, %37
  %shr17 = lshr i32 %.lcssa.i54.op, %37
  %38 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %busy_count.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %35, i32 noundef %37, i32 noundef %shr15, i32 noundef %and, i32 noundef %and, i32 noundef %shr17, i32 noundef %.lcssa.i54.op, i32 noundef %.lcssa.i54.op, i32 noundef %39) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_bcm_kona_wdt__212_336_bcm_kona_wdt_driver_init6, !1, !"__initcall__kmod_bcm_kona_wdt__212_336_bcm_kona_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 336, i32 1}
!2 = !{ptr @__exitcall_bcm_kona_wdt_driver_exit, !1, !"__exitcall_bcm_kona_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias213, !4, !"__UNIQUE_ID_alias213", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 338, i32 1}
!5 = !{ptr @__UNIQUE_ID_author214, !6, !"__UNIQUE_ID_author214", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 339, i32 1}
!7 = !{ptr @__UNIQUE_ID_description215, !8, !"__UNIQUE_ID_description215", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 340, i32 1}
!9 = !{ptr @__UNIQUE_ID_file216, !10, !"__UNIQUE_ID_file216", i1 false, i1 false}
!10 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 341, i32 1}
!11 = !{ptr @__UNIQUE_ID_license217, !10, !"__UNIQUE_ID_license217", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 329, i32 12}
!14 = !{ptr @bcm_kona_wdt_driver, !15, !"bcm_kona_wdt_driver", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 327, i32 31}
!16 = !{ptr @bcm_kona_wdt_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 278, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 287, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcm_kona_wdt_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcm_kona_wdt_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 297, i32 3}
!29 = !{ptr @bcm_kona_wdt_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bcm_kona_wdt_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 308, i32 2}
!33 = !{ptr @bcm_kona_wdt_probe.__UNIQUE_ID_ddebug210, !32, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!34 = !{ptr @bcm_kona_wdt_wdd, !35, !"bcm_kona_wdt_wdd", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 260, i32 31}
!36 = !{ptr @bcm_kona_wdt_info, !37, !"bcm_kona_wdt_info", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 254, i32 35}
!38 = !{ptr @bcm_kona_wdt_ops, !39, !"bcm_kona_wdt_ops", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 246, i32 34}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 147, i32 22}
!42 = !{ptr @bcm_kona_fops, !43, !"bcm_kona_fops", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 133, i32 1}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 100, i32 15}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 110, i32 15}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 120, i32 7}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 316, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @bcm_kona_wdt_remove.__UNIQUE_ID_ddebug211, !51, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!54 = !{ptr @bcm_kona_wdt_of_match, !55, !"bcm_kona_wdt_of_match", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/bcm_kona_wdt.c", i32 321, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148494975, i64 2148494980, i64 2148494993, i64 2148495037, i64 2148495071, i64 2148495092}
!66 = !{i64 5112438}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.peeled.count", i32 2}
!69 = !{i64 5112020}
