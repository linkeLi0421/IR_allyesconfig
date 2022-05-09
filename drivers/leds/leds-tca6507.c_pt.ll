; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-tca6507.c_pt.bc'
source_filename = "../drivers/leds/leds-tca6507.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.led_info = type { ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_platform_data = type { i32, ptr }
%struct.tca6507_platform_data = type { %struct.led_platform_data, i32 }
%struct.tca6507_chip = type { i32, [11 x i8], [3 x %struct.bank], ptr, %struct.work_struct, %struct.spinlock, [7 x %struct.tca6507_led], %struct.gpio_chip, [7 x i32] }
%struct.bank = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tca6507_led = type { ptr, %struct.led_classdev, i32, i32, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }

@__initcall__kmod_leds_tca6507__290_819_tca6507_driver_init6 = internal global ptr @tca6507_driver_init, section ".initcall6.init", align 4
@tca6507_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tca6507_probe, ptr @tca6507_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_tca6507_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tca6507_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tca6507_driver_exit = internal global ptr @tca6507_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [46 x i8] c"leds_tca6507.author=NeilBrown <neilb@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [48 x i8] c"leds_tca6507.description=TCA6507 LED/GPO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [44 x i8] c"leds_tca6507.file=drivers/leds/leds-tca6507\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [28 x i8] c"leds_tca6507.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds-tca6507\00", [19 x i8] zeroinitializer }, align 32
@of_tca6507_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca6507\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tca6507_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tca6507\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tca6507_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Need %d entries in platform-data list\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tca6507_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-tca6507.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tca6507_probe._entry_ptr = internal global ptr @tca6507_probe._entry, section ".printk_index", align 4
@tca6507_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&tca->work)\00", [34 x i8] zeroinitializer }, align 32
@tca6507_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tca->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@time_codes = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 64, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 5760, i32 8128, i32 16320], [32 x i8] zeroinitializer }, align 32
@set_times.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds_tca6507\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_times\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chose on  times %d(%d) %d(%d) for %dms\0A\00", [56 x i8] zeroinitializer }, align 32
@set_times.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chose off times %d(%d) %d(%d) for %dms\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-tca6507\00", [19 x i8] zeroinitializer }, align 32
@tca6507_probe_gpios.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tca6507_probe_gpios.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"tca6507_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 809, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 811, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"of_tca6507_leds_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 725, i32 49 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"tca6507_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 187, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 748, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 756, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 757, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 691, i32 42 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 694, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 698, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 699, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 702, i32 41 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"time_codes\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 136, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 321, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 330, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 637, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.99 = private constant [31 x i8] c"../drivers/leds/leds-tca6507.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 644, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_tca6507_driver_exit, ptr @__initcall__kmod_leds_tca6507__290_819_tca6507_driver_init6, ptr @tca6507_driver_exit, ptr @tca6507_probe._entry, ptr @tca6507_probe._entry_ptr, ptr @tca6507_driver, ptr @.str, ptr @of_tca6507_leds_match, ptr @tca6507_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tca6507_probe.__key, ptr @.str.6, ptr @tca6507_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @time_codes, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tca6507_probe_gpios.lock_key, ptr @tca6507_probe_gpios.request_key], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6507_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_tca6507_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6507_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6507_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6507_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6507_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_codes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6507_probe_gpios.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca6507_probe_gpios.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6507_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tca6507_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tca6507_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tca6507_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6507_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %led.i = alloca %struct.led_info, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter2, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 7
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #7
  %tobool3.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.do.end_crit_edge, label %if.end6.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #7
  %tobool8.not68.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not68.i, label %if.end6.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end6.i
  %6 = getelementptr inbounds %struct.led_info, ptr %led.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.led_info, ptr %led.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.069.i = phi ptr [ %call7.i, %for.body.lr.ph.i ], [ %call31.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %led.i) #7
  %8 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %led.i, align 4, !annotation !70
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !70
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %7, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %reg.i, align 4, !annotation !70
  %call9.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %child.069.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %led.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.body.i.if.end14.i_crit_edge, label %if.then11.i

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call ptr @fwnode_get_name(ptr noundef nonnull %child.069.i) #7
  %12 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12.i, ptr %led.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %for.body.i.if.end14.i_crit_edge
  %call15.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %child.069.i, ptr noundef nonnull @.str.10, ptr noundef %6) #7
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %7, align 4
  %call16.i = call i32 @fwnode_property_match_string(ptr noundef nonnull %child.069.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp17.i = icmp sgt i32 %call16.i, -1
  br i1 %cmp17.i, label %if.then18.i, label %if.end14.i.if.end20.i_crit_edge

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  %or.i = or i32 %15, 1
  store i32 %or.i, ptr %7, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end20.i_crit_edge
  %call.i.i121 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.069.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %reg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %tobool22.not.i = icmp eq i32 %call.i.i121, 0
  br i1 %tobool22.not.i, label %lor.lhs.false23.i, label %if.end20.i.cleanup.i_crit_edge

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

lor.lhs.false23.i:                                ; preds = %if.end20.i
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp24.i = icmp ugt i32 %17, 6
  br i1 %cmp24.i, label %lor.lhs.false23.i.cleanup.i_crit_edge, label %for.inc.i

lor.lhs.false23.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %lor.lhs.false23.i.cleanup.i_crit_edge, %if.end20.i.cleanup.i_crit_edge
  %..i = phi i32 [ -22, %lor.lhs.false23.i.cleanup.i_crit_edge ], [ %call.i.i121, %if.end20.i.cleanup.i_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %child.069.i) #7
  %18 = inttoptr i32 %..i to ptr
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %led.i) #7
  br label %tca6507_led_dt_init.exit

for.inc.i:                                        ; preds = %lor.lhs.false23.i
  %arrayidx.i = getelementptr %struct.led_info, ptr %call5.i.i.i, i32 %17
  %19 = call ptr @memcpy(ptr %arrayidx.i, ptr %led.i, i32 12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %led.i) #7
  %call31.i = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %child.069.i) #7
  %tobool8.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool8.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %call.i63.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool33.not.i = icmp eq ptr %call.i63.i, null
  br i1 %tobool33.not.i, label %for.end.i.do.end_crit_edge, label %if.end36.i

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end36.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %leds37.i = getelementptr inbounds %struct.led_platform_data, ptr %call.i63.i, i32 0, i32 1
  %20 = ptrtoint ptr %leds37.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i.i, ptr %leds37.i, align 4
  %21 = ptrtoint ptr %call.i63.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %call.i63.i, align 4
  %gpio_base.i = getelementptr inbounds %struct.tca6507_platform_data, ptr %call.i63.i, i32 0, i32 1
  %22 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %gpio_base.i, align 4
  br label %tca6507_led_dt_init.exit

tca6507_led_dt_init.exit:                         ; preds = %if.end36.i, %cleanup.i
  %retval.2.i = phi ptr [ %18, %cleanup.i ], [ %call.i63.i, %if.end36.i ]
  %cmp.i122 = icmp ugt ptr %retval.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %tca6507_led_dt_init.exit.do.end_crit_edge, label %if.end7

tca6507_led_dt_init.exit.do.end_crit_edge:        ; preds = %tca6507_led_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %tca6507_led_dt_init.exit.do.end_crit_edge, %for.end.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.2.i134 = phi ptr [ %retval.2.i, %tca6507_led_dt_init.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end.i.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.do.end_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #10
  %23 = ptrtoint ptr %retval.2.i134 to i32
  br label %cleanup68

if.end7:                                          ; preds = %tca6507_led_dt_init.exit
  %call.i123 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3592, i32 noundef 3520) #7
  %tobool9.not = icmp eq ptr %call.i123, null
  br i1 %tobool9.not, label %if.end7.cleanup68_crit_edge, label %if.end11

if.end7.cleanup68_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end11:                                         ; preds = %if.end7
  %client12 = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 3
  %24 = ptrtoint ptr %client12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %client, ptr %client12, align 4
  %work = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 4
  call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %25 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @tca6507_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry17 = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 4, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tca6507_work, ptr %func, align 4
  %lock = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @tca6507_probe.__key.7, i16 noundef signext 3) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i123, ptr %driver_data.i.i, align 4
  %leds = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 6
  %leds26 = getelementptr inbounds %struct.led_platform_data, ptr %retval.2.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.0144 = phi i32 [ 0, %if.end11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.tca6507_led, ptr %leds, i32 %i.0144
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i123, ptr %add.ptr, align 4
  %num = getelementptr %struct.tca6507_led, ptr %leds, i32 %i.0144, i32 2
  %31 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.0144, ptr %num, align 4
  %32 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %leds26, align 4
  %arrayidx = getelementptr %struct.led_info, ptr %33, i32 %i.0144
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool27.not = icmp eq ptr %35, null
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr %struct.led_info, ptr %33, i32 %i.0144, i32 2
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool31.not = icmp eq i32 %37, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then32:                                        ; preds = %land.lhs.true
  %led_cdev = getelementptr %struct.tca6507_led, ptr %leds, i32 %i.0144, i32 1
  %38 = ptrtoint ptr %led_cdev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %led_cdev, align 4
  %39 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %leds26, align 4
  %default_trigger = getelementptr %struct.led_info, ptr %40, i32 %i.0144, i32 1
  %41 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %default_trigger, align 4
  %default_trigger42 = getelementptr %struct.tca6507_led, ptr %leds, i32 %i.0144, i32 1, i32 14
  %43 = ptrtoint ptr %default_trigger42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %default_trigger42, align 4
  %brightness_set = getelementptr %struct.tca6507_led, ptr %leds, i32 %i.0144, i32 1, i32 5
  %44 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @tca6507_brightness_set, ptr %brightness_set, align 4
  %blink_set = getelementptr %struct.tca6507_led, ptr %leds, i32 %i.0144, i32 1, i32 8
  %45 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @tca6507_blink_set, ptr %blink_set, align 4
  %bank = getelementptr %struct.tca6507_led, ptr %leds, i32 %i.0144, i32 7
  %46 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %bank, align 4
  %call.i124 = call i32 @led_classdev_register_ext(ptr noundef %dev1, ptr noundef %led_cdev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp47 = icmp slt i32 %call.i124, 0
  br i1 %cmp47, label %exit, label %if.then32.for.inc_crit_edge

if.then32.for.inc_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then32.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %47 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %leds26, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool.not.i125 = icmp eq ptr %50, null
  br i1 %tobool.not.i125, label %for.end.for.inc.i126_crit_edge, label %land.lhs.true.i

for.end.for.inc.i126_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i126

land.lhs.true.i:                                  ; preds = %for.end
  %flags.i = getelementptr %struct.led_info, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool5.not.i = icmp eq i32 %52, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i126_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i126_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i126

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.i = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 8, i32 0
  %53 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx6.i, align 4
  br label %for.inc.i126

for.inc.i126:                                     ; preds = %if.then.i, %land.lhs.true.i.for.inc.i126_crit_edge, %for.end.for.inc.i126_crit_edge
  %gpios.1.i = phi i32 [ 1, %if.then.i ], [ 0, %land.lhs.true.i.for.inc.i126_crit_edge ], [ 0, %for.end.for.inc.i126_crit_edge ]
  %54 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %leds26, align 4
  %arrayidx.1.i = getelementptr %struct.led_info, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %57, null
  br i1 %tobool.not.1.i, label %for.inc.i126.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i126.for.inc.1.i_crit_edge:               ; preds = %for.inc.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i126
  %flags.1.i = getelementptr %struct.led_info, ptr %55, i32 1, i32 2
  %58 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool5.not.1.i = icmp eq i32 %59, 0
  br i1 %tobool5.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %if.then.1.i

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.1.i = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 8, i32 %gpios.1.i
  %60 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %arrayidx6.1.i, align 4
  %inc.1.i = add nuw nsw i32 %gpios.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i126.for.inc.1.i_crit_edge
  %gpios.1.1.i = phi i32 [ %inc.1.i, %if.then.1.i ], [ %gpios.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge ], [ %gpios.1.i, %for.inc.i126.for.inc.1.i_crit_edge ]
  %61 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %leds26, align 4
  %arrayidx.2.i = getelementptr %struct.led_info, ptr %62, i32 2
  %63 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %64, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %flags.2.i = getelementptr %struct.led_info, ptr %62, i32 2, i32 2
  %65 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool5.not.2.i = icmp eq i32 %66, 0
  br i1 %tobool5.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %if.then.2.i

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.2.i = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 8, i32 %gpios.1.1.i
  %67 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %arrayidx6.2.i, align 4
  %inc.2.i = add nuw nsw i32 %gpios.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %gpios.1.2.i = phi i32 [ %inc.2.i, %if.then.2.i ], [ %gpios.1.1.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge ], [ %gpios.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %68 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %leds26, align 4
  %arrayidx.3.i = getelementptr %struct.led_info, ptr %69, i32 3
  %70 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %71, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %flags.3.i = getelementptr %struct.led_info, ptr %69, i32 3, i32 2
  %72 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool5.not.3.i = icmp eq i32 %73, 0
  br i1 %tobool5.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %if.then.3.i

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.3.i = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 8, i32 %gpios.1.2.i
  %74 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %arrayidx6.3.i, align 4
  %inc.3.i = add nuw nsw i32 %gpios.1.2.i, 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %gpios.1.3.i = phi i32 [ %inc.3.i, %if.then.3.i ], [ %gpios.1.2.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge ], [ %gpios.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %75 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %leds26, align 4
  %arrayidx.4.i = getelementptr %struct.led_info, ptr %76, i32 4
  %77 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %78, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %flags.4.i = getelementptr %struct.led_info, ptr %76, i32 4, i32 2
  %79 = ptrtoint ptr %flags.4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool5.not.4.i = icmp eq i32 %80, 0
  br i1 %tobool5.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %if.then.4.i

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.4.i = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 8, i32 %gpios.1.3.i
  %81 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %arrayidx6.4.i, align 4
  %inc.4.i = add nuw nsw i32 %gpios.1.3.i, 1
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %gpios.1.4.i = phi i32 [ %inc.4.i, %if.then.4.i ], [ %gpios.1.3.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge ], [ %gpios.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %82 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %leds26, align 4
  %arrayidx.5.i = getelementptr %struct.led_info, ptr %83, i32 5
  %84 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %85, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %flags.5.i = getelementptr %struct.led_info, ptr %83, i32 5, i32 2
  %86 = ptrtoint ptr %flags.5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool5.not.5.i = icmp eq i32 %87, 0
  br i1 %tobool5.not.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge, label %if.then.5.i

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.5.i = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 8, i32 %gpios.1.4.i
  %88 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 5, ptr %arrayidx6.5.i, align 4
  %inc.5.i = add nuw nsw i32 %gpios.1.4.i, 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %gpios.1.5.i = phi i32 [ %inc.5.i, %if.then.5.i ], [ %gpios.1.4.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge ], [ %gpios.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %89 = ptrtoint ptr %leds26 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %leds26, align 4
  %arrayidx.6.i = getelementptr %struct.led_info, ptr %90, i32 6
  %91 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %92, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %flags.6.i = getelementptr %struct.led_info, ptr %90, i32 6, i32 2
  %93 = ptrtoint ptr %flags.6.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool5.not.6.i = icmp eq i32 %94, 0
  br i1 %tobool5.not.6.i, label %land.lhs.true.6.i.for.inc.6.i_crit_edge, label %for.inc.6.thread.i

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

for.inc.6.thread.i:                               ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.6.i = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 8, i32 %gpios.1.5.i
  %95 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 6, ptr %arrayidx6.6.i, align 4
  %inc.6.i = add nuw nsw i32 %gpios.1.5.i, 1
  br label %if.end10.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpios.1.5.i)
  %tobool8.not.i127 = icmp eq i32 %gpios.1.5.i, 0
  br i1 %tobool8.not.i127, label %for.inc.6.i.if.end54_crit_edge, label %for.inc.6.i.if.end10.i_crit_edge

for.inc.6.i.if.end10.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

for.inc.6.i.if.end54_crit_edge:                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.end10.i:                                       ; preds = %for.inc.6.i.if.end10.i_crit_edge, %for.inc.6.thread.i
  %gpios.1.650.i = phi i32 [ %inc.6.i, %for.inc.6.thread.i ], [ %gpios.1.5.i, %for.inc.6.i.if.end10.i_crit_edge ]
  %gpio.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 7
  %96 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.18, ptr %gpio.i, align 4
  %conv.i = trunc i32 %gpios.1.650.i to i16
  %ngpio.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 7, i32 20
  %97 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %gpio_base.i128 = getelementptr inbounds %struct.tca6507_platform_data, ptr %retval.2.i, i32 0, i32 1
  %98 = ptrtoint ptr %gpio_base.i128 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %gpio_base.i128, align 4
  %base.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 7, i32 19
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %base.i, align 4
  %owner.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 7, i32 4
  %101 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %owner.i, align 4
  %direction_output.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 7, i32 9
  %102 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @tca6507_gpio_direction_output, ptr %direction_output.i, align 4
  %set.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 7, i32 12
  %103 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @tca6507_gpio_set_value, ptr %set.i, align 4
  %parent.i = getelementptr inbounds %struct.tca6507_chip, ptr %call.i123, i32 0, i32 7, i32 2
  %104 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %dev1, ptr %parent.i, align 4
  %call.i129 = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio.i, ptr noundef %call.i123, ptr noundef nonnull @tca6507_probe_gpios.lock_key, ptr noundef nonnull @tca6507_probe_gpios.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool18.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool18.not.i, label %if.end10.i.if.end54_crit_edge, label %exit.thread

if.end10.i.if.end54_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

exit.thread:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %ngpio.i, align 4
  br label %while.body.preheader

if.end54:                                         ; preds = %if.end10.i.if.end54_crit_edge, %for.inc.6.i.if.end54_crit_edge
  %106 = ptrtoint ptr %call.i123 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 127, ptr %call.i123, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %107 = load ptr, ptr @system_wq, align 4
  %call.i.i131 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %107, ptr noundef %work) #7
  br label %cleanup68

exit:                                             ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0144)
  %tobool57.not147 = icmp eq i32 %i.0144, 0
  br i1 %tobool57.not147, label %exit.cleanup68_crit_edge, label %exit.while.body.preheader_crit_edge

exit.while.body.preheader_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader

exit.cleanup68_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

while.body.preheader:                             ; preds = %exit.while.body.preheader_crit_edge, %exit.thread
  %err.3155 = phi i32 [ %call.i129, %exit.thread ], [ %call.i124, %exit.while.body.preheader_crit_edge ]
  %i.0141154 = phi i32 [ 7, %exit.thread ], [ %i.0144, %exit.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %while.body.preheader
  %dec148.in = phi i32 [ %dec148, %if.end67.while.body_crit_edge ], [ %i.0141154, %while.body.preheader ]
  %dec148 = add nsw i32 %dec148.in, -1
  %led_cdev60 = getelementptr %struct.tca6507_chip, ptr %call.i123, i32 0, i32 6, i32 %dec148, i32 1
  %108 = ptrtoint ptr %led_cdev60 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %led_cdev60, align 4
  %tobool62.not = icmp eq ptr %109, null
  br i1 %tobool62.not, label %while.body.if.end67_crit_edge, label %if.then63

while.body.if.end67_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then63:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @led_classdev_unregister(ptr noundef %led_cdev60) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %while.body.if.end67_crit_edge
  %tobool57.not = icmp eq i32 %dec148, 0
  br i1 %tobool57.not, label %if.end67.cleanup68_crit_edge, label %if.end67.while.body_crit_edge

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end67.cleanup68_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

cleanup68:                                        ; preds = %if.end67.cleanup68_crit_edge, %exit.cleanup68_crit_edge, %if.end54, %if.end7.cleanup68_crit_edge, %do.end, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ %23, %do.end ], [ 0, %if.end54 ], [ -5, %entry.cleanup68_crit_edge ], [ -12, %if.end7.cleanup68_crit_edge ], [ %call.i124, %exit.cleanup68_crit_edge ], [ %err.3155, %if.end67.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6507_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %led_cdev = getelementptr %struct.tca6507_chip, ptr %1, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %led_cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led_cdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef %led_cdev) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %led_cdev.1 = getelementptr %struct.tca6507_chip, ptr %1, i32 0, i32 6, i32 1, i32 1
  %4 = ptrtoint ptr %led_cdev.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_cdev.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %led_cdev.2 = getelementptr %struct.tca6507_chip, ptr %1, i32 0, i32 6, i32 2, i32 1
  %6 = ptrtoint ptr %led_cdev.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led_cdev.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.2) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %led_cdev.3 = getelementptr %struct.tca6507_chip, ptr %1, i32 0, i32 6, i32 3, i32 1
  %8 = ptrtoint ptr %led_cdev.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %led_cdev.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.3) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %led_cdev.4 = getelementptr %struct.tca6507_chip, ptr %1, i32 0, i32 6, i32 4, i32 1
  %10 = ptrtoint ptr %led_cdev.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %led_cdev.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.4) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %led_cdev.5 = getelementptr %struct.tca6507_chip, ptr %1, i32 0, i32 6, i32 5, i32 1
  %12 = ptrtoint ptr %led_cdev.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %led_cdev.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.5) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %led_cdev.6 = getelementptr %struct.tca6507_chip, ptr %1, i32 0, i32 6, i32 6, i32 1
  %14 = ptrtoint ptr %led_cdev.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %led_cdev.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef %led_cdev.6) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %ngpio.i = getelementptr inbounds %struct.tca6507_chip, ptr %1, i32 0, i32 7, i32 20
  %16 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ngpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %for.inc.6.tca6507_remove_gpio.exit_crit_edge, label %if.then.i

for.inc.6.tca6507_remove_gpio.exit_crit_edge:     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %tca6507_remove_gpio.exit

if.then.i:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %gpio.i = getelementptr inbounds %struct.tca6507_chip, ptr %1, i32 0, i32 7
  tail call void @gpiochip_remove(ptr noundef %gpio.i) #7
  br label %tca6507_remove_gpio.exit

tca6507_remove_gpio.exit:                         ; preds = %if.then.i, %for.inc.6.tca6507_remove_gpio.exit_crit_edge
  %work = getelementptr inbounds %struct.tca6507_chip, ptr %1, i32 0, i32 4
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tca6507_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %client = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %lock = getelementptr i8, ptr %work, i32 44
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %reg_file = getelementptr i8, ptr %work, i32 -100
  %4 = ptrtoint ptr %reg_file to i32
  call void @__asan_load1_noabort(i32 %4)
  %file.sroa.0.0.copyload = load i8, ptr %reg_file, align 4
  %file.sroa.5.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -99
  %5 = ptrtoint ptr %file.sroa.5.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %file.sroa.5.0.copyload = load i8, ptr %file.sroa.5.0.reg_file.sroa_idx, align 1
  %file.sroa.7.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -98
  %6 = ptrtoint ptr %file.sroa.7.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %file.sroa.7.0.copyload = load i8, ptr %file.sroa.7.0.reg_file.sroa_idx, align 2
  %file.sroa.9.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -97
  %7 = ptrtoint ptr %file.sroa.9.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %file.sroa.9.0.copyload = load i8, ptr %file.sroa.9.0.reg_file.sroa_idx, align 1
  %file.sroa.11.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -96
  %8 = ptrtoint ptr %file.sroa.11.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %file.sroa.11.0.copyload = load i8, ptr %file.sroa.11.0.reg_file.sroa_idx, align 4
  %file.sroa.13.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -95
  %9 = ptrtoint ptr %file.sroa.13.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %file.sroa.13.0.copyload = load i8, ptr %file.sroa.13.0.reg_file.sroa_idx, align 1
  %file.sroa.15.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -94
  %10 = ptrtoint ptr %file.sroa.15.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %file.sroa.15.0.copyload = load i8, ptr %file.sroa.15.0.reg_file.sroa_idx, align 2
  %file.sroa.17.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -93
  %11 = ptrtoint ptr %file.sroa.17.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %file.sroa.17.0.copyload = load i8, ptr %file.sroa.17.0.reg_file.sroa_idx, align 1
  %file.sroa.19.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -92
  %12 = ptrtoint ptr %file.sroa.19.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %file.sroa.19.0.copyload = load i8, ptr %file.sroa.19.0.reg_file.sroa_idx, align 4
  %file.sroa.21.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -91
  %13 = ptrtoint ptr %file.sroa.21.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %file.sroa.21.0.copyload = load i8, ptr %file.sroa.21.0.reg_file.sroa_idx, align 1
  %file.sroa.23.0.reg_file.sroa_idx = getelementptr i8, ptr %work, i32 -90
  %14 = ptrtoint ptr %file.sroa.23.0.reg_file.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %file.sroa.23.0.copyload = load i8, ptr %file.sroa.23.0.reg_file.sroa_idx, align 2
  store i32 0, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %file.sroa.0.0.copyload) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %and.1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %file.sroa.5.0.copyload) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %file.sroa.7.0.copyload) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %call.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %file.sroa.9.0.copyload) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %call.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %file.sroa.11.0.copyload) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %call.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext %file.sroa.13.0.copyload) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %call.6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %file.sroa.15.0.copyload) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %call.7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext %file.sroa.17.0.copyload) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %and.8 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %call.8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %file.sroa.19.0.copyload) #7
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %and.9 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  %call.9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext %file.sroa.21.0.copyload) #7
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %and.10 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  %call.10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 10, i8 noundef zeroext %file.sroa.23.0.copyload) #7
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9.for.inc.10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tca6507_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %brightness2 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %brightness2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %brightness, ptr %brightness2, align 4
  %ontime = getelementptr i8, ptr %led_cdev, i32 404
  %1 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ontime, align 4
  %offtime = getelementptr i8, ptr %led_cdev, i32 408
  %2 = ptrtoint ptr %offtime to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %offtime, align 4
  %call = tail call fastcc i32 @led_assign(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6507_blink_set(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end4thread-pre-split_crit_edge, label %if.else

entry.if.end4thread-pre-split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4thread-pre-split

if.else:                                          ; preds = %entry
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 15
  %cmp1.not = icmp eq ptr %blink_delay_on, %delay_on
  br i1 %cmp1.not, label %if.else.if.end4_crit_edge, label %if.else.if.end4thread-pre-split_crit_edge

if.else.if.end4thread-pre-split_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4thread-pre-split

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4thread-pre-split:                          ; preds = %if.else.if.end4thread-pre-split_crit_edge, %entry.if.end4thread-pre-split_crit_edge
  %.sink = phi i32 [ 1, %entry.if.end4thread-pre-split_crit_edge ], [ 0, %if.else.if.end4thread-pre-split_crit_edge ]
  %on_dflt = getelementptr i8, ptr %led_cdev, i32 412
  %2 = ptrtoint ptr %on_dflt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %on_dflt, align 4
  %3 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %delay_on, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4thread-pre-split, %if.else.if.end4_crit_edge
  %4 = phi i32 [ %.pr, %if.end4thread-pre-split ], [ %1, %if.else.if.end4_crit_edge ]
  %ontime = getelementptr i8, ptr %led_cdev, i32 404
  %5 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ontime, align 4
  %6 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.end4.if.end12thread-pre-split_crit_edge, label %if.else7

if.end4.if.end12thread-pre-split_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12thread-pre-split

if.else7:                                         ; preds = %if.end4
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 16
  %cmp8.not = icmp eq ptr %blink_delay_off, %delay_off
  br i1 %cmp8.not, label %if.else7.if.end12_crit_edge, label %if.else7.if.end12thread-pre-split_crit_edge

if.else7.if.end12thread-pre-split_crit_edge:      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12thread-pre-split

if.else7.if.end12_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12thread-pre-split:                         ; preds = %if.else7.if.end12thread-pre-split_crit_edge, %if.end4.if.end12thread-pre-split_crit_edge
  %.sink64 = phi i32 [ 1, %if.end4.if.end12thread-pre-split_crit_edge ], [ 0, %if.else7.if.end12thread-pre-split_crit_edge ]
  %off_dflt = getelementptr i8, ptr %led_cdev, i32 416
  %8 = ptrtoint ptr %off_dflt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink64, ptr %off_dflt, align 4
  %9 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr63 = load i32, ptr %delay_off, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.else7.if.end12_crit_edge
  %10 = phi i32 [ %.pr63, %if.end12thread-pre-split ], [ %7, %if.else7.if.end12_crit_edge ]
  %offtime = getelementptr i8, ptr %led_cdev, i32 408
  %11 = ptrtoint ptr %offtime to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %offtime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14 = icmp eq i32 %4, 0
  br i1 %cmp14, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %ontime, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19 = icmp eq i32 %10, 0
  br i1 %cmp19, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %offtime to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 512, ptr %offtime, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %14 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24 = icmp eq i32 %15, 0
  br i1 %cmp24, label %if.then25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %brightness, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %call = tail call fastcc i32 @led_assign(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp29 = icmp slt i32 %call, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ontime, align 4
  %18 = ptrtoint ptr %offtime to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %offtime, align 4
  %19 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %brightness, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ontime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ontime, align 4
  %22 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %delay_on, align 4
  %23 = ptrtoint ptr %offtime to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offtime, align 4
  %25 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %delay_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then30
  %retval.0 = phi i32 [ -22, %if.then30 ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @led_assign(ptr nocapture noundef %led) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led, align 4
  %lock = getelementptr inbounds %struct.tca6507_chip, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %bank.i = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 7
  %2 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.led_release.exit_crit_edge

entry.led_release.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %led_release.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led, align 4
  %bank1.i = getelementptr inbounds %struct.tca6507_chip, ptr %5, i32 0, i32 2
  %blink.i = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 8
  %6 = ptrtoint ptr %blink.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %time_use.i = getelementptr %struct.bank, ptr %bank1.i, i32 %3, i32 5
  %8 = ptrtoint ptr %time_use.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time_use.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %time_use.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %level_use.i = getelementptr %struct.bank, ptr %bank1.i, i32 %3, i32 6
  %10 = ptrtoint ptr %level_use.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level_use.i, align 4
  %dec4.i = add i32 %11, -1
  store i32 %dec4.i, ptr %level_use.i, align 4
  br label %led_release.exit

led_release.exit:                                 ; preds = %if.end.i, %entry.led_release.exit_crit_edge
  %blink6.i = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 8
  %12 = ptrtoint ptr %blink6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %blink6.i, align 4
  %13 = ptrtoint ptr %bank.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %bank.i, align 4
  %call5 = tail call fastcc i32 @led_prepare(ptr noundef %led)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %led_release.exit.if.end_crit_edge, label %if.then

led_release.exit.if.end_crit_edge:                ; preds = %led_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %led_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ontime = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 3
  %14 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ontime, align 4
  %offtime = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 4
  %15 = ptrtoint ptr %offtime to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %offtime, align 4
  %call6 = tail call fastcc i32 @led_prepare(ptr noundef %led)
  br label %if.end

if.end:                                           ; preds = %if.then, %led_release.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.tca6507_chip, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @led_prepare(ptr nocapture noundef %led) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness, align 4
  %shr.i = ashr i32 %1, 4
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 16
  %shl.i = and i32 %1, -16
  %or.i = or i32 %1, 15
  %retval.0.i = select i1 %tobool.not.i, i32 0, i32 %or.i
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i, ptr %brightness, align 4
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %num = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 2
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 4
  %shl.i280 = shl nuw i32 1, %6
  %neg.i = xor i32 %shl.i280, -1
  %arrayidx.i = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %and.i = and i32 %conv.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %and.i, %conv.i
  br i1 %cmp6.not.i, label %if.then.if.end14.i_crit_edge, label %if.then8.i

if.then.if.end14.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i = trunc i32 %and.i to i8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9.i, ptr %arrayidx.i, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %or13.i = or i32 %11, 1
  store i32 %or13.i, ptr %3, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.then.if.end14.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %13 to i32
  %and.1.i = and i32 %conv.1.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i, i32 %conv.1.i)
  %cmp6.not.1.i = icmp eq i32 %and.1.i, %conv.1.i
  br i1 %cmp6.not.1.i, label %if.end14.i.if.end14.1.i_crit_edge, label %if.then8.1.i

if.end14.i.if.end14.1.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1.i

if.then8.1.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.1.i = trunc i32 %and.1.i to i8
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.1.i, ptr %arrayidx.1.i, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %or13.1.i = or i32 %16, 2
  store i32 %or13.1.i, ptr %3, align 4
  br label %if.end14.1.i

if.end14.1.i:                                     ; preds = %if.then8.1.i, %if.end14.i.if.end14.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %18 to i32
  %and.2.i = and i32 %conv.2.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2.i, i32 %conv.2.i)
  %cmp6.not.2.i = icmp eq i32 %and.2.i, %conv.2.i
  br i1 %cmp6.not.2.i, label %if.end14.1.i.cleanup171_crit_edge, label %if.then8.2.i

if.end14.1.i.cleanup171_crit_edge:                ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.then8.2.i:                                     ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.2.i = trunc i32 %and.2.i to i8
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9.2.i, ptr %arrayidx.2.i, align 1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %or13.2.i = or i32 %21, 4
  store i32 %or13.2.i, ptr %3, align 4
  br label %cleanup171

if.end:                                           ; preds = %entry
  %ontime = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 3
  %22 = ptrtoint ptr %ontime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ontime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4 = icmp eq i32 %23, 0
  br i1 %cmp4, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %offtime = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 4
  %24 = ptrtoint ptr %offtime to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offtime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5 = icmp eq i32 %25, 0
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %if.end54

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp7 = icmp eq i32 %shr.i, 15
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %num9 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 2
  %26 = ptrtoint ptr %num9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num9, align 4
  %shl.i282 = shl nuw i32 1, %27
  %neg.i283 = xor i32 %shl.i282, -1
  %arrayidx.i284 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i284, align 1
  %conv.i285 = zext i8 %29 to i32
  %and.i286 = and i32 %conv.i285, %neg.i283
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i286, i32 %conv.i285)
  %cmp6.not.i288 = icmp eq i32 %and.i286, %conv.i285
  br i1 %cmp6.not.i288, label %if.then8.if.end14.i297_crit_edge, label %if.then8.i291

if.then8.if.end14.i297_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i297

if.then8.i291:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i289 = trunc i32 %and.i286 to i8
  %30 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv9.i289, ptr %arrayidx.i284, align 1
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %or13.i290 = or i32 %32, 1
  store i32 %or13.i290, ptr %3, align 4
  br label %if.end14.i297

if.end14.i297:                                    ; preds = %if.then8.i291, %if.then8.if.end14.i297_crit_edge
  %arrayidx.1.i292 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i292 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1.i292, align 1
  %conv.1.i293 = zext i8 %34 to i32
  %and.1.i294 = and i32 %conv.1.i293, %neg.i283
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i294, i32 %conv.1.i293)
  %cmp6.not.1.i296 = icmp eq i32 %and.1.i294, %conv.1.i293
  br i1 %cmp6.not.1.i296, label %if.end14.i297.if.end14.1.i306_crit_edge, label %if.then8.1.i300

if.end14.i297.if.end14.1.i306_crit_edge:          ; preds = %if.end14.i297
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1.i306

if.then8.1.i300:                                  ; preds = %if.end14.i297
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.1.i298 = trunc i32 %and.1.i294 to i8
  %35 = ptrtoint ptr %arrayidx.1.i292 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv9.1.i298, ptr %arrayidx.1.i292, align 1
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %or13.1.i299 = or i32 %37, 2
  store i32 %or13.1.i299, ptr %3, align 4
  br label %if.end14.1.i306

if.end14.1.i306:                                  ; preds = %if.then8.1.i300, %if.end14.i297.if.end14.1.i306_crit_edge
  %arrayidx.2.i301 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i301 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.2.i301, align 1
  %conv.2.i302 = zext i8 %39 to i32
  %or.2.i304 = or i32 %shl.i282, %conv.2.i302
  call void @__sanitizer_cov_trace_cmp4(i32 %or.2.i304, i32 %conv.2.i302)
  %cmp6.not.2.i305 = icmp eq i32 %or.2.i304, %conv.2.i302
  br i1 %cmp6.not.2.i305, label %if.end14.1.i306.cleanup171_crit_edge, label %if.then8.2.i309

if.end14.1.i306.cleanup171_crit_edge:             ; preds = %if.end14.1.i306
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.then8.2.i309:                                  ; preds = %if.end14.1.i306
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.2.i307 = trunc i32 %or.2.i304 to i8
  %40 = ptrtoint ptr %arrayidx.2.i301 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv9.2.i307, ptr %arrayidx.2.i301, align 1
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %or13.2.i308 = or i32 %42, 4
  store i32 %or13.2.i308, ptr %3, align 4
  br label %cleanup171

if.end10:                                         ; preds = %if.then6
  %sub = sub nsw i32 15, %shr.i
  %arrayidx = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %44)
  %cmp13 = icmp eq i32 %shr.i, %44
  br i1 %cmp13, label %if.end10.if.end34_crit_edge, label %lor.lhs.false14

if.end10.if.end34_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false14:                                  ; preds = %if.end10
  %level_use = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 2, i32 6
  %45 = ptrtoint ptr %level_use to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %level_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp17 = icmp eq i32 %46, 0
  br i1 %cmp17, label %lor.lhs.false14.if.end34_crit_edge, label %for.inc

lor.lhs.false14.if.end34_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.inc:                                          ; preds = %lor.lhs.false14
  %sub23 = sub i32 %shr.i, %44
  %47 = tail call i32 @llvm.abs.i32(i32 %sub23, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sub)
  %cmp26 = icmp slt i32 %47, %sub
  %best.1 = select i1 %cmp26, i32 2, i32 -1
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 %sub)
  %arrayidx.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %50)
  %cmp13.1 = icmp eq i32 %shr.i, %50
  br i1 %cmp13.1, label %for.inc.if.end34_crit_edge, label %lor.lhs.false14.1

for.inc.if.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false14.1:                                ; preds = %for.inc
  %level_use.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1, i32 6
  %51 = ptrtoint ptr %level_use.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level_use.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp17.1 = icmp eq i32 %52, 0
  br i1 %cmp17.1, label %lor.lhs.false14.1.if.end34_crit_edge, label %for.inc.1

lor.lhs.false14.1.if.end34_crit_edge:             ; preds = %lor.lhs.false14.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.inc.1:                                        ; preds = %lor.lhs.false14.1
  %sub23.1 = sub i32 %shr.i, %50
  %53 = tail call i32 @llvm.abs.i32(i32 %sub23.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %48)
  %cmp26.1 = icmp slt i32 %53, %48
  %best.1.1 = select i1 %cmp26.1, i32 1, i32 %best.1
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 %48)
  %arrayidx.2 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0
  %55 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %56)
  %cmp13.2 = icmp eq i32 %shr.i, %56
  br i1 %cmp13.2, label %for.inc.1.if.end34_crit_edge, label %lor.lhs.false14.2

for.inc.1.if.end34_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false14.2:                                ; preds = %for.inc.1
  %level_use.2 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0, i32 6
  %57 = ptrtoint ptr %level_use.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %level_use.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp17.2 = icmp eq i32 %58, 0
  br i1 %cmp17.2, label %lor.lhs.false14.2.if.end34_crit_edge, label %for.inc.2

lor.lhs.false14.2.if.end34_crit_edge:             ; preds = %lor.lhs.false14.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.inc.2:                                        ; preds = %lor.lhs.false14.2
  %sub23.2 = sub i32 %shr.i, %56
  %59 = tail call i32 @llvm.abs.i32(i32 %sub23.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %54)
  %cmp26.2 = icmp slt i32 %59, %54
  %best.1.2 = select i1 %cmp26.2, i32 0, i32 %best.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.1.2)
  %cmp29 = icmp eq i32 %best.1.2, -1
  br i1 %cmp29, label %if.then30, label %for.inc.2.if.end34_crit_edge

for.inc.2.if.end34_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %for.inc.2
  %num31 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 2
  %60 = ptrtoint ptr %num31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num31, align 4
  %shl.i311 = shl nuw i32 1, %61
  %neg.i312 = xor i32 %shl.i311, -1
  %arrayidx.i313 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 0
  %62 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i313, align 1
  %conv.i314 = zext i8 %63 to i32
  %and.i315 = and i32 %conv.i314, %neg.i312
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i315, i32 %conv.i314)
  %cmp6.not.i317 = icmp eq i32 %and.i315, %conv.i314
  br i1 %cmp6.not.i317, label %if.then30.if.end14.i326_crit_edge, label %if.then8.i320

if.then30.if.end14.i326_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i326

if.then8.i320:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i318 = trunc i32 %and.i315 to i8
  %64 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv9.i318, ptr %arrayidx.i313, align 1
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %3, align 4
  %or13.i319 = or i32 %66, 1
  store i32 %or13.i319, ptr %3, align 4
  br label %if.end14.i326

if.end14.i326:                                    ; preds = %if.then8.i320, %if.then30.if.end14.i326_crit_edge
  %arrayidx.1.i321 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx.1.i321 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.1.i321, align 1
  %conv.1.i322 = zext i8 %68 to i32
  %and.1.i323 = and i32 %conv.1.i322, %neg.i312
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i323, i32 %conv.1.i322)
  %cmp6.not.1.i325 = icmp eq i32 %and.1.i323, %conv.1.i322
  br i1 %cmp6.not.1.i325, label %if.end14.i326.if.end14.1.i335_crit_edge, label %if.then8.1.i329

if.end14.i326.if.end14.1.i335_crit_edge:          ; preds = %if.end14.i326
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1.i335

if.then8.1.i329:                                  ; preds = %if.end14.i326
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.1.i327 = trunc i32 %and.1.i323 to i8
  %69 = ptrtoint ptr %arrayidx.1.i321 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv9.1.i327, ptr %arrayidx.1.i321, align 1
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %3, align 4
  %or13.1.i328 = or i32 %71, 2
  store i32 %or13.1.i328, ptr %3, align 4
  br label %if.end14.1.i335

if.end14.1.i335:                                  ; preds = %if.then8.1.i329, %if.end14.i326.if.end14.1.i335_crit_edge
  %arrayidx.2.i330 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %arrayidx.2.i330 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.2.i330, align 1
  %conv.2.i331 = zext i8 %73 to i32
  %or.2.i333 = or i32 %shl.i311, %conv.2.i331
  call void @__sanitizer_cov_trace_cmp4(i32 %or.2.i333, i32 %conv.2.i331)
  %cmp6.not.2.i334 = icmp eq i32 %or.2.i333, %conv.2.i331
  br i1 %cmp6.not.2.i334, label %if.end14.1.i335.set_select.exit339_crit_edge, label %if.then8.2.i338

if.end14.1.i335.set_select.exit339_crit_edge:     ; preds = %if.end14.1.i335
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_select.exit339

if.then8.2.i338:                                  ; preds = %if.end14.1.i335
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.2.i336 = trunc i32 %or.2.i333 to i8
  %74 = ptrtoint ptr %arrayidx.2.i330 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv9.2.i336, ptr %arrayidx.2.i330, align 1
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %3, align 4
  %or13.2.i337 = or i32 %76, 4
  store i32 %or13.2.i337, ptr %3, align 4
  br label %set_select.exit339

set_select.exit339:                               ; preds = %if.then8.2.i338, %if.end14.1.i335.set_select.exit339_crit_edge
  %77 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 255, ptr %brightness, align 4
  br label %cleanup171

if.end34:                                         ; preds = %for.inc.2.if.end34_crit_edge, %lor.lhs.false14.2.if.end34_crit_edge, %for.inc.1.if.end34_crit_edge, %lor.lhs.false14.1.if.end34_crit_edge, %for.inc.if.end34_crit_edge, %lor.lhs.false14.if.end34_crit_edge, %if.end10.if.end34_crit_edge
  %best.3484 = phi i32 [ %best.1.2, %for.inc.2.if.end34_crit_edge ], [ 2, %if.end10.if.end34_crit_edge ], [ 2, %lor.lhs.false14.if.end34_crit_edge ], [ 1, %for.inc.if.end34_crit_edge ], [ 1, %lor.lhs.false14.1.if.end34_crit_edge ], [ 0, %for.inc.1.if.end34_crit_edge ], [ 0, %lor.lhs.false14.2.if.end34_crit_edge ]
  %arrayidx36 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %best.3484
  %level_use37 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %best.3484, i32 6
  %78 = ptrtoint ptr %level_use37 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %level_use37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not = icmp eq i32 %79, 0
  br i1 %tobool.not, label %if.then38, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then38:                                        ; preds = %if.end34
  %80 = zext i32 %best.3484 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i32 %best.3484, label %if.then38.set_level.exit_crit_edge [
    i32 0, label %if.then38.sw.bb.i_crit_edge
    i32 1, label %if.then38.sw.bb.i_crit_edge519
    i32 2, label %sw.bb1.i
  ]

if.then38.sw.bb.i_crit_edge519:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then38.sw.bb.i_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then38.set_level.exit_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_level.exit

sw.bb.i:                                          ; preds = %if.then38.sw.bb.i_crit_edge, %if.then38.sw.bb.i_crit_edge519
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best.3484)
  %tobool.not.i.i = icmp eq i32 %best.3484, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %shr.i, i32 %shl.i
  %spec.select23.i.i = select i1 %tobool.not.i.i, i32 240, i32 15
  %arrayidx.i.i = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 8
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %82 to i32
  %and.i.i = and i32 %spec.select23.i.i, %conv.i.i
  %or.i.i = or i32 %and.i.i, %spec.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.set_level.exit_crit_edge, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb.i.set_level.exit_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_level.exit

sw.bb1.i:                                         ; preds = %if.then38
  %arrayidx.i11.i = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 9
  %83 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i11.i, align 1
  %conv.i12.i = zext i8 %84 to i32
  %and.i13.i = and i32 %conv.i12.i, 240
  %or.i14.i = or i32 %and.i13.i, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i14.i, i32 %conv.i12.i)
  %cmp.not.i15.i = icmp eq i32 %or.i14.i, %conv.i12.i
  br i1 %cmp.not.i15.i, label %sw.bb1.i.set_level.exit_crit_edge, label %sw.bb1.i.sw.epilog.sink.split.i_crit_edge

sw.bb1.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb1.i.set_level.exit_crit_edge:                ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_level.exit

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %or.i14.sink.i = phi i32 [ %or.i.i, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ %or.i14.i, %sw.bb1.i.sw.epilog.sink.split.i_crit_edge ]
  %arrayidx.i11.sink.i = phi ptr [ %arrayidx.i.i, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ %arrayidx.i11.i, %sw.bb1.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink20.i = phi i32 [ 256, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ 512, %sw.bb1.i.sw.epilog.sink.split.i_crit_edge ]
  %conv7.i16.i = trunc i32 %or.i14.sink.i to i8
  %85 = ptrtoint ptr %arrayidx.i11.sink.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv7.i16.i, ptr %arrayidx.i11.sink.i, align 1
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %3, align 4
  %or11.i17.i = or i32 %87, %.sink20.i
  store i32 %or11.i17.i, ptr %3, align 4
  br label %set_level.exit

set_level.exit:                                   ; preds = %sw.epilog.sink.split.i, %sw.bb1.i.set_level.exit_crit_edge, %sw.bb.i.set_level.exit_crit_edge, %if.then38.set_level.exit_crit_edge
  %88 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shr.i, ptr %arrayidx36, align 4
  br label %if.end39

if.end39:                                         ; preds = %set_level.exit, %if.end34.if.end39_crit_edge
  %89 = ptrtoint ptr %level_use37 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %level_use37, align 4
  %inc = add i32 %90, 1
  store i32 %inc, ptr %level_use37, align 4
  %bank43 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 7
  %91 = ptrtoint ptr %bank43 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %best.3484, ptr %bank43, align 4
  %num44 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 2
  %92 = ptrtoint ptr %num44 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num44, align 4
  %shl.i341 = shl nuw i32 1, %93
  %neg.i342 = xor i32 %shl.i341, -1
  %arrayidx.i343 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 0
  %94 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i343, align 1
  %conv.i344 = zext i8 %95 to i32
  %and.i345 = and i32 %conv.i344, %neg.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best.3484)
  %tobool.not.i346 = icmp eq i32 %best.3484, 0
  %or.i347 = or i32 %shl.i341, %conv.i344
  %spec.select.i = select i1 %tobool.not.i346, i32 %and.i345, i32 %or.i347
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv.i344)
  %cmp6.not.i348 = icmp eq i32 %spec.select.i, %conv.i344
  br i1 %cmp6.not.i348, label %if.end39.if.end14.i357_crit_edge, label %if.then8.i351

if.end39.if.end14.i357_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i357

if.then8.i351:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i349 = trunc i32 %spec.select.i to i8
  %96 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv9.i349, ptr %arrayidx.i343, align 1
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %3, align 4
  %or13.i350 = or i32 %98, 1
  store i32 %or13.i350, ptr %3, align 4
  br label %if.end14.i357

if.end14.i357:                                    ; preds = %if.then8.i351, %if.end39.if.end14.i357_crit_edge
  %arrayidx.1.i352 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %arrayidx.1.i352 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.1.i352, align 1
  %conv.1.i353 = zext i8 %100 to i32
  %and.1.i354 = and i32 %conv.1.i353, %neg.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %best.3484)
  %tobool.not.1.i = icmp eq i32 %best.3484, 2
  %or.1.i355 = or i32 %shl.i341, %conv.1.i353
  %spec.select.1.i = select i1 %tobool.not.1.i, i32 %and.1.i354, i32 %or.1.i355
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.1.i, i32 %conv.1.i353)
  %cmp6.not.1.i356 = icmp eq i32 %spec.select.1.i, %conv.1.i353
  br i1 %cmp6.not.1.i356, label %if.end14.i357.if.end14.1.i366_crit_edge, label %if.then8.1.i360

if.end14.i357.if.end14.1.i366_crit_edge:          ; preds = %if.end14.i357
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1.i366

if.then8.1.i360:                                  ; preds = %if.end14.i357
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.1.i358 = trunc i32 %spec.select.1.i to i8
  %101 = ptrtoint ptr %arrayidx.1.i352 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv9.1.i358, ptr %arrayidx.1.i352, align 1
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %3, align 4
  %or13.1.i359 = or i32 %103, 2
  store i32 %or13.1.i359, ptr %3, align 4
  br label %if.end14.1.i366

if.end14.1.i366:                                  ; preds = %if.then8.1.i360, %if.end14.i357.if.end14.1.i366_crit_edge
  %arrayidx.2.i361 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 2
  %104 = ptrtoint ptr %arrayidx.2.i361 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.2.i361, align 1
  %conv.2.i362 = zext i8 %105 to i32
  %and.2.i363 = and i32 %conv.2.i362, %neg.i342
  %106 = and i32 %best.3484, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %107 = icmp eq i32 %106, 0
  %or.2.i364 = or i32 %shl.i341, %conv.2.i362
  %spec.select.2.i = select i1 %107, i32 %and.2.i363, i32 %or.2.i364
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.2.i, i32 %conv.2.i362)
  %cmp6.not.2.i365 = icmp eq i32 %spec.select.2.i, %conv.2.i362
  br i1 %cmp6.not.2.i365, label %if.end14.1.i366.set_select.exit370_crit_edge, label %if.then8.2.i369

if.end14.1.i366.set_select.exit370_crit_edge:     ; preds = %if.end14.1.i366
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_select.exit370

if.then8.2.i369:                                  ; preds = %if.end14.1.i366
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.2.i367 = trunc i32 %spec.select.2.i to i8
  %108 = ptrtoint ptr %arrayidx.2.i361 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv9.2.i367, ptr %arrayidx.2.i361, align 1
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %3, align 4
  %or13.2.i368 = or i32 %110, 4
  store i32 %or13.2.i368, ptr %3, align 4
  br label %set_select.exit370

set_select.exit370:                               ; preds = %if.then8.2.i369, %if.end14.1.i366.set_select.exit370_crit_edge
  %111 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i371 = icmp eq i32 %112, 0
  %shl.i372 = shl i32 %112, 4
  %or.i373 = or i32 %shl.i372, 15
  %retval.0.i374 = select i1 %tobool.not.i371, i32 0, i32 %or.i373
  %113 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i374, ptr %brightness, align 4
  br label %cleanup171

if.end54:                                         ; preds = %lor.lhs.false
  %mul.i = mul i32 %23, 9
  %div.i = sdiv i32 %mul.i, 8
  %mul1.i = mul i32 %23, 7
  %div2.i = sdiv i32 %mul1.i, 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %if.end54
  %c1.0 = phi i32 [ -1, %if.end54 ], [ %c1.3, %for.inc30.i.for.body.i_crit_edge ]
  %c2.0 = phi i32 [ -1, %if.end54 ], [ %c2.3, %for.inc30.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i32 [ 2, %if.end54 ], [ %indvars.iv.next.i, %for.inc30.i.for.body.i_crit_edge ]
  %c1.0107.i = phi i32 [ 1, %if.end54 ], [ %inc31.i, %for.inc30.i.for.body.i_crit_edge ]
  %diff.0106.i = phi i32 [ 65536, %if.end54 ], [ %diff.4.ph.i, %for.inc30.i.for.body.i_crit_edge ]
  %arrayidx.i375 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c1.0107.i
  %114 = ptrtoint ptr %arrayidx.i375 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i375, align 4
  %mul3.i = shl i32 %115, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %div2.i)
  %cmp4.i = icmp slt i32 %mul3.i, %div2.i
  br i1 %cmp4.i, label %for.body.i.for.inc30.i_crit_edge, label %if.end.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %div.i)
  %cmp5.i = icmp sgt i32 %115, %div.i
  br i1 %cmp5.i, label %if.end.i.for.end32.i_crit_edge, label %if.end.i.for.body10.i_crit_edge

if.end.i.for.body10.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body10.i

if.end.i.for.end32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %if.end.i.for.body10.i_crit_edge
  %c1.1 = phi i32 [ %c1.2, %for.inc.i.for.body10.i_crit_edge ], [ %c1.0, %if.end.i.for.body10.i_crit_edge ]
  %c2.1 = phi i32 [ %c2.2, %for.inc.i.for.body10.i_crit_edge ], [ %c2.0, %if.end.i.for.body10.i_crit_edge ]
  %diff.1104.i = phi i32 [ %diff.2.ph.i, %for.inc.i.for.body10.i_crit_edge ], [ %diff.0106.i, %if.end.i.for.body10.i_crit_edge ]
  %c2.0103.i = phi i32 [ %inc.i, %for.inc.i.for.body10.i_crit_edge ], [ 0, %if.end.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c2.0103.i
  %116 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %117, %115
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div2.i)
  %cmp12.i = icmp slt i32 %add.i, %div2.i
  br i1 %cmp12.i, label %for.body10.i.for.inc.i_crit_edge, label %if.end14.i376

for.body10.i.for.inc.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end14.i376:                                    ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div.i)
  %cmp15.i = icmp sgt i32 %add.i, %div.i
  br i1 %cmp15.i, label %if.end14.i376.for.inc30.i_crit_edge, label %if.end17.i

if.end14.i376.for.inc30.i_crit_edge:              ; preds = %if.end14.i376
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

if.end17.i:                                       ; preds = %if.end14.i376
  %sub.i = sub i32 %23, %add.i
  %118 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %diff.1104.i)
  %cmp20.not.i = icmp slt i32 %118, %diff.1104.i
  br i1 %cmp20.not.i, label %if.end22.i, label %if.end17.i.for.inc.i_crit_edge

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i)
  %cmp23.i = icmp eq i32 %23, %add.i
  br i1 %cmp23.i, label %if.end22.i.choose_times.exit_crit_edge, label %if.end22.i.for.inc.i_crit_edge

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end22.i.choose_times.exit_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %choose_times.exit

for.inc.i:                                        ; preds = %if.end22.i.for.inc.i_crit_edge, %if.end17.i.for.inc.i_crit_edge, %for.body10.i.for.inc.i_crit_edge
  %c1.2 = phi i32 [ %c1.1, %for.body10.i.for.inc.i_crit_edge ], [ %c1.0107.i, %if.end22.i.for.inc.i_crit_edge ], [ %c1.1, %if.end17.i.for.inc.i_crit_edge ]
  %c2.2 = phi i32 [ %c2.1, %for.body10.i.for.inc.i_crit_edge ], [ %c2.0103.i, %if.end22.i.for.inc.i_crit_edge ], [ %c2.1, %if.end17.i.for.inc.i_crit_edge ]
  %diff.2.ph.i = phi i32 [ %diff.1104.i, %for.body10.i.for.inc.i_crit_edge ], [ %118, %if.end22.i.for.inc.i_crit_edge ], [ %diff.1104.i, %if.end17.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %c2.0103.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indvars.iv.i
  br i1 %exitcond.i, label %for.inc.i.for.inc30.i_crit_edge, label %for.inc.i.for.body10.i_crit_edge

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %if.end14.i376.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %c1.3 = phi i32 [ %c1.0, %for.body.i.for.inc30.i_crit_edge ], [ %c1.1, %if.end14.i376.for.inc30.i_crit_edge ], [ %c1.2, %for.inc.i.for.inc30.i_crit_edge ]
  %c2.3 = phi i32 [ %c2.0, %for.body.i.for.inc30.i_crit_edge ], [ %c2.1, %if.end14.i376.for.inc30.i_crit_edge ], [ %c2.2, %for.inc.i.for.inc30.i_crit_edge ]
  %diff.4.ph.i = phi i32 [ %diff.0106.i, %for.body.i.for.inc30.i_crit_edge ], [ %diff.1104.i, %if.end14.i376.for.inc30.i_crit_edge ], [ %diff.2.ph.i, %for.inc.i.for.inc30.i_crit_edge ]
  %inc31.i = add nuw nsw i32 %c1.0107.i, 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond110.not.i = icmp eq i32 %indvars.iv.next.i, 17
  br i1 %exitcond110.not.i, label %for.inc30.i.for.end32.i_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc30.i.for.end32.i_crit_edge:                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.end32.i:                                      ; preds = %for.inc30.i.for.end32.i_crit_edge, %if.end.i.for.end32.i_crit_edge
  %c1.4 = phi i32 [ %c1.3, %for.inc30.i.for.end32.i_crit_edge ], [ %c1.0, %if.end.i.for.end32.i_crit_edge ]
  %c2.4 = phi i32 [ %c2.3, %for.inc30.i.for.end32.i_crit_edge ], [ %c2.0, %if.end.i.for.end32.i_crit_edge ]
  %diff.0.lcssa.i = phi i32 [ %diff.4.ph.i, %for.inc30.i.for.end32.i_crit_edge ], [ %diff.0106.i, %if.end.i.for.end32.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %diff.0.lcssa.i)
  %cmp33.i = icmp slt i32 %diff.0.lcssa.i, 65536
  br i1 %cmp33.i, label %if.then34.i, label %for.end32.i.cleanup171_crit_edge

for.end32.i.cleanup171_crit_edge:                 ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.then34.i:                                      ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i377 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i377)
  %tobool.not.i378 = icmp eq i32 %and.i377, 0
  %spec.select = select i1 %tobool.not.i378, i32 %c1.4, i32 %c2.4
  %spec.select494 = select i1 %tobool.not.i378, i32 %c2.4, i32 %c1.4
  %arrayidx37.i = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select
  %119 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx37.i, align 4
  %arrayidx38.i = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select494
  %121 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %spec.select494)
  %cmp40.i = icmp slt i32 %spec.select, %spec.select494
  %add42.i = zext i1 %cmp40.i to i32
  %add39.i = add i32 %120, %add42.i
  %retval.5.i = add i32 %add39.i, %122
  br label %choose_times.exit

choose_times.exit:                                ; preds = %if.then34.i, %if.end22.i.choose_times.exit_crit_edge
  %c1.6 = phi i32 [ %spec.select, %if.then34.i ], [ %c1.0107.i, %if.end22.i.choose_times.exit_crit_edge ]
  %c2.6 = phi i32 [ %spec.select494, %if.then34.i ], [ %c2.0103.i, %if.end22.i.choose_times.exit_crit_edge ]
  %retval.6.i = phi i32 [ %retval.5.i, %if.then34.i ], [ %23, %if.end22.i.choose_times.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.6.i)
  %cmp57 = icmp slt i32 %retval.6.i, 0
  br i1 %cmp57, label %choose_times.exit.cleanup171_crit_edge, label %if.end59

choose_times.exit.cleanup171_crit_edge:           ; preds = %choose_times.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.end59:                                         ; preds = %choose_times.exit
  %mul.i379 = mul i32 %25, 9
  %div.i380 = sdiv i32 %mul.i379, 8
  %mul1.i381 = mul i32 %25, 7
  %div2.i382 = sdiv i32 %mul1.i381, 8
  br label %for.body.i389

for.body.i389:                                    ; preds = %for.inc30.i413.for.body.i389_crit_edge, %if.end59
  %c1.7 = phi i32 [ %c1.6, %if.end59 ], [ %c1.10, %for.inc30.i413.for.body.i389_crit_edge ]
  %c2.7 = phi i32 [ %c2.6, %if.end59 ], [ %c2.10, %for.inc30.i413.for.body.i389_crit_edge ]
  %indvars.iv.i383 = phi i32 [ 2, %if.end59 ], [ %indvars.iv.next.i411, %for.inc30.i413.for.body.i389_crit_edge ]
  %c1.0107.i384 = phi i32 [ 1, %if.end59 ], [ %inc31.i410, %for.inc30.i413.for.body.i389_crit_edge ]
  %diff.0106.i385 = phi i32 [ 65536, %if.end59 ], [ %diff.4.ph.i409, %for.inc30.i413.for.body.i389_crit_edge ]
  %arrayidx.i386 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c1.0107.i384
  %123 = ptrtoint ptr %arrayidx.i386 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i386, align 4
  %mul3.i387 = shl i32 %124, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i387, i32 %div2.i382)
  %cmp4.i388 = icmp slt i32 %mul3.i387, %div2.i382
  br i1 %cmp4.i388, label %for.body.i389.for.inc30.i413_crit_edge, label %if.end.i391

for.body.i389.for.inc30.i413_crit_edge:           ; preds = %for.body.i389
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i413

if.end.i391:                                      ; preds = %for.body.i389
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %div.i380)
  %cmp5.i390 = icmp sgt i32 %124, %div.i380
  br i1 %cmp5.i390, label %if.end.i391.for.end32.i416_crit_edge, label %if.end.i391.for.body10.i397_crit_edge

if.end.i391.for.body10.i397_crit_edge:            ; preds = %if.end.i391
  br label %for.body10.i397

if.end.i391.for.end32.i416_crit_edge:             ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i416

for.body10.i397:                                  ; preds = %for.inc.i408.for.body10.i397_crit_edge, %if.end.i391.for.body10.i397_crit_edge
  %c1.8 = phi i32 [ %c1.9, %for.inc.i408.for.body10.i397_crit_edge ], [ %c1.7, %if.end.i391.for.body10.i397_crit_edge ]
  %c2.8 = phi i32 [ %c2.9, %for.inc.i408.for.body10.i397_crit_edge ], [ %c2.7, %if.end.i391.for.body10.i397_crit_edge ]
  %diff.1104.i392 = phi i32 [ %diff.2.ph.i405, %for.inc.i408.for.body10.i397_crit_edge ], [ %diff.0106.i385, %if.end.i391.for.body10.i397_crit_edge ]
  %c2.0103.i393 = phi i32 [ %inc.i406, %for.inc.i408.for.body10.i397_crit_edge ], [ 0, %if.end.i391.for.body10.i397_crit_edge ]
  %arrayidx11.i394 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c2.0103.i393
  %125 = ptrtoint ptr %arrayidx11.i394 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx11.i394, align 4
  %add.i395 = add i32 %126, %124
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i395, i32 %div2.i382)
  %cmp12.i396 = icmp slt i32 %add.i395, %div2.i382
  br i1 %cmp12.i396, label %for.body10.i397.for.inc.i408_crit_edge, label %if.end14.i399

for.body10.i397.for.inc.i408_crit_edge:           ; preds = %for.body10.i397
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i408

if.end14.i399:                                    ; preds = %for.body10.i397
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i395, i32 %div.i380)
  %cmp15.i398 = icmp sgt i32 %add.i395, %div.i380
  br i1 %cmp15.i398, label %if.end14.i399.for.inc30.i413_crit_edge, label %if.end17.i402

if.end14.i399.for.inc30.i413_crit_edge:           ; preds = %if.end14.i399
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i413

if.end17.i402:                                    ; preds = %if.end14.i399
  %sub.i400 = sub i32 %25, %add.i395
  %127 = tail call i32 @llvm.abs.i32(i32 %sub.i400, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %diff.1104.i392)
  %cmp20.not.i401 = icmp slt i32 %127, %diff.1104.i392
  br i1 %cmp20.not.i401, label %if.end22.i404, label %if.end17.i402.for.inc.i408_crit_edge

if.end17.i402.for.inc.i408_crit_edge:             ; preds = %if.end17.i402
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i408

if.end22.i404:                                    ; preds = %if.end17.i402
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add.i395)
  %cmp23.i403 = icmp eq i32 %25, %add.i395
  br i1 %cmp23.i403, label %if.end22.i404.choose_times.exit429_crit_edge, label %if.end22.i404.for.inc.i408_crit_edge

if.end22.i404.for.inc.i408_crit_edge:             ; preds = %if.end22.i404
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i408

if.end22.i404.choose_times.exit429_crit_edge:     ; preds = %if.end22.i404
  call void @__sanitizer_cov_trace_pc() #9
  br label %choose_times.exit429

for.inc.i408:                                     ; preds = %if.end22.i404.for.inc.i408_crit_edge, %if.end17.i402.for.inc.i408_crit_edge, %for.body10.i397.for.inc.i408_crit_edge
  %c1.9 = phi i32 [ %c1.8, %for.body10.i397.for.inc.i408_crit_edge ], [ %c1.0107.i384, %if.end22.i404.for.inc.i408_crit_edge ], [ %c1.8, %if.end17.i402.for.inc.i408_crit_edge ]
  %c2.9 = phi i32 [ %c2.8, %for.body10.i397.for.inc.i408_crit_edge ], [ %c2.0103.i393, %if.end22.i404.for.inc.i408_crit_edge ], [ %c2.8, %if.end17.i402.for.inc.i408_crit_edge ]
  %diff.2.ph.i405 = phi i32 [ %diff.1104.i392, %for.body10.i397.for.inc.i408_crit_edge ], [ %127, %if.end22.i404.for.inc.i408_crit_edge ], [ %diff.1104.i392, %if.end17.i402.for.inc.i408_crit_edge ]
  %inc.i406 = add nuw nsw i32 %c2.0103.i393, 1
  %exitcond.i407 = icmp eq i32 %inc.i406, %indvars.iv.i383
  br i1 %exitcond.i407, label %for.inc.i408.for.inc30.i413_crit_edge, label %for.inc.i408.for.body10.i397_crit_edge

for.inc.i408.for.body10.i397_crit_edge:           ; preds = %for.inc.i408
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i397

for.inc.i408.for.inc30.i413_crit_edge:            ; preds = %for.inc.i408
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i413

for.inc30.i413:                                   ; preds = %for.inc.i408.for.inc30.i413_crit_edge, %if.end14.i399.for.inc30.i413_crit_edge, %for.body.i389.for.inc30.i413_crit_edge
  %c1.10 = phi i32 [ %c1.7, %for.body.i389.for.inc30.i413_crit_edge ], [ %c1.8, %if.end14.i399.for.inc30.i413_crit_edge ], [ %c1.9, %for.inc.i408.for.inc30.i413_crit_edge ]
  %c2.10 = phi i32 [ %c2.7, %for.body.i389.for.inc30.i413_crit_edge ], [ %c2.8, %if.end14.i399.for.inc30.i413_crit_edge ], [ %c2.9, %for.inc.i408.for.inc30.i413_crit_edge ]
  %diff.4.ph.i409 = phi i32 [ %diff.0106.i385, %for.body.i389.for.inc30.i413_crit_edge ], [ %diff.1104.i392, %if.end14.i399.for.inc30.i413_crit_edge ], [ %diff.2.ph.i405, %for.inc.i408.for.inc30.i413_crit_edge ]
  %inc31.i410 = add nuw nsw i32 %c1.0107.i384, 1
  %indvars.iv.next.i411 = add nuw nsw i32 %indvars.iv.i383, 1
  %exitcond110.not.i412 = icmp eq i32 %indvars.iv.next.i411, 17
  br i1 %exitcond110.not.i412, label %for.inc30.i413.for.end32.i416_crit_edge, label %for.inc30.i413.for.body.i389_crit_edge

for.inc30.i413.for.body.i389_crit_edge:           ; preds = %for.inc30.i413
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i389

for.inc30.i413.for.end32.i416_crit_edge:          ; preds = %for.inc30.i413
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i416

for.end32.i416:                                   ; preds = %for.inc30.i413.for.end32.i416_crit_edge, %if.end.i391.for.end32.i416_crit_edge
  %c1.11 = phi i32 [ %c1.10, %for.inc30.i413.for.end32.i416_crit_edge ], [ %c1.7, %if.end.i391.for.end32.i416_crit_edge ]
  %c2.11 = phi i32 [ %c2.10, %for.inc30.i413.for.end32.i416_crit_edge ], [ %c2.7, %if.end.i391.for.end32.i416_crit_edge ]
  %diff.0.lcssa.i414 = phi i32 [ %diff.4.ph.i409, %for.inc30.i413.for.end32.i416_crit_edge ], [ %diff.0106.i385, %if.end.i391.for.end32.i416_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %diff.0.lcssa.i414)
  %cmp33.i415 = icmp slt i32 %diff.0.lcssa.i414, 65536
  br i1 %cmp33.i415, label %if.then34.i419, label %for.end32.i416.cleanup171_crit_edge

for.end32.i416.cleanup171_crit_edge:              ; preds = %for.end32.i416
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.then34.i419:                                   ; preds = %for.end32.i416
  call void @__sanitizer_cov_trace_pc() #9
  %and.i417 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i417)
  %tobool.not.i418 = icmp eq i32 %and.i417, 0
  %spec.select495 = select i1 %tobool.not.i418, i32 %c1.11, i32 %c2.11
  %spec.select496 = select i1 %tobool.not.i418, i32 %c2.11, i32 %c1.11
  %arrayidx37.i421 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select495
  %128 = ptrtoint ptr %arrayidx37.i421 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx37.i421, align 4
  %arrayidx38.i422 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select496
  %130 = ptrtoint ptr %arrayidx38.i422 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx38.i422, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select495, i32 %spec.select496)
  %cmp40.i424 = icmp slt i32 %spec.select495, %spec.select496
  %add42.i425 = zext i1 %cmp40.i424 to i32
  %add39.i423 = add i32 %129, %add42.i425
  %retval.5.i426 = add i32 %add39.i423, %131
  br label %choose_times.exit429

choose_times.exit429:                             ; preds = %if.then34.i419, %if.end22.i404.choose_times.exit429_crit_edge
  %retval.6.i428 = phi i32 [ %retval.5.i426, %if.then34.i419 ], [ %25, %if.end22.i404.choose_times.exit429_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.6.i428)
  %cmp62 = icmp slt i32 %retval.6.i428, 0
  br i1 %cmp62, label %choose_times.exit429.cleanup171_crit_edge, label %for.cond65.preheader

choose_times.exit429.cleanup171_crit_edge:        ; preds = %choose_times.exit429
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

for.cond65.preheader:                             ; preds = %choose_times.exit429
  %on_dflt89 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 5
  %off_dflt103 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 6
  %level_use70 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0, i32 6
  %132 = ptrtoint ptr %level_use70 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %level_use70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp71 = icmp eq i32 %133, 0
  br i1 %cmp71, label %for.cond65.preheader.if.end118_crit_edge, label %if.end73

for.cond65.preheader.if.end118_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.end73:                                         ; preds = %for.cond65.preheader
  %arrayidx69 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0
  %134 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %shr.i)
  %cmp77.not = icmp eq i32 %135, %shr.i
  br i1 %cmp77.not, label %if.end79, label %if.end73.for.inc113_crit_edge

if.end73.for.inc113_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc113

if.end79:                                         ; preds = %if.end73
  %time_use = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0, i32 5
  %136 = ptrtoint ptr %time_use to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %time_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp82 = icmp eq i32 %137, 0
  br i1 %cmp82, label %if.end79.if.end118_crit_edge, label %if.end84

if.end79.if.end118_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.end84:                                         ; preds = %if.end79
  %on_dflt = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0, i32 3
  %138 = ptrtoint ptr %on_dflt to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %on_dflt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool87.not = icmp eq i32 %139, 0
  br i1 %tobool87.not, label %lor.lhs.false88, label %if.end84.if.end98_crit_edge

if.end84.if.end98_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

lor.lhs.false88:                                  ; preds = %if.end84
  %140 = ptrtoint ptr %on_dflt89 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %on_dflt89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool90.not = icmp eq i32 %141, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %lor.lhs.false88.if.end98_crit_edge

lor.lhs.false88.if.end98_crit_edge:               ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %ontime94 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0, i32 1
  %142 = ptrtoint ptr %ontime94 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ontime94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %23)
  %cmp96 = icmp eq i32 %143, %23
  br i1 %cmp96, label %lor.lhs.false91.if.end98_crit_edge, label %lor.lhs.false91.for.inc113_crit_edge

lor.lhs.false91.for.inc113_crit_edge:             ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc113

lor.lhs.false91.if.end98_crit_edge:               ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.end98:                                         ; preds = %lor.lhs.false91.if.end98_crit_edge, %lor.lhs.false88.if.end98_crit_edge, %if.end84.if.end98_crit_edge
  %off_dflt = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0, i32 4
  %144 = ptrtoint ptr %off_dflt to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %off_dflt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool101.not = icmp eq i32 %145, 0
  br i1 %tobool101.not, label %lor.lhs.false102, label %if.end98.if.end118_crit_edge

if.end98.if.end118_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

lor.lhs.false102:                                 ; preds = %if.end98
  %146 = ptrtoint ptr %off_dflt103 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %off_dflt103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool104.not = icmp eq i32 %147, 0
  br i1 %tobool104.not, label %lor.lhs.false105, label %lor.lhs.false102.if.end118_crit_edge

lor.lhs.false102.if.end118_crit_edge:             ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

lor.lhs.false105:                                 ; preds = %lor.lhs.false102
  %offtime108 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 0, i32 2
  %148 = ptrtoint ptr %offtime108 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offtime108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %25)
  %cmp110 = icmp eq i32 %149, %25
  br i1 %cmp110, label %lor.lhs.false105.if.end118_crit_edge, label %lor.lhs.false105.for.inc113_crit_edge

lor.lhs.false105.for.inc113_crit_edge:            ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc113

lor.lhs.false105.if.end118_crit_edge:             ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

for.inc113:                                       ; preds = %lor.lhs.false105.for.inc113_crit_edge, %lor.lhs.false91.for.inc113_crit_edge, %if.end73.for.inc113_crit_edge
  %level_use70.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1, i32 6
  %150 = ptrtoint ptr %level_use70.1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %level_use70.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp71.1 = icmp eq i32 %151, 0
  br i1 %cmp71.1, label %for.inc113.if.end118_crit_edge, label %if.end73.1

for.inc113.if.end118_crit_edge:                   ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.end73.1:                                       ; preds = %for.inc113
  %arrayidx69.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1
  %152 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx69.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %shr.i)
  %cmp77.not.1 = icmp eq i32 %153, %shr.i
  br i1 %cmp77.not.1, label %if.end79.1, label %if.end73.1.cleanup171_crit_edge

if.end73.1.cleanup171_crit_edge:                  ; preds = %if.end73.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.end79.1:                                       ; preds = %if.end73.1
  %time_use.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1, i32 5
  %154 = ptrtoint ptr %time_use.1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %time_use.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp82.1 = icmp eq i32 %155, 0
  br i1 %cmp82.1, label %if.end79.1.if.end118_crit_edge, label %if.end84.1

if.end79.1.if.end118_crit_edge:                   ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.end84.1:                                       ; preds = %if.end79.1
  %on_dflt.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1, i32 3
  %156 = ptrtoint ptr %on_dflt.1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %on_dflt.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool87.not.1 = icmp eq i32 %157, 0
  br i1 %tobool87.not.1, label %lor.lhs.false88.1, label %if.end84.1.if.end98.1_crit_edge

if.end84.1.if.end98.1_crit_edge:                  ; preds = %if.end84.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.1

lor.lhs.false88.1:                                ; preds = %if.end84.1
  %158 = ptrtoint ptr %on_dflt89 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %on_dflt89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool90.not.1 = icmp eq i32 %159, 0
  br i1 %tobool90.not.1, label %lor.lhs.false91.1, label %lor.lhs.false88.1.if.end98.1_crit_edge

lor.lhs.false88.1.if.end98.1_crit_edge:           ; preds = %lor.lhs.false88.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.1

lor.lhs.false91.1:                                ; preds = %lor.lhs.false88.1
  %ontime94.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1, i32 1
  %160 = ptrtoint ptr %ontime94.1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ontime94.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %23)
  %cmp96.1 = icmp eq i32 %161, %23
  br i1 %cmp96.1, label %lor.lhs.false91.1.if.end98.1_crit_edge, label %lor.lhs.false91.1.cleanup171_crit_edge

lor.lhs.false91.1.cleanup171_crit_edge:           ; preds = %lor.lhs.false91.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

lor.lhs.false91.1.if.end98.1_crit_edge:           ; preds = %lor.lhs.false91.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.1

if.end98.1:                                       ; preds = %lor.lhs.false91.1.if.end98.1_crit_edge, %lor.lhs.false88.1.if.end98.1_crit_edge, %if.end84.1.if.end98.1_crit_edge
  %off_dflt.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1, i32 4
  %162 = ptrtoint ptr %off_dflt.1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %off_dflt.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool101.not.1 = icmp eq i32 %163, 0
  br i1 %tobool101.not.1, label %lor.lhs.false102.1, label %if.end98.1.if.end118_crit_edge

if.end98.1.if.end118_crit_edge:                   ; preds = %if.end98.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

lor.lhs.false102.1:                               ; preds = %if.end98.1
  %164 = ptrtoint ptr %off_dflt103 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %off_dflt103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool104.not.1 = icmp eq i32 %165, 0
  br i1 %tobool104.not.1, label %lor.lhs.false105.1, label %lor.lhs.false102.1.if.end118_crit_edge

lor.lhs.false102.1.if.end118_crit_edge:           ; preds = %lor.lhs.false102.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

lor.lhs.false105.1:                               ; preds = %lor.lhs.false102.1
  %offtime108.1 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 1, i32 2
  %166 = ptrtoint ptr %offtime108.1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %offtime108.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %25)
  %cmp110.1 = icmp eq i32 %167, %25
  br i1 %cmp110.1, label %lor.lhs.false105.1.if.end118_crit_edge, label %lor.lhs.false105.1.cleanup171_crit_edge

lor.lhs.false105.1.cleanup171_crit_edge:          ; preds = %lor.lhs.false105.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

lor.lhs.false105.1.if.end118_crit_edge:           ; preds = %lor.lhs.false105.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.end118:                                        ; preds = %lor.lhs.false105.1.if.end118_crit_edge, %lor.lhs.false102.1.if.end118_crit_edge, %if.end98.1.if.end118_crit_edge, %if.end79.1.if.end118_crit_edge, %for.inc113.if.end118_crit_edge, %lor.lhs.false105.if.end118_crit_edge, %lor.lhs.false102.if.end118_crit_edge, %if.end98.if.end118_crit_edge, %if.end79.if.end118_crit_edge, %for.cond65.preheader.if.end118_crit_edge
  %tobool.not.i440 = phi i1 [ false, %lor.lhs.false105.1.if.end118_crit_edge ], [ false, %lor.lhs.false102.1.if.end118_crit_edge ], [ false, %if.end98.1.if.end118_crit_edge ], [ false, %if.end79.1.if.end118_crit_edge ], [ false, %for.inc113.if.end118_crit_edge ], [ true, %if.end98.if.end118_crit_edge ], [ true, %lor.lhs.false102.if.end118_crit_edge ], [ true, %lor.lhs.false105.if.end118_crit_edge ], [ true, %if.end79.if.end118_crit_edge ], [ true, %for.cond65.preheader.if.end118_crit_edge ]
  %i.1502.lcssa = phi i32 [ 1, %lor.lhs.false105.1.if.end118_crit_edge ], [ 1, %lor.lhs.false102.1.if.end118_crit_edge ], [ 1, %if.end98.1.if.end118_crit_edge ], [ 1, %if.end79.1.if.end118_crit_edge ], [ 1, %for.inc113.if.end118_crit_edge ], [ 0, %if.end98.if.end118_crit_edge ], [ 0, %lor.lhs.false102.if.end118_crit_edge ], [ 0, %lor.lhs.false105.if.end118_crit_edge ], [ 0, %if.end79.if.end118_crit_edge ], [ 0, %for.cond65.preheader.if.end118_crit_edge ]
  %arrayidx120 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa
  %level_use121 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 6
  %168 = ptrtoint ptr %level_use121 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %level_use121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp122 = icmp eq i32 %169, 0
  br i1 %cmp122, label %if.then123, label %if.end118.if.end124_crit_edge

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_level(ptr noundef %3, i32 noundef %i.1502.lcssa, i32 noundef %shr.i)
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end118.if.end124_crit_edge
  %170 = ptrtoint ptr %level_use121 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %level_use121, align 4
  %inc126 = add i32 %171, 1
  store i32 %inc126, ptr %level_use121, align 4
  %bank127 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 7
  %172 = ptrtoint ptr %bank127 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %i.1502.lcssa, ptr %bank127, align 4
  %on_dflt128 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 3
  %173 = ptrtoint ptr %on_dflt128 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %on_dflt128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool129.not = icmp eq i32 %174, 0
  br i1 %tobool129.not, label %lor.lhs.false130, label %if.end124.if.then136_crit_edge

if.end124.if.then136_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then136

lor.lhs.false130:                                 ; preds = %if.end124
  %175 = ptrtoint ptr %on_dflt89 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %on_dflt89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool132.not = icmp eq i32 %176, 0
  br i1 %tobool132.not, label %lor.lhs.false130.if.then136_crit_edge, label %lor.lhs.false133

lor.lhs.false130.if.then136_crit_edge:            ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then136

lor.lhs.false133:                                 ; preds = %lor.lhs.false130
  %time_use134 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 5
  %177 = ptrtoint ptr %time_use134 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %time_use134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp135 = icmp eq i32 %178, 0
  br i1 %cmp135, label %lor.lhs.false133.if.then136_crit_edge, label %lor.lhs.false133.if.end141_crit_edge

lor.lhs.false133.if.end141_crit_edge:             ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

lor.lhs.false133.if.then136_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then136

if.then136:                                       ; preds = %lor.lhs.false133.if.then136_crit_edge, %lor.lhs.false130.if.then136_crit_edge, %if.end124.if.then136_crit_edge
  %179 = ptrtoint ptr %ontime to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ontime, align 4
  %ontime138 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 1
  %181 = ptrtoint ptr %ontime138 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %ontime138, align 4
  %182 = ptrtoint ptr %on_dflt89 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %on_dflt89, align 4
  %184 = ptrtoint ptr %on_dflt128 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %on_dflt128, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %lor.lhs.false133.if.end141_crit_edge
  %tobool156.not = phi i1 [ false, %if.then136 ], [ true, %lor.lhs.false133.if.end141_crit_edge ]
  %off_dflt142 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 4
  %185 = ptrtoint ptr %off_dflt142 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %off_dflt142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool143.not = icmp eq i32 %186, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %if.end141.if.end155.thread_crit_edge

if.end141.if.end155.thread_crit_edge:             ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155.thread

lor.lhs.false144:                                 ; preds = %if.end141
  %187 = ptrtoint ptr %off_dflt103 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %off_dflt103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool146.not = icmp eq i32 %188, 0
  br i1 %tobool146.not, label %lor.lhs.false144.if.end155.thread_crit_edge, label %lor.lhs.false147

lor.lhs.false144.if.end155.thread_crit_edge:      ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155.thread

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %time_use148 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 5
  %189 = ptrtoint ptr %time_use148 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %time_use148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp149 = icmp eq i32 %190, 0
  br i1 %cmp149, label %lor.lhs.false147.if.end155.thread_crit_edge, label %if.end155

lor.lhs.false147.if.end155.thread_crit_edge:      ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155.thread

if.end155.thread:                                 ; preds = %lor.lhs.false147.if.end155.thread_crit_edge, %lor.lhs.false144.if.end155.thread_crit_edge, %if.end141.if.end155.thread_crit_edge
  %191 = ptrtoint ptr %offtime to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %offtime, align 4
  %offtime152 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 2
  %193 = ptrtoint ptr %offtime152 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %offtime152, align 4
  %194 = ptrtoint ptr %off_dflt103 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %off_dflt103, align 4
  %196 = ptrtoint ptr %off_dflt142 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %off_dflt142, align 4
  br label %if.then157

if.end155:                                        ; preds = %lor.lhs.false147
  br i1 %tobool156.not, label %if.end155.if.end158_crit_edge, label %if.end155.if.then157_crit_edge

if.end155.if.then157_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then157

if.end155.if.end158_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then157:                                       ; preds = %if.end155.if.then157_crit_edge, %if.end155.thread
  tail call fastcc void @set_times(ptr noundef %3, i32 noundef %i.1502.lcssa)
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end155.if.end158_crit_edge
  %ontime159 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 1
  %197 = ptrtoint ptr %ontime159 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ontime159, align 4
  %199 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %ontime, align 4
  %offtime161 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 2
  %200 = ptrtoint ptr %offtime161 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %offtime161, align 4
  %202 = ptrtoint ptr %offtime to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %offtime, align 4
  %time_use163 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 2, i32 %i.1502.lcssa, i32 5
  %203 = ptrtoint ptr %time_use163 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %time_use163, align 4
  %inc164 = add i32 %204, 1
  store i32 %inc164, ptr %time_use163, align 4
  %blink = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 8
  %205 = ptrtoint ptr %blink to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1, ptr %blink, align 4
  %206 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i430 = icmp eq i32 %207, 0
  %shl.i431 = shl i32 %207, 4
  %or.i432 = or i32 %shl.i431, 15
  %retval.0.i433 = select i1 %tobool.not.i430, i32 0, i32 %or.i432
  %208 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %retval.0.i433, ptr %brightness, align 4
  %num169 = getelementptr inbounds %struct.tca6507_led, ptr %led, i32 0, i32 2
  %209 = ptrtoint ptr %num169 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %num169, align 4
  %shl.i434 = shl nuw i32 1, %210
  %neg.i435 = xor i32 %shl.i434, -1
  %arrayidx.i436 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 0
  %211 = ptrtoint ptr %arrayidx.i436 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx.i436, align 1
  %conv.i437 = zext i8 %212 to i32
  %and.i438 = and i32 %conv.i437, %neg.i435
  %or.i441 = or i32 %shl.i434, %conv.i437
  %spec.select.i442 = select i1 %tobool.not.i440, i32 %and.i438, i32 %or.i441
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i442, i32 %conv.i437)
  %cmp6.not.i443 = icmp eq i32 %spec.select.i442, %conv.i437
  br i1 %cmp6.not.i443, label %if.end158.if.end14.i455_crit_edge, label %if.then8.i446

if.end158.if.end14.i455_crit_edge:                ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i455

if.then8.i446:                                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i444 = trunc i32 %spec.select.i442 to i8
  %213 = ptrtoint ptr %arrayidx.i436 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv9.i444, ptr %arrayidx.i436, align 1
  %214 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %3, align 4
  %or13.i445 = or i32 %215, 1
  store i32 %or13.i445, ptr %3, align 4
  br label %if.end14.i455

if.end14.i455:                                    ; preds = %if.then8.i446, %if.end158.if.end14.i455_crit_edge
  %arrayidx.1.i447 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 1
  %216 = ptrtoint ptr %arrayidx.1.i447 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.1.i447, align 1
  %conv.1.i448 = zext i8 %217 to i32
  %or.1.i452 = or i32 %shl.i434, %conv.1.i448
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i452, i32 %conv.1.i448)
  %cmp6.not.1.i454 = icmp eq i32 %or.1.i452, %conv.1.i448
  br i1 %cmp6.not.1.i454, label %if.end14.i455.if.end14.1.i467_crit_edge, label %if.then8.1.i458

if.end14.i455.if.end14.1.i467_crit_edge:          ; preds = %if.end14.i455
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1.i467

if.then8.1.i458:                                  ; preds = %if.end14.i455
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.1.i456 = trunc i32 %or.1.i452 to i8
  %218 = ptrtoint ptr %arrayidx.1.i447 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv9.1.i456, ptr %arrayidx.1.i447, align 1
  %219 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %3, align 4
  %or13.1.i457 = or i32 %220, 2
  store i32 %or13.1.i457, ptr %3, align 4
  br label %if.end14.1.i467

if.end14.1.i467:                                  ; preds = %if.then8.1.i458, %if.end14.i455.if.end14.1.i467_crit_edge
  %arrayidx.2.i459 = getelementptr %struct.tca6507_chip, ptr %3, i32 0, i32 1, i32 2
  %221 = ptrtoint ptr %arrayidx.2.i459 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.2.i459, align 1
  %conv.2.i460 = zext i8 %222 to i32
  %or.2.i464 = or i32 %shl.i434, %conv.2.i460
  call void @__sanitizer_cov_trace_cmp4(i32 %or.2.i464, i32 %conv.2.i460)
  %cmp6.not.2.i466 = icmp eq i32 %or.2.i464, %conv.2.i460
  br i1 %cmp6.not.2.i466, label %if.end14.1.i467.cleanup171_crit_edge, label %if.then8.2.i470

if.end14.1.i467.cleanup171_crit_edge:             ; preds = %if.end14.1.i467
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.then8.2.i470:                                  ; preds = %if.end14.1.i467
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.2.i468 = trunc i32 %or.2.i464 to i8
  %223 = ptrtoint ptr %arrayidx.2.i459 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv9.2.i468, ptr %arrayidx.2.i459, align 1
  %224 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %3, align 4
  %or13.2.i469 = or i32 %225, 4
  store i32 %or13.2.i469, ptr %3, align 4
  br label %cleanup171

cleanup171:                                       ; preds = %if.then8.2.i470, %if.end14.1.i467.cleanup171_crit_edge, %lor.lhs.false105.1.cleanup171_crit_edge, %lor.lhs.false91.1.cleanup171_crit_edge, %if.end73.1.cleanup171_crit_edge, %choose_times.exit429.cleanup171_crit_edge, %for.end32.i416.cleanup171_crit_edge, %choose_times.exit.cleanup171_crit_edge, %for.end32.i.cleanup171_crit_edge, %set_select.exit370, %set_select.exit339, %if.then8.2.i309, %if.end14.1.i306.cleanup171_crit_edge, %if.then8.2.i, %if.end14.1.i.cleanup171_crit_edge
  %retval.1 = phi i32 [ 0, %set_select.exit370 ], [ 0, %set_select.exit339 ], [ -22, %choose_times.exit.cleanup171_crit_edge ], [ -22, %choose_times.exit429.cleanup171_crit_edge ], [ 0, %if.end14.1.i.cleanup171_crit_edge ], [ 0, %if.then8.2.i ], [ 0, %if.end14.1.i306.cleanup171_crit_edge ], [ 0, %if.then8.2.i309 ], [ 0, %if.end14.1.i467.cleanup171_crit_edge ], [ 0, %if.then8.2.i470 ], [ -22, %for.end32.i.cleanup171_crit_edge ], [ -22, %for.end32.i416.cleanup171_crit_edge ], [ -22, %lor.lhs.false105.1.cleanup171_crit_edge ], [ -22, %lor.lhs.false91.1.cleanup171_crit_edge ], [ -22, %if.end73.1.cleanup171_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @set_level(ptr nocapture noundef %tca, i32 noundef %bank, i32 noundef %level) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bank to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %bank, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge21
    i32 2, label %sw.bb1
  ]

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bank)
  %tobool.not.i = icmp eq i32 %bank, 0
  %shl1.i = shl i32 %level, 4
  %spec.select.i = select i1 %tobool.not.i, i32 %level, i32 %shl1.i
  %spec.select23.i = select i1 %tobool.not.i, i32 240, i32 15
  %arrayidx.i = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %and.i = and i32 %spec.select23.i, %conv.i
  %or.i = or i32 %and.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %or.i, %conv.i
  br i1 %cmp.not.i, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %arrayidx.i11 = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i11, align 1
  %conv.i12 = zext i8 %4 to i32
  %and.i13 = and i32 %conv.i12, 240
  %or.i14 = or i32 %and.i13, %level
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i14, i32 %conv.i12)
  %cmp.not.i15 = icmp eq i32 %or.i14, %conv.i12
  br i1 %cmp.not.i15, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.sw.epilog.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %or.i14.sink = phi i32 [ %or.i, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %or.i14, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  %arrayidx.i11.sink = phi ptr [ %arrayidx.i, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %arrayidx.i11, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  %.sink20 = phi i32 [ 256, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 512, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  %conv7.i16 = trunc i32 %or.i14.sink to i8
  %5 = ptrtoint ptr %arrayidx.i11.sink to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv7.i16, ptr %arrayidx.i11.sink, align 1
  %6 = ptrtoint ptr %tca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tca, align 4
  %or11.i17 = or i32 %7, %.sink20
  store i32 %or11.i17, ptr %tca, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %arrayidx = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 2, i32 %bank
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %level, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_times(ptr noundef %tca, i32 noundef %bank) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ontime = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 2, i32 %bank, i32 1
  %0 = ptrtoint ptr %ontime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ontime, align 4
  %mul.i = mul i32 %1, 9
  %div.i = sdiv i32 %mul.i, 8
  %mul1.i = mul i32 %1, 7
  %div2.i = sdiv i32 %mul1.i, 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %entry
  %c1.0 = phi i32 [ -1, %entry ], [ %c1.3, %for.inc30.i.for.body.i_crit_edge ]
  %c2.0 = phi i32 [ -1, %entry ], [ %c2.3, %for.inc30.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i32 [ 2, %entry ], [ %indvars.iv.next.i, %for.inc30.i.for.body.i_crit_edge ]
  %c1.0107.i = phi i32 [ 1, %entry ], [ %inc31.i, %for.inc30.i.for.body.i_crit_edge ]
  %diff.0106.i = phi i32 [ 65536, %entry ], [ %diff.4.ph.i, %for.inc30.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c1.0107.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %mul3.i = shl i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %div2.i)
  %cmp4.i = icmp slt i32 %mul3.i, %div2.i
  br i1 %cmp4.i, label %for.body.i.for.inc30.i_crit_edge, label %if.end.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div.i)
  %cmp5.i = icmp sgt i32 %3, %div.i
  br i1 %cmp5.i, label %if.end.i.for.end32.i_crit_edge, label %if.end.i.for.body10.i_crit_edge

if.end.i.for.body10.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body10.i

if.end.i.for.end32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %if.end.i.for.body10.i_crit_edge
  %c1.1 = phi i32 [ %c1.2, %for.inc.i.for.body10.i_crit_edge ], [ %c1.0, %if.end.i.for.body10.i_crit_edge ]
  %c2.1 = phi i32 [ %c2.2, %for.inc.i.for.body10.i_crit_edge ], [ %c2.0, %if.end.i.for.body10.i_crit_edge ]
  %diff.1104.i = phi i32 [ %diff.2.ph.i, %for.inc.i.for.body10.i_crit_edge ], [ %diff.0106.i, %if.end.i.for.body10.i_crit_edge ]
  %c2.0103.i = phi i32 [ %inc.i, %for.inc.i.for.body10.i_crit_edge ], [ 0, %if.end.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c2.0103.i
  %4 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div2.i)
  %cmp12.i = icmp slt i32 %add.i, %div2.i
  br i1 %cmp12.i, label %for.body10.i.for.inc.i_crit_edge, label %if.end14.i

for.body10.i.for.inc.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div.i)
  %cmp15.i = icmp sgt i32 %add.i, %div.i
  br i1 %cmp15.i, label %if.end14.i.for.inc30.i_crit_edge, label %if.end17.i

if.end14.i.for.inc30.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

if.end17.i:                                       ; preds = %if.end14.i
  %sub.i = sub i32 %1, %add.i
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %diff.1104.i)
  %cmp20.not.i = icmp slt i32 %6, %diff.1104.i
  br i1 %cmp20.not.i, label %if.end22.i, label %if.end17.i.for.inc.i_crit_edge

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add.i)
  %cmp23.i = icmp eq i32 %1, %add.i
  br i1 %cmp23.i, label %if.end22.i.choose_times.exit_crit_edge, label %if.end22.i.for.inc.i_crit_edge

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end22.i.choose_times.exit_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %choose_times.exit

for.inc.i:                                        ; preds = %if.end22.i.for.inc.i_crit_edge, %if.end17.i.for.inc.i_crit_edge, %for.body10.i.for.inc.i_crit_edge
  %c1.2 = phi i32 [ %c1.1, %for.body10.i.for.inc.i_crit_edge ], [ %c1.0107.i, %if.end22.i.for.inc.i_crit_edge ], [ %c1.1, %if.end17.i.for.inc.i_crit_edge ]
  %c2.2 = phi i32 [ %c2.1, %for.body10.i.for.inc.i_crit_edge ], [ %c2.0103.i, %if.end22.i.for.inc.i_crit_edge ], [ %c2.1, %if.end17.i.for.inc.i_crit_edge ]
  %diff.2.ph.i = phi i32 [ %diff.1104.i, %for.body10.i.for.inc.i_crit_edge ], [ %6, %if.end22.i.for.inc.i_crit_edge ], [ %diff.1104.i, %if.end17.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %c2.0103.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %indvars.iv.i
  br i1 %exitcond.i, label %for.inc.i.for.inc30.i_crit_edge, label %for.inc.i.for.body10.i_crit_edge

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %if.end14.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %c1.3 = phi i32 [ %c1.0, %for.body.i.for.inc30.i_crit_edge ], [ %c1.1, %if.end14.i.for.inc30.i_crit_edge ], [ %c1.2, %for.inc.i.for.inc30.i_crit_edge ]
  %c2.3 = phi i32 [ %c2.0, %for.body.i.for.inc30.i_crit_edge ], [ %c2.1, %if.end14.i.for.inc30.i_crit_edge ], [ %c2.2, %for.inc.i.for.inc30.i_crit_edge ]
  %diff.4.ph.i = phi i32 [ %diff.0106.i, %for.body.i.for.inc30.i_crit_edge ], [ %diff.1104.i, %if.end14.i.for.inc30.i_crit_edge ], [ %diff.2.ph.i, %for.inc.i.for.inc30.i_crit_edge ]
  %inc31.i = add nuw nsw i32 %c1.0107.i, 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond110.not.i = icmp eq i32 %indvars.iv.next.i, 17
  br i1 %exitcond110.not.i, label %for.inc30.i.for.end32.i_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc30.i.for.end32.i_crit_edge:                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i

for.end32.i:                                      ; preds = %for.inc30.i.for.end32.i_crit_edge, %if.end.i.for.end32.i_crit_edge
  %c1.4 = phi i32 [ %c1.3, %for.inc30.i.for.end32.i_crit_edge ], [ %c1.0, %if.end.i.for.end32.i_crit_edge ]
  %c2.4 = phi i32 [ %c2.3, %for.inc30.i.for.end32.i_crit_edge ], [ %c2.0, %if.end.i.for.end32.i_crit_edge ]
  %diff.0.lcssa.i = phi i32 [ %diff.4.ph.i, %for.inc30.i.for.end32.i_crit_edge ], [ %diff.0106.i, %if.end.i.for.end32.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %diff.0.lcssa.i)
  %cmp33.i = icmp slt i32 %diff.0.lcssa.i, 65536
  br i1 %cmp33.i, label %if.then34.i, label %for.end32.i.cleanup_crit_edge

for.end32.i.cleanup_crit_edge:                    ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34.i:                                      ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.not.i, i32 %c1.4, i32 %c2.4
  %spec.select216 = select i1 %tobool.not.i, i32 %c2.4, i32 %c1.4
  %arrayidx37.i = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select
  %7 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx37.i, align 4
  %arrayidx38.i = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select216
  %9 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %spec.select216)
  %cmp40.i = icmp slt i32 %spec.select, %spec.select216
  %add42.i = zext i1 %cmp40.i to i32
  %add39.i = add i32 %8, %add42.i
  %retval.5.i = add i32 %add39.i, %10
  br label %choose_times.exit

choose_times.exit:                                ; preds = %if.then34.i, %if.end22.i.choose_times.exit_crit_edge
  %c1.6 = phi i32 [ %spec.select, %if.then34.i ], [ %c1.0107.i, %if.end22.i.choose_times.exit_crit_edge ]
  %c2.6 = phi i32 [ %spec.select216, %if.then34.i ], [ %c2.0103.i, %if.end22.i.choose_times.exit_crit_edge ]
  %retval.6.i = phi i32 [ %retval.5.i, %if.then34.i ], [ %1, %if.end22.i.choose_times.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.6.i)
  %cmp = icmp slt i32 %retval.6.i, 0
  br i1 %cmp, label %choose_times.exit.cleanup_crit_edge, label %do.body

choose_times.exit.cleanup_crit_edge:              ; preds = %choose_times.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %choose_times.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_times.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_times, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !71

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.tca6507_chip, ptr %tca, i32 0, i32 3
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %arrayidx6 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c1.6
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c2.6
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %17 = ptrtoint ptr %ontime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ontime, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_times.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %c1.6, i32 noundef %14, i32 noundef %c2.6, i32 noundef %16, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bank)
  %tobool.not.i75 = icmp eq i32 %bank, 0
  %shl1.i = shl i32 %c2.6, 4
  %spec.select.i = select i1 %tobool.not.i75, i32 %c2.6, i32 %shl1.i
  %spec.select23.i = select i1 %tobool.not.i75, i32 240, i32 15
  %arrayidx.i76 = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i76, align 1
  %conv.i = zext i8 %20 to i32
  %and.i77 = and i32 %spec.select23.i, %conv.i
  %or.i = or i32 %and.i77, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %or.i, %conv.i
  br i1 %cmp.not.i, label %do.end.set_code.exit_crit_edge, label %if.then6.i

do.end.set_code.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_code.exit

if.then6.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i = trunc i32 %or.i to i8
  %21 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv7.i, ptr %arrayidx.i76, align 1
  %22 = ptrtoint ptr %tca to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tca, align 4
  %or11.i = or i32 %23, 8
  store i32 %or11.i, ptr %tca, align 4
  br label %set_code.exit

set_code.exit:                                    ; preds = %if.then6.i, %do.end.set_code.exit_crit_edge
  %shl1.i79 = shl i32 %c1.6, 4
  %spec.select.i80 = select i1 %tobool.not.i75, i32 %c1.6, i32 %shl1.i79
  %arrayidx.i82 = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i82, align 1
  %conv.i83 = zext i8 %25 to i32
  %and.i84 = and i32 %spec.select23.i, %conv.i83
  %or.i85 = or i32 %and.i84, %spec.select.i80
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i85, i32 %conv.i83)
  %cmp.not.i86 = icmp eq i32 %or.i85, %conv.i83
  br i1 %cmp.not.i86, label %set_code.exit.set_code.exit90_crit_edge, label %if.then6.i89

set_code.exit.set_code.exit90_crit_edge:          ; preds = %set_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_code.exit90

if.then6.i89:                                     ; preds = %set_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i87 = trunc i32 %or.i85 to i8
  %26 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv7.i87, ptr %arrayidx.i82, align 1
  %27 = ptrtoint ptr %tca to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tca, align 4
  %or11.i88 = or i32 %28, 16
  store i32 %or11.i88, ptr %tca, align 4
  br label %set_code.exit90

set_code.exit90:                                  ; preds = %if.then6.i89, %set_code.exit.set_code.exit90_crit_edge
  %29 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.6.i, ptr %ontime, align 4
  %offtime = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 2, i32 %bank, i32 2
  %30 = ptrtoint ptr %offtime to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offtime, align 4
  %mul.i91 = mul i32 %31, 9
  %div.i92 = sdiv i32 %mul.i91, 8
  %mul1.i93 = mul i32 %31, 7
  %div2.i94 = sdiv i32 %mul1.i93, 8
  br label %for.body.i101

for.body.i101:                                    ; preds = %for.inc30.i125.for.body.i101_crit_edge, %set_code.exit90
  %c1.7 = phi i32 [ %c1.6, %set_code.exit90 ], [ %c1.10, %for.inc30.i125.for.body.i101_crit_edge ]
  %c2.7 = phi i32 [ %c2.6, %set_code.exit90 ], [ %c2.10, %for.inc30.i125.for.body.i101_crit_edge ]
  %indvars.iv.i95 = phi i32 [ 2, %set_code.exit90 ], [ %indvars.iv.next.i123, %for.inc30.i125.for.body.i101_crit_edge ]
  %c1.0107.i96 = phi i32 [ 1, %set_code.exit90 ], [ %inc31.i122, %for.inc30.i125.for.body.i101_crit_edge ]
  %diff.0106.i97 = phi i32 [ 65536, %set_code.exit90 ], [ %diff.4.ph.i121, %for.inc30.i125.for.body.i101_crit_edge ]
  %arrayidx.i98 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c1.0107.i96
  %32 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i98, align 4
  %mul3.i99 = shl i32 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i99, i32 %div2.i94)
  %cmp4.i100 = icmp slt i32 %mul3.i99, %div2.i94
  br i1 %cmp4.i100, label %for.body.i101.for.inc30.i125_crit_edge, label %if.end.i103

for.body.i101.for.inc30.i125_crit_edge:           ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i125

if.end.i103:                                      ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %div.i92)
  %cmp5.i102 = icmp sgt i32 %33, %div.i92
  br i1 %cmp5.i102, label %if.end.i103.for.end32.i128_crit_edge, label %if.end.i103.for.body10.i109_crit_edge

if.end.i103.for.body10.i109_crit_edge:            ; preds = %if.end.i103
  br label %for.body10.i109

if.end.i103.for.end32.i128_crit_edge:             ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i128

for.body10.i109:                                  ; preds = %for.inc.i120.for.body10.i109_crit_edge, %if.end.i103.for.body10.i109_crit_edge
  %c1.8 = phi i32 [ %c1.9, %for.inc.i120.for.body10.i109_crit_edge ], [ %c1.7, %if.end.i103.for.body10.i109_crit_edge ]
  %c2.8 = phi i32 [ %c2.9, %for.inc.i120.for.body10.i109_crit_edge ], [ %c2.7, %if.end.i103.for.body10.i109_crit_edge ]
  %diff.1104.i104 = phi i32 [ %diff.2.ph.i117, %for.inc.i120.for.body10.i109_crit_edge ], [ %diff.0106.i97, %if.end.i103.for.body10.i109_crit_edge ]
  %c2.0103.i105 = phi i32 [ %inc.i118, %for.inc.i120.for.body10.i109_crit_edge ], [ 0, %if.end.i103.for.body10.i109_crit_edge ]
  %arrayidx11.i106 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c2.0103.i105
  %34 = ptrtoint ptr %arrayidx11.i106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11.i106, align 4
  %add.i107 = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i107, i32 %div2.i94)
  %cmp12.i108 = icmp slt i32 %add.i107, %div2.i94
  br i1 %cmp12.i108, label %for.body10.i109.for.inc.i120_crit_edge, label %if.end14.i111

for.body10.i109.for.inc.i120_crit_edge:           ; preds = %for.body10.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i120

if.end14.i111:                                    ; preds = %for.body10.i109
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i107, i32 %div.i92)
  %cmp15.i110 = icmp sgt i32 %add.i107, %div.i92
  br i1 %cmp15.i110, label %if.end14.i111.for.inc30.i125_crit_edge, label %if.end17.i114

if.end14.i111.for.inc30.i125_crit_edge:           ; preds = %if.end14.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i125

if.end17.i114:                                    ; preds = %if.end14.i111
  %sub.i112 = sub i32 %31, %add.i107
  %36 = tail call i32 @llvm.abs.i32(i32 %sub.i112, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %diff.1104.i104)
  %cmp20.not.i113 = icmp slt i32 %36, %diff.1104.i104
  br i1 %cmp20.not.i113, label %if.end22.i116, label %if.end17.i114.for.inc.i120_crit_edge

if.end17.i114.for.inc.i120_crit_edge:             ; preds = %if.end17.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i120

if.end22.i116:                                    ; preds = %if.end17.i114
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add.i107)
  %cmp23.i115 = icmp eq i32 %31, %add.i107
  br i1 %cmp23.i115, label %if.end22.i116.choose_times.exit141_crit_edge, label %if.end22.i116.for.inc.i120_crit_edge

if.end22.i116.for.inc.i120_crit_edge:             ; preds = %if.end22.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i120

if.end22.i116.choose_times.exit141_crit_edge:     ; preds = %if.end22.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %choose_times.exit141

for.inc.i120:                                     ; preds = %if.end22.i116.for.inc.i120_crit_edge, %if.end17.i114.for.inc.i120_crit_edge, %for.body10.i109.for.inc.i120_crit_edge
  %c1.9 = phi i32 [ %c1.8, %for.body10.i109.for.inc.i120_crit_edge ], [ %c1.0107.i96, %if.end22.i116.for.inc.i120_crit_edge ], [ %c1.8, %if.end17.i114.for.inc.i120_crit_edge ]
  %c2.9 = phi i32 [ %c2.8, %for.body10.i109.for.inc.i120_crit_edge ], [ %c2.0103.i105, %if.end22.i116.for.inc.i120_crit_edge ], [ %c2.8, %if.end17.i114.for.inc.i120_crit_edge ]
  %diff.2.ph.i117 = phi i32 [ %diff.1104.i104, %for.body10.i109.for.inc.i120_crit_edge ], [ %36, %if.end22.i116.for.inc.i120_crit_edge ], [ %diff.1104.i104, %if.end17.i114.for.inc.i120_crit_edge ]
  %inc.i118 = add nuw nsw i32 %c2.0103.i105, 1
  %exitcond.i119 = icmp eq i32 %inc.i118, %indvars.iv.i95
  br i1 %exitcond.i119, label %for.inc.i120.for.inc30.i125_crit_edge, label %for.inc.i120.for.body10.i109_crit_edge

for.inc.i120.for.body10.i109_crit_edge:           ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i109

for.inc.i120.for.inc30.i125_crit_edge:            ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i125

for.inc30.i125:                                   ; preds = %for.inc.i120.for.inc30.i125_crit_edge, %if.end14.i111.for.inc30.i125_crit_edge, %for.body.i101.for.inc30.i125_crit_edge
  %c1.10 = phi i32 [ %c1.7, %for.body.i101.for.inc30.i125_crit_edge ], [ %c1.8, %if.end14.i111.for.inc30.i125_crit_edge ], [ %c1.9, %for.inc.i120.for.inc30.i125_crit_edge ]
  %c2.10 = phi i32 [ %c2.7, %for.body.i101.for.inc30.i125_crit_edge ], [ %c2.8, %if.end14.i111.for.inc30.i125_crit_edge ], [ %c2.9, %for.inc.i120.for.inc30.i125_crit_edge ]
  %diff.4.ph.i121 = phi i32 [ %diff.0106.i97, %for.body.i101.for.inc30.i125_crit_edge ], [ %diff.1104.i104, %if.end14.i111.for.inc30.i125_crit_edge ], [ %diff.2.ph.i117, %for.inc.i120.for.inc30.i125_crit_edge ]
  %inc31.i122 = add nuw nsw i32 %c1.0107.i96, 1
  %indvars.iv.next.i123 = add nuw nsw i32 %indvars.iv.i95, 1
  %exitcond110.not.i124 = icmp eq i32 %indvars.iv.next.i123, 17
  br i1 %exitcond110.not.i124, label %for.inc30.i125.for.end32.i128_crit_edge, label %for.inc30.i125.for.body.i101_crit_edge

for.inc30.i125.for.body.i101_crit_edge:           ; preds = %for.inc30.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i101

for.inc30.i125.for.end32.i128_crit_edge:          ; preds = %for.inc30.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32.i128

for.end32.i128:                                   ; preds = %for.inc30.i125.for.end32.i128_crit_edge, %if.end.i103.for.end32.i128_crit_edge
  %c1.11 = phi i32 [ %c1.10, %for.inc30.i125.for.end32.i128_crit_edge ], [ %c1.7, %if.end.i103.for.end32.i128_crit_edge ]
  %c2.11 = phi i32 [ %c2.10, %for.inc30.i125.for.end32.i128_crit_edge ], [ %c2.7, %if.end.i103.for.end32.i128_crit_edge ]
  %diff.0.lcssa.i126 = phi i32 [ %diff.4.ph.i121, %for.inc30.i125.for.end32.i128_crit_edge ], [ %diff.0106.i97, %if.end.i103.for.end32.i128_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %diff.0.lcssa.i126)
  %cmp33.i127 = icmp slt i32 %diff.0.lcssa.i126, 65536
  br i1 %cmp33.i127, label %if.then34.i131, label %for.end32.i128.choose_times.exit141_crit_edge

for.end32.i128.choose_times.exit141_crit_edge:    ; preds = %for.end32.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %choose_times.exit141

if.then34.i131:                                   ; preds = %for.end32.i128
  call void @__sanitizer_cov_trace_pc() #9
  %and.i129 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  %spec.select217 = select i1 %tobool.not.i130, i32 %c1.11, i32 %c2.11
  %spec.select218 = select i1 %tobool.not.i130, i32 %c2.11, i32 %c1.11
  %arrayidx37.i133 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select217
  %37 = ptrtoint ptr %arrayidx37.i133 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx37.i133, align 4
  %arrayidx38.i134 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %spec.select218
  %39 = ptrtoint ptr %arrayidx38.i134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx38.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select217, i32 %spec.select218)
  %cmp40.i136 = icmp slt i32 %spec.select217, %spec.select218
  %add42.i137 = zext i1 %cmp40.i136 to i32
  %add39.i135 = add i32 %38, %add42.i137
  %retval.5.i138 = add i32 %add39.i135, %40
  br label %choose_times.exit141

choose_times.exit141:                             ; preds = %if.then34.i131, %for.end32.i128.choose_times.exit141_crit_edge, %if.end22.i116.choose_times.exit141_crit_edge
  %c1.13 = phi i32 [ %spec.select217, %if.then34.i131 ], [ %c1.11, %for.end32.i128.choose_times.exit141_crit_edge ], [ %c1.0107.i96, %if.end22.i116.choose_times.exit141_crit_edge ]
  %c2.13 = phi i32 [ %spec.select218, %if.then34.i131 ], [ %c2.11, %for.end32.i128.choose_times.exit141_crit_edge ], [ %c2.0103.i105, %if.end22.i116.choose_times.exit141_crit_edge ]
  %retval.6.i140 = phi i32 [ %retval.5.i138, %if.then34.i131 ], [ -22, %for.end32.i128.choose_times.exit141_crit_edge ], [ %31, %if.end22.i116.choose_times.exit141_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_times.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_times, %if.then30)) #7
          to label %do.end40 [label %if.then30], !srcloc !71

if.then30:                                        ; preds = %choose_times.exit141
  call void @__sanitizer_cov_trace_pc() #9
  %client31 = getelementptr inbounds %struct.tca6507_chip, ptr %tca, i32 0, i32 3
  %41 = ptrtoint ptr %client31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client31, align 4
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %arrayidx33 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c1.13
  %43 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr [16 x i32], ptr @time_codes, i32 0, i32 %c2.13
  %45 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx34, align 4
  %47 = ptrtoint ptr %offtime to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offtime, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_times.__UNIQUE_ID_ddebug289, ptr noundef %dev32, ptr noundef nonnull @.str.17, i32 noundef %c1.13, i32 noundef %44, i32 noundef %c2.13, i32 noundef %46, i32 noundef %48) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then30, %choose_times.exit141
  %shl1.i143 = shl i32 %c2.13, 4
  %spec.select.i144 = select i1 %tobool.not.i75, i32 %c2.13, i32 %shl1.i143
  %arrayidx.i146 = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i146, align 1
  %conv.i147 = zext i8 %50 to i32
  %and.i148 = and i32 %spec.select23.i, %conv.i147
  %or.i149 = or i32 %and.i148, %spec.select.i144
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i149, i32 %conv.i147)
  %cmp.not.i150 = icmp eq i32 %or.i149, %conv.i147
  br i1 %cmp.not.i150, label %do.end40.set_code.exit154_crit_edge, label %if.then6.i153

do.end40.set_code.exit154_crit_edge:              ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_code.exit154

if.then6.i153:                                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i151 = trunc i32 %or.i149 to i8
  %51 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv7.i151, ptr %arrayidx.i146, align 1
  %52 = ptrtoint ptr %tca to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tca, align 4
  %or11.i152 = or i32 %53, 32
  store i32 %or11.i152, ptr %tca, align 4
  br label %set_code.exit154

set_code.exit154:                                 ; preds = %if.then6.i153, %do.end40.set_code.exit154_crit_edge
  %shl1.i156 = shl i32 %c1.13, 4
  %spec.select.i157 = select i1 %tobool.not.i75, i32 %c1.13, i32 %shl1.i156
  %arrayidx.i159 = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 6
  %54 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i159, align 1
  %conv.i160 = zext i8 %55 to i32
  %and.i161 = and i32 %spec.select23.i, %conv.i160
  %or.i162 = or i32 %and.i161, %spec.select.i157
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i162, i32 %conv.i160)
  %cmp.not.i163 = icmp eq i32 %or.i162, %conv.i160
  br i1 %cmp.not.i163, label %set_code.exit154.set_code.exit167_crit_edge, label %if.then6.i166

set_code.exit154.set_code.exit167_crit_edge:      ; preds = %set_code.exit154
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_code.exit167

if.then6.i166:                                    ; preds = %set_code.exit154
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i164 = trunc i32 %or.i162 to i8
  %56 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv7.i164, ptr %arrayidx.i159, align 1
  %57 = ptrtoint ptr %tca to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tca, align 4
  %or11.i165 = or i32 %58, 64
  store i32 %or11.i165, ptr %tca, align 4
  br label %set_code.exit167

set_code.exit167:                                 ; preds = %if.then6.i166, %set_code.exit154.set_code.exit167_crit_edge
  %arrayidx.i172 = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 7
  %59 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i172, align 1
  %conv.i173 = zext i8 %60 to i32
  %and.i174 = and i32 %spec.select23.i, %conv.i173
  %or.i175 = or i32 %and.i174, %spec.select.i157
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i175, i32 %conv.i173)
  %cmp.not.i176 = icmp eq i32 %or.i175, %conv.i173
  br i1 %cmp.not.i176, label %set_code.exit167.set_code.exit180_crit_edge, label %if.then6.i179

set_code.exit167.set_code.exit180_crit_edge:      ; preds = %set_code.exit167
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_code.exit180

if.then6.i179:                                    ; preds = %set_code.exit167
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i177 = trunc i32 %or.i175 to i8
  %61 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv7.i177, ptr %arrayidx.i172, align 1
  %62 = ptrtoint ptr %tca to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tca, align 4
  %or11.i178 = or i32 %63, 128
  store i32 %or11.i178, ptr %tca, align 4
  br label %set_code.exit180

set_code.exit180:                                 ; preds = %if.then6.i179, %set_code.exit167.set_code.exit180_crit_edge
  %64 = ptrtoint ptr %offtime to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.6.i140, ptr %offtime, align 4
  %spec.select.i182 = select i1 %tobool.not.i75, i32 8, i32 128
  %arrayidx.i184 = getelementptr %struct.tca6507_chip, ptr %tca, i32 0, i32 1, i32 10
  %65 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i184, align 1
  %conv.i185 = zext i8 %66 to i32
  %and.i186 = and i32 %spec.select23.i, %conv.i185
  %or.i187 = or i32 %and.i186, %spec.select.i182
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i187, i32 %conv.i185)
  %cmp.not.i188 = icmp eq i32 %or.i187, %conv.i185
  br i1 %cmp.not.i188, label %set_code.exit180.cleanup_crit_edge, label %if.then6.i191

set_code.exit180.cleanup_crit_edge:               ; preds = %set_code.exit180
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i191:                                    ; preds = %set_code.exit180
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i189 = trunc i32 %or.i187 to i8
  %67 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv7.i189, ptr %arrayidx.i184, align 1
  %68 = ptrtoint ptr %tca to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tca, align 4
  %or11.i190 = or i32 %69, 1024
  store i32 %or11.i190, ptr %tca, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i191, %set_code.exit180.cleanup_crit_edge, %choose_times.exit.cleanup_crit_edge, %for.end32.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tca6507_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tca6507_gpio_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %val)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tca6507_gpio_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %lock = getelementptr inbounds %struct.tca6507_chip, ptr %call, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %arrayidx = getelementptr %struct.tca6507_chip, ptr %call, i32 0, i32 8, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.not = icmp eq i32 %val, 0
  %shl.i = shl nuw i32 1, %1
  %neg.i = xor i32 %shl.i, -1
  %arrayidx.i = getelementptr %struct.tca6507_chip, ptr %call, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %and.i, %conv.i
  br i1 %cmp6.not.i, label %entry.if.end14.i_crit_edge, label %if.then8.i

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i = trunc i32 %and.i to i8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9.i, ptr %arrayidx.i, align 1
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %or13.i = or i32 %6, 1
  store i32 %or13.i, ptr %call, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %entry.if.end14.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.tca6507_chip, ptr %call, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %8 to i32
  %and.1.i = and i32 %conv.1.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i, i32 %conv.1.i)
  %cmp6.not.1.i = icmp eq i32 %and.1.i, %conv.1.i
  br i1 %cmp6.not.1.i, label %if.end14.i.if.end14.1.i_crit_edge, label %if.then8.1.i

if.end14.i.if.end14.1.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1.i

if.then8.1.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.1.i = trunc i32 %and.1.i to i8
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9.1.i, ptr %arrayidx.1.i, align 1
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %or13.1.i = or i32 %11, 2
  store i32 %or13.1.i, ptr %call, align 4
  br label %if.end14.1.i

if.end14.1.i:                                     ; preds = %if.then8.1.i, %if.end14.i.if.end14.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.tca6507_chip, ptr %call, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %13 to i32
  %and.2.i = and i32 %conv.2.i, %neg.i
  %or.2.i = or i32 %shl.i, %conv.2.i
  %spec.select.2.i = select i1 %tobool.not.not, i32 %or.2.i, i32 %and.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.2.i, i32 %conv.2.i)
  %cmp6.not.2.i = icmp eq i32 %spec.select.2.i, %conv.2.i
  br i1 %cmp6.not.2.i, label %if.end14.1.i.set_select.exit_crit_edge, label %if.then8.2.i

if.end14.1.i.set_select.exit_crit_edge:           ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_select.exit

if.then8.2.i:                                     ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.2.i = trunc i32 %spec.select.2.i to i8
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.2.i, ptr %arrayidx.2.i, align 1
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 4
  %or13.2.i = or i32 %16, 4
  store i32 %or13.2.i, ptr %call, align 4
  br label %set_select.exit

set_select.exit:                                  ; preds = %if.then8.2.i, %if.end14.1.i.set_select.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %set_select.exit.if.end_crit_edge, label %if.then

set_select.exit.if.end_crit_edge:                 ; preds = %set_select.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %set_select.exit
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.tca6507_chip, ptr %call, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %set_select.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_leds_tca6507__290_819_tca6507_driver_init6, !1, !"__initcall__kmod_leds_tca6507__290_819_tca6507_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-tca6507.c", i32 819, i32 1}
!2 = !{ptr @__exitcall_tca6507_driver_exit, !1, !"__exitcall_tca6507_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-tca6507.c", i32 821, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-tca6507.c", i32 822, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-tca6507.c", i32 823, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-tca6507.c", i32 811, i32 14}
!12 = !{ptr @tca6507_driver, !13, !"tca6507_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-tca6507.c", i32 809, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-tca6507.c", i32 748, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tca6507_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tca6507_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tca6507_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-tca6507.c", i32 756, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tca6507_probe.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-tca6507.c", i32 757, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-tca6507.c", i32 691, i32 42}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-tca6507.c", i32 694, i32 38}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-tca6507.c", i32 698, i32 43}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-tca6507.c", i32 699, i32 8}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-tca6507.c", i32 702, i32 41}
!38 = distinct !{null, !39, !"bank_source", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-tca6507.c", i32 107, i32 12}
!40 = !{ptr @time_codes, !41, !"time_codes", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-tca6507.c", i32 136, i32 12}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-tca6507.c", i32 321, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @set_times.__UNIQUE_ID_ddebug288, !43, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-tca6507.c", i32 330, i32 2}
!49 = !{ptr @set_times.__UNIQUE_ID_ddebug289, !48, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!50 = distinct !{null, !51, !"blink_source", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-tca6507.c", i32 112, i32 12}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-tca6507.c", i32 637, i32 20}
!54 = !{ptr @tca6507_probe_gpios.lock_key, !55, !"lock_key", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-tca6507.c", i32 644, i32 8}
!56 = !{ptr @tca6507_probe_gpios.request_key, !55, !"request_key", i1 false, i1 false}
!57 = !{ptr @of_tca6507_leds_match, !58, !"of_tca6507_leds_match", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-tca6507.c", i32 725, i32 49}
!59 = !{ptr @tca6507_id, !60, !"tca6507_id", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-tca6507.c", i32 187, i32 35}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{i64 2148972557, i64 2148972562, i64 2148972575, i64 2148972619, i64 2148972653, i64 2148972674}
