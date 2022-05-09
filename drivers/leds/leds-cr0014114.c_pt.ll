; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-cr0014114.c_pt.bc'
source_filename = "../drivers/leds/leds-cr0014114.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.cr0014114 = type { i8, i32, %struct.delayed_work, ptr, %struct.mutex, ptr, ptr, i32, [0 x %struct.cr0014114_led] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cr0014114_led = type { ptr, %struct.led_classdev, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_leds_cr0014114__233_295_cr0014114_driver_init6 = internal global ptr @cr0014114_driver_init, section ".initcall6.init", align 4
@cr0014114_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @cr0014114_probe, ptr @cr0014114_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cr0014114_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cr0014114_driver_exit = internal global ptr @cr0014114_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [56 x i8] c"leds_cr0014114.author=Oleh Kravchenko <oleg@kaa.org.ua>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [48 x i8] c"leds_cr0014114.description=cr0014114 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [48 x i8] c"leds_cr0014114.file=drivers/leds/leds-cr0014114\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [30 x i8] c"leds_cr0014114.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [35 x i8] c"leds_cr0014114.alias=spi:cr0014114\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"leds_cr0014114\00", [17 x i8] zeroinitializer }, align 32
@cr0014114_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"crane,cr0014114\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cr0014114_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LEDs are not defined in device tree!\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cr0014114_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/leds/leds-cr0014114.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cr0014114_probe._entry_ptr = internal global ptr @cr0014114_probe._entry, section ".printk_index", align 4
@cr0014114_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@cr0014114_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&priv->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@cr0014114_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&priv->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cr0014114_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"first recount failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cr0014114_probe._entry_ptr.13 = internal global ptr @cr0014114_probe._entry.11, section ".printk_index", align 4
@cr0014114_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"second recount failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cr0014114_probe._entry_ptr.16 = internal global ptr @cr0014114_probe._entry.14, section ".printk_index", align 4
@cr0014114_recount_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 157, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sync of LEDs failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cr0014114_recount_work\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cr0014114_recount_work._entry_ptr = internal global ptr @cr0014114_recount_work._entry, section ".printk_index", align 4
@cr0014114_recount.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cr0014114_recount\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LEDs recount is started\0A\00", [39 x i8] zeroinitializer }, align 32
@cr0014114_recount.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LEDs recount is finished\0A\00", [38 x i8] zeroinitializer }, align 32
@cr0014114_recount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"with error %d\00", [18 x i8] zeroinitializer }, align 32
@cr0014114_recount._entry_ptr = internal global ptr @cr0014114_recount._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cr0014114\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@cr0014114_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register LED device, err %d\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cr0014114_probe_dt\00", [45 x i8] zeroinitializer }, align 32
@cr0014114_probe_dt._entry_ptr = internal global ptr @cr0014114_probe_dt._entry, section ".printk_index", align 4
@cr0014114_set_sync.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cr0014114_set_sync\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set brightness to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"cr0014114_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 286, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 290, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"cr0014114_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 279, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 222, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 235, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 236, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 246, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 253, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 157, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 86, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 103, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 106, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 196, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 197, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 202, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [33 x i8] c"../drivers/leds/leds-cr0014114.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 170, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_cr0014114_driver_exit, ptr @__initcall__kmod_leds_cr0014114__233_295_cr0014114_driver_init6, ptr @cr0014114_driver_exit, ptr @cr0014114_probe._entry, ptr @cr0014114_probe._entry.11, ptr @cr0014114_probe._entry.14, ptr @cr0014114_probe._entry_ptr, ptr @cr0014114_probe._entry_ptr.13, ptr @cr0014114_probe._entry_ptr.16, ptr @cr0014114_probe_dt._entry, ptr @cr0014114_probe_dt._entry_ptr, ptr @cr0014114_recount._entry, ptr @cr0014114_recount._entry_ptr, ptr @cr0014114_recount_work._entry, ptr @cr0014114_recount_work._entry_ptr, ptr @cr0014114_driver, ptr @.str, ptr @cr0014114_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cr0014114_probe.__key, ptr @.str.6, ptr @cr0014114_probe.__key.7, ptr @.str.8, ptr @cr0014114_probe.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_recount_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_recount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr0014114_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cr0014114_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @cr0014114_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cr0014114_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cr0014114_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cr0014114_probe(ptr noundef %spi) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_get_child_node_count(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 408) #6
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = add nuw i32 %2, 216
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add = add i32 %call, 2
  %call.i105 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %add, i32 noundef 3520) #6
  %buf = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i105, ptr %buf, align 4
  %tobool11.not = icmp eq ptr %call.i105, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %do.body14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body14:                                        ; preds = %if.end7
  %lock = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @cr0014114_probe.__key) #6
  %work = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @cr0014114_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry26 = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cr0014114_recount_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @cr0014114_probe.__key.9) #6
  %count37 = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %count37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %count37, align 4
  %dev39 = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spi, ptr %dev39, align 4
  %spi40 = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %spi40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spi, ptr %spi40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %12, -1
  %delay = getelementptr inbounds %struct.cr0014114, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %delay, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %call.i, align 4
  %call42 = tail call fastcc i32 @cr0014114_sync(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef %call42) #9
  br label %cleanup

if.end49:                                         ; preds = %do.body14
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %call.i, align 4
  %call51 = tail call fastcc i32 @cr0014114_sync(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef %call51) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %20 = getelementptr inbounds i8, ptr %init_data.i, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %22 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev39, align 4
  %call.i106 = tail call ptr @device_get_next_child_node(ptr noundef %23, ptr noundef null) #6
  %tobool.not29.i = icmp eq ptr %call.i106, null
  br i1 %tobool.not29.i, label %if.end58.if.end62_crit_edge, label %for.body.lr.ph.i

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

for.body.lr.ph.i:                                 ; preds = %if.end58
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %default_label.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.031.i = phi ptr [ %call.i106, %for.body.lr.ph.i ], [ %call9.i, %if.end.i.for.body.i_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cr0014114, ptr %call.i, i32 0, i32 8, i32 %i.030.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %ldev.i = getelementptr %struct.cr0014114, ptr %call.i, i32 0, i32 8, i32 %i.030.i, i32 1
  %max_brightness.i = getelementptr %struct.cr0014114, ptr %call.i, i32 0, i32 8, i32 %i.030.i, i32 1, i32 2
  %25 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 127, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr %struct.cr0014114, ptr %call.i, i32 0, i32 8, i32 %i.030.i, i32 1, i32 6
  %26 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cr0014114_set_sync, ptr %brightness_set_blocking.i, align 4
  %27 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %child.031.i, ptr %init_data.i, align 4
  %28 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.24, ptr %devicename.i, align 4
  %29 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.25, ptr %default_label.i, align 4
  %30 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev39, align 4
  %call5.i = call i32 @devm_led_classdev_register_ext(ptr noundef %31, ptr noundef %ldev.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i, label %cr0014114_probe_dt.exit

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %i.030.i, 1
  %32 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev39, align 4
  %call9.i = call ptr @device_get_next_child_node(ptr noundef %33, ptr noundef nonnull %child.031.i) #6
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end62_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.if.end62_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

cr0014114_probe_dt.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.26, i32 noundef %call5.i) #9
  call void @fwnode_handle_put(ptr noundef nonnull %child.031.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br label %cleanup

if.end62:                                         ; preds = %if.end.i.if.end62_crit_edge, %if.end58.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work, i32 noundef 360000) #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %cr0014114_probe_dt.exit, %do.end56, %do.end47, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call42, %do.end47 ], [ %call51, %do.end56 ], [ 0, %if.end62 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call5.i, %cr0014114_probe_dt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cr0014114_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.cr0014114, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %lock = getelementptr inbounds %struct.cr0014114, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cr0014114_recount_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %lock = getelementptr i8, ptr %work, i32 104
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %add.ptr, align 4
  %call = tail call fastcc i32 @cr0014114_sync(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %work, i32 100
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 360000) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cr0014114_sync(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %delay = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %delay, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub2 = sub i32 %2, %0
  %call = tail call i32 @jiffies_to_usecs(i32 noundef %sub2) #6
  %add = add i32 %call, 1
  tail call void @usleep_range_state(i32 noundef %call, i32 noundef %add, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priv, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then5, !prof !82

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @cr0014114_recount(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.err_crit_edge

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %priv, align 4
  tail call void @msleep(i32 noundef 10) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end.if.end11_crit_edge
  %buf = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %7, align 1
  %count = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1247.not = icmp eq i32 %10, 0
  br i1 %cmp1247.not, label %for.end.thread, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

for.end.thread:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  br label %cr0014114_calc_crc.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11.for.body_crit_edge
  %i.048 = phi i32 [ %add15, %for.body.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %brightness = getelementptr %struct.cr0014114, ptr %priv, i32 0, i32 8, i32 %i.048, i32 2
  %13 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %brightness, align 4
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %add15 = add nuw i32 %i.048, 1
  %arrayidx16 = getelementptr i8, ptr %16, i32 %add15
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx16, align 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %cmp12 = icmp ult i32 %add15, %19
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %sub.i = add i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp26.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp26.i, label %for.end.for.body.i_crit_edge, label %for.end.cr0014114_calc_crc.exit_crit_edge

for.end.cr0014114_calc_crc.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cr0014114_calc_crc.exit

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %crc.028.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.end.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %21, i32 %i.027.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %add.i = add nuw nsw i32 %crc.028.i, %conv.i
  %inc.i = add nuw i32 %i.027.i, 1
  %phi.cast.i = and i32 %add.i, 255
  %exitcond.not.i = icmp eq i32 %i.027.i, %19
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast30.i = trunc i32 %add.i to i8
  br label %cr0014114_calc_crc.exit

cr0014114_calc_crc.exit:                          ; preds = %for.end.loopexit.i, %for.end.cr0014114_calc_crc.exit_crit_edge, %for.end.thread
  %sub.i53 = phi i32 [ %sub.i, %for.end.cr0014114_calc_crc.exit_crit_edge ], [ %sub.i, %for.end.loopexit.i ], [ 1, %for.end.thread ]
  %24 = phi ptr [ %21, %for.end.cr0014114_calc_crc.exit_crit_edge ], [ %21, %for.end.loopexit.i ], [ %12, %for.end.thread ]
  %crc.0.lcssa.i = phi i8 [ 1, %for.end.cr0014114_calc_crc.exit_crit_edge ], [ %phi.cast30.i, %for.end.loopexit.i ], [ 1, %for.end.thread ]
  %conv4.i = or i8 %crc.0.lcssa.i, -128
  %25 = and i8 %crc.0.lcssa.i, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %switch.i = icmp ult i8 %25, 3
  %spec.select.i = select i1 %switch.i, i8 -2, i8 %conv4.i
  %arrayidx16.i = getelementptr i8, ptr %24, i32 %sub.i53
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select.i, ptr %arrayidx16.i, align 1
  %spi = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 5
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  %add22 = add i32 %32, 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %33 = getelementptr inbounds i8, ptr %t.i, i32 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 92)
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %30, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %36 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add22, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %37 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 40)
  %39 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %cr0014114_calc_crc.exit.spi_write.exit_crit_edge

cr0014114_calc_crc.exit.spi_write.exit_crit_edge: ; preds = %cr0014114_calc_crc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %cr0014114_calc_crc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %cr0014114_calc_crc.exit.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  br label %err

err:                                              ; preds = %spi_write.exit, %if.then5.err_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5.err_crit_edge ], [ %call.i.i, %spi_write.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %47, 1
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add25, ptr %delay, align 4
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cr0014114_recount(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %msg.i.i49 = alloca %struct.spi_message, align 4
  %t.i50 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cr0014114_recount.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cr0014114_recount, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cr0014114_recount.__UNIQUE_ID_ddebug230, ptr noundef %1, ptr noundef nonnull @.str.21) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %cmd, align 1
  %spi = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.end.spi_write.exit_crit_edge

do.end.spi_write.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %do.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %spi_write.exit.do.body12_crit_edge

spi_write.exit.do.body12_crit_edge:               ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

if.end6:                                          ; preds = %spi_write.exit
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -126, ptr %cmd, align 1
  %count = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp63.not = icmp eq i32 %21, 0
  br i1 %cmp63.not, label %if.end6.do.body12_crit_edge, label %for.body.lr.ph

if.end6.do.body12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

for.body.lr.ph:                                   ; preds = %if.end6
  %22 = getelementptr inbounds i8, ptr %t.i50, i32 4
  %len1.i51 = getelementptr inbounds %struct.spi_transfer, ptr %t.i50, i32 0, i32 2
  %23 = getelementptr inbounds i8, ptr %msg.i.i49, i32 8
  %prev.i.i.i.i.i.i52 = getelementptr inbounds %struct.list_head, ptr %msg.i.i49, i32 0, i32 1
  %resources.i.i.i.i.i53 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i49, i32 0, i32 10
  %prev.i2.i.i.i.i.i54 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i49, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i55 = getelementptr inbounds %struct.spi_transfer, ptr %t.i50, i32 0, i32 18
  %prev3.i.i.i.i.i.i57 = getelementptr inbounds %struct.spi_transfer, ptr %t.i50, i32 0, i32 18, i32 1
  br label %for.body

for.cond:                                         ; preds = %spi_write.exit60
  %inc = add nuw i32 %i.064, 1
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.body12_crit_edge

for.cond.do.body12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @msleep(i32 noundef 10) #6
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i50) #6
  %28 = call ptr @memset(ptr %22, i32 0, i32 92)
  %29 = ptrtoint ptr %t.i50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cmd, ptr %t.i50, align 4
  %30 = ptrtoint ptr %len1.i51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %len1.i51, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i49) #6
  %31 = call ptr @memset(ptr %23, i32 0, i32 40)
  %32 = ptrtoint ptr %msg.i.i49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i.i49, ptr %msg.i.i49, align 4
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i49, ptr %prev.i.i.i.i.i.i52, align 4
  %34 = ptrtoint ptr %resources.i.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i.i.i53, ptr %resources.i.i.i.i.i53, align 4
  %35 = ptrtoint ptr %prev.i2.i.i.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i.i.i53, ptr %prev.i2.i.i.i.i.i54, align 4
  %call.i.i.i.i.i.i56 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i55, ptr noundef nonnull %msg.i.i49, ptr noundef nonnull %msg.i.i49) #6
  br i1 %call.i.i.i.i.i.i56, label %if.end.i.i.i.i.i.i58, label %for.body.spi_write.exit60_crit_edge

for.body.spi_write.exit60_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit60

if.end.i.i.i.i.i.i58:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i.i55, ptr %prev.i.i.i.i.i.i52, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i49, ptr %transfer_list.i.i.i.i55, align 4
  %38 = ptrtoint ptr %prev3.i.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i49, ptr %prev3.i.i.i.i.i.i57, align 4
  %39 = ptrtoint ptr %msg.i.i49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i.i55, ptr %msg.i.i49, align 4
  br label %spi_write.exit60

spi_write.exit60:                                 ; preds = %if.end.i.i.i.i.i.i58, %for.body.spi_write.exit60_crit_edge
  %call.i.i59 = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i.i49) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i49) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool9.not = icmp eq i32 %call.i.i59, 0
  br i1 %tobool9.not, label %for.cond, label %spi_write.exit60.do.body12_crit_edge

spi_write.exit60.do.body12_crit_edge:             ; preds = %spi_write.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.body12:                                        ; preds = %spi_write.exit60.do.body12_crit_edge, %for.cond.do.body12_crit_edge, %if.end6.do.body12_crit_edge, %spi_write.exit.do.body12_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %spi_write.exit.do.body12_crit_edge ], [ 0, %if.end6.do.body12_crit_edge ], [ 0, %for.cond.do.body12_crit_edge ], [ %call.i.i59, %spi_write.exit60.do.body12_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cr0014114_recount.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cr0014114_recount, %if.then24)) #6
          to label %do.end28 [label %if.then24], !srcloc !83

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %dev25 = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 3
  %40 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cr0014114_recount.__UNIQUE_ID_ddebug231, ptr noundef %41, ptr noundef nonnull @.str.22) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool29.not = icmp eq i32 %ret.1, 0
  br i1 %tobool29.not, label %do.end28.if.end35_crit_edge, label %do.end33

do.end28.if.end35_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end33:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  %dev34 = getelementptr inbounds %struct.cr0014114, ptr %priv, i32 0, i32 3
  %42 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23, i32 noundef %ret.1) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %do.end28.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cr0014114_set_sync(ptr nocapture noundef %ldev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ldev, i32 -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cr0014114_set_sync.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cr0014114_set_sync, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.cr0014114, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cr0014114_set_sync.__UNIQUE_ID_ddebug232, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %brightness) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr inbounds %struct.cr0014114, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %conv = trunc i32 %brightness to i8
  %brightness5 = getelementptr i8, ptr %ldev, i32 400
  %6 = ptrtoint ptr %brightness5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %brightness5, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call7 = tail call fastcc i32 @cr0014114_sync(ptr noundef %8)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %lock9 = getelementptr inbounds %struct.cr0014114, ptr %10, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock9) #6
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_leds_cr0014114__233_295_cr0014114_driver_init6, !1, !"__initcall__kmod_leds_cr0014114__233_295_cr0014114_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-cr0014114.c", i32 295, i32 1}
!2 = !{ptr @__exitcall_cr0014114_driver_exit, !1, !"__exitcall_cr0014114_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author234, !4, !"__UNIQUE_ID_author234", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-cr0014114.c", i32 297, i32 1}
!5 = !{ptr @__UNIQUE_ID_description235, !6, !"__UNIQUE_ID_description235", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-cr0014114.c", i32 298, i32 1}
!7 = !{ptr @__UNIQUE_ID_file236, !8, !"__UNIQUE_ID_file236", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-cr0014114.c", i32 299, i32 1}
!9 = !{ptr @__UNIQUE_ID_license237, !8, !"__UNIQUE_ID_license237", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias238, !11, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-cr0014114.c", i32 300, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-cr0014114.c", i32 290, i32 12}
!14 = !{ptr @cr0014114_driver, !15, !"cr0014114_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-cr0014114.c", i32 286, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-cr0014114.c", i32 222, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cr0014114_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cr0014114_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cr0014114_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-cr0014114.c", i32 235, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cr0014114_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-cr0014114.c", i32 236, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cr0014114_probe.__key.9, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-cr0014114.c", i32 246, i32 3}
!34 = !{ptr @cr0014114_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cr0014114_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-cr0014114.c", i32 253, i32 3}
!38 = !{ptr @cr0014114_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cr0014114_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-cr0014114.c", i32 157, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cr0014114_recount_work._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @cr0014114_recount_work._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-cr0014114.c", i32 86, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cr0014114_recount.__UNIQUE_ID_ddebug230, !47, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-cr0014114.c", i32 103, i32 2}
!52 = !{ptr @cr0014114_recount.__UNIQUE_ID_ddebug231, !51, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-cr0014114.c", i32 106, i32 3}
!55 = !{ptr @cr0014114_recount._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cr0014114_recount._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-cr0014114.c", i32 196, i32 26}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-cr0014114.c", i32 197, i32 29}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/leds/leds-cr0014114.c", i32 202, i32 4}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cr0014114_probe_dt._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cr0014114_probe_dt._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/leds/leds-cr0014114.c", i32 170, i32 2}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cr0014114_set_sync.__UNIQUE_ID_ddebug232, !67, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!70 = !{ptr @cr0014114_dt_ids, !71, !"cr0014114_dt_ids", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-cr0014114.c", i32 279, i32 34}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148761624, i64 2148761629, i64 2148761642, i64 2148761686, i64 2148761720, i64 2148761741}
