; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-pca963x.c_pt.bc'
source_filename = "../drivers/leds/leds-pca963x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pca963x_chipdef = type { i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.pca963x = type { ptr, %struct.mutex, ptr, i32, [0 x %struct.pca963x_led] }
%struct.pca963x_led = type { ptr, %struct.led_classdev, i32, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_leds_pca963x__288_420_pca963x_driver_init6 = internal global ptr @pca963x_driver_init, section ".initcall6.init", align 4
@pca963x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pca963x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pca963x_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pca963x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca963x_driver_exit = internal global ptr @pca963x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [67 x i8] c"leds_pca963x.author=Peter Meerwald <p.meerwald@bct-electronic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [44 x i8] c"leds_pca963x.description=PCA963X LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"leds_pca963x.file=drivers/leds/leds-pca963x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"leds_pca963x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds-pca963x\00", [19 x i8] zeroinitializer }, align 32
@of_pca963x_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9632\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9633\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9634\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9635\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pca963x_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca9632\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca9633\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca9634\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pca9635\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pca963x_chipdefs = internal global { [3 x %struct.pca963x_chipdef], [60 x i8] } { [3 x %struct.pca963x_chipdef] [%struct.pca963x_chipdef { i8 6, i8 7, i8 8, i32 4, i32 0 }, %struct.pca963x_chipdef { i8 10, i8 11, i8 12, i32 8, i32 0 }, %struct.pca963x_chipdef { i8 18, i8 19, i8 20, i32 16, i32 0 }], [60 x i8] zeroinitializer }, align 32
@pca963x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Node %pfw must define between 1 and %d LEDs\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pca963x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-pca963x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca963x_probe._entry_ptr = internal global ptr @pca963x_probe._entry, section ".printk_index", align 4
@pca963x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nxp,period-scale\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nxp,hw-blink\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxp,totem-pole\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nxp,inverted-out\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pca963x_register_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid 'reg' property for node %pfw\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pca963x_register_leds\00", [42 x i8] zeroinitializer }, align 32
@pca963x_register_leds._entry_ptr = internal global ptr @pca963x_register_leds._entry, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pca963x\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%d:%.2x:%u\00", [21 x i8] zeroinitializer }, align 32
@pca963x_register_leds._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register LED for node %pfw\0A\00", [58 x i8] zeroinitializer }, align 32
@pca963x_register_leds._entry_ptr.18 = internal global ptr @pca963x_register_leds._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"pca963x_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 411, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 413, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"of_pca963x_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 365, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"pca963x_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 89, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"pca963x_chipdefs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 64, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 386, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 397, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 297, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 301, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 308, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 314, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 327, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 329, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 343, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 344, i32 50 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [31 x i8] c"../drivers/leds/leds-pca963x.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 351, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pca963x_driver_exit, ptr @__initcall__kmod_leds_pca963x__288_420_pca963x_driver_init6, ptr @pca963x_driver_exit, ptr @pca963x_probe._entry, ptr @pca963x_probe._entry_ptr, ptr @pca963x_register_leds._entry, ptr @pca963x_register_leds._entry.16, ptr @pca963x_register_leds._entry_ptr, ptr @pca963x_register_leds._entry_ptr.18, ptr @pca963x_driver, ptr @.str, ptr @of_pca963x_match, ptr @pca963x_id, ptr @pca963x_chipdefs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pca963x_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca963x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pca963x_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca963x_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca963x_chipdefs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca963x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca963x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca963x_register_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca963x_register_leds._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca963x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca963x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca963x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @pca963x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca963x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %init_data.i = alloca %struct.led_init_data, align 4
  %default_label.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [3 x %struct.pca963x_chipdef], ptr @pca963x_chipdefs, i32 0, i32 %1
  %call = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %n_leds = getelementptr [3 x %struct.pca963x_chipdef], ptr @pca963x_chipdefs, i32 0, i32 %1, i32 3
  %2 = ptrtoint ptr %n_leds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_leds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp = icmp sgt i32 %call, %3
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @dev_fwnode(ptr noundef %dev1) #7
  %n_leds3 = getelementptr [3 x %struct.pca963x_chipdef], ptr @pca963x_chipdefs, i32 0, i32 %1, i32 3
  %4 = ptrtoint ptr %n_leds3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_leds3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %call2, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 412) #7
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %9 = add nuw i32 %8, 104
  %retval.0.i = select i1 %7, i32 -1, i32 %9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.pca963x, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @pca963x_probe.__key) #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %call.i, align 4
  %client13 = getelementptr inbounds %struct.pca963x, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %client13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %client13, align 4
  %13 = ptrtoint ptr %n_leds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp1551 = icmp sgt i32 %14, 3
  br i1 %cmp1551, label %for.body.lr.ph, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %ledout_base = getelementptr [3 x %struct.pca963x_chipdef], ptr @pca963x_chipdefs, i32 0, i32 %1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %ledout_base to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ledout_base, align 2
  %17 = trunc i32 %i.052 to i8
  %conv16 = add i8 %16, %17
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv16, i8 noundef zeroext 0) #7
  %inc = add nuw nsw i32 %i.052, 1
  %18 = ptrtoint ptr %n_leds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_leds, align 4
  %div = sdiv i32 %19, 4
  %cmp15 = icmp slt i32 %inc, %div
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %call18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 16) #7
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %leds.i = getelementptr inbounds %struct.pca963x, ptr %call.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reg.i, align 4, !annotation !63
  %scaling.i = getelementptr inbounds %struct.pca963x_chipdef, ptr %21, i32 0, i32 4
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %scaling.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %if.then.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %scaling.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1000, ptr %scaling.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.if.end.i_crit_edge
  %call.i95.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.end.i.pca963x_register_leds.exit_crit_edge, label %if.end7.i

if.end.i.pca963x_register_leds.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca963x_register_leds.exit

if.end7.i:                                        ; preds = %if.end.i
  %call.i96.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  %and.i = and i32 %call5.i, 235
  %masksel.i = select i1 %call.i96.i, i32 4, i32 0
  %mode2.0.i = or i32 %masksel.i, %and.i
  %call.i97.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %masksel103.i = select i1 %call.i97.i, i32 16, i32 0
  %mode2.1.i = or i32 %mode2.0.i, %masksel103.i
  %conv.i = trunc i32 %mode2.1.i to i8
  %call17.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end7.i.pca963x_register_leds.exit_crit_edge, label %if.end21.i

if.end7.i.pca963x_register_leds.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca963x_register_leds.exit

if.end21.i:                                       ; preds = %if.end7.i
  %call22.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #7
  %tobool23.not107.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not107.i, label %if.end21.i.pca963x_register_leds.exit_crit_edge, label %for.body.lr.ph.i

if.end21.i.pca963x_register_leds.exit_crit_edge:  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca963x_register_leds.exit

for.body.lr.ph.i:                                 ; preds = %if.end21.i
  %n_leds.i = getelementptr inbounds %struct.pca963x_chipdef, ptr %21, i32 0, i32 3
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %default_label39.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.0110.i = phi ptr [ %call22.i, %for.body.lr.ph.i ], [ %call49.i, %for.inc.i.for.body.i_crit_edge ]
  %led.0108.i = phi ptr [ %leds.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #7
  %24 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %default_label.i) #7
  %25 = call ptr @memset(ptr %default_label.i, i32 255, i32 32)
  %call.i98.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0110.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %reg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool25.not.i = icmp eq i32 %call.i98.i, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.i, label %for.body.i.err.i_crit_edge

for.body.i.err.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i, align 4
  %28 = ptrtoint ptr %n_leds.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_leds.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp26.not.i = icmp ult i32 %27, %29
  br i1 %cmp26.not.i, label %if.end29.i, label %lor.lhs.false.i.err.i_crit_edge

lor.lhs.false.i.err.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end29.i:                                       ; preds = %lor.lhs.false.i
  %led_num.i = getelementptr inbounds %struct.pca963x_led, ptr %led.0108.i, i32 0, i32 2
  %30 = ptrtoint ptr %led_num.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %led_num.i, align 4
  %31 = ptrtoint ptr %led.0108.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %led.0108.i, align 4
  %led_cdev.i = getelementptr inbounds %struct.pca963x_led, ptr %led.0108.i, i32 0, i32 1
  %brightness_set_blocking.i = getelementptr inbounds %struct.pca963x_led, ptr %led.0108.i, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pca963x_led_set, ptr %brightness_set_blocking.i, align 4
  br i1 %call.i95.i, label %if.then32.i, label %if.end29.i.if.end34.i_crit_edge

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %blink_set.i = getelementptr inbounds %struct.pca963x_led, ptr %led.0108.i, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pca963x_blink_set, ptr %blink_set.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %34 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %child.0110.i, ptr %init_data.i, align 4
  %35 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.14, ptr %devicename.i, align 4
  %36 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr.i, align 4
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr.i, align 2
  %conv36.i = zext i16 %41 to i32
  %call37.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %default_label.i, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %39, i32 noundef %conv36.i, i32 noundef %27) #7
  %42 = ptrtoint ptr %default_label39.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %default_label.i, ptr %default_label39.i, align 4
  %call41.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %led_cdev.i, ptr noundef nonnull %init_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %for.inc.i, label %if.end34.i.err.i_crit_edge

if.end34.i.err.i_crit_edge:                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

for.inc.i:                                        ; preds = %if.end34.i
  %incdec.ptr.i = getelementptr %struct.pca963x_led, ptr %led.0108.i, i32 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %default_label.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  %call49.i = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %child.0110.i) #7
  %tobool23.not.i = icmp eq ptr %call49.i, null
  br i1 %tobool23.not.i, label %for.inc.i.pca963x_register_leds.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.pca963x_register_leds.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca963x_register_leds.exit

err.i:                                            ; preds = %if.end34.i.err.i_crit_edge, %lor.lhs.false.i.err.i_crit_edge, %for.body.i.err.i_crit_edge
  %.str.17.sink = phi ptr [ @.str.12, %lor.lhs.false.i.err.i_crit_edge ], [ @.str.12, %for.body.i.err.i_crit_edge ], [ @.str.17, %if.end34.i.err.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ -22, %lor.lhs.false.i.err.i_crit_edge ], [ -22, %for.body.i.err.i_crit_edge ], [ %call41.i, %if.end34.i.err.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.17.sink, ptr noundef nonnull %child.0110.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %default_label.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %child.0110.i) #7
  br label %pca963x_register_leds.exit

pca963x_register_leds.exit:                       ; preds = %err.i, %for.inc.i.pca963x_register_leds.exit_crit_edge, %if.end21.i.pca963x_register_leds.exit_crit_edge, %if.end7.i.pca963x_register_leds.exit_crit_edge, %if.end.i.pca963x_register_leds.exit_crit_edge
  %retval.0.i45 = phi i32 [ %ret.0.ph.i, %err.i ], [ %call5.i, %if.end.i.pca963x_register_leds.exit_crit_edge ], [ %call17.i, %if.end7.i.pca963x_register_leds.exit_crit_edge ], [ 0, %if.end21.i.pca963x_register_leds.exit_crit_edge ], [ 0, %for.inc.i.pca963x_register_leds.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %cleanup

cleanup:                                          ; preds = %pca963x_register_leds.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i45, %pca963x_register_leds.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca963x_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %mutex = getelementptr inbounds %struct.pca963x, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %client1.i = getelementptr inbounds %struct.pca963x, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %ledout_base.i = getelementptr inbounds %struct.pca963x_chipdef, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ledout_base.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ledout_base.i, align 2
  %led_num.i = getelementptr i8, ptr %led_cdev, i32 400
  %10 = ptrtoint ptr %led_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %led_num.i, align 4
  %.frozen = freeze i32 %11
  %div.i = sdiv i32 %.frozen, 4
  %12 = trunc i32 %div.i to i8
  %conv4.i = add i8 %9, %12
  %13 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %.frozen, %13
  %mul.i = shl nsw i32 %rem.i.decomposed, 1
  %shl.i = shl i32 3, %mul.i
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv4.i) #7
  %14 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %value, label %sw.default.i [
    i32 255, label %sw.bb.i
    i32 0, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call.i, %neg.i
  %shl10.i = shl nuw i32 1, %mul.i
  %or.i = or i32 %and.i, %shl10.i
  br label %pca963x_brightness.exit

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg16.i = xor i32 %shl.i, -1
  %and17.i = and i32 %call.i, %neg16.i
  br label %pca963x_brightness.exit

sw.default.i:                                     ; preds = %entry
  %15 = ptrtoint ptr %led_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %led_num.i, align 4
  %17 = trunc i32 %16 to i8
  %conv22.i = add i8 %17, 2
  %conv23.i = trunc i32 %value to i8
  %call24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv22.i, i8 noundef zeroext %conv23.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp.i = icmp slt i32 %call24.i, 0
  br i1 %cmp.i, label %sw.default.i.unlock_crit_edge, label %if.end.i

sw.default.i.unlock_crit_edge:                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg28.i = xor i32 %shl.i, -1
  %and29.i = and i32 %call.i, %neg28.i
  %shl30.i = shl i32 2, %mul.i
  %or31.i = or i32 %and29.i, %shl30.i
  br label %pca963x_brightness.exit

pca963x_brightness.exit:                          ; preds = %if.end.i, %sw.bb13.i, %sw.bb.i
  %or.sink.i = phi i32 [ %or.i, %sw.bb.i ], [ %and17.i, %sw.bb13.i ], [ %or31.i, %if.end.i ]
  %conv11.i = trunc i32 %or.sink.i to i8
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp = icmp slt i32 %call12.i, 0
  br i1 %cmp, label %pca963x_brightness.exit.unlock_crit_edge, label %if.end

pca963x_brightness.exit.unlock_crit_edge:         ; preds = %pca963x_brightness.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %pca963x_brightness.exit
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %client1.i8 = getelementptr inbounds %struct.pca963x, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %client1.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client1.i8, align 4
  %leds_on3.i = getelementptr inbounds %struct.pca963x, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %leds_on3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %leds_on3.i, align 4
  %brightness.i = getelementptr i8, ptr %led_cdev, i32 4
  %24 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %led_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %led_num.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %27, ptr noundef %leds_on3.i) #7
  br label %if.end.i9

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %27, ptr noundef %leds_on3.i) #7
  br label %if.end.i9

if.end.i9:                                        ; preds = %if.else.i, %if.then.i
  %28 = ptrtoint ptr %leds_on3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %leds_on3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not.i = icmp ne i32 %23, 0
  %cmp.not.i = xor i1 %tobool6.not.i, %tobool5.not.i
  br i1 %cmp.not.i, label %if.end.i9.unlock_crit_edge, label %if.then9.i

if.end.i9.unlock_crit_edge:                       ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then9.i:                                       ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = select i1 %tobool5.not.i, i8 16, i8 0
  %call.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #7
  br label %unlock

unlock:                                           ; preds = %if.then9.i, %if.end.i9.unlock_crit_edge, %pca963x_brightness.exit.unlock_crit_edge, %sw.default.i.unlock_crit_edge
  %ret.0 = phi i32 [ %call12.i, %pca963x_brightness.exit.unlock_crit_edge ], [ %call.i10, %if.then9.i ], [ 0, %if.end.i9.unlock_crit_edge ], [ %call24.i, %sw.default.i.unlock_crit_edge ]
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %mutex3 = getelementptr inbounds %struct.pca963x, ptr %31, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mutex3) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca963x_blink_set(ptr nocapture noundef %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %spec.select28 = select i1 %tobool1.not, i32 500, i32 0
  %4 = select i1 %tobool.not, i1 %tobool1.not, i1 false
  %time_off.0 = select i1 %4, i32 500, i32 %3
  %time_on.0 = select i1 %tobool.not, i32 %spec.select28, i32 %1
  %add = add i32 %time_on.0, %time_off.0
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %scaling1.i = getelementptr inbounds %struct.pca963x_chipdef, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %scaling1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scaling1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %mul.i = mul i32 %add, %10
  %add.i = add i32 %mul.i, 500
  %div2.i = udiv i32 %add.i, 1000
  %cond.i = select i1 %tobool.not.i, i32 %add, i32 %div2.i
  %11 = add i32 %cond.i, -10668
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10626, i32 %11)
  %12 = icmp ult i32 %11, -10626
  %mul.i31 = mul i32 %10, 1000
  %add.i32 = add i32 %mul.i31, 500
  %div2.i33 = udiv i32 %add.i32, 1000
  %cond.i34 = select i1 %tobool.not.i, i32 1000, i32 %div2.i33
  %period.0 = select i1 %12, i32 %cond.i34, i32 %cond.i
  %time_on.1 = select i1 %12, i32 500, i32 %time_on.0
  %mul.i37 = mul i32 %time_on.1, %10
  %add.i38 = add i32 %mul.i37, 500
  %div2.i39 = udiv i32 %add.i38, 1000
  %cond.i40 = select i1 %tobool.not.i, i32 %time_on.1, i32 %div2.i39
  %mul = shl i32 %cond.i40, 8
  %div = udiv i32 %mul, %period.0
  %conv = trunc i32 %div to i8
  %mul7 = mul nuw nsw i32 %period.0, 24
  %div8 = udiv i32 %mul7, 1000
  %13 = trunc i32 %div8 to i8
  %conv9 = add i8 %13, -1
  %gdc10 = getelementptr i8, ptr %led_cdev, i32 404
  %14 = ptrtoint ptr %gdc10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %gdc10, align 4
  %gfrq11 = getelementptr i8, ptr %led_cdev, i32 405
  %15 = ptrtoint ptr %gfrq11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %gfrq11, align 1
  %client1.i = getelementptr inbounds %struct.pca963x, ptr %6, i32 0, i32 2
  %16 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client1.i, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %ledout_base.i = getelementptr inbounds %struct.pca963x_chipdef, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ledout_base.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ledout_base.i, align 2
  %led_num.i = getelementptr i8, ptr %led_cdev, i32 400
  %22 = ptrtoint ptr %led_num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %led_num.i, align 4
  %.frozen = freeze i32 %23
  %div.i = sdiv i32 %.frozen, 4
  %24 = trunc i32 %div.i to i8
  %conv4.i = add i8 %21, %24
  %25 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %.frozen, %25
  %mul.i41 = shl nsw i32 %rem.i.decomposed, 1
  %shl.i = shl i32 3, %mul.i41
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 1) #7
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %19, align 4
  %28 = ptrtoint ptr %gdc10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %gdc10, align 4
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %27, i8 noundef zeroext %29) #7
  %grpfreq.i = getelementptr inbounds %struct.pca963x_chipdef, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %grpfreq.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %grpfreq.i, align 1
  %32 = ptrtoint ptr %gfrq11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %gfrq11, align 1
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %31, i8 noundef zeroext %33) #7
  %and.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i42 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i42, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %34 = trunc i32 %call.i to i8
  %conv12.i = or i8 %34, 32
  %call13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext %conv12.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %mutex.i = getelementptr inbounds %struct.pca963x, ptr %36, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %call15.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext %conv4.i) #7
  %conv18.i = and i32 %shl.i, 255
  %and19.i = and i32 %conv18.i, %call15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and19.i, i32 %shl.i)
  %cmp.not.i = icmp eq i32 %and19.i, %shl.i
  br i1 %cmp.not.i, label %if.end.i.pca963x_blink.exit_crit_edge, label %if.then22.i

if.end.i.pca963x_blink.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca963x_blink.exit

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or27.i = or i32 %call15.i, %shl.i
  %conv28.i = trunc i32 %or27.i to i8
  %call29.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv28.i) #7
  br label %pca963x_blink.exit

pca963x_blink.exit:                               ; preds = %if.then22.i, %if.end.i.pca963x_blink.exit_crit_edge
  %time_off.1 = select i1 %12, i32 500, i32 %time_off.0
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %mutex32.i = getelementptr inbounds %struct.pca963x, ptr %38, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mutex32.i) #7
  %39 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %time_on.1, ptr %delay_on, align 4
  %40 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %time_off.1, ptr %delay_off, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !46, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_leds_pca963x__288_420_pca963x_driver_init6, !1, !"__initcall__kmod_leds_pca963x__288_420_pca963x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-pca963x.c", i32 420, i32 1}
!2 = !{ptr @__exitcall_pca963x_driver_exit, !1, !"__exitcall_pca963x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-pca963x.c", i32 422, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-pca963x.c", i32 423, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-pca963x.c", i32 424, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-pca963x.c", i32 413, i32 11}
!12 = !{ptr @pca963x_driver, !13, !"pca963x_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-pca963x.c", i32 411, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-pca963x.c", i32 386, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pca963x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pca963x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @pca963x_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-pca963x.c", i32 397, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pca963x_chipdefs, !26, !"pca963x_chipdefs", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-pca963x.c", i32 64, i32 31}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-pca963x.c", i32 297, i32 36}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-pca963x.c", i32 301, i32 44}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-pca963x.c", i32 308, i32 37}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-pca963x.c", i32 314, i32 37}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-pca963x.c", i32 327, i32 41}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-pca963x.c", i32 329, i32 4}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pca963x_register_leds._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pca963x_register_leds._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-pca963x.c", i32 343, i32 26}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-pca963x.c", i32 344, i32 50}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-pca963x.c", i32 351, i32 4}
!48 = !{ptr @pca963x_register_leds._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pca963x_register_leds._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @of_pca963x_match, !51, !"of_pca963x_match", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-pca963x.c", i32 365, i32 34}
!52 = !{ptr @pca963x_id, !53, !"pca963x_id", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-pca963x.c", i32 89, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
