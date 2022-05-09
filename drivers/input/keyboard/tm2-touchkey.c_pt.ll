; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/tm2-touchkey.c_pt.bc'
source_filename = "../drivers/input/keyboard/tm2-touchkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.touchkey_variant = type { i8, i8, i8, i8, i8, i8 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tm2_touchkey_data = type { ptr, ptr, %struct.led_classdev, ptr, [3 x %struct.regulator_bulk_data], ptr, [4 x i32], i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_tm2_touchkey__288_363_tm2_touchkey_driver_init6 = internal global ptr @tm2_touchkey_driver_init, section ".initcall6.init", align 4
@tm2_touchkey_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tm2_touchkey_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tm2_touchkey_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tm2_touchkey_pm_ops, ptr null, ptr null }, ptr @tm2_touchkey_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tm2_touchkey_driver_exit = internal global ptr @tm2_touchkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"tm2_touchkey.author=Beomho Seo <beomho.seo@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"tm2_touchkey.author=Jaechul Lee <jcsing.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [49 x i8] c"tm2_touchkey.description=Samsung touchkey driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [54 x i8] c"tm2_touchkey.file=drivers/input/keyboard/tm2-touchkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [28 x i8] c"tm2_touchkey.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm2-touchkey\00", [19 x i8] zeroinitializer }, align 32
@tm2_touchkey_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,tm2-touchkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tm2_touchkey_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,midas-touchkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @midas_touchkey_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,aries-touchkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aries_touchkey_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"coreriver,tc360-touchkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tc360_touchkey_variant }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tm2_touchkey_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tm2_touchkey_suspend, ptr @tm2_touchkey_resume, ptr @tm2_touchkey_suspend, ptr @tm2_touchkey_resume, ptr @tm2_touchkey_suspend, ptr @tm2_touchkey_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tm2_touchkey_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tm2-touchkey\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"incompatible I2C adapter\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm2_touchkey_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/tm2-touchkey.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr = internal global ptr @tm2_touchkey_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr.11 = internal global ptr @tm2_touchkey_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power up device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr.15 = internal global ptr @tm2_touchkey_probe._entry.13, section ".printk_index", align 4
@tm2_touchkey_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to install poweroff handler: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr.18 = internal global ptr @tm2_touchkey_probe._entry.16, section ".printk_index", align 4
@tm2_touchkey_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr.21 = internal global ptr @tm2_touchkey_probe._entry.19, section ".printk_index", align 4
@tm2_touchkey_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr.24 = internal global ptr @tm2_touchkey_probe._entry.22, section ".printk_index", align 4
@tm2_touchkey_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request threaded irq: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr.27 = internal global ptr @tm2_touchkey_probe._entry.25, section ".printk_index", align 4
@tm2_touchkey_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register touchkey led: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tm2_touchkey_probe._entry_ptr.30 = internal global ptr @tm2_touchkey_probe._entry.28, section ".printk_index", align 4
@tm2_touchkey_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read i2c data: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tm2_touchkey_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@tm2_touchkey_irq_handler._entry_ptr = internal global ptr @tm2_touchkey_irq_handler._entry, section ".printk_index", align 4
@tm2_touchkey_irq_handler._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 155, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid keycode index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tm2_touchkey_irq_handler._entry_ptr.36 = internal global ptr @tm2_touchkey_irq_handler._entry.33, section ".printk_index", align 4
@tm2_touchkey_variant = internal constant { %struct.touchkey_variant, [26 x i8] } { %struct.touchkey_variant { i8 3, i8 0, i8 16, i8 32, i8 0, i8 0 }, [26 x i8] zeroinitializer }, align 32
@midas_touchkey_variant = internal constant { %struct.touchkey_variant, [26 x i8] } { %struct.touchkey_variant { i8 0, i8 0, i8 16, i8 32, i8 0, i8 0 }, [26 x i8] zeroinitializer }, align 32
@aries_touchkey_variant = internal global { %struct.touchkey_variant, [26 x i8] } { %struct.touchkey_variant { i8 0, i8 0, i8 1, i8 2, i8 1, i8 1 }, [26 x i8] zeroinitializer }, align 32
@tc360_touchkey_variant = internal constant { %struct.touchkey_variant, [26 x i8] } { %struct.touchkey_variant { i8 0, i8 0, i8 16, i8 32, i8 0, i8 1 }, [26 x i8] zeroinitializer }, align 32
@tm2_touchkey_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable power: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm2_touchkey_resume\00", [44 x i8] zeroinitializer }, align 32
@tm2_touchkey_resume._entry_ptr = internal global ptr @tm2_touchkey_resume._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"tm2_touchkey_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 354, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 356, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"tm2_touchkey_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 336, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"tm2_touchkey_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 327, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"tm2_touchkey_id_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 330, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 194, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 207, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 208, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 209, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 214, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 222, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 233, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 240, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 248, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 266, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 276, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 290, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 147, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 154, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"tm2_touchkey_variant\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 57, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"midas_touchkey_variant\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 64, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"aries_touchkey_variant\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 71, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"tc360_touchkey_variant\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 78, i32 38 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [41 x i8] c"../drivers/input/keyboard/tm2-touchkey.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 322, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_tm2_touchkey_driver_exit, ptr @__initcall__kmod_tm2_touchkey__288_363_tm2_touchkey_driver_init6, ptr @tm2_touchkey_driver_exit, ptr @tm2_touchkey_irq_handler._entry, ptr @tm2_touchkey_irq_handler._entry.33, ptr @tm2_touchkey_irq_handler._entry_ptr, ptr @tm2_touchkey_irq_handler._entry_ptr.36, ptr @tm2_touchkey_probe._entry, ptr @tm2_touchkey_probe._entry.13, ptr @tm2_touchkey_probe._entry.16, ptr @tm2_touchkey_probe._entry.19, ptr @tm2_touchkey_probe._entry.22, ptr @tm2_touchkey_probe._entry.25, ptr @tm2_touchkey_probe._entry.28, ptr @tm2_touchkey_probe._entry.9, ptr @tm2_touchkey_probe._entry_ptr, ptr @tm2_touchkey_probe._entry_ptr.11, ptr @tm2_touchkey_probe._entry_ptr.15, ptr @tm2_touchkey_probe._entry_ptr.18, ptr @tm2_touchkey_probe._entry_ptr.21, ptr @tm2_touchkey_probe._entry_ptr.24, ptr @tm2_touchkey_probe._entry_ptr.27, ptr @tm2_touchkey_probe._entry_ptr.30, ptr @tm2_touchkey_resume._entry, ptr @tm2_touchkey_resume._entry_ptr, ptr @tm2_touchkey_driver, ptr @.str, ptr @tm2_touchkey_of_match, ptr @tm2_touchkey_pm_ops, ptr @tm2_touchkey_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @tm2_touchkey_variant, ptr @midas_touchkey_variant, ptr @aries_touchkey_variant, ptr @tc360_touchkey_variant, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_irq_handler._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_variant to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midas_touchkey_variant to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_touchkey_variant to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc360_touchkey_variant to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm2_touchkey_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_touchkey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tm2_touchkey_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tm2_touchkey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @tm2_touchkey_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_touchkey_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #4
  %and.i = and i32 %call.i.i, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1966080, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1966080
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 472, i32 noundef 3520) #4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %variant = getelementptr %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %variant, align 4
  %regulators = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.6, ptr %regulators, align 4
  %arrayidx11 = getelementptr %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.7, ptr %arrayidx11, align 4
  %arrayidx14 = getelementptr %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.8, ptr %arrayidx14, align 4
  %call18 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %regulators) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call18) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end6
  %consumer = getelementptr %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumer, align 4
  %vdd = getelementptr %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %vdd, align 4
  %keycodes = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 6
  %call29 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %keycodes, i32 noundef 0, i32 noundef 4) #4
  %num_keycodes = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call29, ptr %num_keycodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp = icmp slt i32 %call29, 1
  br i1 %cmp, label %if.then31, label %if.end25.if.end37_crit_edge

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %keycodes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 169, ptr %keycodes, align 4
  %arrayidx35 = getelementptr %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 158, ptr %arrayidx35, align 4
  %20 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %num_keycodes, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end25.if.end37_crit_edge
  %call.i198 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %regulators) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call.i198) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  tail call void @msleep(i32 noundef 150) #4
  %call.i199 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tm2_touchkey_power_disable, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i201 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %regulators) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i199) #7
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  %call56 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %input_dev = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call56, ptr %input_dev, align 4
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  %22 = ptrtoint ptr %call56 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str, ptr %call56, align 8
  %23 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input_dev, align 4
  %id67 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %id67 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 24, ptr %id67, align 4
  %26 = load ptr, ptr %input_dev, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %keycodes, ptr %keycode, align 4
  %28 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_keycodes, align 4
  %30 = load ptr, ptr %input_dev, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %keycodemax, align 4
  %32 = load ptr, ptr %input_dev, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %keycodesize, align 8
  %34 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %34, i32 noundef 4, i32 noundef 4) #4
  %35 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_keycodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp76206 = icmp sgt i32 %36, 0
  br i1 %cmp76206, label %if.end64.for.body_crit_edge, label %if.end64.for.end_crit_edge

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end64.for.body_crit_edge
  %i.0207 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end64.for.body_crit_edge ]
  %37 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input_dev, align 4
  %arrayidx79 = getelementptr %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 6, i32 %i.0207
  %39 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx79, align 4
  tail call void @input_set_capability(ptr noundef %38, i32 noundef 1, i32 noundef %40) #4
  %inc = add nuw nsw i32 %i.0207, 1
  %41 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_keycodes, align 4
  %cmp76 = icmp slt i32 %inc, %42
  br i1 %cmp76, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end64.for.end_crit_edge
  %43 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input_dev, align 4
  %call81 = tail call i32 @input_register_device(ptr noundef %44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end88, label %do.end86

do.end86:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call81) #7
  br label %cleanup

if.end88:                                         ; preds = %for.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  %call90 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %46, ptr noundef null, ptr noundef nonnull @tm2_touchkey_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end97, label %do.end95

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call90) #7
  br label %cleanup

if.end97:                                         ; preds = %if.end88
  %led_dev = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %led_dev to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str, ptr %led_dev, align 4
  %brightness = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.tm2_touchkey_data, ptr %call.i, i32 0, i32 2, i32 6
  %50 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tm2_touchkey_led_brightness_set, ptr %brightness_set_blocking, align 4
  %call.i203 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_dev, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool105.not = icmp eq i32 %call.i203, 0
  br i1 %tobool105.not, label %if.end111, label %do.end109

do.end109:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call.i203) #7
  br label %cleanup

if.end111:                                        ; preds = %if.end97
  %51 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %variant, align 4
  %fixed_regulator = getelementptr inbounds %struct.touchkey_variant, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %fixed_regulator to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fixed_regulator, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool113.not = icmp eq i8 %54, 0
  br i1 %tobool113.not, label %if.end111.cleanup_crit_edge, label %if.then114

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then114:                                       ; preds = %if.end111
  %55 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %variant, align 4
  %cmd_led_on.i = getelementptr inbounds %struct.touchkey_variant, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %cmd_led_on.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %data.0.i = load i8, ptr %cmd_led_on.i, align 1
  %fixed_regulator.i = getelementptr inbounds %struct.touchkey_variant, ptr %56, i32 0, i32 5
  %58 = ptrtoint ptr %fixed_regulator.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fixed_regulator.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i204 = icmp eq i8 %59, 0
  br i1 %tobool.not.i204, label %if.then3.i, label %if.then114.if.end4.i_crit_edge

if.then114.if.end4.i_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vdd, align 4
  %call.i205 = tail call i32 @regulator_set_voltage(ptr noundef %61, i32 noundef 3300000, i32 noundef 3300000) #4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then114.if.end4.i_crit_edge
  %62 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %variant, align 4
  %no_reg.i = getelementptr inbounds %struct.touchkey_variant, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %no_reg.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %no_reg.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool6.not.i = icmp eq i8 %65, 0
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  br i1 %tobool6.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %67, i8 noundef zeroext %data.0.i) #4
  br label %cleanup

cond.false.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %base_reg.i = getelementptr inbounds %struct.touchkey_variant, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %base_reg.i, align 1
  %call10.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext %69, i8 noundef zeroext %data.0.i) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i, %cond.true.i, %if.end111.cleanup_crit_edge, %do.end109, %do.end95, %do.end86, %do.end62, %do.end52, %do.end43, %do.end23, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ %call.i198, %do.end43 ], [ %call.i199, %do.end52 ], [ %call81, %do.end86 ], [ %call90, %do.end95 ], [ %call.i203, %do.end109 ], [ -12, %do.end62 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ], [ 0, %cond.true.i ], [ 0, %cond.false.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm2_touchkey_power_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regulators = getelementptr inbounds %struct.tm2_touchkey_data, ptr %data, i32 0, i32 4
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %regulators) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_touchkey_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr %struct.tm2_touchkey_data, ptr %devid, i32 0, i32 5
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %no_reg = getelementptr inbounds %struct.touchkey_variant, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %no_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_reg, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devid, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @i2c_smbus_read_byte(ptr noundef %5) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %7) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %data.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data.0)
  %cmp = icmp slt i32 %data.0, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devid, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %data.0) #7
  br label %out

if.end6:                                          ; preds = %if.end
  %and = and i32 %data.0, 7
  %sub = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.end6.do.end12_crit_edge, label %lor.lhs.false

if.end6.do.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end6
  %num_keycodes = getelementptr inbounds %struct.tm2_touchkey_data, ptr %devid, i32 0, i32 7
  %10 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_keycodes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp8.not.not = icmp sgt i32 %and, %11
  br i1 %cmp8.not.not, label %lor.lhs.false.do.end12_crit_edge, label %if.end15

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %if.end6.do.end12_crit_edge
  %12 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devid, align 4
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.34, i32 noundef %sub) #7
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %input_dev = getelementptr inbounds %struct.tm2_touchkey_data, ptr %devid, i32 0, i32 1
  %14 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 4, i32 noundef 4, i32 noundef %sub) #4
  %and16 = and i32 %data.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %16 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_keycodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2065 = icmp sgt i32 %17, 0
  br i1 %cmp2065, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end26_crit_edge

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %18 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input_dev, align 4
  %arrayidx = getelementptr %struct.tm2_touchkey_data, ptr %devid, i32 0, i32 6, i32 %i.066
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef %21, i32 noundef 0) #4
  %inc = add nuw nsw i32 %i.066, 1
  %22 = ptrtoint ptr %num_keycodes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_keycodes, align 4
  %cmp20 = icmp slt i32 %inc, %23
  br i1 %cmp20, label %for.body.for.body_crit_edge, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.else22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_dev, align 4
  %arrayidx25 = getelementptr %struct.tm2_touchkey_data, ptr %devid, i32 0, i32 6, i32 %sub
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx25, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %27, i32 noundef 1) #4
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %for.body.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge
  %28 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %out

out:                                              ; preds = %if.end26, %do.end12, %do.end
  %30 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant, align 4
  %fixed_regulator = getelementptr inbounds %struct.touchkey_variant, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %fixed_regulator to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fixed_regulator, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool29.not = icmp eq i8 %33, 0
  %and30 = and i32 %data.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %or.cond = select i1 %tobool29.not, i1 true, i1 %tobool31.not
  br i1 %or.cond, label %out.if.end38_crit_edge, label %if.then32

out.if.end38_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then32:                                        ; preds = %out
  %brightness = getelementptr inbounds %struct.tm2_touchkey_data, ptr %devid, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp33 = icmp eq i32 %35, 0
  br i1 %cmp33, label %if.then34, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then34:                                        ; preds = %if.then32
  %36 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %variant, align 4
  %cmd_led_off.i = getelementptr inbounds %struct.touchkey_variant, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cmd_led_off.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %data.0.i = load i8, ptr %cmd_led_off.i, align 1
  %fixed_regulator.i = getelementptr inbounds %struct.touchkey_variant, ptr %37, i32 0, i32 5
  %39 = ptrtoint ptr %fixed_regulator.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fixed_regulator.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.then34.if.end4.i_crit_edge

if.then34.if.end4.i_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  %vdd.i = getelementptr %struct.tm2_touchkey_data, ptr %devid, i32 0, i32 3
  %41 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_set_voltage(ptr noundef %42, i32 noundef 2500000, i32 noundef 2500000) #4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then34.if.end4.i_crit_edge
  %43 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %variant, align 4
  %no_reg.i = getelementptr inbounds %struct.touchkey_variant, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %no_reg.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %no_reg.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool6.not.i = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %devid, align 4
  br i1 %tobool6.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %48, i8 noundef zeroext %data.0.i) #4
  br label %if.end38

cond.false.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %base_reg.i = getelementptr inbounds %struct.touchkey_variant, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %base_reg.i, align 1
  %call10.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext %50, i8 noundef zeroext %data.0.i) #4
  br label %if.end38

if.end38:                                         ; preds = %cond.false.i, %cond.true.i, %if.then32.if.end38_crit_edge, %out.if.end38_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_touchkey_led_brightness_set(ptr nocapture noundef readonly %led_dev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_dev, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  %variant = getelementptr i8, ptr %led_dev, i32 440
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %cmd_led_off = getelementptr inbounds %struct.touchkey_variant, ptr %1, i32 0, i32 3
  %cmd_led_on = getelementptr inbounds %struct.touchkey_variant, ptr %1, i32 0, i32 2
  %data.0.in = select i1 %cmp, ptr %cmd_led_off, ptr %cmd_led_on
  %2 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %data.0 = load i8, ptr %data.0.in, align 1
  %variant2 = getelementptr i8, ptr %led_dev, i32 440
  %fixed_regulator = getelementptr inbounds %struct.touchkey_variant, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %fixed_regulator to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fixed_regulator, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then3, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %volt.0 = select i1 %cmp, i32 2500000, i32 3300000
  %vdd = getelementptr i8, ptr %led_dev, i32 400
  %5 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_set_voltage(ptr noundef %6, i32 noundef %volt.0, i32 noundef %volt.0) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %7 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %variant2, align 4
  %no_reg = getelementptr inbounds %struct.touchkey_variant, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %no_reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %no_reg, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool6.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @i2c_smbus_write_byte(ptr noundef %12, i8 noundef zeroext %data.0) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %base_reg = getelementptr inbounds %struct.touchkey_variant, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %base_reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %base_reg, align 1
  %call10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext %14, i8 noundef zeroext %data.0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call7, %cond.true ], [ %call10, %cond.false ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_touchkey_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #4
  %regulators.i = getelementptr inbounds %struct.tm2_touchkey_data, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %regulators.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm2_touchkey_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #4
  %regulators.i = getelementptr inbounds %struct.tm2_touchkey_data, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %regulators.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %tm2_touchkey_power_enable.exit.thread, label %do.end

tm2_touchkey_power_enable.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 150) #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call.i) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %tm2_touchkey_power_enable.exit.thread
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_tm2_touchkey__288_363_tm2_touchkey_driver_init6, !1, !"__initcall__kmod_tm2_touchkey__288_363_tm2_touchkey_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_tm2_touchkey_driver_exit, !1, !"__exitcall_tm2_touchkey_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 365, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 366, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 367, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 368, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 356, i32 11}
!14 = !{ptr @tm2_touchkey_driver, !15, !"tm2_touchkey_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 354, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 194, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tm2_touchkey_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tm2_touchkey_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 207, i32 35}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 208, i32 35}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 209, i32 35}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 214, i32 3}
!32 = !{ptr @tm2_touchkey_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tm2_touchkey_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 222, i32 6}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 233, i32 3}
!38 = !{ptr @tm2_touchkey_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tm2_touchkey_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 240, i32 3}
!42 = !{ptr @tm2_touchkey_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tm2_touchkey_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 248, i32 3}
!46 = !{ptr @tm2_touchkey_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tm2_touchkey_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 266, i32 3}
!50 = !{ptr @tm2_touchkey_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tm2_touchkey_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 276, i32 3}
!54 = !{ptr @tm2_touchkey_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tm2_touchkey_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 290, i32 3}
!58 = !{ptr @tm2_touchkey_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tm2_touchkey_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 147, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tm2_touchkey_irq_handler._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @tm2_touchkey_irq_handler._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 154, i32 3}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tm2_touchkey_irq_handler._entry.33, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @tm2_touchkey_irq_handler._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @tm2_touchkey_of_match, !71, !"tm2_touchkey_of_match", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 336, i32 34}
!72 = !{ptr @tm2_touchkey_variant, !73, !"tm2_touchkey_variant", i1 false, i1 false}
!73 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 57, i32 38}
!74 = !{ptr @midas_touchkey_variant, !75, !"midas_touchkey_variant", i1 false, i1 false}
!75 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 64, i32 38}
!76 = !{ptr @aries_touchkey_variant, !77, !"aries_touchkey_variant", i1 false, i1 false}
!77 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 71, i32 32}
!78 = !{ptr @tc360_touchkey_variant, !79, !"tc360_touchkey_variant", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 78, i32 38}
!80 = !{ptr @tm2_touchkey_pm_ops, !81, !"tm2_touchkey_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 327, i32 8}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 322, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tm2_touchkey_resume._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @tm2_touchkey_resume._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @tm2_touchkey_id_table, !88, !"tm2_touchkey_id_table", i1 false, i1 false}
!88 = !{!"../drivers/input/keyboard/tm2-touchkey.c", i32 330, i32 35}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
