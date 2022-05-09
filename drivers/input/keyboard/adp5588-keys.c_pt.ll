; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/adp5588-keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/adp5588-keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adp5588_kpad_platform_data = type { i32, i32, ptr, i16, i8, i16, i16, ptr, i16, ptr }
%struct.adp5588_gpi_map = type { i16, i16 }
%struct.adp5588_kpad = type { ptr, ptr, %struct.delayed_work, i32, [80 x i16], ptr, i16, [18 x i8], i8, %struct.gpio_chip, %struct.mutex, [3 x i8], [3 x i8] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.87, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.adp5588_gpio_platform_data = type { i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_adp5588_keys__288_668_adp5588_driver_init6 = internal global ptr @adp5588_driver_init, section ".initcall6.init", align 4
@adp5588_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adp5588_probe, ptr @adp5588_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp5588_dev_pm_ops, ptr null, ptr null }, ptr @adp5588_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adp5588_driver_exit = internal global ptr @adp5588_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [54 x i8] c"adp5588_keys.file=drivers/input/keyboard/adp5588-keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [25 x i8] c"adp5588_keys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [71 x i8] c"adp5588_keys.author=Michael Hennerich <hennerich@blackfin.uclinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [50 x i8] c"adp5588_keys.description=ADP5588/87 Keypad driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5588_keys\00", [19 x i8] zeroinitializer }, align 32
@adp5588_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adp5588_suspend, ptr @adp5588_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adp5588_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp5588-keys\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adp5587-keys\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@adp5588_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBUS Byte Data not Supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp5588_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/adp5588-keys.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr = internal global ptr @adp5588_probe._entry, section ".printk_index", align 4
@adp5588_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.8 = internal global ptr @adp5588_probe._entry.6, section ".printk_index", align 4
@adp5588_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no rows, cols or keymap from pdata\0A\00", [60 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.11 = internal global ptr @adp5588_probe._entry.9, section ".printk_index", align 4
@adp5588_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid keymapsize\0A\00", [44 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.14 = internal global ptr @adp5588_probe._entry.12, section ".printk_index", align 4
@adp5588_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid gpimap from pdata\0A\00", [37 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.17 = internal global ptr @adp5588_probe._entry.15, section ".printk_index", align 4
@adp5588_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid gpimapsize\0A\00", [44 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.20 = internal global ptr @adp5588_probe._entry.18, section ".printk_index", align 4
@adp5588_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gpi pin data\0A\00", [42 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.23 = internal global ptr @adp5588_probe._entry.21, section ".printk_index", align 4
@adp5588_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gpi row data\0A\00", [42 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.26 = internal global ptr @adp5588_probe._entry.24, section ".printk_index", align 4
@adp5588_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gpi col data\0A\00", [42 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.29 = internal global ptr @adp5588_probe._entry.27, section ".printk_index", align 4
@adp5588_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.32 = internal global ptr @adp5588_probe._entry.30, section ".printk_index", align 4
@adp5588_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&kpad->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@adp5588_probe.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&kpad->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adp5588-keys/input0\00", [44 x i8] zeroinitializer }, align 32
@adp5588_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.39 = internal global ptr @adp5588_probe._entry.37, section ".printk_index", align 4
@adp5588_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq %d busy?\0A\00", [18 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.42 = internal global ptr @adp5588_probe._entry.40, section ".printk_index", align 4
@adp5588_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 585, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Rev.%d keypad, irq %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adp5588_probe._entry_ptr.46 = internal global ptr @adp5588_probe._entry.43, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adp5588_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Event Overflow Error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5588_work\00", [19 x i8] zeroinitializer }, align 32
@adp5588_work._entry_ptr = internal global ptr @adp5588_work._entry, section ".printk_index", align 4
@adp5588_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 63, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Read Error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5588_read\00", [19 x i8] zeroinitializer }, align 32
@adp5588_read._entry_ptr = internal global ptr @adp5588_read._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@adp5588_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Write Error\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp5588_setup\00", [18 x i8] zeroinitializer }, align 32
@adp5588_setup._entry_ptr = internal global ptr @adp5588_setup._entry, section ".printk_index", align 4
@adp5588_report_switch_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Can't read GPIO_DAT_STAT switch %d default to OFF\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adp5588_report_switch_state\00", [36 x i8] zeroinitializer }, align 32
@adp5588_report_switch_state._entry_ptr = internal global ptr @adp5588_report_switch_state._entry, section ".printk_index", align 4
@adp5588_gpio_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 194, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No unused gpios left to export\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adp5588_gpio_add\00", [47 x i8] zeroinitializer }, align 32
@adp5588_gpio_add._entry_ptr = internal global ptr @adp5588_gpio_add._entry, section ".printk_index", align 4
@adp5588_gpio_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&kpad->gpio_lock\00", [47 x i8] zeroinitializer }, align 32
@adp5588_gpio_add.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adp5588_gpio_add.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adp5588_gpio_add._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gpiochip_add failed, err: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@adp5588_gpio_add._entry_ptr.60 = internal global ptr @adp5588_gpio_add._entry.58, section ".printk_index", align 4
@adp5588_gpio_add._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.3, i32 230, ptr @.str.63, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup failed, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adp5588_gpio_add._entry_ptr.64 = internal global ptr @adp5588_gpio_add._entry.61, section ".printk_index", align 4
@adp5588_gpio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 251, ptr @.str.63, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"teardown failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adp5588_gpio_remove\00", [44 x i8] zeroinitializer }, align 32
@adp5588_gpio_remove._entry_ptr = internal global ptr @adp5588_gpio_remove._entry, section ".printk_index", align 4
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"adp5588_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 656, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 658, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"adp5588_dev_pm_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 643, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"adp5588_id\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 649, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 444, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 449, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 454, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 459, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 464, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 469, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 477, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 483, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 488, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 495, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 508, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 521, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 559, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 567, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 585, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 302, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 63, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 386, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 416, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 194, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 211, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 213, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 215, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 230, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [41 x i8] c"../drivers/input/keyboard/adp5588-keys.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 251, i32 4 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_adp5588_driver_exit, ptr @__initcall__kmod_adp5588_keys__288_668_adp5588_driver_init6, ptr @adp5588_driver_exit, ptr @adp5588_gpio_add._entry, ptr @adp5588_gpio_add._entry.58, ptr @adp5588_gpio_add._entry.61, ptr @adp5588_gpio_add._entry_ptr, ptr @adp5588_gpio_add._entry_ptr.60, ptr @adp5588_gpio_add._entry_ptr.64, ptr @adp5588_gpio_remove._entry, ptr @adp5588_gpio_remove._entry_ptr, ptr @adp5588_probe._entry, ptr @adp5588_probe._entry.12, ptr @adp5588_probe._entry.15, ptr @adp5588_probe._entry.18, ptr @adp5588_probe._entry.21, ptr @adp5588_probe._entry.24, ptr @adp5588_probe._entry.27, ptr @adp5588_probe._entry.30, ptr @adp5588_probe._entry.37, ptr @adp5588_probe._entry.40, ptr @adp5588_probe._entry.43, ptr @adp5588_probe._entry.6, ptr @adp5588_probe._entry.9, ptr @adp5588_probe._entry_ptr, ptr @adp5588_probe._entry_ptr.11, ptr @adp5588_probe._entry_ptr.14, ptr @adp5588_probe._entry_ptr.17, ptr @adp5588_probe._entry_ptr.20, ptr @adp5588_probe._entry_ptr.23, ptr @adp5588_probe._entry_ptr.26, ptr @adp5588_probe._entry_ptr.29, ptr @adp5588_probe._entry_ptr.32, ptr @adp5588_probe._entry_ptr.39, ptr @adp5588_probe._entry_ptr.42, ptr @adp5588_probe._entry_ptr.46, ptr @adp5588_probe._entry_ptr.8, ptr @adp5588_read._entry, ptr @adp5588_read._entry_ptr, ptr @adp5588_report_switch_state._entry, ptr @adp5588_report_switch_state._entry_ptr, ptr @adp5588_setup._entry, ptr @adp5588_setup._entry_ptr, ptr @adp5588_work._entry, ptr @adp5588_work._entry_ptr, ptr @adp5588_driver, ptr @.str, ptr @adp5588_dev_pm_ops, ptr @adp5588_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @adp5588_probe.__key, ptr @.str.33, ptr @adp5588_probe.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @adp5588_gpio_add.__key, ptr @.str.57, ptr @adp5588_gpio_add.lock_key, ptr @adp5588_gpio_add.request_key, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_report_switch_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_add.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_add.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_add._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_add._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp5588_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @adp5588_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %pin_used.i.i = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i384 = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i384)
  %cmp.i.not = icmp eq i32 %and.i384, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup251

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup251

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end9.do.end17_crit_edge, label %lor.lhs.false

if.end9.do.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

lor.lhs.false:                                    ; preds = %if.end9
  %cols = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %lor.lhs.false.do.end17_crit_edge, label %lor.lhs.false12

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %keymap = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %keymap, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %lor.lhs.false12.do.end17_crit_edge, label %if.end19

lor.lhs.false12.do.end17_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end17:                                         ; preds = %lor.lhs.false12.do.end17_crit_edge, %lor.lhs.false.do.end17_crit_edge, %if.end9.do.end17_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup251

if.end19:                                         ; preds = %lor.lhs.false12
  %keymapsize = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %keymapsize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %keymapsize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %15)
  %cmp.not = icmp eq i16 %15, 80
  br i1 %cmp.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup251

if.end26:                                         ; preds = %if.end19
  %gpimap = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %gpimap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpimap, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end26
  %gpimapsize = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %gpimapsize to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gpimapsize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool29.not = icmp eq i16 %19, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end35_crit_edge, label %do.end33

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end33:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup251

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %gpimapsize36 = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %gpimapsize36 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gpimapsize36, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %21)
  %cmp38 = icmp ugt i16 %21, 18
  br i1 %cmp38, label %do.end43, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end35
  %conv47 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp48429.not = icmp eq i16 %21, 0
  br i1 %cmp48429.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup251

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0430 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adp5588_gpi_map, ptr %17, i32 %i.0430
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %conv52 = zext i16 %23 to i32
  %24 = add i16 %23, -115
  call void @__sanitizer_cov_trace_const_cmp2(i16 -18, i16 %24)
  %25 = icmp ult i16 %24, -18
  br i1 %25, label %do.end62, label %if.end64

do.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup251

if.end64:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %23)
  %cmp66 = icmp ult i16 %23, 105
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.end64
  %add = add nsw i32 %conv52, -96
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp71.not = icmp sgt i32 %add, %9
  br i1 %cmp71.not, label %if.then68.for.inc_crit_edge, label %do.end76

if.then68.for.inc_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end76:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %cleanup251

if.else:                                          ; preds = %if.end64
  %add81 = add nsw i32 %conv52, -104
  call void @__sanitizer_cov_trace_cmp4(i32 %add81, i32 %11)
  %cmp83.not = icmp sgt i32 %add81, %11
  br i1 %cmp83.not, label %if.else.for.inc_crit_edge, label %do.end88

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end88:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %cleanup251

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then68.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0430, 1
  %exitcond.not = icmp eq i32 %inc, %conv47
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool92.not = icmp eq i32 %27, 0
  br i1 %tobool92.not, label %do.end96, label %if.end98

do.end96:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  br label %cleanup251

if.end98:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 748) #10
  %call100 = tail call ptr @input_allocate_device() #6
  %tobool101.not = icmp eq ptr %call7.i.i, null
  %tobool103.not = icmp eq ptr %call100, null
  %or.cond375 = select i1 %tobool101.not, i1 true, i1 %tobool103.not
  br i1 %or.cond375, label %if.end98.err_free_mem_crit_edge, label %if.end105

if.end98.err_free_mem_crit_edge:                  ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_mem

if.end105:                                        ; preds = %if.end98
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %client, ptr %call7.i.i, align 8
  %input107 = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %input107 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call100, ptr %input107, align 4
  %work = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %31 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @adp5588_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry117 = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %entry117 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry117, ptr %entry117, align 4
  %prev.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry117, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @adp5588_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.35, ptr noundef nonnull @adp5588_probe.__key.34) #6
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i385 = icmp slt i32 %call.i, 0
  br i1 %cmp.i385, label %adp5588_read.exit.thread, label %if.end132

adp5588_read.exit.thread:                         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %err_free_mem

if.end132:                                        ; preds = %if.end105
  %and = and i32 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp135 = icmp ult i32 %and, 4
  br i1 %cmp135, label %if.then137, label %if.end132.if.end139_crit_edge

if.end132.if.end139_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then137:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  %delay = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %delay, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.end132.if.end139_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %36 = ptrtoint ptr %call100 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %name, ptr %call100, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 1
  %37 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.36, ptr %phys, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 40, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 40, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %id143 = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 3
  %40 = ptrtoint ptr %id143 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 24, ptr %id143, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %product, align 4
  %conv146 = trunc i32 %and to i16
  %version = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv146, ptr %version, align 2
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 16
  %44 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %keycodesize, align 8
  %45 = ptrtoint ptr %keymapsize to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %keymapsize, align 4
  %conv149 = zext i16 %46 to i32
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 15
  %47 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv149, ptr %keycodemax, align 4
  %keycode = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 4
  %keycode151 = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 17
  %48 = ptrtoint ptr %keycode151 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %keycode, ptr %keycode151, align 4
  %49 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %keymap, align 4
  %51 = load i16, ptr %keymapsize, align 4
  %conv156 = zext i16 %51 to i32
  %mul = shl nuw nsw i32 %conv156, 1
  %52 = call ptr @memcpy(ptr %keycode, ptr %50, i32 %mul)
  %53 = ptrtoint ptr %gpimap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gpimap, align 4
  %gpimap159 = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %gpimap159 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %gpimap159, align 8
  %56 = ptrtoint ptr %gpimapsize36 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %gpimapsize36, align 4
  %gpimapsize161 = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %gpimapsize161, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 5
  %59 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %evbit, align 4
  %or.i = or i32 %60, 2
  store i32 %or.i, ptr %evbit, align 4
  %repeat = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %repeat to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %repeat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool163.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool163.not, label %if.end139.if.end167_crit_edge, label %if.then164

if.end139.if.end167_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.then164:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  %or.i376 = or i32 %60, 1048578
  %62 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i376, ptr %evbit, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.end139.if.end167_crit_edge
  %63 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %keycodemax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp170431.not = icmp eq i32 %64, 0
  br i1 %cmp170431.not, label %if.end167.for.end186_crit_edge, label %for.body172.lr.ph

if.end167.for.end186_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end186

for.body172.lr.ph:                                ; preds = %if.end167
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 6
  br label %for.body172

for.body172:                                      ; preds = %for.inc184.for.body172_crit_edge, %for.body172.lr.ph
  %i.1432 = phi i32 [ 0, %for.body172.lr.ph ], [ %inc185, %for.inc184.for.body172_crit_edge ]
  %arrayidx174 = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 4, i32 %i.1432
  %65 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx174, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %66)
  %cmp176 = icmp ult i16 %66, 768
  br i1 %cmp176, label %if.then178, label %for.body172.for.inc184_crit_edge

for.body172.for.inc184_crit_edge:                 ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184

if.then178:                                       ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #8
  %conv175 = zext i16 %66 to i32
  %rem.i = and i32 %conv175, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv175, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i, align 4
  %or.i377 = or i32 %68, %shl.i
  store i32 %or.i377, ptr %add.ptr.i, align 4
  br label %for.inc184

for.inc184:                                       ; preds = %if.then178, %for.body172.for.inc184_crit_edge
  %inc185 = add nuw i32 %i.1432, 1
  %69 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %keycodemax, align 4
  %cmp170 = icmp ult i32 %inc185, %70
  br i1 %cmp170, label %for.inc184.for.body172_crit_edge, label %for.inc184.for.end186_crit_edge

for.inc184.for.end186_crit_edge:                  ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end186

for.inc184.for.body172_crit_edge:                 ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body172

for.end186:                                       ; preds = %for.inc184.for.end186_crit_edge, %if.end167.for.end186_crit_edge
  %keybit187 = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 6
  %71 = ptrtoint ptr %keybit187 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %keybit187, align 4
  %and.i = and i32 %72, -2
  store i32 %and.i, ptr %keybit187, align 4
  %73 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %gpimapsize161, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool190.not = icmp eq i16 %74, 0
  br i1 %tobool190.not, label %for.end186.for.end207_crit_edge, label %if.end194

for.end186.for.end207_crit_edge:                  ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end207

if.end194:                                        ; preds = %for.end186
  %75 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %evbit, align 4
  %or.i378 = or i32 %76, 32
  store i32 %or.i378, ptr %evbit, align 4
  %77 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_load2_noabort(i32 %77)
  %.pr = load i16, ptr %gpimapsize161, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp198434.not = icmp eq i16 %.pr, 0
  br i1 %cmp198434.not, label %if.end194.for.end207_crit_edge, label %for.body200.lr.ph

if.end194.for.end207_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end207

for.body200.lr.ph:                                ; preds = %if.end194
  %swbit = getelementptr inbounds %struct.input_dev, ptr %call100, i32 0, i32 13
  br label %for.body200

for.body200:                                      ; preds = %for.body200.for.body200_crit_edge, %for.body200.lr.ph
  %i.2435 = phi i32 [ 0, %for.body200.lr.ph ], [ %inc206, %for.body200.for.body200_crit_edge ]
  %78 = ptrtoint ptr %gpimap159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gpimap159, align 8
  %sw_evt = getelementptr %struct.adp5588_gpi_map, ptr %79, i32 %i.2435, i32 1
  %80 = ptrtoint ptr %sw_evt to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %sw_evt, align 2
  %conv203 = zext i16 %81 to i32
  %rem.i379 = and i32 %conv203, 31
  %shl.i380 = shl nuw i32 1, %rem.i379
  %div2.i381 = lshr i32 %conv203, 5
  %add.ptr.i382 = getelementptr i32, ptr %swbit, i32 %div2.i381
  %82 = ptrtoint ptr %add.ptr.i382 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i382, align 4
  %or.i383 = or i32 %shl.i380, %83
  store i32 %or.i383, ptr %add.ptr.i382, align 4
  %inc206 = add nuw nsw i32 %i.2435, 1
  %84 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %gpimapsize161, align 4
  %conv197 = zext i16 %85 to i32
  %cmp198 = icmp ult i32 %inc206, %conv197
  br i1 %cmp198, label %for.body200.for.body200_crit_edge, label %for.body200.for.end207_crit_edge

for.body200.for.end207_crit_edge:                 ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end207

for.body200.for.body200_crit_edge:                ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body200

for.end207:                                       ; preds = %for.body200.for.end207_crit_edge, %if.end194.for.end207_crit_edge, %for.end186.for.end207_crit_edge
  %call208 = tail call i32 @input_register_device(ptr noundef %call100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end215, label %do.end213

do.end213:                                        ; preds = %for.end207
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  br label %err_free_mem

if.end215:                                        ; preds = %for.end207
  %86 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %88 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %call.i386 = tail call i32 @request_threaded_irq(i32 noundef %87, ptr noundef nonnull @adp5588_irq, ptr noundef null, i32 noundef 2, ptr noundef %91, ptr noundef %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool220.not = icmp eq i32 %call.i386, 0
  br i1 %tobool220.not, label %if.end227, label %do.end224

do.end224:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %93) #9
  br label %err_unreg_dev

if.end227:                                        ; preds = %if.end215
  %94 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %platform_data.i, align 8
  %gpio_data1.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %gpio_data1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %gpio_data1.i, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %95, align 4
  %sub.i = sub i32 16, %99
  %shr.i = lshr i32 65535, %sub.i
  %conv.i388 = trunc i32 %shr.i to i8
  %call.i.i389 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 29, i8 noundef zeroext %conv.i388) #6
  %cols.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cols.i, align 4
  %sub3.i = sub i32 16, %101
  %shr4.i = lshr i32 65535, %sub3.i
  %conv5.i = trunc i32 %shr4.i to i8
  %call.i150.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 30, i8 noundef zeroext %conv5.i) #6
  %or.i390 = or i32 %call.i150.i, %call.i.i389
  %102 = ptrtoint ptr %cols.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cols.i, align 4
  %sub8.i = sub i32 16, %103
  %shr9.i = lshr i32 65535, %sub8.i
  %104 = lshr i32 %shr9.i, 8
  %conv11.i = trunc i32 %104 to i8
  %call.i151.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 31, i8 noundef zeroext %conv11.i) #6
  %or13.i = or i32 %or.i390, %call.i151.i
  %en_keylock.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %95, i32 0, i32 4
  %105 = ptrtoint ptr %en_keylock.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load.i = load i8, ptr %en_keylock.i, align 2
  %106 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i, label %if.end227.if.end.i_crit_edge, label %if.then.i

if.end227.if.end.i_crit_edge:                     ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #8
  %unlock_key1.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %95, i32 0, i32 5
  %107 = ptrtoint ptr %unlock_key1.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %unlock_key1.i, align 4
  %conv14.i = trunc i16 %108 to i8
  %call.i152.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 15, i8 noundef zeroext %conv14.i) #6
  %or16.i = or i32 %call.i152.i, %or13.i
  %unlock_key2.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %95, i32 0, i32 6
  %109 = ptrtoint ptr %unlock_key2.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %unlock_key2.i, align 2
  %conv17.i = trunc i16 %110 to i8
  %call.i153.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 16, i8 noundef zeroext %conv17.i) #6
  %or19.i = or i32 %or16.i, %call.i153.i
  %call.i154.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext 64) #6
  %or21.i = or i32 %or19.i, %call.i154.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end227.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %or21.i, %if.then.i ], [ %or13.i, %if.end227.if.end.i_crit_edge ]
  %call.i155.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i)
  %cmp.i.i = icmp slt i32 %call.i155.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.adp5588_read.exit.i_crit_edge

if.end.i.adp5588_read.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.i

for.body29.lr.ph.i:                               ; preds = %adp5588_read.exit.9.i
  %gpimap.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %95, i32 0, i32 7
  %111 = ptrtoint ptr %gpimap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %gpimap.i, align 4
  br label %for.body29.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.i

adp5588_read.exit.i:                              ; preds = %do.end.i.i, %if.end.i.adp5588_read.exit.i_crit_edge
  %or24.i = or i32 %call.i155.i, %ret.0.i
  %call.i155.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i155.1.i, 0
  br i1 %cmp.i.1.i, label %do.end.i.1.i, label %adp5588_read.exit.i.adp5588_read.exit.1.i_crit_edge

adp5588_read.exit.i.adp5588_read.exit.1.i_crit_edge: ; preds = %adp5588_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.1.i

do.end.i.1.i:                                     ; preds = %adp5588_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.1.i

adp5588_read.exit.1.i:                            ; preds = %do.end.i.1.i, %adp5588_read.exit.i.adp5588_read.exit.1.i_crit_edge
  %or24.1.i = or i32 %or24.i, %call.i155.1.i
  %call.i155.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i155.2.i, 0
  br i1 %cmp.i.2.i, label %do.end.i.2.i, label %adp5588_read.exit.1.i.adp5588_read.exit.2.i_crit_edge

adp5588_read.exit.1.i.adp5588_read.exit.2.i_crit_edge: ; preds = %adp5588_read.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.2.i

do.end.i.2.i:                                     ; preds = %adp5588_read.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.2.i

adp5588_read.exit.2.i:                            ; preds = %do.end.i.2.i, %adp5588_read.exit.1.i.adp5588_read.exit.2.i_crit_edge
  %or24.2.i = or i32 %or24.1.i, %call.i155.2.i
  %call.i155.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.3.i)
  %cmp.i.3.i = icmp slt i32 %call.i155.3.i, 0
  br i1 %cmp.i.3.i, label %do.end.i.3.i, label %adp5588_read.exit.2.i.adp5588_read.exit.3.i_crit_edge

adp5588_read.exit.2.i.adp5588_read.exit.3.i_crit_edge: ; preds = %adp5588_read.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.3.i

do.end.i.3.i:                                     ; preds = %adp5588_read.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.3.i

adp5588_read.exit.3.i:                            ; preds = %do.end.i.3.i, %adp5588_read.exit.2.i.adp5588_read.exit.3.i_crit_edge
  %or24.3.i = or i32 %or24.2.i, %call.i155.3.i
  %call.i155.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.4.i)
  %cmp.i.4.i = icmp slt i32 %call.i155.4.i, 0
  br i1 %cmp.i.4.i, label %do.end.i.4.i, label %adp5588_read.exit.3.i.adp5588_read.exit.4.i_crit_edge

adp5588_read.exit.3.i.adp5588_read.exit.4.i_crit_edge: ; preds = %adp5588_read.exit.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.4.i

do.end.i.4.i:                                     ; preds = %adp5588_read.exit.3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.4.i

adp5588_read.exit.4.i:                            ; preds = %do.end.i.4.i, %adp5588_read.exit.3.i.adp5588_read.exit.4.i_crit_edge
  %or24.4.i = or i32 %or24.3.i, %call.i155.4.i
  %call.i155.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.5.i)
  %cmp.i.5.i = icmp slt i32 %call.i155.5.i, 0
  br i1 %cmp.i.5.i, label %do.end.i.5.i, label %adp5588_read.exit.4.i.adp5588_read.exit.5.i_crit_edge

adp5588_read.exit.4.i.adp5588_read.exit.5.i_crit_edge: ; preds = %adp5588_read.exit.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.5.i

do.end.i.5.i:                                     ; preds = %adp5588_read.exit.4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.5.i

adp5588_read.exit.5.i:                            ; preds = %do.end.i.5.i, %adp5588_read.exit.4.i.adp5588_read.exit.5.i_crit_edge
  %or24.5.i = or i32 %or24.4.i, %call.i155.5.i
  %call.i155.6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.6.i)
  %cmp.i.6.i = icmp slt i32 %call.i155.6.i, 0
  br i1 %cmp.i.6.i, label %do.end.i.6.i, label %adp5588_read.exit.5.i.adp5588_read.exit.6.i_crit_edge

adp5588_read.exit.5.i.adp5588_read.exit.6.i_crit_edge: ; preds = %adp5588_read.exit.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.6.i

do.end.i.6.i:                                     ; preds = %adp5588_read.exit.5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.6.i

adp5588_read.exit.6.i:                            ; preds = %do.end.i.6.i, %adp5588_read.exit.5.i.adp5588_read.exit.6.i_crit_edge
  %or24.6.i = or i32 %or24.5.i, %call.i155.6.i
  %call.i155.7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.7.i)
  %cmp.i.7.i = icmp slt i32 %call.i155.7.i, 0
  br i1 %cmp.i.7.i, label %do.end.i.7.i, label %adp5588_read.exit.6.i.adp5588_read.exit.7.i_crit_edge

adp5588_read.exit.6.i.adp5588_read.exit.7.i_crit_edge: ; preds = %adp5588_read.exit.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.7.i

do.end.i.7.i:                                     ; preds = %adp5588_read.exit.6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.7.i

adp5588_read.exit.7.i:                            ; preds = %do.end.i.7.i, %adp5588_read.exit.6.i.adp5588_read.exit.7.i_crit_edge
  %or24.7.i = or i32 %or24.6.i, %call.i155.7.i
  %call.i155.8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.8.i)
  %cmp.i.8.i = icmp slt i32 %call.i155.8.i, 0
  br i1 %cmp.i.8.i, label %do.end.i.8.i, label %adp5588_read.exit.7.i.adp5588_read.exit.8.i_crit_edge

adp5588_read.exit.7.i.adp5588_read.exit.8.i_crit_edge: ; preds = %adp5588_read.exit.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.8.i

do.end.i.8.i:                                     ; preds = %adp5588_read.exit.7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.8.i

adp5588_read.exit.8.i:                            ; preds = %do.end.i.8.i, %adp5588_read.exit.7.i.adp5588_read.exit.8.i_crit_edge
  %or24.8.i = or i32 %or24.7.i, %call.i155.8.i
  %call.i155.9.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.9.i)
  %cmp.i.9.i = icmp slt i32 %call.i155.9.i, 0
  br i1 %cmp.i.9.i, label %do.end.i.9.i, label %adp5588_read.exit.8.i.adp5588_read.exit.9.i_crit_edge

adp5588_read.exit.8.i.adp5588_read.exit.9.i_crit_edge: ; preds = %adp5588_read.exit.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.9.i

do.end.i.9.i:                                     ; preds = %adp5588_read.exit.8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.9.i

adp5588_read.exit.9.i:                            ; preds = %do.end.i.9.i, %adp5588_read.exit.8.i.adp5588_read.exit.9.i_crit_edge
  %or24.9.i = or i32 %or24.8.i, %call.i155.9.i
  %gpimapsize.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %95, i32 0, i32 8
  %113 = ptrtoint ptr %gpimapsize.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %gpimapsize.i, align 4
  %conv26.i = zext i16 %114 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp27164.not.i = icmp eq i16 %114, 0
  br i1 %cmp27164.not.i, label %adp5588_read.exit.9.i.if.end67.i_crit_edge, label %for.body29.lr.ph.i

adp5588_read.exit.9.i.if.end67.i_crit_edge:       ; preds = %adp5588_read.exit.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

for.body29.i:                                     ; preds = %if.end54.i.for.body29.i_crit_edge, %for.body29.lr.ph.i
  %evt_mode3.0168.i = phi i8 [ 0, %for.body29.lr.ph.i ], [ %evt_mode3.1.i, %if.end54.i.for.body29.i_crit_edge ]
  %evt_mode2.0167.i = phi i8 [ 0, %for.body29.lr.ph.i ], [ %evt_mode2.1.i, %if.end54.i.for.body29.i_crit_edge ]
  %evt_mode1.0166.i = phi i8 [ 0, %for.body29.lr.ph.i ], [ %evt_mode1.1.i, %if.end54.i.for.body29.i_crit_edge ]
  %i.1165.i = phi i32 [ 0, %for.body29.lr.ph.i ], [ %inc56.i, %if.end54.i.for.body29.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adp5588_gpi_map, ptr %112, i32 %i.1165.i
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx.i, align 2
  %conv31.i = zext i16 %116 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %116)
  %cmp32.i = icmp ult i16 %116, 105
  br i1 %cmp32.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub36.i = add nsw i32 %conv31.i, -97
  %shl.i391 = shl nuw i32 1, %sub36.i
  %117 = trunc i32 %shl.i391 to i8
  %conv39.i = or i8 %evt_mode1.0166.i, %117
  br label %if.end54.i

if.else.i:                                        ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub41.i = add nsw i32 %conv31.i, -105
  %shl42.i = shl nuw i32 1, %sub41.i
  %118 = trunc i32 %shl42.i to i8
  %conv46.i = or i8 %evt_mode2.0167.i, %118
  %119 = lshr i32 %shl42.i, 8
  %120 = trunc i32 %119 to i8
  %conv53.i = or i8 %evt_mode3.0168.i, %120
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i, %if.then34.i
  %evt_mode1.1.i = phi i8 [ %conv39.i, %if.then34.i ], [ %evt_mode1.0166.i, %if.else.i ]
  %evt_mode2.1.i = phi i8 [ %evt_mode2.0167.i, %if.then34.i ], [ %conv46.i, %if.else.i ]
  %evt_mode3.1.i = phi i8 [ %evt_mode3.0168.i, %if.then34.i ], [ %conv53.i, %if.else.i ]
  %inc56.i = add nuw nsw i32 %i.1165.i, 1
  %exitcond.not.i = icmp eq i32 %inc56.i, %conv26.i
  br i1 %exitcond.not.i, label %if.then60.i, label %if.end54.i.for.body29.i_crit_edge

if.end54.i.for.body29.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.i

if.then60.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i156.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 32, i8 noundef zeroext %evt_mode1.1.i) #6
  %or62.i = or i32 %call.i156.i, %or24.9.i
  %call.i157.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 33, i8 noundef zeroext %evt_mode2.1.i) #6
  %or64.i = or i32 %or62.i, %call.i157.i
  %call.i158.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 34, i8 noundef zeroext %evt_mode3.1.i) #6
  %or66.i = or i32 %or64.i, %call.i158.i
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then60.i, %adp5588_read.exit.9.i.if.end67.i_crit_edge
  %ret.2.i = phi i32 [ %or66.i, %if.then60.i ], [ %or24.9.i, %adp5588_read.exit.9.i.if.end67.i_crit_edge ]
  %tobool68.not.i = icmp eq ptr %97, null
  br i1 %tobool68.not.i, label %if.end67.i.if.end83.i_crit_edge, label %for.cond70.preheader.i

if.end67.i.if.end83.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

for.cond70.preheader.i:                           ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  %pullup_dis_mask.i = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %97, i32 0, i32 3
  %121 = ptrtoint ptr %pullup_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pullup_dis_mask.i, align 4
  %conv77.i = trunc i32 %122 to i8
  %call.i159.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 44, i8 noundef zeroext %conv77.i) #6
  %or79.i = or i32 %call.i159.i, %ret.2.i
  %123 = ptrtoint ptr %pullup_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pullup_dis_mask.i, align 4
  %125 = lshr i32 %124, 8
  %conv77.1.i = trunc i32 %125 to i8
  %call.i159.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 45, i8 noundef zeroext %conv77.1.i) #6
  %or79.1.i = or i32 %or79.i, %call.i159.1.i
  %126 = ptrtoint ptr %pullup_dis_mask.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pullup_dis_mask.i, align 4
  %128 = lshr i32 %127, 16
  %conv77.2.i = trunc i32 %128 to i8
  %call.i159.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 46, i8 noundef zeroext %conv77.2.i) #6
  %or79.2.i = or i32 %or79.1.i, %call.i159.2.i
  br label %if.end83.i

if.end83.i:                                       ; preds = %for.cond70.preheader.i, %if.end67.i.if.end83.i_crit_edge
  %ret.4.i = phi i32 [ %ret.2.i, %if.end67.i.if.end83.i_crit_edge ], [ %or79.2.i, %for.cond70.preheader.i ]
  %call.i160.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext 63) #6
  %or85.i = or i32 %call.i160.i, %ret.4.i
  %call.i161.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 25) #6
  %or87.i = or i32 %or85.i, %call.i161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or87.i)
  %cmp88.i = icmp slt i32 %or87.i, 0
  br i1 %cmp88.i, label %adp5588_setup.exit, label %if.end231

adp5588_setup.exit:                               ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #9
  br label %err_free_irq

if.end231:                                        ; preds = %if.end83.i
  %129 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %gpimapsize161, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool233.not = icmp eq i16 %130, 0
  br i1 %tobool233.not, label %if.end231.if.end235_crit_edge, label %if.then234

if.end231.if.end235_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235

if.then234:                                       ; preds = %if.end231
  %131 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call7.i.i, align 8
  %call.i.i393 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %132, i8 noundef zeroext 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i393)
  %cmp.i.i394 = icmp slt i32 %call.i.i393, 0
  br i1 %cmp.i.i394, label %do.end.i.i395, label %if.then234.adp5588_read.exit.i396_crit_edge

if.then234.adp5588_read.exit.i396_crit_edge:      ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.i396

do.end.i.i395:                                    ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.i396

adp5588_read.exit.i396:                           ; preds = %do.end.i.i395, %if.then234.adp5588_read.exit.i396_crit_edge
  %133 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call7.i.i, align 8
  %call.i50.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %134, i8 noundef zeroext 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp.i51.i = icmp slt i32 %call.i50.i, 0
  br i1 %cmp.i51.i, label %do.end.i53.i, label %adp5588_read.exit.i396.adp5588_read.exit54.i_crit_edge

adp5588_read.exit.i396.adp5588_read.exit54.i_crit_edge: ; preds = %adp5588_read.exit.i396
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit54.i

do.end.i53.i:                                     ; preds = %adp5588_read.exit.i396
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i52.i = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i52.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit54.i

adp5588_read.exit54.i:                            ; preds = %do.end.i53.i, %adp5588_read.exit.i396.adp5588_read.exit54.i_crit_edge
  %135 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %call7.i.i, align 8
  %call.i55.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %136, i8 noundef zeroext 22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %cmp.i56.i = icmp slt i32 %call.i55.i, 0
  br i1 %cmp.i56.i, label %do.end.i58.i, label %adp5588_read.exit54.i.adp5588_read.exit59.i_crit_edge

adp5588_read.exit54.i.adp5588_read.exit59.i_crit_edge: ; preds = %adp5588_read.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit59.i

do.end.i58.i:                                     ; preds = %adp5588_read.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i57.i = getelementptr inbounds %struct.i2c_client, ptr %136, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i57.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit59.i

adp5588_read.exit59.i:                            ; preds = %do.end.i58.i, %adp5588_read.exit54.i.adp5588_read.exit59.i_crit_edge
  %137 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %gpimapsize161, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %cmp61.not.i = icmp eq i16 %138, 0
  br i1 %cmp61.not.i, label %adp5588_read.exit59.i.adp5588_report_switch_state.exit_crit_edge, label %adp5588_read.exit59.i.for.body.i_crit_edge

adp5588_read.exit59.i.for.body.i_crit_edge:       ; preds = %adp5588_read.exit59.i
  br label %for.body.i

adp5588_read.exit59.i.adp5588_report_switch_state.exit_crit_edge: ; preds = %adp5588_read.exit59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_report_switch_state.exit

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %adp5588_read.exit59.i.for.body.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %adp5588_read.exit59.i.for.body.i_crit_edge ]
  %139 = ptrtoint ptr %gpimap159 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %gpimap159, align 8
  %arrayidx.i399 = getelementptr %struct.adp5588_gpi_map, ptr %140, i32 %i.062.i
  %141 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx.i399, align 2
  %conv7.i = zext i16 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %142)
  %cmp8.i = icmp ult i16 %142, 105
  call void @__sanitizer_cov_trace_const_cmp2(i16 113, i16 %142)
  %cmp13.i = icmp ult i16 %142, 113
  %..i = select i1 %cmp13.i, i32 -105, i32 -113
  %call.i50.call.i55.i = select i1 %cmp13.i, i32 %call.i50.i, i32 %call.i55.i
  %.sink.i = select i1 %cmp8.i, i32 -97, i32 %..i
  %gpi_stat_tmp.0.i = select i1 %cmp8.i, i32 %call.i.i393, i32 %call.i50.call.i55.i
  %sub12.i = add nsw i32 %.sink.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpi_stat_tmp.0.i)
  %cmp23.i = icmp slt i32 %gpi_stat_tmp.0.i, 0
  br i1 %cmp23.i, label %do.end.i401, label %for.body.i.if.end28.i_crit_edge

for.body.i.if.end28.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

do.end.i401:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call7.i.i, align 8
  %dev.i400 = getelementptr inbounds %struct.i2c_client, ptr %144, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i400, ptr noundef nonnull @.str.53, i32 noundef %conv7.i) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i401, %for.body.i.if.end28.i_crit_edge
  %gpi_stat_tmp.1.i = phi i32 [ 0, %do.end.i401 ], [ %gpi_stat_tmp.0.i, %for.body.i.if.end28.i_crit_edge ]
  %145 = ptrtoint ptr %input107 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %input107, align 4
  %147 = ptrtoint ptr %gpimap159 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %gpimap159, align 8
  %sw_evt.i = getelementptr %struct.adp5588_gpi_map, ptr %148, i32 %i.062.i, i32 1
  %149 = ptrtoint ptr %sw_evt.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %sw_evt.i, align 2
  %conv31.i402 = zext i16 %150 to i32
  %151 = xor i32 %gpi_stat_tmp.1.i, -1
  %152 = lshr i32 %151, %sub12.i
  %153 = and i32 %152, 1
  tail call void @input_event(ptr noundef %146, i32 noundef 5, i32 noundef %conv31.i402, i32 noundef %153) #6
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %154 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %gpimapsize161, align 4
  %conv.i403 = zext i16 %155 to i32
  %cmp.i404 = icmp ult i32 %inc.i, %conv.i403
  br i1 %cmp.i404, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.adp5588_report_switch_state.exit_crit_edge

if.end28.i.adp5588_report_switch_state.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_report_switch_state.exit

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

adp5588_report_switch_state.exit:                 ; preds = %if.end28.i.adp5588_report_switch_state.exit_crit_edge, %adp5588_read.exit59.i.adp5588_report_switch_state.exit_crit_edge
  %156 = ptrtoint ptr %input107 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %input107, align 4
  tail call void @input_event(ptr noundef %157, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end235

if.end235:                                        ; preds = %adp5588_report_switch_state.exit, %if.end231.if.end235_crit_edge
  %158 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %call7.i.i, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %159, i32 0, i32 4
  %platform_data.i.i405 = getelementptr inbounds %struct.i2c_client, ptr %159, i32 0, i32 4, i32 7
  %160 = ptrtoint ptr %platform_data.i.i405 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %platform_data.i.i405, align 8
  %gpio_data2.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %161, i32 0, i32 9
  %162 = ptrtoint ptr %gpio_data2.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %gpio_data2.i, align 4
  %tobool.not.i406 = icmp eq ptr %163, null
  br i1 %tobool.not.i406, label %if.end235.if.end239_crit_edge, label %if.end.i407

if.end235.if.end239_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239

if.end.i407:                                      ; preds = %if.end235
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %pin_used.i.i) #6
  %164 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 1
  %165 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 2
  %166 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 3
  %167 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 4
  %168 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 5
  %169 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 6
  %170 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 7
  %171 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 8
  %172 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 9
  %173 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 10
  %174 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 11
  %175 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 12
  %176 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 13
  %177 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 14
  %178 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 15
  %179 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 16
  %180 = getelementptr inbounds [18 x i8], ptr %pin_used.i.i, i32 0, i32 17
  %181 = call ptr @memset(ptr %pin_used.i.i, i32 0, i32 18)
  %182 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp46.i.i = icmp sgt i32 %183, 0
  br i1 %cmp46.i.i, label %for.body.preheader.i.i, label %if.end.i407.for.cond1.preheader.i.i_crit_edge

if.end.i407.for.cond1.preheader.i.i_crit_edge:    ; preds = %if.end.i407
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i407
  call void @__sanitizer_cov_trace_pc() #8
  %184 = call ptr @memset(ptr %pin_used.i.i, i32 1, i32 %183)
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.preheader.i.i, %if.end.i407.for.cond1.preheader.i.i_crit_edge
  %cols.i.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %161, i32 0, i32 1
  %185 = ptrtoint ptr %cols.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %cols.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp248.i.i = icmp sgt i32 %186, 0
  br i1 %cmp248.i.i, label %for.body3.preheader.i.i, label %for.cond1.preheader.i.i.for.cond8.preheader.i.i_crit_edge

for.cond1.preheader.i.i.for.cond8.preheader.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i.i

for.body3.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %187 = call ptr @memset(ptr %171, i32 1, i32 %186)
  br label %for.cond8.preheader.i.i

for.cond8.preheader.i.i:                          ; preds = %for.body3.preheader.i.i, %for.cond1.preheader.i.i.for.cond8.preheader.i.i_crit_edge
  %188 = ptrtoint ptr %gpimapsize161 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %gpimapsize161, align 4
  %conv.i.i = zext i16 %189 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %cmp950.not.i.i = icmp eq i16 %189, 0
  br i1 %cmp950.not.i.i, label %for.cond8.preheader.i.i.for.cond19.preheader.i.i_crit_edge, label %for.body11.lr.ph.i.i

for.cond8.preheader.i.i.for.cond19.preheader.i.i_crit_edge: ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond19.preheader.i.i

for.body11.lr.ph.i.i:                             ; preds = %for.cond8.preheader.i.i
  %190 = ptrtoint ptr %gpimap159 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %gpimap159, align 8
  br label %for.body11.i.i

for.cond19.preheader.i.i:                         ; preds = %for.body11.i.i.for.cond19.preheader.i.i_crit_edge, %for.cond8.preheader.i.i.for.cond19.preheader.i.i_crit_edge
  %192 = ptrtoint ptr %pin_used.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %pin_used.i.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.i.i = icmp eq i8 %193, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond19.preheader.i.i.for.inc27.i.i_crit_edge

for.cond19.preheader.i.i.for.inc27.i.i_crit_edge: ; preds = %for.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.i.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.body11.lr.ph.i.i
  %i.251.i.i = phi i32 [ 0, %for.body11.lr.ph.i.i ], [ %inc17.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr %struct.adp5588_gpi_map, ptr %191, i32 %i.251.i.i
  %194 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx12.i.i, align 2
  %conv13.i.i = zext i16 %195 to i32
  %sub14.i.i = add nsw i32 %conv13.i.i, -97
  %arrayidx15.i.i = getelementptr [18 x i8], ptr %pin_used.i.i, i32 0, i32 %sub14.i.i
  %196 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %arrayidx15.i.i, align 1
  %inc17.i.i = add nuw nsw i32 %i.251.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc17.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body11.i.i.for.cond19.preheader.i.i_crit_edge, label %for.body11.i.i.for.body11.i.i_crit_edge

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i.i

for.body11.i.i.for.cond19.preheader.i.i_crit_edge: ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond19.preheader.i.i

if.then.i.i:                                      ; preds = %for.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx26.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 0
  %197 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %arrayidx26.i.i, align 2
  br label %for.inc27.i.i

for.inc27.i.i:                                    ; preds = %if.then.i.i, %for.cond19.preheader.i.i.for.inc27.i.i_crit_edge
  %n_unused.1.i.i = phi i32 [ 0, %for.cond19.preheader.i.i.for.inc27.i.i_crit_edge ], [ 1, %if.then.i.i ]
  %198 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %164, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.1.i.i = icmp eq i8 %199, 0
  br i1 %tobool.not.1.i.i, label %if.then.1.i.i, label %for.inc27.i.i.for.inc27.1.i.i_crit_edge

for.inc27.i.i.for.inc27.1.i.i_crit_edge:          ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.1.i.i = add nuw nsw i32 %n_unused.1.i.i, 1
  %arrayidx26.1.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.i.i
  %200 = ptrtoint ptr %arrayidx26.1.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %arrayidx26.1.i.i, align 1
  br label %for.inc27.1.i.i

for.inc27.1.i.i:                                  ; preds = %if.then.1.i.i, %for.inc27.i.i.for.inc27.1.i.i_crit_edge
  %n_unused.1.1.i.i = phi i32 [ %n_unused.1.i.i, %for.inc27.i.i.for.inc27.1.i.i_crit_edge ], [ %inc25.1.i.i, %if.then.1.i.i ]
  %201 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %165, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool.not.2.i.i = icmp eq i8 %202, 0
  br i1 %tobool.not.2.i.i, label %if.then.2.i.i, label %for.inc27.1.i.i.for.inc27.2.i.i_crit_edge

for.inc27.1.i.i.for.inc27.2.i.i_crit_edge:        ; preds = %for.inc27.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc27.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.2.i.i = add nuw nsw i32 %n_unused.1.1.i.i, 1
  %arrayidx26.2.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.1.i.i
  %203 = ptrtoint ptr %arrayidx26.2.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 2, ptr %arrayidx26.2.i.i, align 1
  br label %for.inc27.2.i.i

for.inc27.2.i.i:                                  ; preds = %if.then.2.i.i, %for.inc27.1.i.i.for.inc27.2.i.i_crit_edge
  %n_unused.1.2.i.i = phi i32 [ %n_unused.1.1.i.i, %for.inc27.1.i.i.for.inc27.2.i.i_crit_edge ], [ %inc25.2.i.i, %if.then.2.i.i ]
  %204 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %166, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.3.i.i = icmp eq i8 %205, 0
  br i1 %tobool.not.3.i.i, label %if.then.3.i.i, label %for.inc27.2.i.i.for.inc27.3.i.i_crit_edge

for.inc27.2.i.i.for.inc27.3.i.i_crit_edge:        ; preds = %for.inc27.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc27.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.3.i.i = add nuw nsw i32 %n_unused.1.2.i.i, 1
  %arrayidx26.3.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.2.i.i
  %206 = ptrtoint ptr %arrayidx26.3.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 3, ptr %arrayidx26.3.i.i, align 1
  br label %for.inc27.3.i.i

for.inc27.3.i.i:                                  ; preds = %if.then.3.i.i, %for.inc27.2.i.i.for.inc27.3.i.i_crit_edge
  %n_unused.1.3.i.i = phi i32 [ %n_unused.1.2.i.i, %for.inc27.2.i.i.for.inc27.3.i.i_crit_edge ], [ %inc25.3.i.i, %if.then.3.i.i ]
  %207 = ptrtoint ptr %167 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %167, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool.not.4.i.i = icmp eq i8 %208, 0
  br i1 %tobool.not.4.i.i, label %if.then.4.i.i, label %for.inc27.3.i.i.for.inc27.4.i.i_crit_edge

for.inc27.3.i.i.for.inc27.4.i.i_crit_edge:        ; preds = %for.inc27.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.4.i.i

if.then.4.i.i:                                    ; preds = %for.inc27.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.4.i.i = add nuw nsw i32 %n_unused.1.3.i.i, 1
  %arrayidx26.4.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.3.i.i
  %209 = ptrtoint ptr %arrayidx26.4.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 4, ptr %arrayidx26.4.i.i, align 1
  br label %for.inc27.4.i.i

for.inc27.4.i.i:                                  ; preds = %if.then.4.i.i, %for.inc27.3.i.i.for.inc27.4.i.i_crit_edge
  %n_unused.1.4.i.i = phi i32 [ %n_unused.1.3.i.i, %for.inc27.3.i.i.for.inc27.4.i.i_crit_edge ], [ %inc25.4.i.i, %if.then.4.i.i ]
  %210 = ptrtoint ptr %168 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %168, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool.not.5.i.i = icmp eq i8 %211, 0
  br i1 %tobool.not.5.i.i, label %if.then.5.i.i, label %for.inc27.4.i.i.for.inc27.5.i.i_crit_edge

for.inc27.4.i.i.for.inc27.5.i.i_crit_edge:        ; preds = %for.inc27.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.5.i.i

if.then.5.i.i:                                    ; preds = %for.inc27.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.5.i.i = add nuw nsw i32 %n_unused.1.4.i.i, 1
  %arrayidx26.5.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.4.i.i
  %212 = ptrtoint ptr %arrayidx26.5.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 5, ptr %arrayidx26.5.i.i, align 1
  br label %for.inc27.5.i.i

for.inc27.5.i.i:                                  ; preds = %if.then.5.i.i, %for.inc27.4.i.i.for.inc27.5.i.i_crit_edge
  %n_unused.1.5.i.i = phi i32 [ %n_unused.1.4.i.i, %for.inc27.4.i.i.for.inc27.5.i.i_crit_edge ], [ %inc25.5.i.i, %if.then.5.i.i ]
  %213 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %169, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.6.i.i = icmp eq i8 %214, 0
  br i1 %tobool.not.6.i.i, label %if.then.6.i.i, label %for.inc27.5.i.i.for.inc27.6.i.i_crit_edge

for.inc27.5.i.i.for.inc27.6.i.i_crit_edge:        ; preds = %for.inc27.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.6.i.i

if.then.6.i.i:                                    ; preds = %for.inc27.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.6.i.i = add nuw nsw i32 %n_unused.1.5.i.i, 1
  %arrayidx26.6.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.5.i.i
  %215 = ptrtoint ptr %arrayidx26.6.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 6, ptr %arrayidx26.6.i.i, align 1
  br label %for.inc27.6.i.i

for.inc27.6.i.i:                                  ; preds = %if.then.6.i.i, %for.inc27.5.i.i.for.inc27.6.i.i_crit_edge
  %n_unused.1.6.i.i = phi i32 [ %n_unused.1.5.i.i, %for.inc27.5.i.i.for.inc27.6.i.i_crit_edge ], [ %inc25.6.i.i, %if.then.6.i.i ]
  %216 = ptrtoint ptr %170 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %170, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.not.7.i.i = icmp eq i8 %217, 0
  br i1 %tobool.not.7.i.i, label %if.then.7.i.i, label %for.inc27.6.i.i.for.inc27.7.i.i_crit_edge

for.inc27.6.i.i.for.inc27.7.i.i_crit_edge:        ; preds = %for.inc27.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.7.i.i

if.then.7.i.i:                                    ; preds = %for.inc27.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.7.i.i = add nuw nsw i32 %n_unused.1.6.i.i, 1
  %arrayidx26.7.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.6.i.i
  %218 = ptrtoint ptr %arrayidx26.7.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 7, ptr %arrayidx26.7.i.i, align 1
  br label %for.inc27.7.i.i

for.inc27.7.i.i:                                  ; preds = %if.then.7.i.i, %for.inc27.6.i.i.for.inc27.7.i.i_crit_edge
  %n_unused.1.7.i.i = phi i32 [ %n_unused.1.6.i.i, %for.inc27.6.i.i.for.inc27.7.i.i_crit_edge ], [ %inc25.7.i.i, %if.then.7.i.i ]
  %219 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %171, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool.not.8.i.i = icmp eq i8 %220, 0
  br i1 %tobool.not.8.i.i, label %if.then.8.i.i, label %for.inc27.7.i.i.for.inc27.8.i.i_crit_edge

for.inc27.7.i.i.for.inc27.8.i.i_crit_edge:        ; preds = %for.inc27.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.8.i.i

if.then.8.i.i:                                    ; preds = %for.inc27.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.8.i.i = add nuw nsw i32 %n_unused.1.7.i.i, 1
  %arrayidx26.8.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.7.i.i
  %221 = ptrtoint ptr %arrayidx26.8.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 8, ptr %arrayidx26.8.i.i, align 1
  br label %for.inc27.8.i.i

for.inc27.8.i.i:                                  ; preds = %if.then.8.i.i, %for.inc27.7.i.i.for.inc27.8.i.i_crit_edge
  %n_unused.1.8.i.i = phi i32 [ %n_unused.1.7.i.i, %for.inc27.7.i.i.for.inc27.8.i.i_crit_edge ], [ %inc25.8.i.i, %if.then.8.i.i ]
  %222 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %172, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.9.i.i = icmp eq i8 %223, 0
  br i1 %tobool.not.9.i.i, label %if.then.9.i.i, label %for.inc27.8.i.i.for.inc27.9.i.i_crit_edge

for.inc27.8.i.i.for.inc27.9.i.i_crit_edge:        ; preds = %for.inc27.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.9.i.i

if.then.9.i.i:                                    ; preds = %for.inc27.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.9.i.i = add nuw nsw i32 %n_unused.1.8.i.i, 1
  %arrayidx26.9.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.8.i.i
  %224 = ptrtoint ptr %arrayidx26.9.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 9, ptr %arrayidx26.9.i.i, align 1
  br label %for.inc27.9.i.i

for.inc27.9.i.i:                                  ; preds = %if.then.9.i.i, %for.inc27.8.i.i.for.inc27.9.i.i_crit_edge
  %n_unused.1.9.i.i = phi i32 [ %n_unused.1.8.i.i, %for.inc27.8.i.i.for.inc27.9.i.i_crit_edge ], [ %inc25.9.i.i, %if.then.9.i.i ]
  %225 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %173, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.not.10.i.i = icmp eq i8 %226, 0
  br i1 %tobool.not.10.i.i, label %if.then.10.i.i, label %for.inc27.9.i.i.for.inc27.10.i.i_crit_edge

for.inc27.9.i.i.for.inc27.10.i.i_crit_edge:       ; preds = %for.inc27.9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.10.i.i

if.then.10.i.i:                                   ; preds = %for.inc27.9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.10.i.i = add nuw nsw i32 %n_unused.1.9.i.i, 1
  %arrayidx26.10.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.9.i.i
  %227 = ptrtoint ptr %arrayidx26.10.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 10, ptr %arrayidx26.10.i.i, align 1
  br label %for.inc27.10.i.i

for.inc27.10.i.i:                                 ; preds = %if.then.10.i.i, %for.inc27.9.i.i.for.inc27.10.i.i_crit_edge
  %n_unused.1.10.i.i = phi i32 [ %n_unused.1.9.i.i, %for.inc27.9.i.i.for.inc27.10.i.i_crit_edge ], [ %inc25.10.i.i, %if.then.10.i.i ]
  %228 = ptrtoint ptr %174 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %174, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.11.i.i = icmp eq i8 %229, 0
  br i1 %tobool.not.11.i.i, label %if.then.11.i.i, label %for.inc27.10.i.i.for.inc27.11.i.i_crit_edge

for.inc27.10.i.i.for.inc27.11.i.i_crit_edge:      ; preds = %for.inc27.10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.11.i.i

if.then.11.i.i:                                   ; preds = %for.inc27.10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.11.i.i = add nuw nsw i32 %n_unused.1.10.i.i, 1
  %arrayidx26.11.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.10.i.i
  %230 = ptrtoint ptr %arrayidx26.11.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 11, ptr %arrayidx26.11.i.i, align 1
  br label %for.inc27.11.i.i

for.inc27.11.i.i:                                 ; preds = %if.then.11.i.i, %for.inc27.10.i.i.for.inc27.11.i.i_crit_edge
  %n_unused.1.11.i.i = phi i32 [ %n_unused.1.10.i.i, %for.inc27.10.i.i.for.inc27.11.i.i_crit_edge ], [ %inc25.11.i.i, %if.then.11.i.i ]
  %231 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %175, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.12.i.i = icmp eq i8 %232, 0
  br i1 %tobool.not.12.i.i, label %if.then.12.i.i, label %for.inc27.11.i.i.for.inc27.12.i.i_crit_edge

for.inc27.11.i.i.for.inc27.12.i.i_crit_edge:      ; preds = %for.inc27.11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.12.i.i

if.then.12.i.i:                                   ; preds = %for.inc27.11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.12.i.i = add nuw nsw i32 %n_unused.1.11.i.i, 1
  %arrayidx26.12.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.11.i.i
  %233 = ptrtoint ptr %arrayidx26.12.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 12, ptr %arrayidx26.12.i.i, align 1
  br label %for.inc27.12.i.i

for.inc27.12.i.i:                                 ; preds = %if.then.12.i.i, %for.inc27.11.i.i.for.inc27.12.i.i_crit_edge
  %n_unused.1.12.i.i = phi i32 [ %n_unused.1.11.i.i, %for.inc27.11.i.i.for.inc27.12.i.i_crit_edge ], [ %inc25.12.i.i, %if.then.12.i.i ]
  %234 = ptrtoint ptr %176 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %176, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.13.i.i = icmp eq i8 %235, 0
  br i1 %tobool.not.13.i.i, label %if.then.13.i.i, label %for.inc27.12.i.i.for.inc27.13.i.i_crit_edge

for.inc27.12.i.i.for.inc27.13.i.i_crit_edge:      ; preds = %for.inc27.12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.13.i.i

if.then.13.i.i:                                   ; preds = %for.inc27.12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.13.i.i = add nuw nsw i32 %n_unused.1.12.i.i, 1
  %arrayidx26.13.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.12.i.i
  %236 = ptrtoint ptr %arrayidx26.13.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 13, ptr %arrayidx26.13.i.i, align 1
  br label %for.inc27.13.i.i

for.inc27.13.i.i:                                 ; preds = %if.then.13.i.i, %for.inc27.12.i.i.for.inc27.13.i.i_crit_edge
  %n_unused.1.13.i.i = phi i32 [ %n_unused.1.12.i.i, %for.inc27.12.i.i.for.inc27.13.i.i_crit_edge ], [ %inc25.13.i.i, %if.then.13.i.i ]
  %237 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %177, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool.not.14.i.i = icmp eq i8 %238, 0
  br i1 %tobool.not.14.i.i, label %if.then.14.i.i, label %for.inc27.13.i.i.for.inc27.14.i.i_crit_edge

for.inc27.13.i.i.for.inc27.14.i.i_crit_edge:      ; preds = %for.inc27.13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.14.i.i

if.then.14.i.i:                                   ; preds = %for.inc27.13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.14.i.i = add nuw nsw i32 %n_unused.1.13.i.i, 1
  %arrayidx26.14.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.13.i.i
  %239 = ptrtoint ptr %arrayidx26.14.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 14, ptr %arrayidx26.14.i.i, align 1
  br label %for.inc27.14.i.i

for.inc27.14.i.i:                                 ; preds = %if.then.14.i.i, %for.inc27.13.i.i.for.inc27.14.i.i_crit_edge
  %n_unused.1.14.i.i = phi i32 [ %n_unused.1.13.i.i, %for.inc27.13.i.i.for.inc27.14.i.i_crit_edge ], [ %inc25.14.i.i, %if.then.14.i.i ]
  %240 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %178, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.15.i.i = icmp eq i8 %241, 0
  br i1 %tobool.not.15.i.i, label %if.then.15.i.i, label %for.inc27.14.i.i.for.inc27.15.i.i_crit_edge

for.inc27.14.i.i.for.inc27.15.i.i_crit_edge:      ; preds = %for.inc27.14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.15.i.i

if.then.15.i.i:                                   ; preds = %for.inc27.14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.15.i.i = add nuw nsw i32 %n_unused.1.14.i.i, 1
  %arrayidx26.15.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.14.i.i
  %242 = ptrtoint ptr %arrayidx26.15.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 15, ptr %arrayidx26.15.i.i, align 1
  br label %for.inc27.15.i.i

for.inc27.15.i.i:                                 ; preds = %if.then.15.i.i, %for.inc27.14.i.i.for.inc27.15.i.i_crit_edge
  %n_unused.1.15.i.i = phi i32 [ %n_unused.1.14.i.i, %for.inc27.14.i.i.for.inc27.15.i.i_crit_edge ], [ %inc25.15.i.i, %if.then.15.i.i ]
  %243 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %179, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.16.i.i = icmp eq i8 %244, 0
  br i1 %tobool.not.16.i.i, label %if.then.16.i.i, label %for.inc27.15.i.i.for.inc27.16.i.i_crit_edge

for.inc27.15.i.i.for.inc27.16.i.i_crit_edge:      ; preds = %for.inc27.15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.16.i.i

if.then.16.i.i:                                   ; preds = %for.inc27.15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc25.16.i.i = add nuw nsw i32 %n_unused.1.15.i.i, 1
  %arrayidx26.16.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.15.i.i
  %245 = ptrtoint ptr %arrayidx26.16.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 16, ptr %arrayidx26.16.i.i, align 1
  br label %for.inc27.16.i.i

for.inc27.16.i.i:                                 ; preds = %if.then.16.i.i, %for.inc27.15.i.i.for.inc27.16.i.i_crit_edge
  %n_unused.1.16.i.i = phi i32 [ %n_unused.1.15.i.i, %for.inc27.15.i.i.for.inc27.16.i.i_crit_edge ], [ %inc25.16.i.i, %if.then.16.i.i ]
  %246 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %180, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool.not.17.i.i = icmp eq i8 %247, 0
  br i1 %tobool.not.17.i.i, label %adp5588_build_gpiomap.exit.thread.i, label %adp5588_build_gpiomap.exit.i

adp5588_build_gpiomap.exit.thread.i:              ; preds = %for.inc27.16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx26.17.i.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 7, i32 %n_unused.1.16.i.i
  %248 = ptrtoint ptr %arrayidx26.17.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 17, ptr %arrayidx26.17.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %pin_used.i.i) #6
  %249 = trunc i32 %n_unused.1.16.i.i to i16
  %conv115.i = add nuw nsw i16 %249, 1
  %ngpio116.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 20
  %250 = ptrtoint ptr %ngpio116.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv115.i, ptr %ngpio116.i, align 4
  br label %if.end9.i

adp5588_build_gpiomap.exit.i:                     ; preds = %for.inc27.16.i.i
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %pin_used.i.i) #6
  %conv.i408 = trunc i32 %n_unused.1.16.i.i to i16
  %ngpio.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 20
  %251 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv.i408, ptr %ngpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_unused.1.16.i.i)
  %cmp.i409 = icmp eq i32 %n_unused.1.16.i.i, 0
  br i1 %cmp.i409, label %do.end.i410, label %adp5588_build_gpiomap.exit.i.if.end9.i_crit_edge

adp5588_build_gpiomap.exit.i.if.end9.i_crit_edge: ; preds = %adp5588_build_gpiomap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

do.end.i410:                                      ; preds = %adp5588_build_gpiomap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.55) #9
  br label %if.end239

if.end9.i:                                        ; preds = %adp5588_build_gpiomap.exit.i.if.end9.i_crit_edge, %adp5588_build_gpiomap.exit.thread.i
  %ngpio118.i = phi ptr [ %ngpio116.i, %adp5588_build_gpiomap.exit.thread.i ], [ %ngpio.i, %adp5588_build_gpiomap.exit.i.if.end9.i_crit_edge ]
  %gc.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9
  %export_gpio.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 8
  %252 = ptrtoint ptr %export_gpio.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 1, ptr %export_gpio.i, align 8
  %direction_input.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 8
  %253 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @adp5588_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 9
  %254 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr @adp5588_gpio_direction_output, ptr %direction_output.i, align 8
  %get.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 10
  %255 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr @adp5588_gpio_get_value, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 12
  %256 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @adp5588_gpio_set_value, ptr %set.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 23
  %257 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %can_sleep.i, align 4
  %258 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %163, align 4
  %base.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 19
  %260 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %base.i, align 8
  %261 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %call7.i.i, align 8
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %name.i, ptr %gc.i, align 4
  %owner.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 4
  %264 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr null, ptr %owner.i, align 4
  %names.i = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %163, i32 0, i32 1
  %265 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %names.i, align 4
  %names20.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 9, i32 22
  %267 = ptrtoint ptr %names20.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %266, ptr %names20.i, align 8
  %gpio_lock.i = getelementptr inbounds %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %gpio_lock.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @adp5588_gpio_add.__key) #6
  %call25.i = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gc.i, ptr noundef %call7.i.i, ptr noundef nonnull @adp5588_gpio_add.lock_key, ptr noundef nonnull @adp5588_gpio_add.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %for.body.preheader.i, label %adp5588_gpio_add.exit

for.body.preheader.i:                             ; preds = %if.end9.i
  %268 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %call7.i.i, align 8
  %call.i.i411 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %269, i8 noundef zeroext 23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i411)
  %cmp.i.i412 = icmp slt i32 %call.i.i411, 0
  br i1 %cmp.i.i412, label %do.end.i.i414, label %for.body.preheader.i.adp5588_read.exit.i416_crit_edge

for.body.preheader.i.adp5588_read.exit.i416_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.i416

do.end.i.i414:                                    ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i413 = getelementptr inbounds %struct.i2c_client, ptr %269, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i413, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.i416

adp5588_read.exit.i416:                           ; preds = %do.end.i.i414, %for.body.preheader.i.adp5588_read.exit.i416_crit_edge
  %conv37.i = trunc i32 %call.i.i411 to i8
  %arrayidx.i415 = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 11, i32 0
  %270 = ptrtoint ptr %arrayidx.i415 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv37.i, ptr %arrayidx.i415, align 4
  %271 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %call7.i.i, align 8
  %call.i108.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %272, i8 noundef zeroext 35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %cmp.i109.i = icmp slt i32 %call.i108.i, 0
  br i1 %cmp.i109.i, label %do.end.i111.i, label %adp5588_read.exit.i416.adp5588_read.exit112.i_crit_edge

adp5588_read.exit.i416.adp5588_read.exit112.i_crit_edge: ; preds = %adp5588_read.exit.i416
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit112.i

do.end.i111.i:                                    ; preds = %adp5588_read.exit.i416
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i110.i = getelementptr inbounds %struct.i2c_client, ptr %272, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit112.i

adp5588_read.exit112.i:                           ; preds = %do.end.i111.i, %adp5588_read.exit.i416.adp5588_read.exit112.i_crit_edge
  %conv42.i = trunc i32 %call.i108.i to i8
  %arrayidx43.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 12, i32 0
  %273 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %conv42.i, ptr %arrayidx43.i, align 1
  %274 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %call7.i.i, align 8
  %call.i.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %275, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i417 = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp.i.1.i417, label %do.end.i.1.i418, label %adp5588_read.exit112.i.adp5588_read.exit.1.i419_crit_edge

adp5588_read.exit112.i.adp5588_read.exit.1.i419_crit_edge: ; preds = %adp5588_read.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.1.i419

do.end.i.1.i418:                                  ; preds = %adp5588_read.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.1.i = getelementptr inbounds %struct.i2c_client, ptr %275, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.1.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.1.i419

adp5588_read.exit.1.i419:                         ; preds = %do.end.i.1.i418, %adp5588_read.exit112.i.adp5588_read.exit.1.i419_crit_edge
  %conv37.1.i = trunc i32 %call.i.1.i to i8
  %arrayidx.1.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 11, i32 1
  %276 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv37.1.i, ptr %arrayidx.1.i, align 1
  %277 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %call7.i.i, align 8
  %call.i108.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %278, i8 noundef zeroext 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.1.i)
  %cmp.i109.1.i = icmp slt i32 %call.i108.1.i, 0
  br i1 %cmp.i109.1.i, label %do.end.i111.1.i, label %adp5588_read.exit.1.i419.adp5588_read.exit112.1.i_crit_edge

adp5588_read.exit.1.i419.adp5588_read.exit112.1.i_crit_edge: ; preds = %adp5588_read.exit.1.i419
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit112.1.i

do.end.i111.1.i:                                  ; preds = %adp5588_read.exit.1.i419
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i110.1.i = getelementptr inbounds %struct.i2c_client, ptr %278, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110.1.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit112.1.i

adp5588_read.exit112.1.i:                         ; preds = %do.end.i111.1.i, %adp5588_read.exit.1.i419.adp5588_read.exit112.1.i_crit_edge
  %conv42.1.i = trunc i32 %call.i108.1.i to i8
  %arrayidx43.1.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 12, i32 1
  %279 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv42.1.i, ptr %arrayidx43.1.i, align 8
  %280 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %call7.i.i, align 8
  %call.i.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %281, i8 noundef zeroext 25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i420 = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp.i.2.i420, label %do.end.i.2.i421, label %adp5588_read.exit112.1.i.adp5588_read.exit.2.i422_crit_edge

adp5588_read.exit112.1.i.adp5588_read.exit.2.i422_crit_edge: ; preds = %adp5588_read.exit112.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.2.i422

do.end.i.2.i421:                                  ; preds = %adp5588_read.exit112.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.2.i = getelementptr inbounds %struct.i2c_client, ptr %281, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.2.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.2.i422

adp5588_read.exit.2.i422:                         ; preds = %do.end.i.2.i421, %adp5588_read.exit112.1.i.adp5588_read.exit.2.i422_crit_edge
  %conv37.2.i = trunc i32 %call.i.2.i to i8
  %arrayidx.2.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 11, i32 2
  %282 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %conv37.2.i, ptr %arrayidx.2.i, align 2
  %283 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %call7.i.i, align 8
  %call.i108.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %284, i8 noundef zeroext 37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.2.i)
  %cmp.i109.2.i = icmp slt i32 %call.i108.2.i, 0
  br i1 %cmp.i109.2.i, label %do.end.i111.2.i, label %adp5588_read.exit.2.i422.adp5588_read.exit112.2.i_crit_edge

adp5588_read.exit.2.i422.adp5588_read.exit112.2.i_crit_edge: ; preds = %adp5588_read.exit.2.i422
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit112.2.i

do.end.i111.2.i:                                  ; preds = %adp5588_read.exit.2.i422
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i110.2.i = getelementptr inbounds %struct.i2c_client, ptr %284, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110.2.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit112.2.i

adp5588_read.exit112.2.i:                         ; preds = %do.end.i111.2.i, %adp5588_read.exit.2.i422.adp5588_read.exit112.2.i_crit_edge
  %conv42.2.i = trunc i32 %call.i108.2.i to i8
  %arrayidx43.2.i = getelementptr %struct.adp5588_kpad, ptr %call7.i.i, i32 0, i32 12, i32 2
  %285 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %conv42.2.i, ptr %arrayidx43.2.i, align 1
  %setup.i = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %163, i32 0, i32 4
  %286 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %setup.i, align 4
  %tobool44.not.i = icmp eq ptr %287, null
  br i1 %tobool44.not.i, label %adp5588_read.exit112.2.i.if.end239_crit_edge, label %if.then45.i

adp5588_read.exit112.2.i.if.end239_crit_edge:     ; preds = %adp5588_read.exit112.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239

if.then45.i:                                      ; preds = %adp5588_read.exit112.2.i
  %288 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %call7.i.i, align 8
  %290 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %base.i, align 8
  %292 = ptrtoint ptr %ngpio118.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %ngpio118.i, align 4
  %conv52.i = zext i16 %293 to i32
  %context.i = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %163, i32 0, i32 6
  %294 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %context.i, align 4
  %call53.i = tail call i32 %287(ptr noundef %289, i32 noundef %291, i32 noundef %conv52.i, ptr noundef %295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then45.i.if.end239_crit_edge, label %do.end58.i

if.then45.i.if.end239_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239

do.end58.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.62, i32 noundef %call53.i) #9
  br label %if.end239

adp5588_gpio_add.exit:                            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.59, i32 noundef %call25.i) #9
  br label %err_free_irq

if.end239:                                        ; preds = %do.end58.i, %if.then45.i.if.end239_crit_edge, %adp5588_read.exit112.2.i.if.end239_crit_edge, %do.end.i410, %if.end235.if.end239_crit_edge
  %call241 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %driver_data.i.i424 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %296 = ptrtoint ptr %driver_data.i.i424 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call7.i.i, ptr %driver_data.i.i424, align 4
  %297 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %and, i32 noundef %298) #9
  br label %cleanup251

err_free_irq:                                     ; preds = %adp5588_gpio_add.exit, %adp5588_setup.exit
  %error.0 = phi i32 [ %or87.i, %adp5588_setup.exit ], [ %call25.i, %adp5588_gpio_add.exit ]
  %299 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %irq, align 4
  %call248 = tail call ptr @free_irq(i32 noundef %300, ptr noundef nonnull %call7.i.i) #6
  %call250 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  br label %err_unreg_dev

err_unreg_dev:                                    ; preds = %err_free_irq, %do.end224
  %error.1 = phi i32 [ %call.i386, %do.end224 ], [ %error.0, %err_free_irq ]
  tail call void @input_unregister_device(ptr noundef %call100) #6
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_unreg_dev, %do.end213, %adp5588_read.exit.thread, %if.end98.err_free_mem_crit_edge
  %input.0 = phi ptr [ %call100, %do.end213 ], [ null, %err_unreg_dev ], [ %call100, %if.end98.err_free_mem_crit_edge ], [ %call100, %adp5588_read.exit.thread ]
  %error.2 = phi i32 [ %call208, %do.end213 ], [ %error.1, %err_unreg_dev ], [ -12, %if.end98.err_free_mem_crit_edge ], [ %call.i, %adp5588_read.exit.thread ]
  tail call void @input_free_device(ptr noundef %input.0) #6
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup251

cleanup251:                                       ; preds = %err_free_mem, %if.end239, %do.end96, %do.end88, %do.end76, %do.end62, %do.end43, %do.end33, %do.end24, %do.end17, %do.end7, %do.end
  %retval.2 = phi i32 [ -22, %do.end24 ], [ -22, %do.end43 ], [ %error.2, %err_free_mem ], [ 0, %if.end239 ], [ -22, %do.end96 ], [ -22, %do.end33 ], [ -22, %do.end17 ], [ -22, %do.end7 ], [ -5, %do.end ], [ -22, %do.end88 ], [ -22, %do.end76 ], [ -22, %do.end62 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  %work = getelementptr inbounds %struct.adp5588_kpad, ptr %1, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %input = getelementptr inbounds %struct.adp5588_kpad, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i.i, align 8
  %gpio_data2.i = getelementptr inbounds %struct.adp5588_kpad_platform_data, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %gpio_data2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_data2.i, align 4
  %export_gpio.i = getelementptr inbounds %struct.adp5588_kpad, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %export_gpio.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %export_gpio.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %entry.adp5588_gpio_remove.exit_crit_edge, label %if.end.i

entry.adp5588_gpio_remove.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_gpio_remove.exit

if.end.i:                                         ; preds = %entry
  %teardown.i = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %teardown.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %teardown.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then4.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.end.i
  %base.i = getelementptr inbounds %struct.adp5588_kpad, ptr %1, i32 0, i32 9, i32 19
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i, align 4
  %ngpio.i = getelementptr inbounds %struct.adp5588_kpad, ptr %1, i32 0, i32 9, i32 20
  %18 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %19 to i32
  %context.i = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %context.i, align 4
  %call8.i = tail call i32 %15(ptr noundef %7, i32 noundef %17, i32 noundef %conv.i, ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then4.i.if.end12.i_crit_edge, label %do.end.i

if.then4.i.if.end12.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.65, i32 noundef %call8.i) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.then4.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %gc13.i = getelementptr inbounds %struct.adp5588_kpad, ptr %1, i32 0, i32 9
  tail call void @gpiochip_remove(ptr noundef %gc13.i) #6
  br label %adp5588_gpio_remove.exit

adp5588_gpio_remove.exit:                         ; preds = %if.end12.i, %entry.adp5588_gpio_remove.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5588_read.exit_crit_edge

entry.adp5588_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit

adp5588_read.exit:                                ; preds = %do.end.i, %entry.adp5588_read.exit_crit_edge
  %and = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %adp5588_read.exit.if.end_crit_edge, label %do.end

adp5588_read.exit.if.end_crit_edge:               ; preds = %adp5588_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %adp5588_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %adp5588_read.exit.if.end_crit_edge
  %and2 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call.i20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp.i21, label %do.end.i23, label %if.then4.adp5588_read.exit24_crit_edge

if.then4.adp5588_read.exit24_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit24

do.end.i23:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit24

adp5588_read.exit24:                              ; preds = %do.end.i23, %if.then4.adp5588_read.exit24_crit_edge
  %and6 = and i32 %call.i20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %adp5588_read.exit24.if.end10_crit_edge, label %for.body.lr.ph.i

adp5588_read.exit24.if.end10_crit_edge:           ; preds = %adp5588_read.exit24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %adp5588_read.exit24
  %input18.i = getelementptr i8, ptr %work, i32 -4
  %gpimapsize.i = getelementptr i8, ptr %work, i32 268
  %gpimap.i = getelementptr i8, ptr %work, i32 264
  br label %for.body.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc24.i, %if.end22.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = trunc i32 %i.048.i to i8
  %conv.i = add i8 %4, 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.adp5588_read.exit.i_crit_edge

for.body.i.adp5588_read.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5588_read.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.49) #9
  br label %adp5588_read.exit.i

adp5588_read.exit.i:                              ; preds = %do.end.i.i, %for.body.i.adp5588_read.exit.i_crit_edge
  %and.i = and i32 %call.i.i, 127
  %5 = add nsw i32 %and.i, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %5)
  %6 = icmp ult i32 %5, 18
  br i1 %6, label %for.cond5.preheader.i, label %if.else.i

for.cond5.preheader.i:                            ; preds = %adp5588_read.exit.i
  %7 = ptrtoint ptr %gpimapsize.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gpimapsize.i, align 4
  %conv6.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp745.not.i = icmp eq i16 %8, 0
  br i1 %cmp745.not.i, label %for.cond5.preheader.i.if.end22.i_crit_edge, label %for.body9.lr.ph.i

for.cond5.preheader.i.if.end22.i_crit_edge:       ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

for.body9.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %9 = ptrtoint ptr %gpimap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpimap.i, align 4
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %j.046.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i, %for.inc.i.for.body9.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adp5588_gpi_map, ptr %10, i32 %j.046.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %conv10.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %and.i, %conv10.i
  br i1 %cmp11.i, label %if.then13.i, label %for.inc.i

if.then13.i:                                      ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %input18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input18.i, align 4
  %sw_evt.i = getelementptr %struct.adp5588_gpi_map, ptr %10, i32 %j.046.i, i32 1
  %15 = ptrtoint ptr %sw_evt.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sw_evt.i, align 2
  %conv16.i = zext i16 %16 to i32
  %and17.i = lshr i32 %call.i.i, 7
  %and17.lobit.i = and i32 %and17.i, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 5, i32 noundef %conv16.i, i32 noundef %and17.lobit.i) #6
  br label %if.end22.i

for.inc.i:                                        ; preds = %for.body9.i
  %inc.i = add nuw nsw i32 %j.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv6.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end22.i_crit_edge, label %for.inc.i.for.body9.i_crit_edge

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9.i

for.inc.i.if.end22.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.else.i:                                        ; preds = %adp5588_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %input18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input18.i, align 4
  %sub.i = add nsw i32 %and.i, -1
  %arrayidx19.i = getelementptr %struct.adp5588_kpad, ptr %add.ptr, i32 0, i32 4, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx19.i, align 2
  %conv20.i = zext i16 %20 to i32
  %and21.i = lshr i32 %call.i.i, 7
  %and21.lobit.i = and i32 %and21.i, 1
  tail call void @input_event(ptr noundef %18, i32 noundef 1, i32 noundef %conv20.i, i32 noundef %and21.lobit.i) #6
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %for.inc.i.if.end22.i_crit_edge, %if.then13.i, %for.cond5.preheader.i.if.end22.i_crit_edge
  %inc24.i = add nuw nsw i32 %i.048.i, 1
  %exitcond50.not.i = icmp eq i32 %inc24.i, %and6
  br i1 %exitcond50.not.i, label %adp5588_report_events.exit, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

adp5588_report_events.exit:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %input18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input18.i, align 4
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end10

if.end10:                                         ; preds = %adp5588_report_events.exit, %adp5588_read.exit24.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %conv = trunc i32 %call.i to i8
  %call.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %conv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_irq(i32 noundef %irq, ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.adp5588_kpad, ptr %handle, i32 0, i32 2
  %delay = getelementptr inbounds %struct.adp5588_kpad, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef %1) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_direction_input(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %arrayidx = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 7, i32 %off
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = lshr i8 %1, 3
  %3 = zext i8 %2 to i32
  %and = and i8 %1, 7
  %shl = shl nuw i8 1, %and
  %gpio_lock = getelementptr inbounds %struct.adp5588_kpad, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #6
  %neg = xor i8 %shl, -1
  %arrayidx4 = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 12, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %and6 = and i8 %5, %neg
  store i8 %and6, ptr %arrayidx4, align 1
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %conv8 = add nuw nsw i8 %2, 35
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %conv8, i8 noundef zeroext %and6) #6
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_direction_output(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %arrayidx = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 7, i32 %off
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = lshr i8 %1, 3
  %3 = zext i8 %2 to i32
  %and = and i8 %1, 7
  %shl = shl nuw i8 1, %and
  %gpio_lock = getelementptr inbounds %struct.adp5588_kpad, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #6
  %arrayidx4 = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 12, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv6 = or i8 %5, %shl
  store i8 %conv6, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %arrayidx12 = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 11, i32 %3
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  %8 = xor i8 %shl, -1
  %conv15 = and i8 %7, %8
  %conv10 = or i8 %7, %shl
  %conv15.sink = select i1 %tobool.not, i8 %conv15, i8 %conv10
  store i8 %conv15.sink, ptr %arrayidx12, align 1
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %conv16 = add nuw nsw i8 %2, 23
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %conv16, i8 noundef zeroext %conv15.sink) #6
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %conv22 = add nuw nsw i8 %2, 35
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4, align 1
  %call.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext %conv22, i8 noundef zeroext %14) #6
  %or26 = or i32 %call.i48, %call.i
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #6
  ret i32 %or26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_get_value(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %arrayidx = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 7, i32 %off
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 3
  %and = and i32 %conv, 7
  %shl = shl nuw nsw i32 1, %and
  %gpio_lock = getelementptr inbounds %struct.adp5588_kpad, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #6
  %arrayidx4 = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 12, i32 %2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %and6 = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7 = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 11, i32 %2
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = trunc i32 %2 to i8
  %conv9 = add nuw nsw i8 %9, 20
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext %conv9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.else.if.end_crit_edge, %if.then
  %val.0 = phi i32 [ %conv8, %if.then ], [ %call.i, %if.else.if.end_crit_edge ], [ %call.i, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #6
  %10 = lshr i32 %val.0, %and
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_gpio_set_value(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %arrayidx = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 7, i32 %off
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = lshr i8 %1, 3
  %3 = zext i8 %2 to i32
  %and = and i8 %1, 7
  %shl = shl i8 1, %and
  %gpio_lock = getelementptr inbounds %struct.adp5588_kpad, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %arrayidx8 = getelementptr %struct.adp5588_kpad, ptr %call, i32 0, i32 11, i32 %3
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %6 = xor i8 %shl, -1
  %conv11 = and i8 %5, %6
  %conv6 = or i8 %5, %shl
  %conv11.sink = select i1 %tobool.not, i8 %conv11, i8 %conv6
  store i8 %conv11.sink, ptr %arrayidx8, align 1
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %conv12 = add nuw nsw i8 %2, 23
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %conv12, i8 noundef zeroext %conv11.sink) #6
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  %work = getelementptr inbounds %struct.adp5588_kpad, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %can_wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %irq5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq5, align 4
  tail call void @enable_irq(i32 noundef %10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_adp5588_keys__288_668_adp5588_driver_init6, !1, !"__initcall__kmod_adp5588_keys__288_668_adp5588_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 668, i32 1}
!2 = !{ptr @__exitcall_adp5588_driver_exit, !1, !"__exitcall_adp5588_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 670, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 671, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 672, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 658, i32 11}
!12 = !{ptr @adp5588_driver, !13, !"adp5588_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 656, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 444, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adp5588_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adp5588_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 449, i32 3}
!24 = !{ptr @adp5588_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @adp5588_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 454, i32 3}
!28 = !{ptr @adp5588_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @adp5588_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 459, i32 3}
!32 = !{ptr @adp5588_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @adp5588_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 464, i32 3}
!36 = !{ptr @adp5588_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @adp5588_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 469, i32 3}
!40 = !{ptr @adp5588_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @adp5588_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 477, i32 4}
!44 = !{ptr @adp5588_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @adp5588_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 483, i32 5}
!48 = !{ptr @adp5588_probe._entry.24, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @adp5588_probe._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 488, i32 5}
!52 = !{ptr @adp5588_probe._entry.27, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @adp5588_probe._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 495, i32 3}
!56 = !{ptr @adp5588_probe._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @adp5588_probe._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @adp5588_probe.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 508, i32 2}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @adp5588_probe.__key.34, !59, !"__key", i1 false, i1 false}
!62 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 521, i32 16}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 559, i32 3}
!67 = !{ptr @adp5588_probe._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @adp5588_probe._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 567, i32 3}
!71 = !{ptr @adp5588_probe._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @adp5588_probe._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 585, i32 2}
!75 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @adp5588_probe._entry.43, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @adp5588_probe._entry_ptr.46, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 302, i32 3}
!80 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @adp5588_work._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @adp5588_work._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 63, i32 3}
!85 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @adp5588_read._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @adp5588_read._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 386, i32 3}
!90 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @adp5588_setup._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @adp5588_setup._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 416, i32 4}
!95 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @adp5588_report_switch_state._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @adp5588_report_switch_state._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 194, i32 3}
!100 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @adp5588_gpio_add._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @adp5588_gpio_add._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @adp5588_gpio_add.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 211, i32 2}
!105 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @adp5588_gpio_add.lock_key, !107, !"lock_key", i1 false, i1 false}
!107 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 213, i32 10}
!108 = !{ptr @adp5588_gpio_add.request_key, !107, !"request_key", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 215, i32 3}
!111 = !{ptr @adp5588_gpio_add._entry.58, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @adp5588_gpio_add._entry_ptr.60, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 230, i32 4}
!115 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @adp5588_gpio_add._entry.61, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @adp5588_gpio_add._entry_ptr.64, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 251, i32 4}
!120 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @adp5588_gpio_remove._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @adp5588_gpio_remove._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @adp5588_dev_pm_ops, !124, !"adp5588_dev_pm_ops", i1 false, i1 false}
!124 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 643, i32 32}
!125 = !{ptr @adp5588_id, !126, !"adp5588_id", i1 false, i1 false}
!126 = !{!"../drivers/input/keyboard/adp5588-keys.c", i32 649, i32 35}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i8 0, i8 2}
