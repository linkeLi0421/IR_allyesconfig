; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-pca9532.c_pt.bc'
source_filename = "../drivers/leds/leds-pca9532.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pca9532_chip_info = type { i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pca9532_platform_data = type { [16 x %struct.pca9532_led], [2 x i8], [2 x i8], i32 }
%struct.pca9532_led = type { i8, ptr, ptr, ptr, %struct.led_classdev, %struct.work_struct, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pca9532_data = type { ptr, [16 x %struct.pca9532_led], %struct.mutex, ptr, %struct.work_struct, %struct.gpio_chip, ptr, [2 x i8], [2 x i8] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.87, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_leds_pca9532__288_561_pca9532_driver_init6 = internal global ptr @pca9532_driver_init, section ".initcall6.init", align 4
@pca9532_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pca9532_probe, ptr @pca9532_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pca9532_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pca9532_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca9532_driver_exit = internal global ptr @pca9532_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [32 x i8] c"leds_pca9532.author=Riku Voipio\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [44 x i8] c"leds_pca9532.file=drivers/leds/leds-pca9532\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [25 x i8] c"leds_pca9532.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [45 x i8] c"leds_pca9532.description=PCA 9532 LED dimmer\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds-pca953x\00", [19 x i8] zeroinitializer }, align 32
@of_pca9532_leds_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9530\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9531\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9532\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9533\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pca9532_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca9530\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca9531\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pca9532\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"pca9533\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pca9532_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pca9532_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-pca9532.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca9532_probe._entry_ptr = internal global ptr @pca9532_probe._entry, section ".printk_index", align 4
@pca9532_chip_info_tbl = internal constant { [4 x %struct.pca9532_chip_info], [28 x i8] } { [4 x %struct.pca9532_chip_info] [%struct.pca9532_chip_info { i8 2 }, %struct.pca9532_chip_info { i8 8 }, %struct.pca9532_chip_info { i8 16 }, %struct.pca9532_chip_info { i8 4 }], [28 x i8] zeroinitializer }, align 32
@pca9532_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setting platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pca9532_probe._entry_ptr.9 = internal global ptr @pca9532_probe._entry.6, section ".printk_index", align 4
@pca9532_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nxp,pwm\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nxp,psc\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@pca9532_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't register LED %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca9532_configure\00", [46 x i8] zeroinitializer }, align 32
@pca9532_configure._entry_ptr = internal global ptr @pca9532_configure._entry, section ".printk_index", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c/pca9532\00", [20 x i8] zeroinitializer }, align 32
@pca9532_configure.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&data->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-pca9532\00", [19 x i8] zeroinitializer }, align 32
@pca9532_configure.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca9532_configure.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca9532_configure._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 451, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not add gpiochip\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pca9532_configure._entry_ptr.27 = internal global ptr @pca9532_configure._entry.24, section ".printk_index", align 4
@pca9532_configure._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.3, i32 455, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpios %i...%i\0A\00", [17 x i8] zeroinitializer }, align 32
@pca9532_configure._entry_ptr.30 = internal global ptr @pca9532_configure._entry.28, section ".printk_index", align 4
@pca9532_calcpwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fear of division by zero %d/%d, wanted %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pca9532_calcpwm\00", [16 x i8] zeroinitializer }, align 32
@pca9532_calcpwm._entry_ptr = internal global ptr @pca9532_calcpwm._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"pca9532_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 101, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 103, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"of_pca9532_leds_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 90, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"pca9532_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 64, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 528, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"pca9532_chip_info_tbl\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 74, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 546, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 549, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 485, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 487, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 491, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 494, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 495, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 497, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 498, i32 23 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 500, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 395, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 412, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 422, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 435, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 447, i32 9 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 451, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 453, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [31 x i8] c"../drivers/leds/leds-pca9532.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 129, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_pca9532_driver_exit, ptr @__initcall__kmod_leds_pca9532__288_561_pca9532_driver_init6, ptr @pca9532_calcpwm._entry, ptr @pca9532_calcpwm._entry_ptr, ptr @pca9532_configure._entry, ptr @pca9532_configure._entry.24, ptr @pca9532_configure._entry.28, ptr @pca9532_configure._entry_ptr, ptr @pca9532_configure._entry_ptr.27, ptr @pca9532_configure._entry_ptr.30, ptr @pca9532_driver_exit, ptr @pca9532_probe._entry, ptr @pca9532_probe._entry.6, ptr @pca9532_probe._entry_ptr, ptr @pca9532_probe._entry_ptr.9, ptr @pca9532_driver, ptr @.str, ptr @of_pca9532_leds_match, ptr @pca9532_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pca9532_chip_info_tbl, ptr @.str.7, ptr @.str.8, ptr @pca9532_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pca9532_configure.__key, ptr @.str.22, ptr @.str.23, ptr @pca9532_configure.lock_key, ptr @pca9532_configure.request_key, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pca9532_leds_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_chip_info_tbl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_configure.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_configure.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_configure.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_configure._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_configure._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9532_calcpwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca9532_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca9532_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @pca9532_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %state.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %dev_of_node.exit.thread, label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %dev_of_node.exit.if.else15_crit_edge

dev_of_node.exit.if.else15_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

dev_of_node.exit.thread:                          ; preds = %entry
  %tobool.not79 = icmp eq ptr %1, null
  br i1 %tobool.not79, label %dev_of_node.exit.thread.do.end_crit_edge, label %dev_of_node.exit.thread.if.else15_crit_edge

dev_of_node.exit.thread.if.else15_crit_edge:      ; preds = %dev_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

dev_of_node.exit.thread.do.end_crit_edge:         ; preds = %dev_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %dev_of_node.exit
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then.do.end_crit_edge, label %if.then5

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #7
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %state.i, align 4, !annotation !90
  %call.i = tail call ptr @of_device_get_match_data(ptr noundef nonnull %dev) #7
  %5 = ptrtoint ptr %call.i to i32
  %arrayidx.i = getelementptr [4 x %struct.pca9532_chip_info], ptr @pca9532_chip_info_tbl, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 7496, i32 noundef 3520) #7
  %tobool.not.i58 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i58, label %pca9532_of_populate_pdata.exit.thread, label %if.end.i59

pca9532_of_populate_pdata.exit.thread:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #7
  br label %if.then9

if.end.i59:                                       ; preds = %if.then5
  %gpio_base.i = getelementptr inbounds %struct.pca9532_platform_data, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_base.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %gpio_base.i, align 4
  %pwm.i = getelementptr inbounds %struct.pca9532_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i79.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.11, ptr noundef %pwm.i, i32 noundef 2, i32 noundef 0) #7
  %psc.i = getelementptr inbounds %struct.pca9532_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i80.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, ptr noundef %psc.i, i32 noundef 2, i32 noundef 0) #7
  %call7.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef null) #7
  %cmp.not82.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not82.i, label %if.end.i59.pca9532_of_populate_pdata.exit_crit_edge, label %for.body.preheader.i

if.end.i59.pca9532_of_populate_pdata.exit_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca9532_of_populate_pdata.exit

for.body.preheader.i:                             ; preds = %if.end.i59
  %smax.i = tail call i32 @llvm.smax.i32(i32 %conv.i, i32 1) #7
  %9 = add nsw i32 %smax.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.084.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %child.083.i = phi ptr [ %call46.i, %for.inc.i.for.body.i_crit_edge ], [ %call7.i, %for.body.preheader.i ]
  %name.i = getelementptr [16 x %struct.pca9532_led], ptr %call.i.i, i32 0, i32 %i.084.i, i32 2
  %call10.i = call i32 @of_property_read_string(ptr noundef nonnull %child.083.i, ptr noundef nonnull @.str.13, ptr noundef %name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.body.i.if.end17.i_crit_edge, label %if.then12.i

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %child.083.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %child.083.i, align 4
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %name.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %for.body.i.if.end17.i_crit_edge
  %type.i = getelementptr [16 x %struct.pca9532_led], ptr %call.i.i, i32 0, i32 %i.084.i, i32 6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.083.i, ptr noundef nonnull @.str.14, ptr noundef %type.i, i32 noundef 1, i32 noundef 0) #7
  %default_trigger.i = getelementptr [16 x %struct.pca9532_led], ptr %call.i.i, i32 0, i32 %i.084.i, i32 3
  %call23.i = call i32 @of_property_read_string(ptr noundef nonnull %child.083.i, ptr noundef nonnull @.str.15, ptr noundef %default_trigger.i) #7
  %call24.i = call i32 @of_property_read_string(ptr noundef nonnull %child.083.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end17.i.if.end41.i_crit_edge

if.end17.i.if.end41.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then26.i:                                      ; preds = %if.end17.i
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state.i, align 4
  %call27.i = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(3) @.str.17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.if.end41.sink.split.i_crit_edge, label %if.else.i

if.then26.i.if.end41.sink.split.i_crit_edge:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split.i

if.else.i:                                        ; preds = %if.then26.i
  %call33.i = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(5) @.str.18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.else.i.if.end41.sink.split.i_crit_edge, label %if.else.i.if.end41.i_crit_edge

if.else.i.if.end41.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.else.i.if.end41.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split.i

if.end41.sink.split.i:                            ; preds = %if.else.i.if.end41.sink.split.i_crit_edge, %if.then26.i.if.end41.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.then26.i.if.end41.sink.split.i_crit_edge ], [ 255, %if.else.i.if.end41.sink.split.i_crit_edge ]
  %state32.i = getelementptr [16 x %struct.pca9532_led], ptr %call.i.i, i32 0, i32 %i.084.i, i32 7
  %15 = ptrtoint ptr %state32.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink.i, ptr %state32.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.sink.split.i, %if.else.i.if.end41.i_crit_edge, %if.end17.i.if.end41.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.084.i, i32 %9)
  %exitcond.not.i = icmp eq i32 %i.084.i, %9
  br i1 %exitcond.not.i, label %if.then44.i, label %for.inc.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.083.i) #7
  br label %pca9532_of_populate_pdata.exit

for.inc.i:                                        ; preds = %if.end41.i
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %call46.i = call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef nonnull %child.083.i) #7
  %cmp.not.i = icmp eq ptr %call46.i, null
  br i1 %cmp.not.i, label %for.inc.i.pca9532_of_populate_pdata.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.pca9532_of_populate_pdata.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca9532_of_populate_pdata.exit

pca9532_of_populate_pdata.exit:                   ; preds = %for.inc.i.pca9532_of_populate_pdata.exit_crit_edge, %if.then44.i, %if.end.i59.pca9532_of_populate_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #7
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %pca9532_of_populate_pdata.exit.if.then9_crit_edge, label %if.end12

pca9532_of_populate_pdata.exit.if.then9_crit_edge: ; preds = %pca9532_of_populate_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %pca9532_of_populate_pdata.exit.if.then9_crit_edge, %pca9532_of_populate_pdata.exit.thread
  %retval.0.i6085 = phi ptr [ inttoptr (i32 -12 to ptr), %pca9532_of_populate_pdata.exit.thread ], [ %call.i.i, %pca9532_of_populate_pdata.exit.if.then9_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i6085 to i32
  br label %cleanup

do.end:                                           ; preds = %if.then.do.end_crit_edge, %dev_of_node.exit.thread.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end12:                                         ; preds = %pca9532_of_populate_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call ptr @of_device_get_match_data(ptr noundef nonnull %dev) #7
  %17 = ptrtoint ptr %call14 to i32
  br label %if.end16

if.else15:                                        ; preds = %dev_of_node.exit.thread.if.else15_crit_edge, %dev_of_node.exit.if.else15_crit_edge
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end12
  %devid.0 = phi i32 [ %19, %if.else15 ], [ %17, %if.end12 ]
  %pca9532_pdata.0 = phi ptr [ %1, %if.else15 ], [ %call.i.i, %if.end12 ]
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i61 = call i32 %25(ptr noundef %21) #7
  %and.i = and i32 %call.i.i61, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i62.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i62.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call.i64 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 7988, i32 noundef 3520) #7
  %tobool23.not = icmp eq ptr %call.i64, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %arrayidx = getelementptr [4 x %struct.pca9532_chip_info], ptr @pca9532_chip_info_tbl, i32 0, i32 %devid.0
  %chip_info = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 6
  %26 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx, ptr %chip_info, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i64, ptr %driver_data.i.i, align 4
  %28 = ptrtoint ptr %call.i64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %client, ptr %call.i64, align 4
  %update_lock = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 2
  call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @pca9532_probe.__key) #7
  %29 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip_info, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %33 = lshr i8 %32, 4
  %arrayidx.i66 = getelementptr %struct.pca9532_platform_data, ptr %pca9532_pdata.0, i32 0, i32 1, i32 0
  %34 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i66, align 1
  %arrayidx2.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 7, i32 0
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr %struct.pca9532_platform_data, ptr %pca9532_pdata.0, i32 0, i32 2, i32 0
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 8, i32 0
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx5.i, align 1
  %conv7.i = add nuw nsw i8 %33, 2
  %call.i67 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv7.i, i8 noundef zeroext %35) #7
  %conv15.i = add nuw nsw i8 %33, 1
  %40 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx5.i, align 1
  %call18.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv15.i, i8 noundef zeroext %41) #7
  %arrayidx.1.i = getelementptr %struct.pca9532_platform_data, ptr %pca9532_pdata.0, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx2.1.i, align 1
  %arrayidx3.1.i = getelementptr %struct.pca9532_platform_data, ptr %pca9532_pdata.0, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx3.1.i, align 1
  %arrayidx5.1.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx5.1.i, align 1
  %conv7.1.i = add nuw nsw i8 %33, 4
  %call.1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv7.1.i, i8 noundef zeroext %43) #7
  %conv15.1.i = add nuw nsw i8 %33, 3
  %48 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx5.1.i, align 1
  %call18.1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv15.1.i, i8 noundef zeroext %49) #7
  %50 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip_info, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp23317.not.i = icmp eq i8 %53, 0
  br i1 %cmp23317.not.i, label %if.end25.cleanup_crit_edge, label %for.body25.lr.ph.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body25.lr.ph.i:                               ; preds = %if.end25
  %idev.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 3
  %work.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 4
  %lockdep_map.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 4, i32 3
  %entry103.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 4, i32 1
  %prev.i.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 4, i32 1, i32 1
  %func.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 4, i32 2
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc116.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %i.1320.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc117.i, %for.inc116.i.for.body25.i_crit_edge ]
  %gpios.0319.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %gpios.2.ph.i, %for.inc116.i.for.body25.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i
  %client29.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 1
  %54 = ptrtoint ptr %client29.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %client, ptr %client29.i, align 4
  %conv30.i = trunc i32 %i.1320.i to i8
  %55 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv30.i, ptr %arrayidx26.i, align 4
  %type.i68 = getelementptr [16 x %struct.pca9532_led], ptr %pca9532_pdata.0, i32 0, i32 %i.1320.i, i32 6
  %56 = ptrtoint ptr %type.i68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.i68, align 4
  %type31.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 6
  %58 = ptrtoint ptr %type31.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %type31.i, align 4
  %59 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %for.body25.i.for.inc116.i_crit_edge [
    i32 2, label %do.body58.i
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb34.i
  ]

for.body25.i.for.inc116.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc116.i

sw.bb.i:                                          ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc33.i = add i32 %gpios.0319.i, 1
  br label %for.inc116.i

sw.bb34.i:                                        ; preds = %for.body25.i
  %state.i69 = getelementptr [16 x %struct.pca9532_led], ptr %pca9532_pdata.0, i32 0, i32 %i.1320.i, i32 7
  %60 = ptrtoint ptr %state.i69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %61)
  %cmp35.i = icmp eq i32 %61, 255
  br i1 %cmp35.i, label %if.then.i, label %sw.bb34.i.if.end.i74_crit_edge

sw.bb34.i.if.end.i74_crit_edge:                   ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i74

if.then.i:                                        ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i, align 4
  %chip_info.i.i = getelementptr inbounds %struct.pca9532_data, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip_info.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 1
  %update_lock.i.i = getelementptr inbounds %struct.pca9532_data, ptr %63, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #7
  %68 = lshr i8 %67, 4
  %narrow.i.i = add nuw nsw i8 %68, 5
  %69 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx26.i, align 4
  %71 = lshr i8 %70, 2
  %narrow24.i.i = add nuw nsw i8 %narrow.i.i, %71
  %call6.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %narrow24.i.i) #7
  %72 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx26.i, align 4
  %74 = shl i8 %73, 1
  %75 = and i8 %74, 6
  %mul.i.i = zext i8 %75 to i32
  %shl.i.i = shl nuw nsw i32 3, %mul.i.i
  %and11.i.i = and i32 %shl.i.i, %call6.i.i
  %shr16.i.i = lshr i32 %and11.i.i, %mul.i.i
  call void @mutex_unlock(ptr noundef %update_lock.i.i) #7
  br label %if.end.i74

if.end.i74:                                       ; preds = %if.then.i, %sw.bb34.i.if.end.i74_crit_edge
  %.sink.i70 = phi i32 [ %shr16.i.i, %if.then.i ], [ %61, %sw.bb34.i.if.end.i74_crit_edge ]
  %76 = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 7
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink.i70, ptr %76, align 4
  %name.i71 = getelementptr [16 x %struct.pca9532_led], ptr %pca9532_pdata.0, i32 0, i32 %i.1320.i, i32 2
  %78 = ptrtoint ptr %name.i71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name.i71, align 4
  %name41.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 2
  %80 = ptrtoint ptr %name41.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %name41.i, align 4
  %ldev.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 4
  %81 = ptrtoint ptr %ldev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %ldev.i, align 4
  %default_trigger.i72 = getelementptr [16 x %struct.pca9532_led], ptr %pca9532_pdata.0, i32 0, i32 %i.1320.i, i32 3
  %82 = ptrtoint ptr %default_trigger.i72 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %default_trigger.i72, align 4
  %default_trigger45.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 4, i32 14
  %84 = ptrtoint ptr %default_trigger45.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %default_trigger45.i, align 4
  %brightness.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 4, i32 1
  %85 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %brightness.i, align 4
  %brightness_set_blocking.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 4, i32 6
  %86 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @pca9532_set_brightness, ptr %brightness_set_blocking.i, align 4
  %blink_set.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 4, i32 8
  %87 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @pca9532_set_blink, ptr %blink_set.i, align 4
  %call.i.i73 = call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %ldev.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %cmp51.i = icmp slt i32 %call.i.i73, 0
  br i1 %cmp51.i, label %do.end.i, label %if.end56.i

do.end.i:                                         ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %name41.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name41.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %89) #11
  br label %while.cond.preheader.i.i

if.end56.i:                                       ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %client29.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %client29.i, align 4
  %driver_data.i.i.i267.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4, i32 8
  %92 = ptrtoint ptr %driver_data.i.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %driver_data.i.i.i267.i, align 4
  %chip_info.i268.i = getelementptr inbounds %struct.pca9532_data, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %chip_info.i268.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chip_info.i268.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  %update_lock.i269.i = getelementptr inbounds %struct.pca9532_data, ptr %93, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i269.i, i32 noundef 0) #7
  %98 = lshr i8 %97, 4
  %narrow.i270.i = add nuw nsw i8 %98, 5
  %99 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx26.i, align 4
  %101 = lshr i8 %100, 2
  %narrow42.i.i = add nuw nsw i8 %101, %narrow.i270.i
  %call6.i271.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext %narrow42.i.i) #7
  %102 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx26.i, align 4
  %conv10.i.i = zext i8 %103 to i32
  %and.i.i = shl nuw nsw i32 %conv10.i.i, 1
  %mul.i272.i = and i32 %and.i.i, 6
  %shl.i273.i = shl nuw nsw i32 3, %mul.i272.i
  %neg.i.i = xor i32 %shl.i273.i, -1
  %and11.i274.i = and i32 %call6.i271.i, %neg.i.i
  %104 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %76, align 4
  %shl18.i.i = shl i32 %105, %mul.i272.i
  %or.i.i = or i32 %and11.i274.i, %shl18.i.i
  %conv19.i.i = trunc i32 %or.i.i to i8
  %106 = lshr i8 %103, 2
  %add26.i.i = add nuw nsw i8 %106, %narrow.i270.i
  %call28.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext %add26.i.i, i8 noundef zeroext %conv19.i.i) #7
  call void @mutex_unlock(ptr noundef %update_lock.i269.i) #7
  br label %for.inc116.i

do.body58.i:                                      ; preds = %for.body25.i
  %107 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %idev.i, align 4
  %tobool.not.i75 = icmp eq ptr %108, null
  br i1 %tobool.not.i75, label %do.end70.i, label %do.body62.i, !prof !91

do.body62.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/leds/leds-pca9532.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 403, 0\0A.popsection", ""() #7, !srcloc !92
  unreachable

do.end70.i:                                       ; preds = %do.body58.i
  %state71.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %i.1320.i, i32 7
  %109 = ptrtoint ptr %state71.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 3, ptr %state71.i, align 4
  %110 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver_data.i.i, align 4
  %chip_info.i277.i = getelementptr inbounds %struct.pca9532_data, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %chip_info.i277.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chip_info.i277.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 1
  %update_lock.i278.i = getelementptr inbounds %struct.pca9532_data, ptr %111, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i278.i, i32 noundef 0) #7
  %116 = lshr i8 %115, 4
  %narrow.i279.i = add nuw nsw i8 %116, 5
  %117 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx26.i, align 4
  %119 = lshr i8 %118, 2
  %narrow42.i280.i = add nuw nsw i8 %119, %narrow.i279.i
  %call6.i281.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %narrow42.i280.i) #7
  %120 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx26.i, align 4
  %conv10.i282.i = zext i8 %121 to i32
  %and.i283.i = shl nuw nsw i32 %conv10.i282.i, 1
  %mul.i284.i = and i32 %and.i283.i, 6
  %shl.i285.i = shl nuw nsw i32 3, %mul.i284.i
  %neg.i286.i = xor i32 %shl.i285.i, -1
  %and11.i287.i = and i32 %call6.i281.i, %neg.i286.i
  %122 = ptrtoint ptr %state71.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %state71.i, align 4
  %shl18.i289.i = shl i32 %123, %mul.i284.i
  %or.i290.i = or i32 %and11.i287.i, %shl18.i289.i
  %conv19.i291.i = trunc i32 %or.i290.i to i8
  %124 = lshr i8 %121, 2
  %add26.i292.i = add nuw nsw i8 %124, %narrow.i279.i
  %call28.i293.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %add26.i292.i, i8 noundef zeroext %conv19.i291.i) #7
  call void @mutex_unlock(ptr noundef %update_lock.i278.i) #7
  %call73.i = call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %125 = ptrtoint ptr %idev.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call73.i, ptr %idev.i, align 4
  %cmp76.i = icmp eq ptr %call73.i, null
  br i1 %cmp76.i, label %do.end70.i.while.cond.preheader.i.i_crit_edge, label %if.end79.i

do.end70.i.while.cond.preheader.i.i_crit_edge:    ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader.i.i

if.end79.i:                                       ; preds = %do.end70.i
  %name80.i = getelementptr [16 x %struct.pca9532_led], ptr %pca9532_pdata.0, i32 0, i32 %i.1320.i, i32 2
  %126 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %name80.i, align 4
  %128 = ptrtoint ptr %call73.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %call73.i, align 8
  %129 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %idev.i, align 4
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @.str.21, ptr %phys.i, align 4
  %132 = load ptr, ptr %idev.i, align 4
  %id85.i = getelementptr inbounds %struct.input_dev, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %id85.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 25, ptr %id85.i, align 4
  %134 = load ptr, ptr %idev.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %134, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 31, ptr %vendor.i, align 2
  %136 = load ptr, ptr %idev.i, align 4
  %product.i = getelementptr inbounds %struct.input_dev, ptr %136, i32 0, i32 3, i32 2
  %137 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %product.i, align 4
  %138 = load ptr, ptr %idev.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %138, i32 0, i32 3, i32 3
  %139 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 256, ptr %version.i, align 2
  %140 = load ptr, ptr %idev.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 262144, ptr %evbit.i, align 8
  %142 = load ptr, ptr %idev.i, align 4
  %sndbit.i = getelementptr inbounds %struct.input_dev, ptr %142, i32 0, i32 11
  %143 = ptrtoint ptr %sndbit.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 6, ptr %sndbit.i, align 8
  %144 = load ptr, ptr %idev.i, align 4
  %event.i = getelementptr inbounds %struct.input_dev, ptr %144, i32 0, i32 34
  %145 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @pca9532_event, ptr %event.i, align 4
  %146 = load ptr, ptr %idev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %146, i32 0, i32 40, i32 8
  %147 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i64, ptr %driver_data.i.i.i, align 4
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #7
  %148 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -64, ptr %work.i, align 4
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @pca9532_configure.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %149 = ptrtoint ptr %entry103.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %entry103.i, ptr %entry103.i, align 4
  %150 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %entry103.i, ptr %prev.i.i, align 4
  %151 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @pca9532_input_work, ptr %func.i, align 4
  %152 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %idev.i, align 4
  %call108.i = call i32 @input_register_device(ptr noundef %153) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %if.end79.i.for.inc116.i_crit_edge, label %if.then110.i

if.end79.i.for.inc116.i_crit_edge:                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc116.i

if.then110.i:                                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %call112.i = call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #7
  %154 = ptrtoint ptr %idev.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %idev.i, align 4
  br label %while.cond.preheader.i.i

for.inc116.i:                                     ; preds = %if.end79.i.for.inc116.i_crit_edge, %if.end56.i, %sw.bb.i, %for.body25.i.for.inc116.i_crit_edge
  %gpios.2.ph.i = phi i32 [ %gpios.0319.i, %if.end79.i.for.inc116.i_crit_edge ], [ %inc33.i, %sw.bb.i ], [ %gpios.0319.i, %if.end56.i ], [ %gpios.0319.i, %for.body25.i.for.inc116.i_crit_edge ]
  %inc117.i = add nuw nsw i32 %i.1320.i, 1
  %155 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %chip_info, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %156, align 1
  %conv22.i = zext i8 %158 to i32
  %cmp23.i = icmp ult i32 %inc117.i, %conv22.i
  br i1 %cmp23.i, label %for.inc116.i.for.body25.i_crit_edge, label %for.end118.i

for.inc116.i.for.body25.i_crit_edge:              ; preds = %for.inc116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.i

for.end118.i:                                     ; preds = %for.inc116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpios.2.ph.i)
  %tobool119.not.i = icmp eq i32 %gpios.2.ph.i, 0
  br i1 %tobool119.not.i, label %for.end118.i.cleanup_crit_edge, label %if.then120.i

for.end118.i.cleanup_crit_edge:                   ; preds = %for.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then120.i:                                     ; preds = %for.end118.i
  %gpio.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5
  %159 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str.23, ptr %gpio.i, align 4
  %direction_input.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 8
  %160 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @pca9532_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 9
  %161 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @pca9532_gpio_direction_output, ptr %direction_output.i, align 4
  %set.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 12
  %162 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @pca9532_gpio_set_value, ptr %set.i, align 4
  %get.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 10
  %163 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @pca9532_gpio_get_value, ptr %get.i, align 4
  %request.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 5
  %164 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @pca9532_gpio_request_pin, ptr %request.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 23
  %165 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %can_sleep.i, align 4
  %gpio_base.i76 = getelementptr inbounds %struct.pca9532_platform_data, ptr %pca9532_pdata.0, i32 0, i32 3
  %166 = ptrtoint ptr %gpio_base.i76 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %gpio_base.i76, align 4
  %base.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 19
  %168 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %base.i, align 4
  %169 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %156, align 1
  %conv130.i = zext i8 %170 to i16
  %ngpio.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 20
  %171 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv130.i, ptr %ngpio.i, align 4
  %parent.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 2
  %172 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %dev, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 4
  %173 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %owner.i, align 4
  %call136.i = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio.i, ptr noundef %call.i64, ptr noundef nonnull @pca9532_configure.lock_key, ptr noundef nonnull @pca9532_configure.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %tobool137.not.i = icmp eq i32 %call136.i, 0
  br i1 %tobool137.not.i, label %do.end148.i, label %if.then138.i

if.then138.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %parent.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  br label %cleanup

do.end148.i:                                      ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  %175 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %base.i, align 4
  %177 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %ngpio.i, align 4
  %conv156.i = zext i16 %178 to i32
  %add157.i = add i32 %176, -1
  %sub.i = add i32 %add157.i, %conv156.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %176, i32 noundef %sub.i) #11
  br label %cleanup

while.cond.preheader.i.i:                         ; preds = %if.then110.i, %do.end70.i.while.cond.preheader.i.i_crit_edge, %do.end.i
  %err.2.i = phi i32 [ %call.i.i73, %do.end.i ], [ %call108.i, %if.then110.i ], [ -12, %do.end70.i.while.cond.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1320.i)
  %cmp23.i.not.i = icmp eq i32 %i.1320.i, 0
  br i1 %cmp23.i.not.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %sw.epilog.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec24.i.in.i = phi i32 [ %dec24.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ %i.1320.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec24.i.i = add nsw i32 %dec24.i.in.i, -1
  %type.i.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %dec24.i.i, i32 6
  %179 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %type.i.i, align 4
  %181 = zext i32 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %180, label %while.body.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb4.i.i
    i32 1, label %sw.bb1.i.i
  ]

while.body.i.i.sw.epilog.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ldev.i.i = getelementptr %struct.pca9532_data, ptr %call.i64, i32 0, i32 1, i32 %dec24.i.i, i32 4
  call void @led_classdev_unregister(ptr noundef %ldev.i.i) #7
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %while.body.i.i
  %182 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %idev.i, align 4
  %cmp5.not.i.i = icmp eq ptr %183, null
  br i1 %cmp5.not.i.i, label %sw.bb4.i.i.sw.epilog.i.i_crit_edge, label %if.then6.i.i

sw.bb4.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.then6.i.i:                                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i294.i = call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #7
  %184 = ptrtoint ptr %idev.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %idev.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.then6.i.i, %sw.bb4.i.i.sw.epilog.i.i_crit_edge, %sw.bb1.i.i, %while.body.i.i.sw.epilog.i.i_crit_edge
  %cmp.i.i = icmp sgt i32 %dec24.i.in.i, 1
  br i1 %cmp.i.i, label %sw.epilog.i.i.while.body.i.i_crit_edge, label %sw.epilog.i.i.while.end.i.i_crit_edge

sw.epilog.i.i.while.end.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

sw.epilog.i.i.while.body.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %sw.epilog.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %parent.i.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5, i32 2
  %185 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %parent.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %186, null
  br i1 %tobool9.not.i.i, label %while.end.i.i.cleanup_crit_edge, label %if.then10.i.i

while.end.i.i.cleanup_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio.i.i = getelementptr inbounds %struct.pca9532_data, ptr %call.i64, i32 0, i32 5
  call void @gpiochip_remove(ptr noundef %gpio.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i.i, %while.end.i.i.cleanup_crit_edge, %do.end148.i, %if.then138.i, %for.end118.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end, %if.then9
  %retval.0 = phi i32 [ %16, %if.then9 ], [ -22, %do.end ], [ -5, %if.end16.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ 0, %if.then138.i ], [ 0, %do.end148.i ], [ 0, %for.end118.i.cleanup_crit_edge ], [ %err.2.i, %while.end.i.i.cleanup_crit_edge ], [ %err.2.i, %if.then10.i.i ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.pca9532_destroy_devices.exit_crit_edge, label %while.cond.preheader.i

entry.pca9532_destroy_devices.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca9532_destroy_devices.exit

while.cond.preheader.i:                           ; preds = %entry
  %chip_info = getelementptr inbounds %struct.pca9532_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp23.i.not = icmp eq i8 %5, 0
  br i1 %cmp23.i.not, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %conv = zext i8 %5 to i32
  %idev.i = getelementptr inbounds %struct.pca9532_data, ptr %1, i32 0, i32 3
  %work.i = getelementptr inbounds %struct.pca9532_data, ptr %1, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec24.i.in = phi i32 [ %conv, %while.body.lr.ph.i ], [ %dec24.i, %sw.epilog.i.while.body.i_crit_edge ]
  %dec24.i = add nsw i32 %dec24.i.in, -1
  %type.i = getelementptr %struct.pca9532_data, ptr %1, i32 0, i32 1, i32 %dec24.i, i32 6
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %7, label %while.body.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb4.i
    i32 1, label %sw.bb1.i
  ]

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %ldev.i = getelementptr %struct.pca9532_data, ptr %1, i32 0, i32 1, i32 %dec24.i, i32 4
  tail call void @led_classdev_unregister(ptr noundef %ldev.i) #7
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %while.body.i
  %9 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idev.i, align 4
  %cmp5.not.i = icmp eq ptr %10, null
  br i1 %cmp5.not.i, label %sw.bb4.i.sw.epilog.i_crit_edge, label %if.then6.i

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then6.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #7
  %11 = ptrtoint ptr %idev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %idev.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then6.i, %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb1.i, %while.body.i.sw.epilog.i_crit_edge
  %cmp.i = icmp ugt i32 %dec24.i.in, 1
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.while.end.i_crit_edge

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %parent.i = getelementptr inbounds %struct.pca9532_data, ptr %1, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  %tobool9.not.i = icmp eq ptr %13, null
  br i1 %tobool9.not.i, label %while.end.i.pca9532_destroy_devices.exit_crit_edge, label %if.then10.i

while.end.i.pca9532_destroy_devices.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pca9532_destroy_devices.exit

if.then10.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio.i = getelementptr inbounds %struct.pca9532_data, ptr %1, i32 0, i32 5
  tail call void @gpiochip_remove(ptr noundef %gpio.i) #7
  br label %pca9532_destroy_devices.exit

pca9532_destroy_devices.exit:                     ; preds = %if.then10.i, %while.end.i.pca9532_destroy_devices.exit_crit_edge, %entry.pca9532_destroy_devices.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.pca9532_destroy_devices.exit_crit_edge ], [ 0, %if.then10.i ], [ 0, %while.end.i.pca9532_destroy_devices.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_set_brightness(ptr nocapture noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -16
  %0 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %value, label %if.else4 [
    i32 0, label %if.then
    i32 255, label %if.then2
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr i8, ptr %led_cdev, i32 448
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %if.end8

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state3 = getelementptr i8, ptr %led_cdev, i32 448
  %2 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state3, align 4
  br label %if.end8

if.else4:                                         ; preds = %entry
  %state5 = getelementptr i8, ptr %led_cdev, i32 448
  %3 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state5, align 4
  %client = getelementptr i8, ptr %led_cdev, i32 -12
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip_info.i = getelementptr inbounds %struct.pca9532_data, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.not.i = icmp eq i8 %11, 0
  br i1 %cmp1.not.i, label %if.else4.do.end.i_crit_edge, label %if.else4.for.body.i_crit_edge

if.else4.for.body.i_crit_edge:                    ; preds = %if.else4
  br label %for.body.i

if.else4.do.end.i_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else4.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc11.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else4.for.body.i_crit_edge ]
  %b.03.i = phi i32 [ %b.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else4.for.body.i_crit_edge ]
  %a.02.i = phi i32 [ %a.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else4.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.pca9532_data, ptr %7, i32 0, i32 1, i32 %i.04.i, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp2.i = icmp eq i32 %13, 1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %state.i = getelementptr %struct.pca9532_data, ptr %7, i32 0, i32 1, i32 %i.04.i, i32 7
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp6.i = icmp eq i32 %15, 2
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %a.02.i, 1
  %brightness.i = getelementptr %struct.pca9532_data, ptr %7, i32 0, i32 1, i32 %i.04.i, i32 4, i32 1
  %16 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brightness.i, align 4
  %add10.i = add i32 %17, %b.03.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %a.1.i = phi i32 [ %inc.i, %if.then.i ], [ %a.02.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %a.02.i, %for.body.i.for.inc.i_crit_edge ]
  %b.1.i = phi i32 [ %add10.i, %if.then.i ], [ %b.03.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %b.03.i, %for.body.i.for.inc.i_crit_edge ]
  %inc11.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a.1.i)
  %cmp12.i = icmp eq i32 %a.1.i, 0
  br i1 %cmp12.i, label %for.end.i.do.end.i_crit_edge, label %if.end15.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %if.else4.do.end.i_crit_edge
  %b.0.lcssa10.i = phi i32 [ %b.1.i, %for.end.i.do.end.i_crit_edge ], [ 0, %if.else4.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %b.0.lcssa10.i, i32 noundef 0, i32 noundef %value) #11
  br label %cleanup

if.end15.i:                                       ; preds = %for.end.i
  %div.i = sdiv i32 %b.1.i, %a.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div.i)
  %cmp16.i = icmp sgt i32 %div.i, 255
  br i1 %cmp16.i, label %if.end15.i.cleanup_crit_edge, label %pca9532_calcpwm.exit

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pca9532_calcpwm.exit:                             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv20.i = trunc i32 %div.i to i8
  %pwm21.i = getelementptr inbounds %struct.pca9532_data, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %pwm21.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv20.i, ptr %pwm21.i, align 1
  %psc.i = getelementptr inbounds %struct.pca9532_data, ptr %7, i32 0, i32 8
  %19 = ptrtoint ptr %psc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %psc.i, align 1
  br label %if.end8

if.end8:                                          ; preds = %pca9532_calcpwm.exit, %if.then2, %if.then
  %state9 = getelementptr i8, ptr %led_cdev, i32 448
  %20 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp10 = icmp eq i32 %21, 2
  br i1 %cmp10, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %client12 = getelementptr i8, ptr %led_cdev, i32 -12
  %22 = ptrtoint ptr %client12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client12, align 4
  %driver_data.i.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i26, align 4
  %chip_info.i27 = getelementptr inbounds %struct.pca9532_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %chip_info.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip_info.i27, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %update_lock.i = getelementptr inbounds %struct.pca9532_data, ptr %25, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %30 = lshr i8 %29, 4
  %add.i = add nuw nsw i8 %30, 2
  %pwm3.i = getelementptr inbounds %struct.pca9532_data, ptr %25, i32 0, i32 7
  %31 = ptrtoint ptr %pwm3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pwm3.i, align 1
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext %add.i, i8 noundef zeroext %32) #7
  %narrow.i = add nuw nsw i8 %30, 1
  %psc.i28 = getelementptr inbounds %struct.pca9532_data, ptr %25, i32 0, i32 8
  %33 = ptrtoint ptr %psc.i28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %psc.i28, align 1
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext %narrow.i, i8 noundef zeroext %34) #7
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %client1.i = getelementptr i8, ptr %led_cdev, i32 -12
  %35 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client1.i, align 4
  %driver_data.i.i.i29 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i29, align 4
  %chip_info.i30 = getelementptr inbounds %struct.pca9532_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %chip_info.i30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info.i30, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %update_lock.i31 = getelementptr inbounds %struct.pca9532_data, ptr %38, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i31, i32 noundef 0) #7
  %43 = lshr i8 %42, 4
  %narrow.i32 = add nuw nsw i8 %43, 5
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr, align 4
  %46 = lshr i8 %45, 2
  %narrow42.i = add nuw nsw i8 %46, %narrow.i32
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext %narrow42.i) #7
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr, align 4
  %conv10.i = zext i8 %48 to i32
  %and.i = shl nuw nsw i32 %conv10.i, 1
  %mul.i = and i32 %and.i, 6
  %shl.i = shl nuw nsw i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and11.i = and i32 %call6.i, %neg.i
  %49 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state9, align 4
  %shl18.i = shl i32 %50, %mul.i
  %or.i = or i32 %and11.i, %shl18.i
  %conv19.i = trunc i32 %or.i to i8
  %51 = lshr i8 %48, 2
  %add26.i = add nuw nsw i8 %51, %narrow.i32
  %call28.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext %add26.i, i8 noundef zeroext %conv19.i) #7
  tail call void @mutex_unlock(ptr noundef %update_lock.i31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end15.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %do.end.i ], [ -22, %if.end15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_set_blink(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -16
  %client1 = getelementptr i8, ptr %led_cdev, i32 -12
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %2 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %delay_on, align 4
  %7 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1000, ptr %delay_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay_on, align 4
  %10 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.not = icmp ne i32 %9, %11
  %12 = add i32 %9, -1691
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1685, i32 %12)
  %13 = icmp ult i32 %12, -1685
  %14 = or i1 %13, %cmp3.not
  br i1 %14, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mul = mul nuw nsw i32 %9, 152
  %sub = add nsw i32 %mul, -1
  %div = udiv i32 %sub, 1000
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 1
  %15 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %brightness, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip_info.i = getelementptr inbounds %struct.pca9532_data, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp1.not.i = icmp eq i8 %22, 0
  br i1 %cmp1.not.i, label %if.end8.do.end.i_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.do.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc11.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %b.03.i = phi i32 [ %b.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %a.02.i = phi i32 [ %a.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.pca9532_data, ptr %18, i32 0, i32 1, i32 %i.04.i, i32 6
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp2.i = icmp eq i32 %24, 1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %state.i = getelementptr %struct.pca9532_data, ptr %18, i32 0, i32 1, i32 %i.04.i, i32 7
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp6.i = icmp eq i32 %26, 2
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %a.02.i, 1
  %brightness.i = getelementptr %struct.pca9532_data, ptr %18, i32 0, i32 1, i32 %i.04.i, i32 4, i32 1
  %27 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brightness.i, align 4
  %add10.i = add i32 %28, %b.03.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %a.1.i = phi i32 [ %inc.i, %if.then.i ], [ %a.02.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %a.02.i, %for.body.i.for.inc.i_crit_edge ]
  %b.1.i = phi i32 [ %add10.i, %if.then.i ], [ %b.03.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %b.03.i, %for.body.i.for.inc.i_crit_edge ]
  %inc11.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a.1.i)
  %cmp12.i = icmp eq i32 %a.1.i, 0
  br i1 %cmp12.i, label %for.end.i.do.end.i_crit_edge, label %if.end15.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %if.end8.do.end.i_crit_edge
  %b.0.lcssa10.i = phi i32 [ %b.1.i, %for.end.i.do.end.i_crit_edge ], [ 0, %if.end8.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %b.0.lcssa10.i, i32 noundef 0, i32 noundef %16) #11
  br label %cleanup

if.end15.i:                                       ; preds = %for.end.i
  %div.i = sdiv i32 %b.1.i, %a.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div.i)
  %cmp16.i = icmp sgt i32 %div.i, 255
  br i1 %cmp16.i, label %if.end15.i.cleanup_crit_edge, label %if.end10

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end15.i
  %conv20.i = trunc i32 %div.i to i8
  %pwm21.i = getelementptr inbounds %struct.pca9532_data, ptr %18, i32 0, i32 7
  %29 = ptrtoint ptr %pwm21.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv20.i, ptr %pwm21.i, align 1
  %conv23.i = trunc i32 %div to i8
  %psc.i = getelementptr inbounds %struct.pca9532_data, ptr %18, i32 0, i32 8
  %30 = ptrtoint ptr %psc.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv23.i, ptr %psc.i, align 1
  %state = getelementptr i8, ptr %led_cdev, i32 448
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp11 = icmp eq i32 %32, 2
  br i1 %cmp11, label %if.then12, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client1, align 4
  %driver_data.i.i.i32 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i.i32, align 4
  %chip_info.i33 = getelementptr inbounds %struct.pca9532_data, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %chip_info.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip_info.i33, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %update_lock.i = getelementptr inbounds %struct.pca9532_data, ptr %36, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %41 = lshr i8 %40, 4
  %add.i = add nuw nsw i8 %41, 2
  %pwm3.i = getelementptr inbounds %struct.pca9532_data, ptr %36, i32 0, i32 7
  %42 = ptrtoint ptr %pwm3.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pwm3.i, align 1
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext %add.i, i8 noundef zeroext %43) #7
  %narrow.i = add nuw nsw i8 %41, 1
  %psc.i34 = getelementptr inbounds %struct.pca9532_data, ptr %36, i32 0, i32 8
  %44 = ptrtoint ptr %psc.i34 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %psc.i34, align 1
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext %narrow.i, i8 noundef zeroext %45) #7
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %46 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client1, align 4
  %driver_data.i.i.i35 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i.i35, align 4
  %chip_info.i36 = getelementptr inbounds %struct.pca9532_data, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %chip_info.i36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip_info.i36, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %update_lock.i37 = getelementptr inbounds %struct.pca9532_data, ptr %49, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i37, i32 noundef 0) #7
  %54 = lshr i8 %53, 4
  %narrow.i38 = add nuw nsw i8 %54, 5
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr, align 4
  %57 = lshr i8 %56, 2
  %narrow42.i = add nuw nsw i8 %57, %narrow.i38
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext %narrow42.i) #7
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr, align 4
  %conv10.i = zext i8 %59 to i32
  %and.i = shl nuw nsw i32 %conv10.i, 1
  %mul.i = and i32 %and.i, 6
  %shl.i = shl nuw nsw i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and11.i = and i32 %call6.i, %neg.i
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state, align 4
  %shl18.i = shl i32 %61, %mul.i
  %or.i = or i32 %and11.i, %shl18.i
  %conv19.i = trunc i32 %or.i to i8
  %62 = lshr i8 %59, 2
  %add26.i = add nuw nsw i8 %62, %narrow.i38
  %call28.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext %add26.i, i8 noundef zeroext %conv19.i) #7
  tail call void @mutex_unlock(ptr noundef %update_lock.i37) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end15.i.cleanup_crit_edge, %do.end.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %type)
  %cmp = icmp eq i32 %type, 18
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  %or.cond15 = and i1 %cmp, %switch
  br i1 %or.cond15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = add i32 %value, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32765, i32 %2)
  %3 = icmp ult i32 %2, 32765
  %spec.select = select i1 %3, i8 127, i8 0
  %4 = getelementptr %struct.pca9532_data, ptr %1, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 1
  %work = getelementptr inbounds %struct.pca9532_data, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca9532_input_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -7588
  %chip_info = getelementptr i8, ptr %work, i32 392
  %0 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %update_lock = getelementptr i8, ptr %work, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = lshr i8 %3, 4
  %narrow = add nuw nsw i8 %6, 4
  %arrayidx = getelementptr i8, ptr %work, i32 397
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %narrow, i8 noundef zeroext %8) #7
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %0 = getelementptr %struct.pca9532_data, ptr %call.i, i32 0, i32 1, i32 %offset, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %arrayidx.i = getelementptr %struct.pca9532_data, ptr %call.i, i32 0, i32 1, i32 %offset
  %client1.i.i = getelementptr %struct.pca9532_data, ptr %call.i, i32 0, i32 1, i32 %offset, i32 1
  %2 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %chip_info.i.i = getelementptr inbounds %struct.pca9532_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %update_lock.i.i = getelementptr inbounds %struct.pca9532_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #7
  %10 = lshr i8 %9, 4
  %narrow.i.i = add nuw nsw i8 %10, 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 4
  %13 = lshr i8 %12, 2
  %narrow42.i.i = add nuw nsw i8 %13, %narrow.i.i
  %call6.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %narrow42.i.i) #7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 4
  %conv10.i.i = zext i8 %15 to i32
  %and.i.i = shl nuw nsw i32 %conv10.i.i, 1
  %mul.i.i = and i32 %and.i.i, 6
  %shl.i.i = shl nuw nsw i32 3, %mul.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and11.i.i = and i32 %call6.i.i, %neg.i.i
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  %shl18.i.i = shl i32 %17, %mul.i.i
  %or.i.i = or i32 %and11.i.i, %shl18.i.i
  %conv19.i.i = trunc i32 %or.i.i to i8
  %18 = lshr i8 %15, 2
  %add26.i.i = add nuw nsw i8 %18, %narrow.i.i
  %call28.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add26.i.i, i8 noundef zeroext %conv19.i.i) #7
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp ne i32 %val, 0
  %spec.select.i = zext i1 %tobool.not.i to i32
  %0 = getelementptr %struct.pca9532_data, ptr %call.i, i32 0, i32 1, i32 %offset, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %0, align 4
  %arrayidx.i = getelementptr %struct.pca9532_data, ptr %call.i, i32 0, i32 1, i32 %offset
  %client1.i.i = getelementptr %struct.pca9532_data, ptr %call.i, i32 0, i32 1, i32 %offset, i32 1
  %2 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %chip_info.i.i = getelementptr inbounds %struct.pca9532_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %update_lock.i.i = getelementptr inbounds %struct.pca9532_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #7
  %10 = lshr i8 %9, 4
  %narrow.i.i = add nuw nsw i8 %10, 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 4
  %13 = lshr i8 %12, 2
  %narrow42.i.i = add nuw nsw i8 %13, %narrow.i.i
  %call6.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %narrow42.i.i) #7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 4
  %conv10.i.i = zext i8 %15 to i32
  %and.i.i = shl nuw nsw i32 %conv10.i.i, 1
  %mul.i.i = and i32 %and.i.i, 6
  %shl.i.i = shl nuw nsw i32 3, %mul.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and11.i.i = and i32 %call6.i.i, %neg.i.i
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  %shl18.i.i = shl i32 %17, %mul.i.i
  %or.i.i = or i32 %and11.i.i, %shl18.i.i
  %conv19.i.i = trunc i32 %or.i.i to i8
  %18 = lshr i8 %15, 2
  %add26.i.i = add nuw nsw i8 %18, %narrow.i.i
  %call28.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add26.i.i, i8 noundef zeroext %conv19.i.i) #7
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca9532_gpio_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp ne i32 %val, 0
  %spec.select = zext i1 %tobool.not to i32
  %0 = getelementptr %struct.pca9532_data, ptr %call, i32 0, i32 1, i32 %offset, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select, ptr %0, align 4
  %arrayidx = getelementptr %struct.pca9532_data, ptr %call, i32 0, i32 1, i32 %offset
  %client1.i = getelementptr %struct.pca9532_data, ptr %call, i32 0, i32 1, i32 %offset, i32 1
  %2 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip_info.i = getelementptr inbounds %struct.pca9532_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %update_lock.i = getelementptr inbounds %struct.pca9532_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %10 = lshr i8 %9, 4
  %narrow.i = add nuw nsw i8 %10, 5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  %13 = lshr i8 %12, 2
  %narrow42.i = add nuw nsw i8 %13, %narrow.i
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %narrow42.i) #7
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 4
  %conv10.i = zext i8 %15 to i32
  %and.i = shl nuw nsw i32 %conv10.i, 1
  %mul.i = and i32 %and.i, 6
  %shl.i = shl nuw nsw i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and11.i = and i32 %call6.i, %neg.i
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  %shl18.i = shl i32 %17, %mul.i
  %or.i = or i32 %and11.i, %shl18.i
  %conv19.i = trunc i32 %or.i to i8
  %18 = lshr i8 %15, 2
  %add26.i = add nuw nsw i8 %18, %narrow.i
  %call28.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add26.i, i8 noundef zeroext %conv19.i) #7
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_gpio_get_value(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shr = lshr i32 %offset, 3
  %conv = trunc i32 %shr to i8
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #7
  %rem = and i32 %offset, 7
  %2 = lshr i32 %call1, %rem
  %3 = and i32 %2, 1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9532_gpio_request_pin(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %type = getelementptr %struct.pca9532_data, ptr %call, i32 0, i32 1, i32 %offset, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_leds_pca9532__288_561_pca9532_driver_init6, !1, !"__initcall__kmod_leds_pca9532__288_561_pca9532_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-pca9532.c", i32 561, i32 1}
!2 = !{ptr @__exitcall_pca9532_driver_exit, !1, !"__exitcall_pca9532_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-pca9532.c", i32 563, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-pca9532.c", i32 564, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/leds/leds-pca9532.c", i32 565, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-pca9532.c", i32 103, i32 11}
!12 = !{ptr @pca9532_driver, !13, !"pca9532_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-pca9532.c", i32 101, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-pca9532.c", i32 528, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pca9532_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pca9532_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-pca9532.c", i32 546, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pca9532_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @pca9532_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @pca9532_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-pca9532.c", i32 549, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-pca9532.c", i32 485, i32 32}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-pca9532.c", i32 487, i32 32}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-pca9532.c", i32 491, i32 38}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-pca9532.c", i32 494, i32 31}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-pca9532.c", i32 495, i32 34}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-pca9532.c", i32 497, i32 39}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-pca9532.c", i32 498, i32 23}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-pca9532.c", i32 500, i32 28}
!46 = !{ptr @pca9532_chip_info_tbl, !47, !"pca9532_chip_info_tbl", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-pca9532.c", i32 74, i32 39}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-pca9532.c", i32 395, i32 5}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pca9532_configure._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @pca9532_configure._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-pca9532.c", i32 412, i32 23}
!55 = !{ptr @pca9532_configure.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-pca9532.c", i32 422, i32 4}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-pca9532.c", i32 435, i32 22}
!60 = !{ptr @pca9532_configure.lock_key, !61, !"lock_key", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-pca9532.c", i32 447, i32 9}
!62 = !{ptr @pca9532_configure.request_key, !61, !"request_key", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/leds/leds-pca9532.c", i32 451, i32 4}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pca9532_configure._entry.24, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pca9532_configure._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/leds-pca9532.c", i32 453, i32 4}
!70 = !{ptr @pca9532_configure._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pca9532_configure._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/leds/leds-pca9532.c", i32 129, i32 3}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pca9532_calcpwm._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pca9532_calcpwm._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @of_pca9532_leds_match, !78, !"of_pca9532_leds_match", i1 false, i1 false}
!78 = !{!"../drivers/leds/leds-pca9532.c", i32 90, i32 34}
!79 = !{ptr @pca9532_id, !80, !"pca9532_id", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-pca9532.c", i32 64, i32 35}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2155743915, i64 2155744407, i64 2155743952, i64 2155744008, i64 2155744042, i64 2155744066, i64 2155744107, i64 2155744128, i64 2155744156, i64 2155744190}
