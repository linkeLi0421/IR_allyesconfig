; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-pca955x.c_pt.bc'
source_filename = "../drivers/leds/leds-pca955x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pca955x_chipdef = type { i32, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pca955x_led = type { ptr, %struct.led_classdev, i32, i32, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pca955x_platform_data = type { ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pca955x = type { %struct.mutex, ptr, ptr, ptr, %struct.gpio_chip }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_pca955x__288_692_pca955x_driver_init6 = internal global ptr @pca955x_driver_init, section ".initcall6.init", align 4
@pca955x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pca955x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pca955x_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pca955x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca955x_driver_exit = internal global ptr @pca955x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"leds_pca955x.author=Nate Case <ncase@xes-inc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [44 x i8] c"leds_pca955x.description=PCA955x LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"leds_pca955x.file=drivers/leds/leds-pca955x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"leds_pca955x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds-pca955x\00", [19 x i8] zeroinitializer }, align 32
@of_pca955x_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9551\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9552\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,pca9552\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9553\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@pca955x_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca9550\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca9551\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pca9552\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ibm-pca9552\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"pca9553\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pca955x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown chip\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pca955x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-pca955x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca955x_probe._entry_ptr = internal global ptr @pca955x_probe._entry, section ".printk_index", align 4
@pca955x_chipdefs = internal global { [5 x %struct.pca955x_chipdef], [36 x i8] } { [5 x %struct.pca955x_chipdef] [%struct.pca955x_chipdef { i32 2, i8 96, i32 1 }, %struct.pca955x_chipdef { i32 8, i8 96, i32 3 }, %struct.pca955x_chipdef { i32 16, i8 96, i32 3 }, %struct.pca955x_chipdef { i32 16, i8 48, i32 3 }, %struct.pca955x_chipdef { i32 4, i8 98, i32 1 }], [36 x i8] zeroinitializer }, align 32
@pca955x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid slave address %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@pca955x_probe._entry_ptr.8 = internal global ptr @pca955x_probe._entry.6, section ".printk_index", align 4
@pca955x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"leds-pca955x: Using %s %d-bit LED driver at slave address 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pca955x_probe._entry_ptr.12 = internal global ptr @pca955x_probe._entry.9, section ".printk_index", align 4
@pca955x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"board info claims %d LEDs on a %d-bit chip\0A\00", [52 x i8] zeroinitializer }, align 32
@pca955x_probe._entry_ptr.15 = internal global ptr @pca955x_probe._entry.13, section ".printk_index", align 4
@pca955x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pca955x->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pca955x\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-pca955x\00", [19 x i8] zeroinitializer }, align 32
@pca955x_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca955x_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca955x_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 671, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not add gpiochip\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pca955x_probe._entry_ptr.23 = internal global ptr @pca955x_probe._entry.20, section ".printk_index", align 4
@pca955x_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 676, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpios %i...%i\0A\00", [17 x i8] zeroinitializer }, align 32
@pca955x_probe._entry_ptr.26 = internal global ptr @pca955x_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@pca955x_read_ls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: reg 0x%x, err %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pca955x_read_ls\00", [16 x i8] zeroinitializer }, align 32
@pca955x_read_ls._entry_ptr = internal global ptr @pca955x_read_ls._entry, section ".printk_index", align 4
@pca955x_write_ls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: reg 0x%x, val 0x%x, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pca955x_write_ls\00", [47 x i8] zeroinitializer }, align 32
@pca955x_write_ls._entry_ptr = internal global ptr @pca955x_write_ls._entry, section ".printk_index", align 4
@pca955x_read_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.36, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pca955x_read_pwm\00", [47 x i8] zeroinitializer }, align 32
@pca955x_read_pwm._entry_ptr = internal global ptr @pca955x_read_pwm._entry, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@pca955x_write_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.37, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca955x_write_pwm\00", [46 x i8] zeroinitializer }, align 32
@pca955x_write_pwm._entry_ptr = internal global ptr @pca955x_write_pwm._entry, section ".printk_index", align 4
@pca955x_write_psc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.38, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca955x_write_psc\00", [46 x i8] zeroinitializer }, align 32
@pca955x_write_psc._entry_ptr = internal global ptr @pca955x_write_psc._entry, section ".printk_index", align 4
@pca955x_read_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.39, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pca955x_read_input\00", [45 x i8] zeroinitializer }, align 32
@pca955x_read_input._entry_ptr = internal global ptr @pca955x_read_input._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 127, i64 255]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 127, i64 255]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"pca955x_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 683, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 685, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"of_pca955x_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 472, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"pca955x_id\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 106, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 508, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"pca955x_chipdefs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 78, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 525, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 530, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 538, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 555, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 560, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 605, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 654, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 666, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 671, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 674, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 445, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 452, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 454, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 456, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 458, i32 28 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 228, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 211, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 244, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 194, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 174, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [31 x i8] c"../drivers/leds/leds-pca955x.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 351, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pca955x_driver_exit, ptr @__initcall__kmod_leds_pca955x__288_692_pca955x_driver_init6, ptr @pca955x_driver_exit, ptr @pca955x_probe._entry, ptr @pca955x_probe._entry.13, ptr @pca955x_probe._entry.20, ptr @pca955x_probe._entry.24, ptr @pca955x_probe._entry.6, ptr @pca955x_probe._entry.9, ptr @pca955x_probe._entry_ptr, ptr @pca955x_probe._entry_ptr.12, ptr @pca955x_probe._entry_ptr.15, ptr @pca955x_probe._entry_ptr.23, ptr @pca955x_probe._entry_ptr.26, ptr @pca955x_probe._entry_ptr.8, ptr @pca955x_read_input._entry, ptr @pca955x_read_input._entry_ptr, ptr @pca955x_read_ls._entry, ptr @pca955x_read_ls._entry_ptr, ptr @pca955x_read_pwm._entry, ptr @pca955x_read_pwm._entry_ptr, ptr @pca955x_write_ls._entry, ptr @pca955x_write_ls._entry_ptr, ptr @pca955x_write_psc._entry, ptr @pca955x_write_psc._entry_ptr, ptr @pca955x_write_pwm._entry, ptr @pca955x_write_pwm._entry_ptr, ptr @pca955x_driver, ptr @.str, ptr @of_pca955x_match, ptr @pca955x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pca955x_chipdefs, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @pca955x_probe.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pca955x_probe.lock_key, ptr @pca955x_probe.request_key, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pca955x_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_chipdefs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_read_ls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_write_ls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_read_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_write_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_write_psc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca955x_read_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca955x_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca955x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @pca955x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_probe(ptr noundef %client) #2 align 64 {
entry:
  %state.i = alloca ptr, align 4
  %reg.i = alloca i32, align 4
  %init_data = alloca %struct.led_init_data, align 4
  %default_label = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #8
  %0 = call ptr @memset(ptr %init_data, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %default_label) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %1 = ptrtoint ptr %default_label to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %default_label, align 8
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %if.end6

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @i2c_match_id(ptr noundef nonnull @pca955x_id, ptr noundef %client) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup210

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  br label %if.end6

if.end6:                                          ; preds = %cleanup, %if.then
  %chip_type.1 = phi i32 [ %2, %if.then ], [ %4, %cleanup ]
  %arrayidx = getelementptr [5 x %struct.pca955x_chipdef], ptr @pca955x_chipdefs, i32 0, i32 %chip_type.1
  %adapter7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter7, align 8
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.then11, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %if.end6
  %call.i = tail call i32 @device_get_child_node_count(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then11.if.then14_crit_edge, label %lor.lhs.false.i

if.then11.if.then14_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false.i:                                  ; preds = %if.then11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %10)
  %cmp.i = icmp sgt i32 %call.i, %10
  br i1 %cmp.i, label %lor.lhs.false.i.if.then14_crit_edge, label %if.end.i

lor.lhs.false.i.if.then14_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #8
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.then14_crit_edge, label %if.end7.i

if.end.i.if.then14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end7.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 420) #8
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !107

devm_kcalloc.exit.thread.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %call.i.i, align 4
  br label %if.then14

devm_kcalloc.exit.i:                              ; preds = %if.end7.i
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #8
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i.i, ptr %call.i.i, align 4
  %tobool12.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool12.not.i, label %devm_kcalloc.exit.i.if.then14_crit_edge, label %if.end15.i

devm_kcalloc.exit.i.if.then14_crit_edge:          ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end15.i:                                       ; preds = %devm_kcalloc.exit.i
  %call17.i = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #8
  %tobool18.not83.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not83.i, label %if.end15.i.pca955x_get_pdata.exit_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  br label %for.body.i

if.end15.i.pca955x_get_pdata.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca955x_get_pdata.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end15.i.for.body.i_crit_edge
  %child.084.i = phi ptr [ %call49.i, %cleanup.i.for.body.i_crit_edge ], [ %call17.i, %if.end15.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #8
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %state.i, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #8
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reg.i, align 4, !annotation !108
  %call.i79.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.084.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %reg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %cmp20.not.i = icmp eq i32 %call.i79.i, 0
  br i1 %cmp20.not.i, label %lor.lhs.false21.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false21.i:                                ; preds = %for.body.i
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg.i, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp23.not.i = icmp ult i32 %21, %23
  br i1 %cmp23.not.i, label %if.end25.i, label %lor.lhs.false21.i.cleanup.i_crit_edge

lor.lhs.false21.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end25.i:                                       ; preds = %lor.lhs.false21.i
  %type.i = getelementptr %struct.pca955x_led, ptr %call5.i.i.i, i32 %21, i32 3
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %type.i, align 4
  %fwnode.i = getelementptr %struct.pca955x_led, ptr %call5.i.i.i, i32 %21, i32 5
  %25 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %child.084.i, ptr %fwnode.i, align 4
  %call.i80.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.084.i, ptr noundef nonnull @.str.28, ptr noundef %type.i, i32 noundef 1) #8
  %call29.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %child.084.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.else43.i

if.then31.i:                                      ; preds = %if.end25.i
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state.i, align 4
  %call32.i = call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(5) @.str.30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  %default_state.i = getelementptr %struct.pca955x_led, ptr %call5.i.i.i, i32 %21, i32 4
  %28 = ptrtoint ptr %default_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %default_state.i, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %if.then31.i
  %call35.i = call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(3) @.str.31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  %default_state38.i = getelementptr %struct.pca955x_led, ptr %call5.i.i.i, i32 %21, i32 4
  br i1 %tobool36.not.i, label %if.then37.i, label %if.else39.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %default_state38.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %default_state38.i, align 4
  br label %cleanup.i

if.else39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %default_state38.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %default_state38.i, align 4
  br label %cleanup.i

if.else43.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %default_state44.i = getelementptr %struct.pca955x_led, ptr %call5.i.i.i, i32 %21, i32 4
  %31 = ptrtoint ptr %default_state44.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %default_state44.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else43.i, %if.else39.i, %if.then37.i, %if.then34.i, %lor.lhs.false21.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #8
  %call49.i = call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef nonnull %child.084.i) #8
  %tobool18.not.i = icmp eq ptr %call49.i, null
  br i1 %tobool18.not.i, label %cleanup.i.pca955x_get_pdata.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.pca955x_get_pdata.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca955x_get_pdata.exit

pca955x_get_pdata.exit:                           ; preds = %cleanup.i.pca955x_get_pdata.exit_crit_edge, %if.end15.i.pca955x_get_pdata.exit_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %num_leds.i = getelementptr inbounds %struct.pca955x_platform_data, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %num_leds.i, align 4
  %cmp.i342 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i342, label %pca955x_get_pdata.exit.if.then14_crit_edge, label %pca955x_get_pdata.exit.if.end17_crit_edge

pca955x_get_pdata.exit.if.end17_crit_edge:        ; preds = %pca955x_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

pca955x_get_pdata.exit.if.then14_crit_edge:       ; preds = %pca955x_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %pca955x_get_pdata.exit.if.then14_crit_edge, %devm_kcalloc.exit.i.if.then14_crit_edge, %devm_kcalloc.exit.thread.i, %if.end.i.if.then14_crit_edge, %lor.lhs.false.i.if.then14_crit_edge, %if.then11.if.then14_crit_edge
  %retval.0.i357 = phi ptr [ %call.i.i, %pca955x_get_pdata.exit.if.then14_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.if.then14_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then14_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then11.if.then14_crit_edge ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.i.if.then14_crit_edge ]
  %35 = ptrtoint ptr %retval.0.i357 to i32
  br label %cleanup210

if.end17:                                         ; preds = %pca955x_get_pdata.exit.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %pdata.0 = phi ptr [ %8, %if.end6.if.end17_crit_edge ], [ %call.i.i, %pca955x_get_pdata.exit.if.end17_crit_edge ]
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr, align 2
  %conv = zext i16 %37 to i32
  %slv_addr_shift = getelementptr [5 x %struct.pca955x_chipdef], ptr @pca955x_chipdefs, i32 0, i32 %chip_type.1, i32 2
  %38 = ptrtoint ptr %slv_addr_shift to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slv_addr_shift, align 4
  %notmask = shl nsw i32 -1, %39
  %and = and i32 %notmask, %conv
  %slv_addr = getelementptr [5 x %struct.pca955x_chipdef], ptr @pca955x_chipdefs, i32 0, i32 %chip_type.1, i32 1
  %40 = ptrtoint ptr %slv_addr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %slv_addr, align 4
  %conv18 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv18)
  %cmp.not = icmp eq i32 %and, %conv18
  br i1 %cmp.not, label %do.end30, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv) #11
  br label %cleanup210

do.end30:                                         ; preds = %if.end17
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %43, i32 noundef %conv) #11
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %44 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i343 = call i32 %47(ptr noundef %6) #8
  %and.i = and i32 %call.i.i343, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i344.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i344.not, label %if.end37, label %do.end30.cleanup210_crit_edge

do.end30.cleanup210_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end37:                                         ; preds = %do.end30
  %num_leds = getelementptr inbounds %struct.pca955x_platform_data, ptr %pdata.0, i32 0, i32 1
  %48 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_leds, align 4
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp39.not = icmp eq i32 %49, %51
  br i1 %cmp39.not, label %if.end48, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %49, i32 noundef %51) #11
  br label %cleanup210

if.end48:                                         ; preds = %if.end37
  %call.i345 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 452, i32 noundef 3520) #8
  %tobool51.not = icmp eq ptr %call.i345, null
  br i1 %tobool51.not, label %if.end48.cleanup210_crit_edge, label %if.end53

if.end48.cleanup210_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end53:                                         ; preds = %if.end48
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 420) #8
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !107

devm_kcalloc.exit.thread:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %leds359 = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 1
  %56 = ptrtoint ptr %leds359 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %leds359, align 4
  br label %cleanup210

devm_kcalloc.exit:                                ; preds = %if.end53
  %57 = extractvalue { i32, i1 } %54, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %57, i32 noundef 3520) #8
  %leds = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 1
  %58 = ptrtoint ptr %leds to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call5.i.i, ptr %leds, align 4
  %tobool58.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool58.not, label %devm_kcalloc.exit.cleanup210_crit_edge, label %if.end60

devm_kcalloc.exit.cleanup210_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end60:                                         ; preds = %devm_kcalloc.exit
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i345, ptr %driver_data.i.i, align 4
  call void @__mutex_init(ptr noundef nonnull %call.i345, ptr noundef nonnull @.str.16, ptr noundef nonnull @pca955x_probe.__key) #8
  %client64 = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 3
  %60 = ptrtoint ptr %client64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %client, ptr %client64, align 4
  %chipdef = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 2
  %61 = ptrtoint ptr %chipdef to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx, ptr %chipdef, align 4
  %devname_mandatory = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 3
  %62 = ptrtoint ptr %devname_mandatory to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %devname_mandatory, align 4
  %devicename = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 2
  %63 = ptrtoint ptr %devicename to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.17, ptr %devicename, align 4
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp66363 = icmp sgt i32 %65, 0
  br i1 %cmp66363, label %for.body.lr.ph, label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end60
  %default_label125 = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %keep_pwm.0.off0367 = phi i1 [ false, %for.body.lr.ph ], [ %keep_pwm.1.off0, %for.inc.for.body_crit_edge ]
  %ngpios.0366 = phi i32 [ 0, %for.body.lr.ph ], [ %ngpios.1, %for.inc.for.body_crit_edge ]
  %i.0364 = phi i32 [ 0, %for.body.lr.ph ], [ %inc150, %for.inc.for.body_crit_edge ]
  %66 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %leds, align 4
  %arrayidx69 = getelementptr %struct.pca955x_led, ptr %67, i32 %i.0364
  %led_num = getelementptr %struct.pca955x_led, ptr %67, i32 %i.0364, i32 2
  %68 = ptrtoint ptr %led_num to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %i.0364, ptr %led_num, align 4
  %69 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i345, ptr %arrayidx69, align 4
  %70 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdata.0, align 4
  %type = getelementptr %struct.pca955x_led, ptr %71, i32 %i.0364, i32 3
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type, align 4
  %type73 = getelementptr %struct.pca955x_led, ptr %67, i32 %i.0364, i32 3
  %74 = ptrtoint ptr %type73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %type73, align 4
  %75 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %73, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb75
    i32 2, label %sw.bb
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %ngpios.0366, 1
  br label %for.inc

sw.bb75:                                          ; preds = %for.body
  %led_cdev = getelementptr %struct.pca955x_led, ptr %67, i32 %i.0364, i32 1
  %brightness_set_blocking = getelementptr %struct.pca955x_led, ptr %67, i32 %i.0364, i32 1, i32 6
  %76 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @pca955x_led_set, ptr %brightness_set_blocking, align 4
  %brightness_get = getelementptr %struct.pca955x_led, ptr %67, i32 %i.0364, i32 1, i32 7
  %77 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @pca955x_led_get, ptr %brightness_get, align 4
  %78 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdata.0, align 4
  %default_state = getelementptr %struct.pca955x_led, ptr %79, i32 %i.0364, i32 4
  %80 = ptrtoint ptr %default_state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %default_state, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %81, label %sw.bb75.if.end97_crit_edge [
    i32 0, label %if.then80
    i32 1, label %if.then91
  ]

sw.bb75.if.end97_crit_edge:                       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then80:                                        ; preds = %sw.bb75
  %call81 = call i32 @pca955x_led_set(ptr noundef %led_cdev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end97_crit_edge, label %if.then80.cleanup210_crit_edge

if.then80.cleanup210_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.then80.if.end97_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then91:                                        ; preds = %sw.bb75
  %call92 = call i32 @pca955x_led_set(ptr noundef %led_cdev, i32 noundef 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then91.if.end97_crit_edge, label %if.then91.cleanup210_crit_edge

if.then91.cleanup210_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.then91.if.end97_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.end97:                                         ; preds = %if.then91.if.end97_crit_edge, %if.then80.if.end97_crit_edge, %sw.bb75.if.end97_crit_edge
  %83 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdata.0, align 4
  %fwnode = getelementptr %struct.pca955x_led, ptr %84, i32 %i.0364, i32 5
  %85 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fwnode, align 4
  %87 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %init_data, align 4
  %tobool.not.i.i = icmp eq ptr %86, null
  %cmp.i.i = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end97.if.then119_crit_edge, label %is_of_node.exit

if.end97.if.then119_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

is_of_node.exit:                                  ; preds = %if.end97
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %86, i32 0, i32 1
  %88 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i, align 4
  %cmp.i346 = icmp eq ptr %89, @of_fwnode_ops
  br i1 %cmp.i346, label %is_of_node.exit353, label %is_of_node.exit.if.then119_crit_edge

is_of_node.exit.if.then119_crit_edge:             ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

is_of_node.exit353:                               ; preds = %is_of_node.exit
  %90 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i, align 4
  %cmp.i351 = icmp eq ptr %91, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %86, i32 -12
  %spec.select = select i1 %cmp.i351, ptr %add.ptr, ptr null
  %92 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %spec.select, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp111 = icmp eq i8 %95, 0
  br i1 %cmp111, label %is_of_node.exit353.if.then119_crit_edge, label %is_of_node.exit353.if.end126_crit_edge

is_of_node.exit353.if.end126_crit_edge:           ; preds = %is_of_node.exit353
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

is_of_node.exit353.if.then119_crit_edge:          ; preds = %is_of_node.exit353
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then119:                                       ; preds = %is_of_node.exit353.if.then119_crit_edge, %is_of_node.exit.if.then119_crit_edge, %if.end97.if.then119_crit_edge
  %call121 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %default_label, i32 noundef 8, ptr noundef nonnull @.str.18, i32 noundef %i.0364)
  br label %if.end126

if.end126:                                        ; preds = %if.then119, %is_of_node.exit353.if.end126_crit_edge
  %storemerge = phi ptr [ %default_label, %if.then119 ], [ null, %is_of_node.exit353.if.end126_crit_edge ]
  %96 = ptrtoint ptr %default_label125 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %storemerge, ptr %default_label125, align 4
  %call128 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_cdev, ptr noundef nonnull %init_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end126.cleanup210_crit_edge

if.end126.cleanup210_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end131:                                        ; preds = %if.end126
  %97 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdata.0, align 4
  %default_state134 = getelementptr %struct.pca955x_led, ptr %98, i32 %i.0364, i32 4
  %99 = ptrtoint ptr %default_state134 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %default_state134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp135 = icmp eq i32 %100, 2
  br i1 %cmp135, label %if.then137, label %if.end131.for.inc_crit_edge

if.end131.for.inc_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then137:                                       ; preds = %if.end131
  %brightness = getelementptr %struct.pca955x_led, ptr %67, i32 %i.0364, i32 1, i32 1
  %101 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %brightness, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %102, label %if.then147 [
    i32 255, label %if.then137.for.inc_crit_edge
    i32 0, label %if.then137.for.inc_crit_edge379
    i32 127, label %if.then137.for.inc_crit_edge380
  ]

if.then137.for.inc_crit_edge380:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then137.for.inc_crit_edge379:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then137.for.inc_crit_edge:                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then147:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then147, %if.then137.for.inc_crit_edge, %if.then137.for.inc_crit_edge379, %if.then137.for.inc_crit_edge380, %if.end131.for.inc_crit_edge, %sw.bb, %for.body.for.inc_crit_edge
  %ngpios.1 = phi i32 [ %ngpios.0366, %for.body.for.inc_crit_edge ], [ %inc, %sw.bb ], [ %ngpios.0366, %if.then147 ], [ %ngpios.0366, %if.then137.for.inc_crit_edge ], [ %ngpios.0366, %if.end131.for.inc_crit_edge ], [ %ngpios.0366, %if.then137.for.inc_crit_edge379 ], [ %ngpios.0366, %if.then137.for.inc_crit_edge380 ]
  %keep_pwm.1.off0 = phi i1 [ %keep_pwm.0.off0367, %for.body.for.inc_crit_edge ], [ %keep_pwm.0.off0367, %sw.bb ], [ true, %if.then147 ], [ %keep_pwm.0.off0367, %if.then137.for.inc_crit_edge ], [ %keep_pwm.0.off0367, %if.end131.for.inc_crit_edge ], [ %keep_pwm.0.off0367, %if.then137.for.inc_crit_edge379 ], [ %keep_pwm.0.off0367, %if.then137.for.inc_crit_edge380 ]
  %inc150 = add nuw nsw i32 %i.0364, 1
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx, align 4
  %cmp66 = icmp slt i32 %inc150, %105
  br i1 %cmp66, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call151 = call fastcc i32 @pca955x_write_pwm(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %for.end.cleanup210_crit_edge

for.end.cleanup210_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

for.end.thread:                                   ; preds = %if.end60
  %call151371 = call fastcc i32 @pca955x_write_pwm(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151371)
  %tobool152.not372 = icmp eq i32 %call151371, 0
  br i1 %tobool152.not372, label %for.end.thread.if.then156_crit_edge, label %for.end.thread.cleanup210_crit_edge

for.end.thread.cleanup210_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

for.end.thread.if.then156_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then156

if.end154:                                        ; preds = %for.end
  br i1 %keep_pwm.1.off0, label %if.end154.if.end161_crit_edge, label %if.end154.if.then156_crit_edge

if.end154.if.then156_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then156

if.end154.if.end161_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then156:                                       ; preds = %if.end154.if.then156_crit_edge, %for.end.thread.if.then156_crit_edge
  %ngpios.0.lcssa373377 = phi i32 [ %ngpios.1, %if.end154.if.then156_crit_edge ], [ 0, %for.end.thread.if.then156_crit_edge ]
  %call157 = call fastcc i32 @pca955x_write_pwm(ptr noundef %client, i32 noundef 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then156.if.end161_crit_edge, label %if.then156.cleanup210_crit_edge

if.then156.cleanup210_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.then156.if.end161_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.end161:                                        ; preds = %if.then156.if.end161_crit_edge, %if.end154.if.end161_crit_edge
  %ngpios.0.lcssa373378 = phi i32 [ %ngpios.0.lcssa373377, %if.then156.if.end161_crit_edge ], [ %ngpios.1, %if.end154.if.end161_crit_edge ]
  %call162 = call fastcc i32 @pca955x_write_psc(ptr noundef %client, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.end161.cleanup210_crit_edge

if.end161.cleanup210_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end165:                                        ; preds = %if.end161
  %call166 = call fastcc i32 @pca955x_write_psc(ptr noundef %client, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %if.end165.cleanup210_crit_edge

if.end165.cleanup210_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end169:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngpios.0.lcssa373378)
  %tobool170.not = icmp eq i32 %ngpios.0.lcssa373378, 0
  br i1 %tobool170.not, label %if.end169.cleanup210_crit_edge, label %if.then171

if.end169.cleanup210_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.then171:                                       ; preds = %if.end169
  %gpio = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4
  %106 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.19, ptr %gpio, align 4
  %direction_input = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 8
  %107 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @pca955x_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 9
  %108 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @pca955x_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 12
  %109 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @pca955x_gpio_set_value, ptr %set, align 4
  %get = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 10
  %110 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @pca955x_gpio_get_value, ptr %get, align 4
  %request = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 5
  %111 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @pca955x_gpio_request_pin, ptr %request, align 4
  %can_sleep = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 23
  %112 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %can_sleep, align 4
  %base = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 19
  %113 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %base, align 4
  %conv179 = trunc i32 %ngpios.0.lcssa373378 to i16
  %ngpio = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 20
  %114 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv179, ptr %ngpio, align 4
  %parent = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 2
  %115 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %dev, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.pca955x, ptr %call.i345, i32 0, i32 4, i32 4
  %116 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %owner, align 4
  %call187 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio, ptr noundef nonnull %call.i345, ptr noundef nonnull @pca955x_probe.lock_key, ptr noundef nonnull @pca955x_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %do.end199, label %if.then189

if.then189:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %parent, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %cleanup210

do.end199:                                        ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %base, align 4
  %120 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ngpio, align 4
  %conv207 = zext i16 %121 to i32
  %add = add i32 %119, -1
  %sub208 = add i32 %add, %conv207
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %119, i32 noundef %sub208) #11
  br label %cleanup210

cleanup210:                                       ; preds = %do.end199, %if.then189, %if.end169.cleanup210_crit_edge, %if.end165.cleanup210_crit_edge, %if.end161.cleanup210_crit_edge, %if.then156.cleanup210_crit_edge, %for.end.thread.cleanup210_crit_edge, %for.end.cleanup210_crit_edge, %if.end126.cleanup210_crit_edge, %if.then91.cleanup210_crit_edge, %if.then80.cleanup210_crit_edge, %devm_kcalloc.exit.cleanup210_crit_edge, %devm_kcalloc.exit.thread, %if.end48.cleanup210_crit_edge, %do.end44, %do.end30.cleanup210_crit_edge, %do.end23, %if.then14, %cleanup.thread
  %retval.1 = phi i32 [ -19, %do.end23 ], [ -19, %do.end44 ], [ %call187, %if.then189 ], [ %35, %if.then14 ], [ -5, %do.end30.cleanup210_crit_edge ], [ -12, %if.end48.cleanup210_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup210_crit_edge ], [ %call151, %for.end.cleanup210_crit_edge ], [ %call157, %if.then156.cleanup210_crit_edge ], [ %call162, %if.end161.cleanup210_crit_edge ], [ %call166, %if.end165.cleanup210_crit_edge ], [ 0, %do.end199 ], [ 0, %if.end169.cleanup210_crit_edge ], [ -19, %cleanup.thread ], [ -12, %devm_kcalloc.exit.thread ], [ %call151371, %for.end.thread.cleanup210_crit_edge ], [ %call128, %if.end126.cleanup210_crit_edge ], [ %call92, %if.then91.cleanup210_crit_edge ], [ %call81, %if.then80.cleanup210_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %default_label) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %led_num = getelementptr i8, ptr %led_cdev, i32 400
  %2 = ptrtoint ptr %led_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led_num, align 4
  %.frozen = freeze i32 %3
  %div = sdiv i32 %.frozen, 4
  %4 = mul i32 %div, 4
  %rem.decomposed = sub i32 %.frozen, %4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %client = getelementptr inbounds %struct.pca955x, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %chipdef.i = getelementptr inbounds %struct.pca955x, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %chipdef.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chipdef.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.i.i = add i32 %12, 7
  %div.i.i = sdiv i32 %add.i.i, 8
  %add.i = add nsw i32 %div, 4
  %add2.i = add nsw i32 %div.i.i, %add.i
  %conv.i = trunc i32 %add2.i to i8
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %pca955x_read_ls.exit, label %if.end

pca955x_read_ls.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %div, i32 noundef %call3.i) #11
  br label %out

if.end:                                           ; preds = %entry
  %13 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %value, label %sw.default [
    i32 255, label %sw.bb
    i32 0, label %sw.bb4
    i32 127, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i30 = and i32 %call3.i, 255
  %shl.i = shl nsw i32 %rem.decomposed, 1
  %shl1.i = shl i32 3, %shl.i
  %neg.i = xor i32 %shl1.i, -1
  %and.i = and i32 %conv.i30, %neg.i
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i32 = and i32 %call3.i, 255
  %shl.i33 = shl nsw i32 %rem.decomposed, 1
  %shl1.i34 = shl i32 3, %shl.i33
  %neg.i35 = xor i32 %shl1.i34, -1
  %and.i36 = and i32 %conv.i32, %neg.i35
  %shl4.i = shl nuw i32 1, %shl.i33
  %or.i = or i32 %and.i36, %shl4.i
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i39 = shl nsw i32 %rem.decomposed, 1
  %shl1.i40 = shl i32 3, %shl.i39
  %neg.i41 = xor i32 %shl1.i40, -1
  %and.i42 = and i32 %call3.i, %neg.i41
  %shl4.i43 = shl i32 2, %shl.i39
  %or.i44 = or i32 %and.i42, %shl4.i43
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %16 = trunc i32 %value to i8
  %conv = xor i8 %16, -1
  %driver_data.i.i.i46 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i46, align 4
  %chipdef.i47 = getelementptr inbounds %struct.pca955x, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %chipdef.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chipdef.i47, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add.i.i48 = add i32 %22, 7
  %div.i.i49 = sdiv i32 %add.i.i48, 8
  %23 = trunc i32 %div.i.i49 to i8
  %conv.i51 = add i8 %23, 3
  %call3.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext %conv.i51, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i52)
  %cmp.i53 = icmp slt i32 %call3.i52, 0
  br i1 %cmp.i53, label %pca955x_write_pwm.exit.thread, label %pca955x_write_pwm.exit

pca955x_write_pwm.exit.thread:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i54 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %conv5.i55 = zext i8 %conv to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i54, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.37, i32 noundef 1, i32 noundef %conv5.i55, i32 noundef %call3.i52) #11
  br label %out

pca955x_write_pwm.exit:                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i52)
  %tobool10.not = icmp eq i32 %call3.i52, 0
  br i1 %tobool10.not, label %if.end12, label %pca955x_write_pwm.exit.out_crit_edge

pca955x_write_pwm.exit.out_crit_edge:             ; preds = %pca955x_write_pwm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %pca955x_write_pwm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i58 = and i32 %call3.i, 255
  %shl.i59 = shl nsw i32 %rem.decomposed, 1
  %shl1.i60 = shl i32 3, %shl.i59
  %or.i64 = or i32 %conv.i58, %shl1.i60
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12, %sw.bb6, %sw.bb4, %sw.bb
  %ls.1.in = phi i32 [ %or.i64, %if.end12 ], [ %or.i44, %sw.bb6 ], [ %or.i, %sw.bb4 ], [ %and.i, %sw.bb ]
  %ls.1 = trunc i32 %ls.1.in to i8
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %driver_data.i.i.i66 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i66, align 4
  %chipdef.i67 = getelementptr inbounds %struct.pca955x, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %chipdef.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chipdef.i67, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add.i.i68 = add i32 %31, 7
  %div.i.i69 = sdiv i32 %add.i.i68, 8
  %add2.i71 = add nsw i32 %div.i.i69, %add.i
  %conv.i72 = trunc i32 %add2.i71 to i8
  %call3.i73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext %conv.i72, i8 noundef zeroext %ls.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i73)
  %cmp.i74 = icmp slt i32 %call3.i73, 0
  br i1 %cmp.i74, label %do.end.i77, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end.i77:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i75 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %conv5.i76 = and i32 %ls.1.in, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i75, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %div, i32 noundef %conv5.i76, i32 noundef %call3.i73) #11
  br label %out

out:                                              ; preds = %do.end.i77, %sw.epilog.out_crit_edge, %pca955x_write_pwm.exit.out_crit_edge, %pca955x_write_pwm.exit.thread, %pca955x_read_ls.exit
  %ret.0 = phi i32 [ %call3.i, %pca955x_read_ls.exit ], [ %call3.i52, %pca955x_write_pwm.exit.out_crit_edge ], [ %call3.i52, %pca955x_write_pwm.exit.thread ], [ %call3.i73, %sw.epilog.out_crit_edge ], [ %call3.i73, %do.end.i77 ]
  tail call void @mutex_unlock(ptr noundef %1) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_led_get(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %client = getelementptr inbounds %struct.pca955x, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %led_num = getelementptr i8, ptr %led_cdev, i32 400
  %4 = ptrtoint ptr %led_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_num, align 4
  %div = sdiv i32 %5, 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %chipdef.i = getelementptr inbounds %struct.pca955x, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %chipdef.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chipdef.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i.i = add i32 %11, 7
  %div.i.i = sdiv i32 %add.i.i, 8
  %add.i = add nsw i32 %div, 4
  %add2.i = add nsw i32 %add.i, %div.i.i
  %conv.i = trunc i32 %add2.i to i8
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %pca955x_read_ls.exit, label %if.end

pca955x_read_ls.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %div, i32 noundef %call3.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = and i32 %call3.i, 255
  %12 = ptrtoint ptr %led_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %led_num, align 4
  %rem = srem i32 %13, 4
  %shl = shl nsw i32 %rem, 1
  %shr = lshr i32 %conv, %shl
  %conv3 = and i32 %shr, 3
  %14 = zext i32 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %conv3, label %if.end.unreachabledefault [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %driver_data.i.i.i25 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i25, align 4
  %chipdef.i26 = getelementptr inbounds %struct.pca955x, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %chipdef.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chipdef.i26, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add.i.i27 = add i32 %22, 7
  %div.i.i28 = sdiv i32 %add.i.i27, 8
  %23 = trunc i32 %div.i.i28 to i8
  %conv.i29 = add i8 %23, 3
  %call3.i30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext %conv.i29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i30)
  %cmp.i31 = icmp slt i32 %call3.i30, 0
  br i1 %cmp.i31, label %pca955x_read_pwm.exit, label %if.end12

pca955x_read_pwm.exit:                            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i32 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %call3.i30) #11
  br label %cleanup

if.end12:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %24 = and i32 %call3.i30, 255
  %sub = xor i32 %24, 255
  br label %cleanup

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

cleanup:                                          ; preds = %if.end12, %pca955x_read_pwm.exit, %sw.bb6, %sw.bb5, %if.end.cleanup_crit_edge, %pca955x_read_ls.exit
  %retval.0 = phi i32 [ %call3.i, %pca955x_read_ls.exit ], [ %call3.i30, %pca955x_read_pwm.exit ], [ %sub, %if.end12 ], [ 127, %sw.bb6 ], [ 0, %sw.bb5 ], [ 255, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pca955x_write_pwm(ptr noundef %client, i32 noundef %n, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chipdef = getelementptr inbounds %struct.pca955x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chipdef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chipdef, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 7
  %div.i = sdiv i32 %add.i, 8
  %mul = shl i32 %n, 1
  %add = or i32 %mul, 1
  %add2 = add i32 %add, %div.i
  %conv = trunc i32 %add2 to i8
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv, i8 noundef zeroext %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv5 = zext i8 %val to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.37, i32 noundef %n, i32 noundef %conv5, i32 noundef %call3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pca955x_write_psc(ptr noundef %client, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chipdef = getelementptr inbounds %struct.pca955x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chipdef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chipdef, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 7
  %div.i = sdiv i32 %add.i, 8
  %mul = shl i32 %n, 1
  %add = add i32 %div.i, %mul
  %conv = trunc i32 %add to i8
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.38, i32 noundef %n, i32 noundef 0, i32 noundef %call2) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %leds = getelementptr inbounds %struct.pca955x, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leds, align 4
  %led_cdev = getelementptr %struct.pca955x_led, ptr %1, i32 %offset, i32 1
  %call1 = tail call i32 @pca955x_led_set(ptr noundef %led_cdev, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %leds.i = getelementptr inbounds %struct.pca955x, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %led_cdev2.i = getelementptr %struct.pca955x_led, ptr %1, i32 %offset, i32 1
  %..i = select i1 %tobool.not.i, i32 255, i32 0
  %call3.i = tail call i32 @pca955x_led_set(ptr noundef %led_cdev2.i, i32 noundef %..i) #8
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca955x_gpio_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %leds.i = getelementptr inbounds %struct.pca955x, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %led_cdev2.i = getelementptr %struct.pca955x_led, ptr %1, i32 %offset, i32 1
  %..i = select i1 %tobool.not.i, i32 255, i32 0
  %call3.i = tail call i32 @pca955x_led_set(ptr noundef %led_cdev2.i, i32 noundef %..i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_gpio_get_value(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %leds = getelementptr inbounds %struct.pca955x, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leds, align 4
  %client = getelementptr inbounds %struct.pca955x, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %led_num = getelementptr %struct.pca955x_led, ptr %1, i32 %offset, i32 2
  %4 = ptrtoint ptr %led_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_num, align 4
  %div = sdiv i32 %5, 8
  %conv.i = trunc i32 %div to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.39, i32 noundef %div, i32 noundef %call.i) #11
  br label %pca955x_read_input.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = and i32 %call.i, 255
  br label %pca955x_read_input.exit

pca955x_read_input.exit:                          ; preds = %if.end.i, %do.end.i
  %reg.0 = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %6 = ptrtoint ptr %led_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %led_num, align 4
  %rem6 = and i32 %7, 7
  %8 = lshr i32 %reg.0, %rem6
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca955x_gpio_request_pin(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %leds = getelementptr inbounds %struct.pca955x, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leds, align 4
  %type = getelementptr %struct.pca955x_led, ptr %1, i32 %offset, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_leds_pca955x__288_692_pca955x_driver_init6, !1, !"__initcall__kmod_leds_pca955x__288_692_pca955x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-pca955x.c", i32 692, i32 1}
!2 = !{ptr @__exitcall_pca955x_driver_exit, !1, !"__exitcall_pca955x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-pca955x.c", i32 694, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-pca955x.c", i32 695, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-pca955x.c", i32 696, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-pca955x.c", i32 685, i32 11}
!12 = !{ptr @pca955x_driver, !13, !"pca955x_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-pca955x.c", i32 683, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-pca955x.c", i32 508, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pca955x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pca955x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-pca955x.c", i32 525, i32 3}
!24 = !{ptr @pca955x_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pca955x_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-pca955x.c", i32 530, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pca955x_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pca955x_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-pca955x.c", i32 538, i32 3}
!33 = !{ptr @pca955x_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pca955x_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @pca955x_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-pca955x.c", i32 555, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-pca955x.c", i32 560, i32 25}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-pca955x.c", i32 605, i32 7}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-pca955x.c", i32 654, i32 25}
!44 = !{ptr @pca955x_probe.lock_key, !45, !"lock_key", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-pca955x.c", i32 666, i32 9}
!46 = !{ptr @pca955x_probe.request_key, !45, !"request_key", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-pca955x.c", i32 671, i32 4}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pca955x_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pca955x_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-pca955x.c", i32 674, i32 3}
!54 = !{ptr @pca955x_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pca955x_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @pca955x_chipdefs, !57, !"pca955x_chipdefs", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-pca955x.c", i32 78, i32 31}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-pca955x.c", i32 445, i32 41}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-pca955x.c", i32 452, i32 35}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-pca955x.c", i32 454, i32 43}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-pca955x.c", i32 456, i32 23}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/leds/leds-pca955x.c", i32 458, i32 28}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/leds-pca955x.c", i32 228, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pca955x_read_ls._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @pca955x_read_ls._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-pca955x.c", i32 211, i32 3}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pca955x_write_ls._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pca955x_write_ls._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-pca955x.c", i32 244, i32 3}
!80 = !{ptr @pca955x_read_pwm._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pca955x_read_pwm._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-pca955x.c", i32 194, i32 3}
!84 = !{ptr @pca955x_write_pwm._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @pca955x_write_pwm._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/leds-pca955x.c", i32 174, i32 3}
!88 = !{ptr @pca955x_write_psc._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @pca955x_write_psc._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/leds/leds-pca955x.c", i32 351, i32 3}
!92 = !{ptr @pca955x_read_input._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @pca955x_read_input._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @of_pca955x_match, !95, !"of_pca955x_match", i1 false, i1 false}
!95 = !{!"../drivers/leds/leds-pca955x.c", i32 472, i32 34}
!96 = !{ptr @pca955x_id, !97, !"pca955x_id", i1 false, i1 false}
!97 = !{!"../drivers/leds/leds-pca955x.c", i32 106, i32 35}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{!"auto-init"}
